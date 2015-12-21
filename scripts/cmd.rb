#! /usr/bin/env ruby

## Copyright (c) 2010-2014,
##  Jinseong Jeon <jsjeon@cs.umd.edu>
##  Kris Micinski <micinski@cs.umd.edu>
##  Jeff Foster   <jfoster@cs.umd.edu>
## All rights reserved.
##
## Redistribution and use in source and binary forms, with or without
## modification, are permitted provided that the following conditions are met:
##
## 1. Redistributions of source code must retain the above copyright notice,
## this list of conditions and the following disclaimer.
##
## 2. Redistributions in binary form must reproduce the above copyright notice,
## this list of conditions and the following disclaimer in the documentation
## and/or other materials provided with the distribution.
##
## 3. The names of the contributors may not be used to endorse or promote
## products derived from this software without specific prior written
## permission.
##
## THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
## AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
## IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
## ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
## LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
## CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
## SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
## INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
## CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
## ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
## POSSIBILITY OF SUCH DAMAGE.

require 'rubygems'
require 'optparse'
require 'pp'

THIS_FILE = File.expand_path(__FILE__)
HERE = File.dirname(THIS_FILE)
HOME = File.join(HERE, "..")
RES = File.join(HOME, "results")
$tmp_dir = "tmp_dir_" + rand(36**8).to_s(36) # random string with size 8

require "#{File.join(HERE, "apk")}"

cmds = [
  "unparse", "htmlunparse", "jsonunparse", "id", "combine",
  "info", "classes", "api", "opstat",
  "intent", "cg", "cfg", "dom", "pdom",
  "dump_method", "dependants", "live", "const", "reach",
  "exported", "permissions", "sdk", "launcher",
  "activity", "service", "provider", "receiver",
  "custom_views", "fragments", "buttons",
  "hello", "logging", "logging_ui", "directed"
]

cmd = ""
op = nil
sdk = nil
mtd = nil
lib = nil
to = nil
detail = :none
outputdir = nil

option_parser = OptionParser.new do |opts|
  opts.banner = "Usage: ruby #{__FILE__} target.(apk|dex) [options]"
  opts.on("--logging-fine", "turn on fine grained logging") do
    detail = :fine
  end    
  opts.on("--logging-regex", "turn on regex based logging") do
    detail = :regex
  end    
  opts.on("--cmd command", cmds, cmds.join(", ")) do |c|
    cmd = c
  end
  opts.on("--op opcodes", Array, "opcode statistics") do |l|
    op = l
  end
  opts.on("--sdk com.name", "SDK name of interest") do |s|
    sdk = s
  end
  opts.on("--mtd class.method", "target method for CG, CFG, etc.") do |m|
    mtd = m
  end
  opts.on("--lib lib.dex", "another dex file for library or merging") do |d|
    lib = d
  end
  opts.on("--outputdir dir", "place output in dir") do |t|
    outputdir = t
  end
  opts.on("--to blah.(yml|pdf|apk|dex)", "result file name") do |t|
    to = t
  end
  opts.on("--no-pdf", "do not convert dot output to pdf") do
    Dex.pdf = false
  end
  opts.on("--opt-dex options", "options for redexer binary") do |o|
    Dex.opt = o
  end
  opts.on_tail("-h", "--help", "show this message") do
    puts opts
    exit
  end
end.parse!
 
if not (cmd == "hello") and ARGV.length < 1
  raise "target file is missed"
end

if not cmds.include?(cmd)
  raise "wrong command"
end

fn = ARGV[0]

def close(apk)
  apk.clean if apk
end

apk = nil
dex = nil
case File.extname(fn)
when ".dex"
  dex = fn
when ".apk"
  apk = Apk.new(fn, $tmp_dir)
  if apk.unpack
    dex = apk.dex
  else
    close(apk)
    raise "unpacking apk failed"
  end
else
  raise "wrong file extension"
end if ARGV.length >= 1

def apk?(apk)
  if not apk
    raise "not .apk file"
  end
end

def dex_succ?(apk, cmd)
  if not Dex.succ
    close(apk)
    raise "cannot get #{cmd}"
  end
  true
end

