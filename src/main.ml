(*
 * Copyright (c) 2010-2014,
 *  Jinseong Jeon <jsjeon@cs.umd.edu>
 *  Kris Micinski <micinski@cs.umd.edu>
 *  Jeff Foster   <jfoster@cs.umd.edu>
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 * this list of conditions and the following disclaimer in the documentation
 * and/or other materials provided with the distribution.
 *
 * 3. The names of the contributors may not be used to endorse or promote
 * products derived from this software without specific prior written
 * permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *)

(***********************************************************************)
(* Main                                                                *)
(***********************************************************************)

module St = Stats

module U = Util

module J  = Java
module Ad = Android
module D  = Dex
module P  = Parse

module V = Visitor

module Up  = Unparse
module Hup = Htmlunparse
module Jup = Jsonunparse

module Cg = Callgraph
module Ct = Ctrlflow

module Lv = Liveness
module Cp = Propagation
module Rc = Reaching

module Md  = Modify
module Lgg = Logging
module Dre = Directed

module Cm  = Combine
module Dp  = Dump

module A = Arg
module L = List
module S = String

module Yj = Yojson.Basic

(***********************************************************************)
(* Basic Elements/Functions                                            *)
(***********************************************************************)

let dex = ref "classes.dex"

let dump (tx: D.dex) : unit =
  St.time "dump" (Dp.dump !dex) tx

let dump_hello _ : unit =
  St.time "dump_hello" (Dp.dump !dex) (Md.hello ())

let infile = ref "-"
let outputdir = ref "output"
let jsonout = ref "output"

let dump_html (tx : D.dex) : unit =
  St.time "dump_html" (Hup.generate_documentation tx !outputdir) !infile

let dump_json (tx : D.dex) : unit =
  let chan = open_out (!outputdir ^ "/index.json") in
  St.time "dump_json" (fun _ ->
	    Yj.pretty_to_channel chan (Jup.generate_json tx !outputdir);
	    close_out chan
	  ) ()

let lib = ref "data/logging.dex"

let combine (tx: D.dex) : unit =
 try (
    let chan' = open_in_bin !lib in
    let libdx = St.time "parse" P.parse chan' in
    close_in chan';
    St.time "dump" (Dp.dump !dex) (St.time "merge" (Cm.combine libdx) tx)
  )
  with End_of_file -> prerr_endline "EOF"

let cls = ref ""
let mtd = ref ""

let get_citm (tx: D.dex) : D.code_item =
  let cid = D.get_cid tx (J.to_java_ty !cls) in
  let mid, _ = D.get_the_mtd tx cid !mtd in
  let _, citm = D.get_citm tx cid mid in citm

let dump_method (tx: D.dex) : unit =
  let citm = get_citm tx in
  St.time "dump_method" Up.print_method tx citm

let intent (tx: D.dex) : unit =
  Cg.intent_analysis := true;
  ignore (St.time "callgraph" Cg.make_cg tx)

let cg (tx: D.dex) : unit =
  let g = St.time "callgraph" Cg.make_cg tx in
  St.time "callgraph" (Cg.cg2dot tx) g

let get_cfg (tx: D.dex) : Ct.cfg =
  let citm = get_citm tx in
  St.time "cfg" (Ct.make_cfg tx) citm

let cfg (tx: D.dex) : unit =
  let cfg = get_cfg tx in
  St.time "cfg" (Ct.cfg2dot tx) cfg

let dom (tx: D.dex) : unit =
  let cfg = get_cfg tx in
  let dom = St.time "dom" Ct.doms cfg in
  St.time "dom" (Ct.dom2dot tx cfg) dom

let pdom (tx: D.dex) : unit =
  let cfg = get_cfg tx in
  let pdom = St.time "pdom" Ct.pdoms cfg in
  St.time "pdom" (Ct.pdom2dot tx cfg) pdom

(***********************************************************************)
(* Analyses                                                            *)
(***********************************************************************)

let pkg = ref ""

let dependants (tx: D.dex) : unit =
  let g = St.time "callgraph" Cg.make_cg tx in
  let cid = D.get_cid tx (J.to_java_ty !cls) in
  let cids = St.time "dependants" (Cg.dependants tx g) cid in
    L.iter (fun id -> Log.i (D.get_ty_str tx id)) cids

