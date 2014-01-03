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
(* Dump                                                                *)
(* reference: dalvik/dx/dex/file/ValueEncoder.java,                    *)
(*            dalvik/dx/dex/rop/cst/CstUtf8.java                       *)
(***********************************************************************)

module St = Stats
module CL = Clist
module DA = DynArray

module U = Util

module I  = Instr
module D  = Dex

module IM = I.IM

module I32 = Int32
module I64 = Int64

module L = List
module A = Array
module H = Hashtbl
module S = String

(***********************************************************************)
(* Basic Types/Elements                                                *)
(***********************************************************************)

(* constant offset => relative index *)
type abs_list = {
  l_typ_lst : (I.offset * D.data_item) list;
  l_ann_ref : (I.offset * D.data_item) list;
  l_ann_set : (I.offset * D.data_item) list;
  l_cls_dat : (I.offset * D.data_item) list;
  l_cod_itm : (I.offset * D.data_item) list;
  l_str_dat : (I.offset * D.data_item) list;
  l_dbg_inf : (I.offset * D.data_item) list;
  l_annot   : (I.offset * D.data_item) list;
  l_stt_val : (I.offset * D.data_item) list;
  l_ann_dir : (I.offset * D.data_item) list;
  l_instrct : (I.offset * D.data_item) list;
}

let abs_init = {
  l_typ_lst = ([]: (I.offset * D.data_item) list);
  l_ann_ref = ([]: (I.offset * D.data_item) list);
  l_ann_set = ([]: (I.offset * D.data_item) list);
  l_cls_dat = ([]: (I.offset * D.data_item) list);
  l_cod_itm = ([]: (I.offset * D.data_item) list);
  l_str_dat = ([]: (I.offset * D.data_item) list);
  l_dbg_inf = ([]: (I.offset * D.data_item) list);
  l_annot   = ([]: (I.offset * D.data_item) list);
  l_stt_val = ([]: (I.offset * D.data_item) list);
  l_ann_dir = ([]: (I.offset * D.data_item) list);
  l_instrct = ([]: (I.offset * D.data_item) list);
}

type abs = {
  typ_lst : (I.offset * D.data_item) array;
  ann_ref : (I.offset * D.data_item) array;
  ann_set : (I.offset * D.data_item) array;
  cls_dat : (I.offset * D.data_item) array;
  cod_itm : (I.offset * D.data_item) array;
  str_dat : (I.offset * D.data_item) array;
  dbg_inf : (I.offset * D.data_item) array;
  annot   : (I.offset * D.data_item) array;
  stt_val : (I.offset * D.data_item) array;
  ann_dir : (I.offset * D.data_item) array;
  instrct : (I.offset * D.data_item) array;
}

type hsh = {
  h_typ_lst : (I.offset, (int * D.data_item)) H.t;
  h_ann_ref : (I.offset, (int * D.data_item)) H.t;
  h_ann_set : (I.offset, (int * D.data_item)) H.t;
  h_cls_dat : (I.offset, (int * D.data_item)) H.t;
  h_cod_itm : (I.offset, (int * D.data_item)) H.t;
  h_str_dat : (I.offset, (int * D.data_item)) H.t;
  h_dbg_inf : (I.offset, (int * D.data_item)) H.t;
  h_annot   : (I.offset, (int * D.data_item)) H.t;
  h_stt_val : (I.offset, (int * D.data_item)) H.t;
  h_ann_dir : (I.offset, (int * D.data_item)) H.t;
  h_instrct : (I.offset, (int * D.data_item)) H.t;
}

(* relative index => absolute offset *)
type off_list = {
  o_typ_lst : I.offset list;
  o_ann_ref : I.offset list;
  o_ann_set : I.offset list;
  o_cls_dat : I.offset list;
  o_cod_itm : I.offset list;
  o_str_dat : I.offset list;
  o_dbg_inf : I.offset list;
  o_annot   : I.offset list;
  o_stt_val : I.offset list;
  o_ann_dir : I.offset list;
  o_instrct : I.offset list;
}

let off_init = {
  o_typ_lst = ([]: I.offset list);
  o_ann_ref = ([]: I.offset list);
  o_ann_set = ([]: I.offset list);
  o_cls_dat = ([]: I.offset list);
  o_cod_itm = ([]: I.offset list);
  o_str_dat = ([]: I.offset list);
  o_dbg_inf = ([]: I.offset list);
  o_annot   = ([]: I.offset list);
  o_stt_val = ([]: I.offset list);
  o_ann_dir = ([]: I.offset list);
  o_instrct = ([]: I.offset list);
}

type rel = {
  a_typ_lst : I.offset array;
  a_ann_ref : I.offset array;
  a_ann_set : I.offset array;
  a_cls_dat : I.offset array;
  a_cod_itm : I.offset array;
  a_str_dat : I.offset array;
  a_dbg_inf : I.offset array;
  a_annot   : I.offset array;
  a_stt_val : I.offset array;
  a_ann_dir : I.offset array;
  a_instrct : I.offset array;
}

(* link to link map, taking advantage of list index itself *)
type lmap = {
  str_ids : D.link array option;
  typ_ids : D.link array option;
  pro_ids : D.link array option;
  fld_ids : D.link array option;
  mtd_ids : D.link array option;
  cls_dfs : D.link array option;
}

(* Adler32 checksum *)
type adler32 = {
  a : int;
  b : int;
}

let adler32_init = {
  a = 1;
  b = 0;
}

let offset = ref 0

let null  = char_of_int 0x00
let magic = L.map char_of_int [0x64;0x65;0x78;0x0a;0x30;0x33;0x35;0x00]

(***********************************************************************)
(* Utilities/Writing                                                   *)
(***********************************************************************)

let to_i32 = I32.of_int
let to_i64 = I64.of_int

let some x = match x with
  | Some ax -> ax
  | None    -> raise (D.Wrong_dex "get Some")

let (@@) cl1 cl2 = CL.append cl1 cl2

let  flatten cl =  L.fold_right (@@) cl CL.empty
let aflatten cl = DA.fold_right (@@) cl CL.empty

(* find relative position from the absolute offset hash *)
let pos (h: (I.offset, (int * D.data_item)) H.t) a : D.link =
  let off = D.get_off a in
  let idx = try fst (H.find h off) with Not_found -> D.no_index in
  D.to_idx idx

(* find absolute offset using relative position *)
let sop (a: I.offset array) (len: int) i : D.link =
  let idx = D.of_idx i in
  if idx = D.no_index then D.Off I32.zero else
  try D.Off a.(len - idx)
  with Invalid_argument _ ->
    let s_idx = string_of_int (len - idx)
    and s_len = string_of_int (A.length a) in
    raise (D.Wrong_dex ("sop: "^s_idx^" > "^s_len))

(* alignment *)
let align (off: int) (n: int) : int =
  let r = off mod n in
  if r = 0 then off else off + (n - r)

(* link to link *)
let l2l (map: D.link array option) (msg: string) l : D.link =
  let i = D.of_idx l in
  try if i >= 0 then (some map).(i) else l
  with Invalid_argument _ ->
    let s_idx = string_of_int i
    and s_len = string_of_int (A.length (some map)) in
    raise (D.Wrong_dex ("l2l: "^msg^": "^s_idx^" > "^s_len))

(* link compare *)
let lc (l1: D.link) (l2: D.link) : int =
  let i1 = D.of_idx l1 and i2 = D.of_idx l2
  in Pervasives.compare i1 i2

(* string_data compare *)
let sc (o1, s1) (o2, s2) =
  match s1, s2 with
  | D.STRING_DATA str1, D.STRING_DATA str2 ->
    let c1 = UTF8.compare str1 str2 in
    if c1 <> 0 then c1 else I32.compare o1 o2
  | _, _ -> raise (D.Wrong_match "sort_str")