def rewrite_and_install(apk,fn,to,res)
  if not apk.succ
    puts apk.out
    close(apk)
    raise "rewriting dex failed"
  end
  apk.add_permission
  if to
    apk.repack(to)
  else
    apk.repack
  end
  if not apk.succ
    puts apk.out
    close(apk)
    raise "repacking apk failed"
  end
  # for debugging, leave rewritten dex and xml files
  system("cp -f #{File.join($tmp_dir, "classes.dex")} #{res}")
  system("cp -f #{File.join($tmp_dir, "AndroidManifest.xml")} #{res}")
  # and move the rewritten apk
  if not to
    rewritten = File.basename(fn)
    system("mv -f #{rewritten} #{res}") if apk.succ
  end
  puts apk.out if apk.succ
end

case cmd
when "unparse"
  if to
    Dex.unparse(dex, to)
  else
    yml = Dex.unparse(dex)
    puts yml if dex_succ?(apk, cmd)
  end
when "htmlunparse" 
  if outputdir
    Dex.htmlunparse(dex, outputdir)
  else
    Dex.htmlunparse(dex)
  end
when "jsonunparse"
  if outputdir
    Dex.jsonunparse(dex, outputdir)
  else
    Dex.jsonunparse(dex)
  end
when "id"
  if to
    Dex.dump(dex, to)
  else
    Dex.dump(dex)
    system("mv -f classes.dex #{RES}") if dex.succ
  end
when "combine"
  raise "no lib dex provided" unless lib
  if to
    Dex.combine(dex, lib, to)
  else
    Dex.combine(dex, lib)
    system("mv -f classes.dex #{RES}") if dex.succ
  end
when "info", "classes", "api"
  if cmd == "api" and sdk
    Dex.send(cmd.to_sym, dex, sdk)
  else
    Dex.send(cmd.to_sym, dex)
  end
  puts Dex.out if dex_succ?(apk, cmd)
when "opstat"
  if op
    Dex.opstat(dex, op)
  else
    Dex.opstat(dex)
  end
  puts Dex.out if dex_succ?(apk, cmd)
when "intent"
  Dex.intent(dex)
  puts Dex.out if dex_succ?(apk,cmd)
when "cg"
  pdf = cmd + ".pdf"
  pdf = to if to
  Dex.callgraph(dex, pdf)
  if Dex.pdf
    system("mv -f #{pdf} #{RES}") unless to
  else
    puts Dex.out if dex_succ?(apk, cmd)
  end
when "cfg", "dom", "pdom"
  if not mtd
    close(apk)
    raise "No target method is specified"
  end
  part = mtd.split('.')
  cls = part[0..-2].join('.')
  mtd = part[-1]
  pdf = cmd + ".pdf"
  pdf = to if to
  Dex.send(cmd.to_sym, dex, cls, mtd, pdf)
  if Dex.pdf
    system("mv -f #{pdf} #{RES}") unless to
  else
    puts Dex.out if dex_succ?(apk, cmd)
  end
when "dump_method", "dependants", "live", "const", "reach"
  if not mtd
    close(apk)
    raise "No target method is specified"
  end
  part = mtd.split('.')
  cls = part[0..-2].join('.')
  mtd = part[-1]
  Dex.send(cmd.to_sym, dex, cls, mtd)
  puts Dex.out if dex_succ?(apk, cmd)
when "exported", "permissions", "sdk", "launcher"
  apk? apk
  res = apk.send(cmd.to_sym)
  if res != []
    puts fn
    puts res
  end
when "activity", "service", "provider", "receiver"
  apk? apk
  protected_comps, unprotected = apk.find_comps(cmd)
  if not protected_comps.empty?
    puts "Protected:"
    pp protected_comps
  end
  if not unprotected.empty?
    puts "Unprotected:"
    puts unprotected
  end
when "custom_views", "fragments", "buttons"
  apk? apk
  res = apk.send(cmd.to_sym)
  if res != {}
    puts fn
    require 'pp'
    PP.pp res
  end
when "logging", "logging_ui"
  apk.send(cmd.to_sym,detail)
  rewrite_and_install(apk,fn,to,RES)
when "directed"
  apk.directed
  rewrite_and_install(apk,fn,to,RES)
when "hello"
  Dex.hello
  system("mv -f classes.dex #{RES}") if dex_succ?(apk, cmd)
end

close(apk)