let rec do_dfa (tag: string) (tx: D.dex) : unit =
  Log.set_level "verbose";
  let citm = get_citm tx in
  match tag with
  | "live"  -> do_live  tag tx citm
  | "const" -> do_const tag tx citm
  | "reach" -> do_reach tag tx citm

and do_live  (tag: string) (tx: D.dex) (citm: D.code_item) : unit =
  let dfa = St.time tag (Lv.make_dfa tx) citm in
  let module DFA = (val dfa: Dataflow.ANALYSIS
    with type st = D.link and type l = U.IS.t)
  in
  St.time tag DFA.fixed_pt ()

and do_const (tag: string) (tx: D.dex) (citm: D.code_item) : unit =
  let dfa = St.time tag (Cp.make_dfa tx) citm in
  let module DFA = (val dfa: Dataflow.ANALYSIS
    with type st = D.link and type l = (Cp.value U.IM.t))
  in
  St.time tag DFA.fixed_pt ()

and do_reach (tag: string) (tx: D.dex) (citm: D.code_item) : unit =
  let dfa = St.time tag (Rc.make_dfa tx) citm in
  let module DFA = (val dfa: Dataflow.ANALYSIS
    with type st = D.link and type l = (D.link U.IM.t))
  in
  St.time tag DFA.fixed_pt ()

let dolistener (tx: D.dex) : unit =
  St.time "listener" (Dre.find_listener tx) !pkg

let dat = ref "data"

(***********************************************************************)
(* Rewrite                                                             *)
(***********************************************************************)

let act = ref "activity.txt"

let instrument_logging (tx: D.dex) : unit =
  let rnm = !dat^"/rename" in
try (
  (* parse logging library *)
  let chan = open_in_bin !lib in
  let liblog = P.parse chan in
  close_in chan;
  (* merge the external dex file *)
  let cx = St.time "merge" (Cm.combine liblog) tx in
  (* seed new addresses for modification *)
  Md.seed_addr cx.D.header.D.file_size;
  (* modify target dex accordingly *)
  St.time "logging" Lgg.modify cx;
  (* rename specific classes *)
  let rnm' = rnm ^ "." ^ "cls" in
  let ch = open_in rnm' in
  let res = U.read_lines ch in
  close_in ch;
  St.time "rename" (Md.rename_cls cx) res;
  (* finally, dump the rewritten dex *)
  St.time "dump" (Dp.dump !dex) cx
)
with End_of_file -> prerr_endline "EOF"

let rewrite_directed (tx: D.dex) : unit =
  let apis = !dat^"/directed.txt" in
try (
  let ch = open_in !act in
  let acts = U.read_lines ch in
  close_in ch;
  St.time "directed" (Dre.directed_explore tx !pkg apis) acts;
(*
  St.time "dump" (Dp.dump !dex) tx
*)
)
with End_of_file -> prerr_endline "EOF"
| D.Wrong_dex msg -> prerr_endline msg
                       
(* Extract regular expressions from a file *)
(*let log_regex f : Lgg.detail = ()*)
  (*Lgg.Regex (U.read_lines (open_in f))*)
    
(***********************************************************************)
(* Arguments                                                           *)
(***********************************************************************)

let task = ref None

let do_unparse       () = task := Some (St.time "unparse" Up.unparse)
let do_info          () = task := Some (St.time "info."   Up.print_info)
let do_classes       () = task := Some (St.time "class"   Up.print_classes)
let do_api           () = task := Some (St.time "api"     Ad.api_usage)

let do_dump          () = task := Some dump
let do_hello         () = task := Some dump_hello

let do_htmlunparse   () = task := Some dump_html
let do_jsonunparse   () = task := Some dump_json

let do_combine       () = task := Some combine

let do_dumpmethod    () = task := Some dump_method
let do_intent        () = task := Some intent
let do_cg            () = task := Some cg
let do_cfg           () = task := Some cfg
let do_dom           () = task := Some dom
let do_pdom          () = task := Some pdom

let do_dependants    () = task := Some dependants
let do_live          () = task := Some (do_dfa "live")
let do_const         () = task := Some (do_dfa "const")
let do_reach         () = task := Some (do_dfa "reach")
let do_listener      () = task := Some dolistener

let do_logging       () = task := Some instrument_logging
let do_directed      () = task := Some rewrite_directed