(* fill 'a element n times *)
let fill (x: 'a) (n: int) : 'a CL.clist =
  CL.fromList (U.repeat x n [])

(* writing 8 bit *)
let write8 (i: int) : char = char_of_int i

(* writing 8 bit - sign *)
let write8s (i: int) : char =
  write8 (if i < 0 then (abs i) lor 0x80 else i)

(* writing 16 bit *)
let write16 (i: int) : char CL.clist =
  let i = i land 0x0000ffff in
  let l = i land 0x000000ff and h = i lsr  8 in
  CL.fromList [ (write8 l) ; (write8 h) ]

(* writing 32 bit - sign *)
let write32 (i: int) : char CL.clist =
  let l = i land 0x0000ffff and h = i lsr 16 in
  (write16 l) @@ (write16 h)

(* writing 32 bit - unsign *)
let write32u (i: int64) : char CL.clist =
  let l = I64.to_int (I64.logand i (to_i64 0x0000ffff))
  and h = I64.to_int (I64.shift_right_logical i 16) in
  (write16 l) @@ (write16 h)

(* writing 64 bit *)
let write64 (i: int64) : char CL.clist =
  let l = I64.logand i (I64.of_string "0xffffffff")
  and h = I64.shift_right_logical i 32 in
  (write32u l) @@ (write32u h)

(* integer -> uleb128 *)
let write_uleb128 (i: int) : char CL.clist =
  let rec loop v l =
    let b = v land 0x7f and v' = v lsr 7 in
    if v' <> 0 then loop v' ((b lor 0x80) :: l) else (b :: l)
  in CL.fromList (L.rev_map write8 (loop i []))

let write_uleb128p1 (i: int) : char CL.clist = write_uleb128 (i+1)

(* integer -> sleb128 *)
let write_sleb128 (i: int) : char CL.clist =
  let rec loop v l =
    let b = v land 0x7f and v' = v asr 7 in
    let sbit = b land 0x40 in
    if (v' = 0 && sbit = 0) || (v' = -1 && sbit = 64) then (b :: l)
    else loop v' ((b lor 0x80) :: l)
  in CL.fromList (L.rev_map write8 (loop i []))

(* 64 - leading zeros *)
let require_bits (n: int64) : int =
  let rec loop v i =
    if I64.compare v I64.zero = 0 then i
    else loop (I64.shift_right_logical v 1) (i+1)
  in loop n 0

let write_integral_value (ty: int) (bits: int) (n: int64) : char CL.clist =
  let bytes = (bits + 0x07) lsr 3 in
  let ev1st = write8 (ty lor ((bytes - 1) lsl 5)) in
  let rec loop r v l =
    if r <= 0 then l else
    let b  = write8 (I64.to_int (I64.logand v (to_i64 0xff)))
    and v' = I64.shift_right_logical v 8
    in loop (r-1) v' (b :: l)
  in CL.fromList (L.rev (loop bytes n [ev1st]))

(* 64bits -> unsigned integral value *)
let write_uiv (ty: int) (n: int64) : char CL.clist =
  let bits  = require_bits n in
  let bits' = if bits = 0 then 1 else bits
  in write_integral_value ty bits' n

(* 64bits -> signed integral value *)
let write_siv (ty: int) (n: int64) : char CL.clist =
  let bits = 1 + (require_bits (I64.logxor n (I64.shift_right n 63)))
  in write_integral_value ty bits n

(* 64 - trailing zeros *)
let require_bits' (n: int64) : int =
  let rec loop v i =
    if I64.compare (I64.logand v (I64.of_int 0x1)) I64.zero = 0 && i > 0
    then loop (I64.shift_right_logical v 1) (i-1) else i
  in loop n 64

(* 64bits -> right zero extended value *)
let write_r0ev (ty: int) (n: int64) : char CL.clist =
  let bits1 = require_bits' n in
  let bits  = if bits1 = 0 then 1 else bits1 in
  let bytes = (bits + 0x07) lsr 3 in
  let ev1st = write8 (ty lor ((bytes - 1) lsl 5)) in
  let rec loop r v l =
    if r <= 0 then l else
    let b  = write8 (I64.to_int (I64.logand v (to_i64 0xff)))
    and v' = I64.shift_right_logical v 8
    in loop (r-1) v' (b :: l)
  and v = I64.shift_right_logical n (64 - (bytes * 8))
  in CL.fromList (L.rev (loop bytes v [ev1st]))

(* from MUTF-8 encoded string to bytes *)
let write_utf8 (str: UTF8.t) : char CL.clist =
  let l = ref ([]: char list) in
  let len = UTF8.length str in
  for i = 0 to (len - 1) do
    let c = UChar.int_of_uchar (UTF8.get str i) in
    if c <> 0 && c < 0x80 then
      l := (write8 c) :: !l
    else if c < 0x800 then
      let c1 = ((c lsr 6) land 0x1f) lor 0xc0
      and c2 = (c land 0x3f) lor 0x80 in
      l := (write8 c2) :: (write8 c1) :: !l
    else
      let c1 = ((c lsr 12) land 0x0f) lor 0xe0
      and c2 = ((c lsr 6) land 0x3f) lor 0x80
      and c3 = (c land 0x3f) lor 0x80 in
      l := (write8 c3) :: (write8 c2) :: (write8 c1) :: !l
  done;
  CL.fromList (L.rev !l)

(* writing offset *)
let write_off (l: D.link) : char CL.clist =
  write32 (D.of_off l)

(* writing index *)
let write_idx (l: D.link) : char CL.clist =
  write32u (to_i64 (D.of_idx l))

(* writing index - 16bit *)
let write_idx16 (l: D.link) : char CL.clist =
  write16 (D.of_idx l)

(* char CL.clist -> string *)
let to_str (cl: char CL.clist) : string =
  let str = S.create (CL.length cl) in
  let setter i c = str.[i] <- c; (i+1)
  in ignore (CL.fold_left setter 0 cl); str

(* hex string -> char list *)
let to_bytes (s: string) : char CL.clist =
  if S.length s mod 2 <> 0 then raise (D.Wrong_dex "wrong digest");
  let ret = ref ([]: char list) in
  for i = 0 to ((S.length s) / 2) - 1 do
    let hx = "0x"^(S.sub s (2*i) 2) in
    ret := !ret @ [write8 (I32.to_int (I32.of_string hx))]
  done;
  CL.fromList !ret

(* Adler32 update *)
let adler32_update (x: adler32) (c: char) : adler32 =
  let m  = 65521 in
  let ya = (x.a + (int_of_char c)) mod m in
  let yb = (x.b + ya) mod m in
  { a = ya; b = yb; }

(* Adler32 checksum *)
let adler32_crc (x: adler32) : int64 =
  I64.logor (I64.shift_left (to_i64 x.b) 16) (to_i64 x.a)

(* to calculate relative address diff from the base address of code_item
 * used for all addresses in try-catch-relevant data structures
 *)
let from_base insns hsh (off: D.link) : int =
  let folder (reach, cnt) (l: D.link) =
    let reach' = reach || l = off in
    match snd (H.find hsh (D.get_off l)) with
    | D.INSTRUCTION (op, _) when not reach' ->
      reach', cnt + snd (I.op_to_hx_and_size op)
    | _ -> reach', cnt
  in
  snd (DA.fold_left folder (false, 0) insns)


(***********************************************************************)
(* Collecting                                                          *)
(***********************************************************************)

(* collect data in the pool with their absolute position *)
let collect_abs_lst (dx: D.dex) : abs_list =
  let collector (k: I.offset) (it: D.data_item) acc : abs_list =
    let p = ref acc.l_typ_lst
    and f = ref acc.l_ann_ref
    and t = ref acc.l_ann_set
    and s = ref acc.l_cls_dat
    and e = ref acc.l_cod_itm
    and r = ref acc.l_str_dat
    and g = ref acc.l_dbg_inf
    and a = ref acc.l_annot
    and c = ref acc.l_stt_val
    and o = ref acc.l_ann_dir
    and i = ref acc.l_instrct in
    (
      match it with
      | D.TYPE_LIST    _ -> p := (k, it) :: !p
      | D.ANNO_SET_REF _ -> f := (k, it) :: !f
      | D.ANNO_SET     _ -> t := (k, it) :: !t
      | D.CLASS_DATA   _ -> s := (k, it) :: !s
      | D.CODE_ITEM    _ -> e := (k, it) :: !e
      | D.STRING_DATA  _ -> r := (k, it) :: !r
      | D.DEBUG_INFO   _ -> g := (k, it) :: !g
      | D.ANNOTATION   _ -> a := (k, it) :: !a
      | D.STATIC_VALUE _ -> c := (k, it) :: !c
      | D.ANNO_DIR     _ -> o := (k, it) :: !o
      | D.INSTRUCTION  _
      | D.FILL_ARRAY   _
      | D.SWITCH       _ -> i := (k, it) :: !i
      | _ -> ()
    );
    {
      l_typ_lst = !p;
      l_ann_ref = !f;
      l_ann_set = !t;
      l_cls_dat = !s;
      l_cod_itm = !e;
      l_str_dat = !r;
      l_dbg_inf = !g;
      l_annot   = !a;
      l_stt_val = !c;
      l_ann_dir = !o;
      l_instrct = !i;
    }
  in
  IM.fold collector dx.D.d_data abs_init

(* memoization *)
let sz_typ_lst = ref 0
let sz_ann_ref = ref 0
let sz_ann_set = ref 0
let sz_cls_dat = ref 0
let sz_cod_itm = ref 0
let sz_str_dat = ref 0
let sz_dbg_inf = ref 0
let sz_annot   = ref 0
let sz_stt_val = ref 0
let sz_ann_dir = ref 0
let sz_instrct = ref 0

let collect_abs_hsh (dx: D.dex) : abs * hsh =
  let rev = collect_abs_lst dx in
  let s_typ_lst = L.length rev.l_typ_lst
  and s_ann_ref = L.length rev.l_ann_ref
  and s_ann_set = L.length rev.l_ann_set
  and s_cls_dat = L.length rev.l_cls_dat
  and s_cod_itm = L.length rev.l_cod_itm
  and s_str_dat = L.length rev.l_str_dat
  and s_dbg_inf = L.length rev.l_dbg_inf
  and s_annot   = L.length rev.l_annot
  and s_stt_val = L.length rev.l_stt_val
  and s_ann_dir = L.length rev.l_ann_dir
  and s_instrct = L.length rev.l_instrct
  in
  Log.d "\n# of items in pool";
  Log.d ("typ_lst : "^(Log.of_i s_typ_lst));
  Log.d ("ann_ref : "^(Log.of_i s_ann_ref));
  Log.d ("ann_set : "^(Log.of_i s_ann_set));
  Log.d ("cls_dat : "^(Log.of_i s_cls_dat));
  Log.d ("cod_itm : "^(Log.of_i s_cod_itm));
  Log.d ("str_dat : "^(Log.of_i s_str_dat));
  Log.d ("dbg_inf : "^(Log.of_i s_dbg_inf));
  Log.d ("annot   : "^(Log.of_i s_annot  ));
  Log.d ("stt_val : "^(Log.of_i s_stt_val));
  Log.d ("ann_dir : "^(Log.of_i s_ann_dir));
  Log.d ("instrct : "^(Log.of_i s_instrct));
  sz_typ_lst := s_typ_lst - 1;
  sz_ann_ref := s_ann_ref - 1;
  sz_ann_set := s_ann_set - 1;
  sz_cls_dat := s_cls_dat - 1;
  sz_cod_itm := s_cod_itm - 1;
  sz_str_dat := s_str_dat - 1;
  sz_dbg_inf := s_dbg_inf - 1;
  sz_annot   := s_annot   - 1;
  sz_stt_val := s_stt_val - 1;
  sz_ann_dir := s_ann_dir - 1;
  sz_instrct := s_instrct - 1;
  let a l = A.of_list (L.rev l) in
  let abs =
  {
    typ_lst = a rev.l_typ_lst;
    ann_ref = a rev.l_ann_ref;
    ann_set = a rev.l_ann_set;
    cls_dat = a rev.l_cls_dat;
    cod_itm = a rev.l_cod_itm;
    str_dat = A.of_list (L.stable_sort sc rev.l_str_dat);
    dbg_inf = a rev.l_dbg_inf;
    annot   = a rev.l_annot  ;
    stt_val = a rev.l_stt_val;
    ann_dir = a rev.l_ann_dir;
    instrct = a rev.l_instrct;
  }
  in
  let hs_typ_lst = H.create s_typ_lst
  and hs_ann_ref = H.create s_ann_ref
  and hs_ann_set = H.create s_ann_set
  and hs_cls_dat = H.create s_cls_dat
  and hs_cod_itm = H.create s_cod_itm
  and hs_str_dat = H.create s_str_dat
  and hs_dbg_inf = H.create s_dbg_inf
  and hs_annot   = H.create s_annot
  and hs_stt_val = H.create s_stt_val
  and hs_ann_dir = H.create s_ann_dir
  and hs_instrct = H.create s_instrct
  and inserter hs id (k, it) =
    H.add hs k (id, it); (id - 1)
  in
  ignore (L.fold_left (inserter hs_typ_lst) (s_typ_lst - 1) rev.l_typ_lst);
  ignore (L.fold_left (inserter hs_ann_ref) (s_ann_ref - 1) rev.l_ann_ref);
  ignore (L.fold_left (inserter hs_ann_set) (s_ann_set - 1) rev.l_ann_set);
  ignore (L.fold_left (inserter hs_cls_dat) (s_cls_dat - 1) rev.l_cls_dat);
  ignore (L.fold_left (inserter hs_cod_itm) (s_cod_itm - 1) rev.l_cod_itm);
  ignore (L.fold_left (inserter hs_str_dat) (s_str_dat - 1) rev.l_str_dat);
  ignore (L.fold_left (inserter hs_dbg_inf) (s_dbg_inf - 1) rev.l_dbg_inf);
  ignore (L.fold_left (inserter hs_annot  ) (s_annot   - 1) rev.l_annot  );
  ignore (L.fold_left (inserter hs_stt_val) (s_stt_val - 1) rev.l_stt_val);
  ignore (L.fold_left (inserter hs_ann_dir) (s_ann_dir - 1) rev.l_ann_dir);
  ignore (L.fold_left (inserter hs_instrct) (s_instrct - 1) rev.l_instrct);
  abs,
  {
    h_typ_lst = hs_typ_lst;
    h_ann_ref = hs_ann_ref;
    h_ann_set = hs_ann_set;
    h_cls_dat = hs_cls_dat;
    h_cod_itm = hs_cod_itm;
    h_str_dat = hs_str_dat;
    h_dbg_inf = hs_dbg_inf;
    h_annot   = hs_annot  ;
    h_stt_val = hs_stt_val;
    h_ann_dir = hs_ann_dir;
    h_instrct = hs_instrct;
  }

let collect_rel (dx: D.dex) : rel =
  let collector (k: I.offset) (it: D.data_item) acc : off_list =
    let p = ref acc.o_typ_lst
    and f = ref acc.o_ann_ref
    and t = ref acc.o_ann_set
    and s = ref acc.o_cls_dat
    and e = ref acc.o_cod_itm
    and r = ref acc.o_str_dat
    and g = ref acc.o_dbg_inf
    and a = ref acc.o_annot
    and c = ref acc.o_stt_val
    and o = ref acc.o_ann_dir
    and i = ref acc.o_instrct in
    (
      match it with
      | D.TYPE_LIST    _ -> p := k :: !p
      | D.ANNO_SET_REF _ -> f := k :: !f
      | D.ANNO_SET     _ -> t := k :: !t
      | D.CLASS_DATA   _ -> s := k :: !s
      | D.CODE_ITEM    _ -> e := k :: !e
      | D.STRING_DATA  _ -> r := k :: !r
      | D.DEBUG_INFO   _ -> g := k :: !g
      | D.ANNOTATION   _ -> a := k :: !a
      | D.STATIC_VALUE _ -> c := k :: !c
      | D.ANNO_DIR     _ -> o := k :: !o
      | D.INSTRUCTION  _
      | D.FILL_ARRAY   _
      | D.SWITCH       _ -> i := k :: !i
      | _ -> ()
    );
    {
      o_typ_lst = !p;
      o_ann_ref = !f;
      o_ann_set = !t;
      o_cls_dat = !s;
      o_cod_itm = !e;
      o_str_dat = !r;
      o_dbg_inf = !g;
      o_annot   = !a;
      o_stt_val = !c;
      o_ann_dir = !o;
      o_instrct = !i;
    }
  in
  let rev = IM.fold collector dx.D.d_data off_init
  and f l = A.of_list l in
  {
    a_typ_lst = f rev.o_typ_lst;
    a_ann_ref = f rev.o_ann_ref;
    a_ann_set = f rev.o_ann_set;
    a_cls_dat = f rev.o_cls_dat;
    a_cod_itm = f rev.o_cod_itm;
    a_str_dat = f rev.o_str_dat;
    a_dbg_inf = f rev.o_dbg_inf;
    a_annot   = f rev.o_annot  ;
    a_stt_val = f rev.o_stt_val;
    a_ann_dir = f rev.o_ann_dir;
    a_instrct = f rev.o_instrct;
  }

(***********************************************************************)
(* Binary Dumping                                                      *)
(***********************************************************************)

(* how to compute link to link mapping

  sth_new : [a; b; c; a]

attach a tag - simply, the current position

  sth_tag : [(a,0); (b,1); (c,2); (a,3)]

sort w.r.t a certain rule defined at dex format

  sorted : [(a,0); (a,3); (b,1); (c,2)]

then, l2l is a mapping from tag to the new position
e.g. for (a,3), its position is 1, hence, l2l.(3) = 1

  l2l : [0; 2; 3; 1]

if an old id is 3, then its corresponding new id is,
  l2l.(3) = 1, so it can reach old info., the 2nd a in sth_new
*)

let make_map (c: 'a -> 'a -> int) (org: 'a DA.t) : D.link array * 'a DA.t =
  if DA.length org = 0 then [||], org else
  if DA.length org = 1 then [| D.to_idx 0 |], org else
  let atag = A.mapi (fun i e -> (e, i)) (DA.to_array org)
  and c' (e1, _) (e2, _) = c e1 e2 in
  A.stable_sort c' atag;
  let map = A.make (A.length atag) D.no_idx
  and init_e = fst atag.((A.length atag) - 1)
  and dup = ref 0 in (* to remove duplication *)
  ignore (A.fold_left
  ( fun (i, prv) (e, tag) ->
    let mi, i' = if c prv e = 0 then (incr dup; i-1, i) else i, i+1 in
    map.(tag) <- D.to_idx mi; i', e
  ) (0, init_e) atag);
  let arr = A.make ((A.length atag) - !dup) init_e in
  ignore (A.fold_left
  ( fun (i, prv) (e, _) ->
    let i' = if c prv e = 0 then i else (arr.(i) <- e; i+1) in i', e
  ) (0, init_e) atag);
  map, DA.of_array arr

(* instructions can be mixed by modifier.
   so, sth like lmap and l2l required *)

let imap = ref (None: D.link array option)

let init_imap sz =
  imap := Some (A.make sz D.no_idx)

let ins_cnt = ref 0

let upd_imap i =
  (some !imap).(i) <- D.to_idx !ins_cnt; incr ins_cnt

let n_ins l =
  l2l !imap "renew_ins" l

(* dump : string -> D.dex -> unit *)
let rec dump (name: string) (dx: D.dex) : unit =
  let pool = St.time "place" prepare   dx   in
  let calc = St.time "calc." calc_off  pool in
  let data = St.time "trans" transform calc in
  let chan = open_out_bin name in
  L.iter (output_char chan) data;
  close_out chan

(* 1st phase: remap links, abs position -> rel one, place data pool *)
and prepare (dx: D.dex) : D.dex =
  let abs, hsh = collect_abs_hsh dx in
  init_imap (!sz_instrct + 1);
  let lmap, str_map = make_str_map abs in
  let lmap, typ_map = make_typ_map         lmap dx.D.d_type_ids   in
  let lmap, pro_lst = make_pro_lst abs hsh lmap dx.D.d_proto_ids  in
  let lmap, fld_lst = make_fld_lst         lmap dx.D.d_field_ids  in
  let lmap, mtd_lst = make_mtd_lst         lmap dx.D.d_method_ids in
  let lmap, cls_lst = make_cls_lst abs hsh lmap dx.D.d_class_defs
  in
  let str_ids = DA.length str_map
  and typ_ids = DA.length typ_map
  and pro_ids = DA.length pro_lst
  and fld_ids = DA.length fld_lst
  and mtd_ids = DA.length mtd_lst
  and cls_def = DA.length cls_lst
  in
  offset := 0x70;
  let str_st = {
    D.size   = str_ids;
    D.offset = D.to_off !offset;
  } in
  offset := !offset + str_st.D.size * 4;
  let typ_st = {
    D.size   = typ_ids;
    D.offset = D.to_off !offset;
  } in
  offset := !offset + typ_st.D.size * 4;
  let pro_st = {
    D.size   = pro_ids;
    D.offset = D.to_off !offset;
  } in
  offset := !offset + pro_st.D.size * 4 * 3;
  let fld_st = {
    D.size   = fld_ids;
    D.offset = D.to_off !offset;
  } in
  offset := !offset + fld_st.D.size * 4 * 2;
  let mtd_st = {
    D.size   = mtd_ids;
    D.offset = D.to_off !offset;
  } in
  offset := !offset + mtd_st.D.size * 4 * 2;
  let cls_st = {
    D.size   = cls_def;
    D.offset = D.to_off !offset;
  } in
  offset := !offset + cls_st.D.size * 4 * 8;
  let dat_st = {
    D.size   = -1;
    D.offset = D.to_off !offset;
  } in
  let rel_dat = chg_abs_rel abs hsh lmap
  in
  let header = {
    D.magic        = dx.D.header.D.magic;
    D.checksum     = I64.zero;
    D.signature    = [];
    D.file_size    = -1;
    D.header_size  = 0x70;
    D.endian_tag   = dx.D.header.D.endian_tag;
    D.link         = dx.D.header.D.link;
    D.map_off      = D.to_off (align !offset 4);
    D.h_string_ids = str_st;
    D.h_type_ids   = typ_st;
    D.h_proto_ids  = pro_st;
    D.h_field_ids  = fld_st;
    D.h_method_ids = mtd_st;
    D.h_class_defs = cls_st;
    D.h_data       = dat_st;
  }
  in
  {
    D.header       = header;
    D.d_string_ids = str_map;
    D.d_type_ids   = typ_map;
    D.d_proto_ids  = pro_lst;
    D.d_field_ids  = fld_lst;
    D.d_method_ids = mtd_lst;
    D.d_class_defs = cls_lst;
    D.d_data       = rel_dat;
  }

and make_str_map abs : lmap * D.link DA.t =
  let oc (off1, _) (off2, _) = I32.compare off1 off2 in
  let org = L.stable_sort oc (A.to_list abs.str_dat) in
  let str_new = A.of_list org in
  let str_tag = A.mapi (fun i (off, str) -> (off, str, i)) str_new
  in
  let sc' (o1, s1, _) (o2, s2, _) = sc (o1, s1) (o2, s2) in
  A.stable_sort sc' str_tag;
  let map = A.make (A.length str_tag) D.no_idx in
(* especially, there can be redundant strings by combining *)
  let dup = ref 0 in
  ignore (A.fold_left
  ( fun (i, prv) (o, str, tag) ->
    let mi, i' =
      if sc (o, prv) (o, str) = 0 then (incr dup; i-1, i) else i, i+1 in
    map.(tag) <- D.to_idx mi; i', str
  ) (0, D.STRING_DATA "<Jnit>") str_tag);
  sz_str_dat := !sz_str_dat - !dup;
  {
    str_ids = Some map;
    typ_ids = None; pro_ids = None; fld_ids = None;
    mtd_ids = None; cls_dfs = None;
  },
  let smap = A.make ((A.length str_tag) - !dup) D.no_idx in
  DA.of_array (A.mapi (fun i _ -> D.to_idx i) smap)

and make_typ_map lmap org : lmap * D.link DA.t =
  let typ_new = DA.map (l2l lmap.str_ids "type_ids") org in
  let map, lst = make_map lc typ_new in
  { lmap with typ_ids = Some map }, lst

and make_pro_lst abs hsh lmap org : lmap * D.proto_id_item DA.t =
  let p2p (p: D.proto_id_item) = {
    D.shorty        = l2l lmap.str_ids "proto_id: shorty" p.D.shorty;
    D.return_type   = l2l lmap.typ_ids "proto_id: ret_ty" p.D.return_type;
    D.parameter_off = pos hsh.h_typ_lst p.D.parameter_off;
  } in
  let pro_new = DA.map p2p org
  and pc p1 p2 : int =
    let c1 = lc p1.D.return_type p2.D.return_type in
    if c1 <> 0 then c1 else
    let rec llc l1 l2 = match l1, l2 with
      | [], [] -> 0 | [], _  -> -1 |  _, [] -> 1
      | h1::t1, h2::t2 ->
        let c2 = lc (l2l lmap.typ_ids "llc" h1) (l2l lmap.typ_ids "llc" h2) in
        if c2 <> 0 then c2 else llc t1 t2
    and get_ty_list id =
      let idx = D.of_idx id in
      if idx = -1 then [] else
      match snd abs.typ_lst.(idx) with
      | D.TYPE_LIST tl -> tl
      | _ -> raise (D.Wrong_match "get_ty_list")
    in
    llc (get_ty_list p1.D.parameter_off) (get_ty_list p2.D.parameter_off)
  in
  let map, lst = make_map pc pro_new in
  { lmap with pro_ids = Some map }, lst

and make_fld_lst lmap org : lmap * D.field_id_item DA.t =
  let f2f (f: D.field_id_item) = {
    D.f_class_id = l2l lmap.typ_ids "field_id: class_idx" f.D.f_class_id;
    D.f_type_id  = l2l lmap.typ_ids "field_id: type_idx"  f.D.f_type_id;
    D.f_name_id  = l2l lmap.str_ids "field_id: name_idx"  f.D.f_name_id;
  } in
  let fld_new = DA.map f2f org
  and fc f1 f2 : int =
    let c1 = lc f1.D.f_class_id f2.D.f_class_id in
    if c1 <> 0 then c1 else
      let c2 = lc f1.D.f_name_id f2.D.f_name_id in
      if c2 <> 0 then c2 else lc f1.D.f_type_id f2.D.f_type_id
  in
  let map, lst = make_map fc fld_new in
  { lmap with fld_ids = Some map }, lst

and make_mtd_lst lmap org : lmap * D.method_id_item DA.t =
  let m2m (m: D.method_id_item) = {
    D.m_class_id = l2l lmap.typ_ids "method_id: class_idx" m.D.m_class_id;
    D.m_proto_id = l2l lmap.pro_ids "method_id: proto_idx" m.D.m_proto_id;
    D.m_name_id  = l2l lmap.str_ids "method_id: name_idx"  m.D.m_name_id;
  } in
  let mtd_new = DA.map m2m org
  and mc m1 m2 : int =
    let c1 = lc m1.D.m_class_id m2.D.m_class_id in
    if c1 <> 0 then c1 else
      let c2 = lc m1.D.m_name_id m2.D.m_name_id in
      if c2 <> 0 then c2 else lc m1.D.m_proto_id m2.D.m_proto_id
  in
  let map, lst = make_map mc mtd_new in
  { lmap with mtd_ids = Some map }, lst 

and make_cls_lst abs hsh lmap org : lmap * D.class_def_item DA.t =
  let c2c (c: D.class_def_item) = {
    D.c_class_id    = l2l lmap.typ_ids "class_def: class_idx"  c.D.c_class_id;
    D.c_access_flag = c.D.c_access_flag;
    D.superclass    = l2l lmap.typ_ids "class_def: superclass" c.D.superclass;
    D.interfaces    = pos hsh.h_typ_lst c.D.interfaces;
    D.source_file   = l2l lmap.str_ids "class_def: src_file"   c.D.source_file;
    D.annotations   = pos hsh.h_ann_dir c.D.annotations;
    D.class_data    = pos hsh.h_cls_dat c.D.class_data;
    D.static_values = pos hsh.h_stt_val c.D.static_values;
  } in
(*
  let cls_new = DA.map c2c org
  and cc c1 c2 : int =
    (* TODO: more complex compare w/ superclass/interfaces required *)
    lc c1.D.c_class_id c2.D.c_class_id
  in
  let map, lst = make_map cc cls_new in
  { lmap with cls_dfs = Some map }, lst
*)
  let cls_new = A.map c2c (DA.to_array org) in
  let cls_tag = A.mapi (fun i c -> (c, i)) cls_new in
  let map = A.make (A.length cls_tag) D.no_idx in
  A.iteri (fun i (_, tag) -> map.(tag) <- D.to_idx i) cls_tag;
  { lmap with cls_dfs = Some map },
  DA.of_list (fst (L.split (A.to_list cls_tag)))

and chg_abs_rel abs hsh lmap : D.data_item IM.t =
  let place_ann_set_ref acc = function
    | _, D.ANNO_SET_REF ll ->
    (
      let rl  = L.map (pos hsh.h_ann_set) ll in
      let cur = !offset in
      offset := !offset + 4 + (L.length ll) * 4;
      IM.add (to_i32 cur) (D.ANNO_SET_REF rl) acc
    )
    | _, _ -> raise (D.Wrong_match "chg_abs_rel: ANNO_SET_REF")
  and place_ann_set acc = function
    | _, D.ANNO_SET     ll ->
    (
      let get_an_ty (l: D.link) : D.link =
        let _, item = H.find hsh.h_annot (D.get_off l) in
        match item with
        | D.ANNOTATION ann ->
          l2l lmap.typ_ids "an_type_idx" ann.D.annotation.D.an_type_idx
        | _ -> raise (D.Wrong_match "place_ann_set")
      in
      let ac l1 l2 = lc (get_an_ty l1) (get_an_ty l2) in
      let rl  = L.map (pos hsh.h_annot) (L.stable_sort ac ll) in
      let cur = !offset in
      offset := !offset + 4 + (L.length ll) * 4;
      IM.add (to_i32 cur) (D.ANNO_SET rl) acc
    )
    | _, _ -> raise (D.Wrong_match "chg_abs_rel: ANNO_SET")
  and place_code_item acc = function
    | _, D.CODE_ITEM    ci ->
    (
      let dbg  = pos hsh.h_dbg_inf ci.D.debug_info_off
      and fi l = pos hsh.h_instrct l
      and ft t = { t with
        D.start_addr = pos hsh.h_instrct t.D.start_addr;
        D.end_addr   = pos hsh.h_instrct t.D.end_addr
      }
      and fh h =
        let fp p = {
          D.ch_type_idx = l2l lmap.typ_ids "ch_type_idx" p.D.ch_type_idx;
          D.addr        = pos hsh.h_instrct p.D.addr;
        } in
        {
          D.e_handlers     = L.map fp h.D.e_handlers;
          D.catch_all_addr = pos hsh.h_instrct h.D.catch_all_addr;
        }
      in
      offset := align !offset 4;
      let cur = !offset in
      offset := !offset + 2 * 4 + 4 * 2;
      let s_byt = !offset in
      let s_ins = DA.map fi ci.D.insns in
      let insns = chg_abs_rel_ins abs hsh lmap s_ins acc in
      let e_byt = !offset in
      if ci.D.tries_size <> 0 then
      (
        let fh' h =
          let fp' p = { p with
            D.ch_type_idx = l2l lmap.typ_ids "fp'" p.D.ch_type_idx
          } in
          { h with D.e_handlers = L.map fp' h.D.e_handlers }
        in
        let ty_chged_hdler = L.map fh' ci.D.c_handlers in
        offset := align !offset 4;
        offset := !offset + (L.length ci.D.tries) * 4 * 2;
        let from_b = from_base ci.D.insns hsh.h_instrct in
        offset := !offset + (CL.length (trans_handle from_b ty_chged_hdler))
      );
      let ci' = { ci with
        D.debug_info_off = dbg;
        D.insns_size     = e_byt - s_byt;
        D.insns          = s_ins;
        D.tries          = L.map ft ci.D.tries;
        D.c_handlers     = L.map fh ci.D.c_handlers;
      } in
      IM.add (to_i32 cur) (D.CODE_ITEM ci') insns
    )
    | _, _ -> raise (D.Wrong_match "chg_abs_rel: CODE_ITEM")
  and place_anno_dir acc = function
    | _, D.ANNO_DIR     an ->
    (
      let fs l = pos hsh.h_ann_set l
      and fr l = pos hsh.h_ann_ref l
      in
      let ff a = {
        D.target         = l2l lmap.fld_ids "dir: fields"  a.D.target;
        D.annotation_off = fs a.D.annotation_off;
      }
      and fm a = {
        D.target         = l2l lmap.mtd_ids "dir: methods" a.D.target;
        D.annotation_off = fs a.D.annotation_off;
      }
      and fp a = {
        D.target         = l2l lmap.mtd_ids "dir: parameters" a.D.target;
        D.annotation_off = fr a.D.annotation_off;
      }
      and ac an1 an2 = lc an1.D.target an2.D.target
      in
      offset := align !offset 4;
      let cur = !offset in
      offset := !offset + 4 * 4 + 8 * ((L.length an.D.fields)
        + (L.length an.D.methods) + (L.length an.D.parameters));
      let an' = {
        D.class_anno_off =                         fs an.D.class_anno_off;
        D.fields         = L.stable_sort ac (L.map ff an.D.fields);
        D.methods        = L.stable_sort ac (L.map fm an.D.methods);
        D.parameters     = L.stable_sort ac (L.map fp an.D.parameters);
      } in
      IM.add (to_i32 cur) (D.ANNO_DIR an') acc
    )
    | _, _ -> raise (D.Wrong_match "chg_abs_rel: ANNO_DIR")
  and place_type_list acc = function
    | _, D.TYPE_LIST    ll ->
    (
      let rl = L.map (l2l lmap.typ_ids "type_list") ll in
      offset := align !offset 4;
      let cur = !offset in
      offset := !offset + 4 + 2 * (L.length ll);
      IM.add (to_i32 cur) (D.TYPE_LIST rl) acc
    )
    | _, _ -> raise (D.Wrong_match "chg_abs_rel: TYPE_LIST")
  and place_string (prv, acc) = function
    | o, (D.STRING_DATA str as cur) ->
    (
      cur, if sc (o, prv) (o, cur) = 0 then acc else
      (
        let len = UTF8.length str in
        let cur = !offset in
        offset := !offset + CL.length (write_uleb128 len)
                + CL.length (write_utf8 str) + 1;
        IM.add (to_i32 cur) (D.STRING_DATA str) acc
      )
    )
    | _, _ -> raise (D.Wrong_match "chg_abs_rel: STRING_DATA")
  and place_debug_info acc = function
    | _, D.DEBUG_INFO  dbg ->
    (
      let dbg' = chg_abs_rel_dbg lmap dbg in
      let cur  = !offset in
      offset := !offset + CL.length (trans_debug dbg');
      IM.add (to_i32 cur) (D.DEBUG_INFO dbg') acc
    )
    | _, _ -> raise (D.Wrong_match "chg_abs_rel: DEBUG_INFO")
  and place_annotation acc = function
    | _, D.ANNOTATION   ai ->
    (
      let ai' = { ai with
        D.annotation = chg_abs_rel_ann lmap ai.D.annotation
      } in
      let cur = !offset in
      offset := !offset + 1 + CL.length (trans_encoded_ann ai'.D.annotation);
      IM.add (to_i32 cur) (D.ANNOTATION ai') acc
    )
    | _, _ -> raise (D.Wrong_match "chg_abs_rel: ANNOTATION")
  and place_static_val acc = function
    | _, D.STATIC_VALUE st ->
    (
      let st' = L.map (chg_abs_rel_ev lmap) st in
      let cur = !offset in
      offset := !offset + CL.length (trans_static_val st');
      IM.add (to_i32 cur) (D.STATIC_VALUE st') acc
    )
    | _, _ -> raise (D.Wrong_match "chg_abs_rel: STATIC_VALUE")
  and place_class_data cod acc = function
    | _, D.CLASS_DATA   ci ->
    (
      let ef e : D.encoded_field = { e with
        D.field_idx  = l2l lmap.fld_ids "field_idx" e.D.field_idx
      }
      and em e : D.encoded_method = { e with
        D.method_idx = l2l lmap.mtd_ids "method_idx" e.D.method_idx;
        D.code_off   = sop cod !sz_cod_itm (pos hsh.h_cod_itm e.D.code_off);
      } in
      let fc f1 f2 = lc f1.D.field_idx f2.D.field_idx
      and mc m1 m2 = lc m1.D.method_idx m2.D.method_idx in
      let ci' = {
        D.static_fields   = L.stable_sort fc (L.map ef ci.D.static_fields);
        D.instance_fields = L.stable_sort fc (L.map ef ci.D.instance_fields);
        D.direct_methods  = L.stable_sort mc (L.map em ci.D.direct_methods);
        D.virtual_methods = L.stable_sort mc (L.map em ci.D.virtual_methods);
      } in
      let cur = !offset in
      offset := !offset + CL.length (trans_class_data ci');
      IM.add (to_i32 cur) (D.CLASS_DATA ci') acc
    )
    | _, _ -> raise (D.Wrong_match "chg_abs_rel: CLASS_DATA")
  in
  let j = D.STRING_DATA "<Jnit>" in
  let    ref_map = A.fold_left place_ann_set_ref IM.empty abs.ann_ref in
  let    set_map = A.fold_left place_ann_set     ref_map  abs.ann_set in
  let    cod_map = A.fold_left place_code_item   set_map  abs.cod_itm in
  let    dir_map = A.fold_left place_anno_dir    cod_map  abs.ann_dir in
  let    typ_map = A.fold_left place_type_list   dir_map  abs.typ_lst in
  let _, str_map = A.fold_left place_string  (j, typ_map) abs.str_dat in
  let    dbg_map = A.fold_left place_debug_info  str_map  abs.dbg_inf in
  let    ann_map = A.fold_left place_annotation  dbg_map  abs.annot   in
  let    stt_map = A.fold_left place_static_val  ann_map  abs.stt_val
  in
  let collector (k: I.offset) (it: D.data_item) acc =
    match it with
    | D.CODE_ITEM _ -> k :: acc
    | _ -> acc
  in
  let cod = A.of_list (IM.fold collector stt_map []) in
  A.fold_left (place_class_data cod) stt_map abs.cls_dat

and chg_abs_rel_dbg lmap dbg : D.debug_info_item =
  let f = D.to_idx and g = D.of_idx in
  let p_map = l2l lmap.str_ids "dbg: parameter_name"
  and m_map (op, opr) =
    match op with
    | D.DBG_START_LOCAL          ->
    (
      let v::n::t::[] = opr in
      let opr' = match v, n, t with
        | I.OPR_REGISTER _, I.OPR_INDEX n', I.OPR_INDEX t' ->
          let nn = I.OPR_INDEX (g (l2l lmap.str_ids "dbg: 0x03: n" (f n')))
          and nt = I.OPR_INDEX (g (l2l lmap.typ_ids "dbg: 0x03: t" (f t')))
          in v::nn::nt::[]
        | _, _, _ -> raise (D.Wrong_dex "DBG_START_LOCAL")
      in (op, opr')
    )
    | D.DBG_START_LOCAL_EXTENDED ->
    (
      let v::n::t::s::[] = opr in
      let opr' = match v, n, t, s with
        | I.OPR_REGISTER _, I.OPR_INDEX n', I.OPR_INDEX t', I.OPR_INDEX s' ->
          let nn = I.OPR_INDEX (g (l2l lmap.str_ids "dbg: 0x04: n" (f n')))
          and nt = I.OPR_INDEX (g (l2l lmap.typ_ids "dbg: 0x04: t" (f t')))
          and ns = I.OPR_INDEX (g (l2l lmap.str_ids "dbg: 0x04: s" (f s')))
          in v::nn::nt::ns::[]
        | _, _, _, _ -> raise (D.Wrong_dex "DBG_START_LOCAL_EXTENDED")
      in (op, opr')
    )
    | D.DBG_SET_FILE             ->
    (
      let n::[] = opr in
      let opr' = match n with
        | I.OPR_INDEX n' ->
          I.OPR_INDEX (g (l2l lmap.str_ids "dbg: 0x09" (f n'))) :: []
        | _ -> raise (D.Wrong_dex "DBG_SET_FILE")
      in (op, opr')
    )
    | _ -> (op, opr)
  in
  {
    dbg with
    D.parameter_name = L.map p_map dbg.D.parameter_name;
    D.state_machine  = L.map m_map dbg.D.state_machine;
  }

and chg_abs_rel_ins abs hsh lmap (insl: D.link DA.t) init_map =
  let folder acc (s: D.link) : D.data_item IM.t =
    let idx = D.of_idx s in
    upd_imap idx;
    match abs.instrct.(idx) with
    | _, D.INSTRUCTION ins ->
    (
      let op, opr = ins in
      let msg = I.op_to_string op in
      let cur = !offset in
      let hx, sz = I.op_to_hx_and_size op in
      offset := !offset + sz;
      let f opr = match opr with
        | I.OPR_OFFSET off ->
        (
          let off' = pos hsh.h_instrct (D.Off off)
          in I.OPR_OFFSET (to_i32 (D.of_idx off'))
        )
        | I.OPR_INDEX  idx ->
        (
          let idx' =
            if 0x1a <= hx && hx <= 0x1b then
              l2l lmap.str_ids msg (D.to_idx idx)
            else if hx = 0x1c || (0x1f <= hx && hx <= 0x20)
              || (0x22 <= hx && hx <= 0x25) then
              l2l lmap.typ_ids msg (D.to_idx idx)
            else if 0x52 <= hx && hx <= 0x6d then
              l2l lmap.fld_ids msg (D.to_idx idx)
            else if 0x6e <= hx && hx <= 0x78 then
              l2l lmap.mtd_ids msg (D.to_idx idx)
            else (D.to_idx idx)
          in I.OPR_INDEX (D.of_idx idx')
        )
        | _ -> opr
      in
      let opr' = L.map f opr in
      IM.add (to_i32 cur) (D.INSTRUCTION (op, opr')) acc
    )
    | _, D.FILL_ARRAY  far ->
    (
      offset := align !offset 4;
      let cur = !offset in
      offset := !offset + 4 + 4
              + ((far.D.ad_width * far.D.ad_size + 1) / 2) * 2;
      IM.add (to_i32 cur) (D.FILL_ARRAY far) acc
    )
    | _, D.SWITCH       sw ->
    (
      offset := align !offset 4;
      let cur = !offset in
      let f l = pos hsh.h_instrct l in
      let sw' = { sw with
        D.sw_base    =       f sw.D.sw_base;
        D.sw_targets = L.map f sw.D.sw_targets;
      } in
      offset := !offset + 4 + 4 * (L.length sw.D.sw_keys)
                            + 4 * (L.length sw.D.sw_targets);
      IM.add (to_i32 cur) (D.SWITCH sw') acc
    )
    | _, _ -> raise (D.Wrong_match "change_abs_rel_ins")
  in
  DA.fold_left folder init_map insl

and chg_abs_rel_ev lmap ev : D.encoded_value =
  let f = D.to_idx and g = D.of_idx in
  match ev with
  | D.VALUE_BYTE       _
  | D.VALUE_SHORT      _
  | D.VALUE_CHAR       _
  | D.VALUE_INT        _
  | D.VALUE_LONG       _
  | D.VALUE_FLOAT      _
  | D.VALUE_DOUBLE     _ -> ev
  | D.VALUE_STRING     i ->
    D.VALUE_STRING (g (l2l lmap.str_ids "v_str" (f i)))
  | D.VALUE_TYPE       i ->
    D.VALUE_TYPE   (g (l2l lmap.typ_ids "v_typ" (f i)))
  | D.VALUE_FIELD      i ->
    D.VALUE_FIELD  (g (l2l lmap.fld_ids "v_fld" (f i)))
  | D.VALUE_METHOD     i ->
    D.VALUE_METHOD (g (l2l lmap.mtd_ids "v_mtd" (f i)))
  | D.VALUE_ENUM       i ->
    D.VALUE_ENUM   (g (l2l lmap.fld_ids "v_enm" (f i)))
  | D.VALUE_ARRAY      l -> D.VALUE_ARRAY (L.map (chg_abs_rel_ev lmap) l)
  | D.VALUE_ANNOTATION a -> D.VALUE_ANNOTATION (chg_abs_rel_ann lmap a)
  | D.VALUE_NULL         -> ev
  | D.VALUE_BOOLEAN    _ -> ev

and chg_abs_rel_ann lmap ann : D.encoded_annotation =
  let chg_elt (e: D.annotation_element) = {
    D.name_idx = l2l lmap.str_ids "name_idx" e.D.name_idx;
    D.value    = chg_abs_rel_ev lmap e.D.value;
  }
  and ec e1 e2 = lc e1.D.name_idx e2.D.name_idx
  in
  {
    D.an_type_idx = l2l lmap.typ_ids "an_type_idx" ann.D.an_type_idx;
    D.elements    = L.stable_sort ec (L.map chg_elt ann.D.elements);
  }

(* 2nd phase: calculate absolute offset, rel position -> abs one *)
and calc_off (px: D.dex) : D.dex =
  let rel = collect_rel px in
  offset := align !offset 4;
  let mpl = make_map_list px rel in
  let m_map = IM.add (to_i32 !offset) (D.MAP_LIST mpl) px.D.d_data in
  offset := !offset + 4 + (L.length mpl) * 12;
  let fs = !offset in
  let dat_st = {
    D.size   = fs - (D.of_off px.D.header.D.h_data.D.offset);
    D.offset = px.D.header.D.h_data.D.offset;
  } in
  let header = { px.D.header with D.file_size = fs; D.h_data = dat_st }
  and f_str s = sop rel.a_str_dat !sz_str_dat s
  and f_pro p = { p with
    D.parameter_off = sop rel.a_typ_lst !sz_typ_lst p.D.parameter_off
  }
  and f_cls c = { c with
    D.interfaces    = sop rel.a_typ_lst !sz_typ_lst c.D.interfaces;
    D.annotations   = sop rel.a_ann_dir !sz_ann_dir c.D.annotations;
    D.class_data    = sop rel.a_cls_dat !sz_cls_dat c.D.class_data;
    D.static_values = sop rel.a_stt_val !sz_stt_val c.D.static_values;
  }
  in { px with
    D.header       = header;
    D.d_string_ids = DA.map f_str px.D.d_string_ids;
    D.d_proto_ids  = DA.map f_pro px.D.d_proto_ids;
    D.d_class_defs = DA.map f_cls px.D.d_class_defs;
    D.d_data       = IM.map (chg_rel_abs rel) m_map;
  }

and make_map_list px rel : D.map_item list =
  let hdr_itm = CL.single {
    D.type_of_item = D.TYPE_HEADER_ITEM;
    D.mi_size      = 1;
    D.mi_offset    = D.to_off 0;
  }
  and str_itm = CL.single {
    D.type_of_item = D.TYPE_STRING_ITEM;
    D.mi_size      = px.D.header.D.h_string_ids.D.size;
    D.mi_offset    = px.D.header.D.h_string_ids.D.offset;
  }
  and typ_itm = CL.single {
    D.type_of_item = D.TYPE_TYPE_ID_ITEM;
    D.mi_size      = px.D.header.D.h_type_ids.D.size;
    D.mi_offset    = px.D.header.D.h_type_ids.D.offset;
  }
  and prt_itm = CL.single {
    D.type_of_item = D.TYPE_PROTO_ID_ITEM;
    D.mi_size      = px.D.header.D.h_proto_ids.D.size;
    D.mi_offset    = px.D.header.D.h_proto_ids.D.offset;
  }
  and fld_itm = CL.single {
    D.type_of_item = D.TYPE_FIELD_ID_ITEM;
    D.mi_size      = px.D.header.D.h_field_ids.D.size;
    D.mi_offset    = px.D.header.D.h_field_ids.D.offset;
  }
  and mtd_itm = CL.single {
    D.type_of_item = D.TYPE_METHOD_ID_ITEM;
    D.mi_size      = px.D.header.D.h_method_ids.D.size;
    D.mi_offset    = px.D.header.D.h_method_ids.D.offset;
  }
  and cls_def = CL.single {
    D.type_of_item = D.TYPE_CLASS_DEF_ITEM;
    D.mi_size      = px.D.header.D.h_class_defs.D.size;
    D.mi_offset    = px.D.header.D.h_class_defs.D.offset;
  } in
  let empty l = A.length l = 0 in
  let ann_ref = if empty rel.a_ann_ref then CL.empty else CL.single {
    D.type_of_item = D.TYPE_ANNOTATION_SET_REF_LIST;
    D.mi_size      = A.length rel.a_ann_ref;
    D.mi_offset    = D.Off rel.a_ann_ref.(!sz_ann_ref);
  }
  and ann_set = if empty rel.a_ann_set then CL.empty else CL.single {
    D.type_of_item = D.TYPE_ANNOTATION_SET_ITEM;
    D.mi_size      = A.length rel.a_ann_set;
    D.mi_offset    = D.Off rel.a_ann_set.(!sz_ann_set);
  }
  and cod_itm = if empty rel.a_cod_itm then CL.empty else CL.single {
    D.type_of_item = D.TYPE_CODE_ITEM;
    D.mi_size      = A.length rel.a_cod_itm;
    D.mi_offset    = D.Off rel.a_cod_itm.(!sz_cod_itm);
  }
  and ann_dir = if empty rel.a_ann_dir then CL.empty else CL.single {
    D.type_of_item = D.TYPE_ANNOTATION_DIRECTORY_ITEM;
    D.mi_size      = A.length rel.a_ann_dir;
    D.mi_offset    = D.Off rel.a_ann_dir.(!sz_ann_dir);
  }
  and typ_lst = if empty rel.a_typ_lst then CL.empty else CL.single {
    D.type_of_item = D.TYPE_TYPE_LIST;
    D.mi_size      = A.length rel.a_typ_lst;
    D.mi_offset    = D.Off rel.a_typ_lst.(!sz_typ_lst);
  }
  and str_dat = if empty rel.a_str_dat then CL.empty else CL.single {
    D.type_of_item = D.TYPE_STRING_DATA_ITEM;
    D.mi_size      = A.length rel.a_str_dat;
    D.mi_offset    = D.Off rel.a_str_dat.(!sz_str_dat);
  }
  and dbg_inf = if empty rel.a_dbg_inf then CL.empty else CL.single {
    D.type_of_item = D.TYPE_DEBUG_INFO_ITEM;
    D.mi_size      = A.length rel.a_dbg_inf;
    D.mi_offset    = D.Off rel.a_dbg_inf.(!sz_dbg_inf);
  }
  and annot   = if empty rel.a_annot   then CL.empty else CL.single {
    D.type_of_item = D.TYPE_ANNOTATION_ITEM;
    D.mi_size      = A.length rel.a_annot;
    D.mi_offset    = D.Off rel.a_annot.(!sz_annot);
  }
  and stt_val = if empty rel.a_stt_val then CL.empty else CL.single {
    D.type_of_item = D.TYPE_ENCODED_ARRAY_ITEM;
    D.mi_size      = A.length rel.a_stt_val;
    D.mi_offset    = D.Off rel.a_stt_val.(!sz_stt_val);
  }
  and cls_dat = if empty rel.a_cls_dat then CL.empty else CL.single {
    D.type_of_item = D.TYPE_CLASS_DATA_ITEM;
    D.mi_size      = A.length rel.a_cls_dat;
    D.mi_offset    = D.Off rel.a_cls_dat.(!sz_cls_dat);
  }
  and itself = CL.single {
    D.type_of_item = D.TYPE_MAP_LIST;
    D.mi_size      = 1;
    D.mi_offset    = D.Off (to_i32 !offset);
  } in
  CL.toList (hdr_itm @@ str_itm @@ typ_itm @@ prt_itm @@ fld_itm @@ mtd_itm
    @@ cls_def @@ ann_ref @@ ann_set @@ cod_itm @@ ann_dir @@ typ_lst
    @@ str_dat @@ dbg_inf @@ annot   @@ stt_val @@ cls_dat @@ itself)

and chg_rel_abs rel it : D.data_item =
  match it with
  | D.ANNO_SET_REF ll ->
    D.ANNO_SET_REF (L.map (sop rel.a_ann_set !sz_ann_set) ll)
  | D.ANNO_SET     ll ->
    D.ANNO_SET     (L.map (sop rel.a_annot   !sz_annot  ) ll)
  | D.CODE_ITEM    ci ->
  (
    let dbg  = sop rel.a_dbg_inf !sz_dbg_inf ci.D.debug_info_off
    and fi l = sop rel.a_instrct !sz_instrct (n_ins l)
    and ft t = { t with
      D.start_addr = sop rel.a_instrct !sz_instrct (n_ins t.D.start_addr);
      D.end_addr   = sop rel.a_instrct !sz_instrct (n_ins t.D.end_addr)
    }
    and fh h =
      let fp p = { p with
        D.addr = sop rel.a_instrct !sz_instrct (n_ins p.D.addr)
      } in
      {
        D.e_handlers     = L.map fp h.D.e_handlers;
        D.catch_all_addr =
          sop rel.a_instrct !sz_instrct (n_ins h.D.catch_all_addr);
      }
    in
    let ci' = { ci with
      D.debug_info_off = dbg;
      D.insns          = DA.map fi ci.D.insns;
      D.tries          =  L.map ft ci.D.tries;
      D.c_handlers     =  L.map fh ci.D.c_handlers;
    } in D.CODE_ITEM ci'
  )
  | D.ANNO_DIR     an ->
  (
    let fs l = sop rel.a_ann_set !sz_ann_set l
    and fr l = sop rel.a_ann_ref !sz_ann_ref l
    in
    let ff a = { a with D.annotation_off = fs a.D.annotation_off }
    and fm a = { a with D.annotation_off = fs a.D.annotation_off }
    and fp a = { a with D.annotation_off = fr a.D.annotation_off } in
    let an' = {
      D.class_anno_off =       fs an.D.class_anno_off;
      D.fields         = L.map ff an.D.fields;
      D.methods        = L.map fm an.D.methods;
      D.parameters     = L.map fp an.D.parameters;
    } in D.ANNO_DIR an'
  )
  | D.INSTRUCTION ins ->
  (
    let op, opr = ins in
    let f opr = match opr with
      | I.OPR_OFFSET off ->
        let idx  = D.to_idx (I32.to_int off) in
        let off' = sop rel.a_instrct !sz_instrct (n_ins idx)
        in I.OPR_OFFSET (D.get_off off')
      | _ -> opr
    in D.INSTRUCTION (op, (L.map f opr))
  )
  | D.SWITCH       sw ->
  (
    let f l = sop rel.a_instrct !sz_instrct (n_ins l) in
    let sw' = { sw with
      D.sw_base    =       f sw.D.sw_base;
      D.sw_targets = L.map f sw.D.sw_targets;
    } in D.SWITCH sw'
  )
  | _ -> it

(* 3rd phase: transform DEX into byte list *)
and transform (cx: D.dex) : char list =
  let w_str_ids l =  write_off l
  and w_typ_ids l =  write_idx l
  and w_pro_ids p = (write_idx   p.D.shorty)
                 @@ (write_idx   p.D.return_type)
                 @@ (write_off   p.D.parameter_off)
  and w_fld_ids f = (write_idx16 f.D.f_class_id)
                 @@ (write_idx16 f.D.f_type_id)
                 @@ (write_idx   f.D.f_name_id)
  and w_mtd_ids m = (write_idx16 m.D.m_class_id)
                 @@ (write_idx16 m.D.m_proto_id)
                 @@ (write_idx   m.D.m_name_id)
  and w_cls_def c = (write_idx   c.D.c_class_id)
                 @@ (write32     c.D.c_access_flag)
                 @@ (write_idx   c.D.superclass)
                 @@ (write_off   c.D.interfaces)
                 @@ (write_idx   c.D.source_file)
                 @@ (write_off   c.D.annotations)
                 @@ (write_off   c.D.class_data)
                 @@ (write_off   c.D.static_values)
  in
  let str_ids = aflatten (DA.map w_str_ids cx.D.d_string_ids)
  and typ_ids = aflatten (DA.map w_typ_ids cx.D.d_type_ids)
  and pro_ids = aflatten (DA.map w_pro_ids cx.D.d_proto_ids)
  and fld_ids = aflatten (DA.map w_fld_ids cx.D.d_field_ids)
  and mtd_ids = aflatten (DA.map w_mtd_ids cx.D.d_method_ids)
  and cls_def = aflatten (DA.map w_cls_def cx.D.d_class_defs)
  in
  let insns = H.create !sz_instrct in
  let collector (k: I.offset) (it: D.data_item) =
    match it with
    | D.INSTRUCTION _ | D.FILL_ARRAY _ | D.SWITCH _ -> H.add insns k (k, it)
    | _ -> ()
  in
  IM.iter collector cx.D.d_data;
  let start = D.get_off cx.D.header.D.h_data.D.offset in
  let wo_hd =
    str_ids @@ typ_ids @@ pro_ids @@ fld_ids @@ mtd_ids @@ cls_def @@
    (snd (IM.fold (trans_data insns) cx.D.d_data (start, CL.empty)))
  in
  let w__hd = (trans_header cx.D.header) @@ wo_hd in
  let shasg = to_bytes (Sha1.to_hex (Sha1.string (to_str w__hd))) in
  let wo_mc = CL.toList (shasg @@ w__hd) in
  let crc32 = L.fold_left adler32_update adler32_init wo_mc in
  let crc = write32u (adler32_crc crc32) in
  magic @ (CL.toList crc) @ wo_mc

and trans_header (h: D.dex_header) : char CL.clist =
  let trans_section (s: D.section) : char CL.clist =
    write32 s.D.size @@ write_off s.D.offset
  in
  let fsz = write32 h.D.file_size
  and hsz = write32 h.D.header_size
  and tag = match   h.D.endian_tag with
    | D.LITTLE -> write32 0x12345678
    | D.BIG    -> write32 0x78563412
  and lnk = trans_section h.D.link
  and mof = write_off     h.D.map_off
  and str = trans_section h.D.h_string_ids
  and typ = trans_section h.D.h_type_ids
  and pro = trans_section h.D.h_proto_ids
  and fld = trans_section h.D.h_field_ids
  and mtd = trans_section h.D.h_method_ids
  and cls = trans_section h.D.h_class_defs
  and dat = trans_section h.D.h_data in
     fsz @@ hsz @@ tag @@ lnk @@ mof @@ str
  @@ typ @@ pro @@ fld @@ mtd @@ cls @@ dat

and trans_data insns (k: I.offset) (it: D.data_item) (prv, acc) =
  let null_bytes = fill null (I32.to_int (I32.sub k prv))
  and data = match it with
    | D.MAP_LIST     ml ->
    (
      let trans_mitem mi =
        let ty = D.of_type_code mi.D.type_of_item in
        (write16 ty) @@ (fill null 2)
        @@ write32 mi.D.mi_size @@ write_off mi.D.mi_offset
      in
      write32 (L.length ml) @@ flatten (L.map trans_mitem ml)
    )
    | D.TYPE_LIST    tl ->
      write32 (L.length tl) @@ flatten (L.map write_idx16 tl)
    | D.ANNO_SET_REF ll
    | D.ANNO_SET     ll ->
      write32 (L.length ll) @@ flatten (L.map write_off   ll)
    | D.CLASS_DATA   ci -> trans_class_data ci
    | D.CODE_ITEM    ci -> trans_code_item insns ci
    | D.STRING_DATA str ->
      write_uleb128 (UTF8.length str) @@ write_utf8 str
    | D.DEBUG_INFO  dbg -> trans_debug dbg
    | D.ANNOTATION   an ->
    (
      let vis = match an.D.visible with
        | D.VISIBILITY_BUILD   -> 0x00
        | D.VISIBILITY_RUNTIME -> 0x01
        | D.VISIBILITY_SYSTEM  -> 0x02
      in
      CL.single (write8 vis) @@ (trans_encoded_ann an.D.annotation)
    )
    | D.STATIC_VALUE sl -> trans_static_val sl
    | D.ANNO_DIR     an ->
    (
      let fsz = write32 (L.length an.D.fields)
      and msz = write32 (L.length an.D.methods)
      and psz = write32 (L.length an.D.parameters)
      and trans_anno_off ao = (write_idx ao.D.target)
                           @@ (write_off ao.D.annotation_off)
      in
      (write_off an.D.class_anno_off) @@ fsz @@ msz @@ psz
      @@ flatten (L.map trans_anno_off an.D.fields)
      @@ flatten (L.map trans_anno_off an.D.methods)
      @@ flatten (L.map trans_anno_off an.D.parameters)
    )
    | _ -> CL.empty
  in
  if data = CL.empty then prv, acc else
  I32.add k (to_i32 (CL.length data)), acc @@ null_bytes @@ data

and trans_code_item insns (ci: D.code_item) : char CL.clist =
  let rsz = write16   ci.D.registers_size
  and isz = write16   ci.D.ins_size
  and osz = write16   ci.D.outs_size
  and tsz = write16   ci.D.tries_size
  and dff = write_off ci.D.debug_info_off
  and nsz = write32  (ci.D.insns_size / 2)
  in
  let ins =
    let wo_pad = trans_ins insns ci.D.insns in
    let gap = ci.D.insns_size - (CL.length wo_pad) in
    if 0 = gap then wo_pad else wo_pad @@ (fill null gap)
  in
  let tri, hdl = if ci.D.tries_size = 0 then CL.empty, CL.empty else
    let from_b = from_base ci.D.insns insns in
    let pad = if (ci.D.insns_size / 2) mod 2 = 0 then CL.empty
              else let il = CL.length ins in fill null ((align il 4) - il)
    and pos = make_hdl_pos from_b ci.D.c_handlers in
    pad @@ flatten (L.map (trans_try insns from_b pos) ci.D.tries),
    trans_handle from_b ci.D.c_handlers
  in
  rsz @@ isz @@ osz @@ tsz @@ dff @@ nsz @@ ins @@ tri @@ hdl

and trans_try insns from_b pos (ti: D.try_item) : char CL.clist =
  let addr = (from_b ti.D.start_addr) / 2
  and end_sz =
    match snd (H.find insns (D.get_off ti.D.end_addr)) with
    | D.INSTRUCTION (op, _) -> snd (I.op_to_hx_and_size op)
    | _ -> raise (D.Wrong_match "trans_try")
  and btw = (from_b ti.D.end_addr) - (from_b ti.D.start_addr)
  in
  let sta = write32u (to_i64 addr)
  and cnt = write16 ((btw + end_sz) / 2)
  and off = write16 pos.(D.of_idx ti.D.handler_off)
  in sta @@ cnt @@ off

and make_hdl_pos from_b (hdls: D.encoded_catch_handler list) : int array =
  let blist = (write_uleb128 (L.length hdls))
           :: (L.map (trans_e_handle from_b) hdls) in
  let slist = L.map CL.length blist in
  let acc = ref 0 in
  let acc_sz sz : int =
    let temp = !acc in acc := !acc + sz; temp
  in
  A.of_list (L.tl (L.map acc_sz slist))

and trans_e_handle from_b (h: D.encoded_catch_handler) : char CL.clist =
  let sz = (L.length h.D.e_handlers)
           * (if (D.of_off h.D.catch_all_addr) <> 0 then -1 else 1) in
  let ch_all = if sz > 0 then CL.empty else
    write_uleb128 ((from_b h.D.catch_all_addr) / 2)
  in
  let p_folder (p: D.type_addr_pair) acc' =
    let ty_id = write_uleb128 (D.of_idx p.D.ch_type_idx)
    and uaddr = write_uleb128 ((from_b p.D.addr) / 2) in
    ty_id @@ uaddr @@ acc'
  in
  let handlers = L.fold_right p_folder h.D.e_handlers CL.empty
  in (write_sleb128 sz) @@ handlers @@ ch_all

and trans_handle from_b (hdls: D.encoded_catch_handler list) : char CL.clist =
  let h_folder (h: D.encoded_catch_handler) acc =
    (trans_e_handle from_b h) @@ acc
  in
  (write_uleb128 (L.length hdls)) @@ (L.fold_right h_folder hdls CL.empty)

and trans_ins insns (insl: D.link DA.t) : char CL.clist =
  let cur = ref (D.of_off (DA.get insl 0)) in
  let folder acc (s: D.link) =
    let bytes =
      match H.find insns (D.get_off s) with
      | _, D.INSTRUCTION ins -> CL.fromList (I.instr_to_bytes !cur ins)
      | k, D.FILL_ARRAY  far ->
      (
        let ident = write16 0x0300
        and width = write16 far.D.ad_width
        and  size = write32 far.D.ad_size
        and  data =
          let write_data opr = match opr with
            | I.OPR_CONST i64 ->
            (
              match far.D.ad_width with
              | 1 -> CL.single (write8 (I64.to_int i64))
              | 2 -> write16 (I64.to_int i64)
              | 4 -> write32u i64
              | 8 -> write64  i64
              | _ -> raise (D.NOT_YET "fill-array-data: other sizes?")
            )
            | _ -> raise (D.Wrong_match "trans_ins: fill-array")
          in
          flatten (L.map write_data far.D.ad_data)
        in
        let nulls = fill null ((I32.to_int k) - !cur) in
        nulls @@ ident @@ width @@ size @@ data
      )
      | k, D.SWITCH       sw ->
      (
        let id = if L.length sw.D.sw_keys = 1 then 0x0100 else 0x0200 in
        let base = D.of_off sw.D.sw_base in
        let wrt_base off =
          let ioff = D.of_off off in
          write32u (to_i64 ((ioff - base) / 2))
        in
        let ident = write16 id
        and  size = write16 sw.D.sw_size
        and  keys = flatten (L.map write32 sw.D.sw_keys)
        and  trgt = flatten (L.map wrt_base sw.D.sw_targets)
        in
        let nulls = fill null ((I32.to_int k) - !cur) in
        nulls @@ ident @@ size @@ keys @@ trgt
      )
      | _, _ -> raise (D.Wrong_match "trans_ins")
    in
    cur := !cur + (CL.length bytes);
    acc @@ bytes
  in
  DA.fold_left folder CL.empty insl

and trans_debug (dbg: D.debug_info_item) : char CL.clist =
  let p_folder (p: D.link) acc =
    write_uleb128p1 (D.of_idx p) @@ acc
  in
  let m_folder (op, opr) acc =
    match op with
    | D.DBG_END_SEQUENCE         -> (CL.single (write8 0x00)) @@ acc
    | D.DBG_ADVANCE_PC           ->
    (
      let addr::[] = opr in
      let opr' = match addr with
        | I.OPR_CONST addr_diff -> write_uleb128 (I64.to_int addr_diff)
        | _ -> raise (D.Wrong_dex "DBG_ADVANCE_PC")
      in (CL.single (write8 0x01)) @@ opr' @@ acc
    )
    | D.DBG_ADVANCE_LINE         ->
    (
      let line::[] = opr in
      let opr' = match line with
        | I.OPR_CONST line_diff -> write_sleb128 (I64.to_int line_diff)
        | _ -> raise (D.Wrong_dex "DBG_ADVANCE_LINE")
      in (CL.single (write8 0x02)) @@ opr' @@ acc
    )
    | D.DBG_START_LOCAL          ->
    (
      let v::n::t::[] = opr in
      let opr' = match v, n, t with
        | I.OPR_REGISTER v', I.OPR_INDEX n', I.OPR_INDEX t' ->
          (write_uleb128 v') @@ (write_uleb128p1 n') @@ (write_uleb128p1 t')
        | _, _, _ -> raise (D.Wrong_dex "DBG_START_LOCAL")
      in (CL.single (write8 0x03)) @@ opr' @@ acc
    )
    | D.DBG_START_LOCAL_EXTENDED ->
    (
      let v::n::t::s::[] = opr in
      let opr' = match v, n, t, s with
        | I.OPR_REGISTER v', I.OPR_INDEX n', I.OPR_INDEX t', I.OPR_INDEX s' ->
           (write_uleb128   v') @@ (write_uleb128p1 n')
        @@ (write_uleb128p1 t') @@ (write_uleb128p1 s')
        | _, _, _, _ -> raise (D.Wrong_dex "DBG_START_LOCAL_EXTENDED")
      in (CL.single (write8 0x04)) @@ opr' @@ acc
    )
    | D.DBG_END_LOCAL            ->
    (
      let v::[] = opr in
      let opr' = match v with
        | I.OPR_REGISTER v' -> write_uleb128 v'
        | _ -> raise (D.Wrong_dex "DBG_END_LOCAL")
      in (CL.single (write8 0x05)) @@ opr' @@ acc
    )
    | D.DBG_RESTART_LOCAL        ->
    (
      let v::[] = opr in
      let opr' = match v with
        | I.OPR_REGISTER v' -> write_uleb128 v'
        | _ -> raise (D.Wrong_dex "DBG_RESTART_LOCAL")
      in (CL.single (write8 0x06)) @@ opr' @@ acc
    )
    | D.DBG_SET_PROLOGUE_END     -> (CL.single (write8 0x07)) @@ acc
    | D.DBG_SET_EPILOGUE_BEGIN   -> (CL.single (write8 0x08)) @@ acc
    | D.DBG_SET_FILE             ->
    (
      let n::[] = opr in
      let opr' = match n with
        | I.OPR_INDEX n' -> write_uleb128p1 n'
        | _ -> raise (D.Wrong_dex "DBG_SET_FILE")
      in (CL.single (write8 0x09)) @@ opr' @@ acc
    )
    | D.DBG_SPECIAL              ->
    (
      let sp_op::[] = opr in
      match sp_op with
      | I.OPR_CONST c -> (CL.single (write8 (I64.to_int c))) @@ acc
      | _ -> raise (D.Wrong_dex "DBG_SPECIAL")
    )
  in
  let lstart = write_uleb128           dbg.D.line_start
  and par_sz = write_uleb128 (L.length dbg.D.parameter_name)
  and param  = L.fold_right   p_folder dbg.D.parameter_name CL.empty
  and s_mach = L.fold_right   m_folder dbg.D.state_machine  CL.empty
  in lstart @@ par_sz @@ param @@ s_mach

and trans_encoded_value (ev: D.encoded_value) : char CL.clist =
  match ev with
  | D.VALUE_BYTE       i64 -> write_siv  0x00 i64
  | D.VALUE_SHORT      i64 -> write_siv  0x02 i64
  | D.VALUE_CHAR       i64 -> write_uiv  0x03 i64
  | D.VALUE_INT        i64 -> write_siv  0x04 i64
  | D.VALUE_LONG       i64 -> write_siv  0x06 i64
  | D.VALUE_FLOAT      i64 -> write_r0ev 0x10 (I64.shift_left i64 32)
  | D.VALUE_DOUBLE     i64 -> write_r0ev 0x11 i64
  | D.VALUE_STRING     i   -> write_uiv  0x17 (to_i64 i)
  | D.VALUE_TYPE       i   -> write_uiv  0x18 (to_i64 i)
  | D.VALUE_FIELD      i   -> write_uiv  0x19 (to_i64 i)
  | D.VALUE_METHOD     i   -> write_uiv  0x1a (to_i64 i)
  | D.VALUE_ENUM       i   -> write_uiv  0x1b (to_i64 i)
  | D.VALUE_ARRAY      evl ->
    (CL.single (write8 0x1c)) @@ (write_uleb128 (L.length evl))
    @@ flatten (L.map trans_encoded_value evl)
  | D.VALUE_ANNOTATION ann -> CL.single (write8 0x1d) @@ (trans_encoded_ann ann)
  | D.VALUE_NULL           -> CL.single (write8 0x1e)
  | D.VALUE_BOOLEAN    b   -> CL.single (write8 (if b then 0x3f else 0x1f))

and trans_encoded_ann (ann: D.encoded_annotation) : char CL.clist =
  let ty = write_uleb128 (D.of_idx ann.D.an_type_idx)
  and sz = write_uleb128 (L.length ann.D.elements)
  and e_folder (e: D.annotation_element) acc =
    let name  = write_uleb128 (D.of_idx e.D.name_idx)
    and value = trans_encoded_value e.D.value
    in name @@ value @@ acc
  in
  ty @@ sz @@ L.fold_right e_folder ann.D.elements CL.empty

and trans_static_val (sl: D.encoded_value list) : char CL.clist =
  let sz = write_uleb128 (L.length sl) in
  sz @@ flatten (L.map trans_encoded_value sl)

and trans_class_data (ci: D.class_data_item) : char CL.clist =
  let ssz = write_uleb128 (L.length ci.D.static_fields)
  and isz = write_uleb128 (L.length ci.D.instance_fields)
  and dsz = write_uleb128 (L.length ci.D.direct_methods)
  and vsz = write_uleb128 (L.length ci.D.virtual_methods)
  and prv = ref 0 in
  let ef e =
    let w = (write_uleb128 ((D.of_idx e.D.field_idx)  - !prv))
         @@ (write_uleb128 e.D.f_access_flag) in
    prv := D.of_idx e.D.field_idx; w
  and em e =
    let w = (write_uleb128 ((D.of_idx e.D.method_idx) - !prv))
         @@ (write_uleb128 e.D.m_access_flag)
         @@ (write_uleb128 (D.of_off e.D.code_off)) in
    prv := D.of_idx e.D.method_idx; w
  in
  prv := 0;
  let s_fld = flatten (L.map ef ci.D.static_fields)   in
  prv := 0;
  let i_fld = flatten (L.map ef ci.D.instance_fields) in
  prv := 0;
  let d_mtd = flatten (L.map em ci.D.direct_methods)  in
  prv := 0;
  let v_mtd = flatten (L.map em ci.D.virtual_methods) in
  ssz @@ isz @@ dsz @@ vsz @@ s_fld @@ i_fld @@ d_mtd @@ v_mtd