let arg_specs = A.align
  [
    ("-log", A.String Log.set_level, " set logging level");

    ("-unparse", A.Unit do_unparse, " print dex in yaml format");
    ("-info",    A.Unit do_info,    " print info about dex file");
    ("-classes", A.Unit do_classes, " print class names in dex file");

    ("-api", A.Unit do_api,       " print API usage in dex file");
    ("-sdk", A.Set_string Ad.sdk, " SDK of interest (default: "^(!Ad.sdk)^")");

    ("-out",   A.Set_string dex, " output file name (default: "^(!dex)^")");
    ("-dump",  A.Unit do_dump,   " dump dex binary");
    ("-hello", A.Unit do_hello,  " API test");

    ("-outputdir",   A.Set_string outputdir,
     " directory in which to place generated {html|json} (default: "^(!outputdir)^")");
    ("-htmlunparse", A.Unit do_htmlunparse, " format dex in an html document");
    ("-jsonunparse", A.Unit do_jsonunparse, " format dex in JSON");

    ("-lib",     A.Set_string lib,  " library dex name (default: "^(!lib)^")");
    ("-combine", A.Unit do_combine, " combine two dex files");

    ("-cls",  A.Set_string cls, " target class name");
    ("-mtd",  A.Set_string mtd, " target method name");
    ("-dump_method", A.Unit do_dumpmethod, 
     " dump instructions for a specified method");

    ("-intent", A.Unit do_intent, " Intent resolution analysis");
    ("-cg",     A.Unit do_cg,     " call graph in dot format");
    ("-cfg",    A.Unit do_cfg,    " control-flow graph in dot format");

    ("-dom",  A.Unit do_dom,    " dominator tree in dot format");
    ("-pdom", A.Unit do_pdom,   " post dominator tree in dot format");

    ("-dependants", A.Unit do_dependants, " find dependent classes");
    ("-live",       A.Unit do_live,       " liveness analysis");
    ("-const",      A.Unit do_const,      " constant propagation");
    ("-reach",      A.Unit do_reach,      " reaching definition");
    ("-listener",   A.Unit do_listener,   " find listener relations");

    ("-logging",  A.Unit do_logging,
     " instrument logging feature into the given dex");
    (*("-logging-regex", A.String (fun f -> Lgg.detail := log_regex f),
     " log methods with regular expressions drawn from a file");*)
    ("-logging-detail", A.Unit (fun () -> Lgg.detail := Fine),
     " logging more methods (default: false)");

    ("-directed", A.Unit do_directed,
     " instrument the dex such that it is directed to certain call sites");
    ("-cg_depth", A.Set_int Dre.cg_depth,
     " a level of call graph (default: "^(string_of_int !Dre.cg_depth)^")");
    ("-cc_len",   A.Set_int Dre.cc_len,
     " a length of call chains (default: "^(string_of_int !Dre.cc_len)^")");
    ("-path_len", A.Set_int Dre.path_len,
     " a length of paths (default: "^(string_of_int !Dre.path_len)^")");

    ("-dat", A.Set_string dat,
     " folder containing various text inputs (default: "^(!dat)^")");
    ("-act", A.Set_string act,
     " file containing activity names (default: "^(!act)^")");
    ("-pkg", A.Set_string pkg,
     " specify the package name of the app");

  ]

(***********************************************************************)
(* Main                                                                *)
(***********************************************************************)

let usage = "Usage: " ^ Sys.argv.(0) ^ " [opts] [dex]\n"

let main () =
  A.parse arg_specs (fun s -> infile := s) usage;
  let ch, k =
    if (!infile = "-") then
      stdin, fun () -> ()
    else
      let chan = open_in_bin !infile in
      chan,  fun () -> close_in chan
  in
  try (
    Printexc.record_backtrace true;
    match !task with
    | Some f ->
    (
      St.reset St.SoftwareTimer;
      if f == dump_hello then f (D.empty_dex ()) else
      (
        let dex = St.time "parse" P.parse ch in
        k ();
        (
          try
            let ch2 = open_in (!dat^"/skip.txt") in
            let res = U.read_lines ch2 in
            close_in ch2;
            V.set_skip_pkgs res
          with Sys_error _ -> ()
        );
        f dex
      );
      St.print stderr "====== redexer performance statistics ======\n"
    )
    | _ -> A.usage arg_specs usage
  )
  with
  | End_of_file -> prerr_endline "EOF"
  | e ->
    prerr_endline ("Exception: "^(Printexc.to_string e));
    Printexc.print_backtrace stderr
;;

main ();;
