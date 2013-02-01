#! /usr/bin/env ruby

## Copyright (c) 2010-2012,
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
require 'pathname'
require 'pp'

THIS_FILE = Pathname.new(__FILE__).realpath.to_s
HERE = File.dirname(THIS_FILE)
HOME = HERE + "/.."
RES = HOME + "/results/"
tmp_dir = "tmp_dir_" + rand(36**8).to_s(36) # random string with size 8

require "#{HERE}/apk"

cmds = [
  "unparse", "htmlunparse", "id", "combine",
  "info", "classes", "api", "opstat",
  "cg", "cfg", "dom", "pdom",
  "dump_method", "dependants", "live", "const",
  "sdk", "launcher", "rpc_stubs", "hello", "logging"
]

cmd = ""
op = nil
mtd = nil
lib = nil
to = nil
outputdir = nil

option_parser = OptionParser.new do |opts|
  opts.banner = "Usage: ruby #{THIS_FILE} target.(apk|dex) [options]"
  opts.on("--cmd command", cmds, cmds.join(", ")) do |c|
    cmd = c
  end
  opts.on("--op opcodes", Array, "opcode statistics") do |l|
    op = l
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
  opts.on_tail("-h", "--help", "show this message") do
    puts opts
    exit
  end
end.parse!
 
if not (cmd == "hello") and ARGV.length < 1
  puts "Usage: ruby #{THIS_FILE} target.(apk|dex) [options]"
  exit
end

if not cmds.include?(cmd)
  raise "wrong command"
end

def close(apk)
  apk.clean if apk
end

apk = nil
dex = nil
case File.extname(ARGV[0])
when ".dex"
  dex = ARGV[0]
when ".apk"
  apk = Apk.new(ARGV[0], tmp_dir)
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
when "id"
  if to
    Dex.dump(dex, to)
  else
    Dex.dump(dex)
    system("mv -f #{HOME}/classes.dex #{RES}") if dex.succ
  end
when "combine"
  raise "no lib dex provided" unless lib
  if to
    Dex.combine(dex, lib, to)
  else
    Dex.combine(dex, lib)
    system("mv -f #{HOME}/classes.dex #{RES}") if dex.succ
  end
when "info", "classes", "api"
  Dex.send(cmd.to_sym, dex)
  puts Dex.out if dex_succ?(apk, cmd)
when "opstat"
  if op
    Dex.opstat(dex, op)
  else
    Dex.opstat(dex)
  end
  puts Dex.out if dex_succ?(apk, cmd)
when "cg"
  if to
    pdf = to
  else
    pdf = cmd + ".pdf"
  end
  Dex.callgraph(dex, pdf)
  system("mv -f #{HOME}/#{pdf} #{RES}") unless to
when "cfg", "dom", "pdom"
  if not mtd
    close(apk)
    raise "No target method is specified"
  end
  part = mtd.split('.')
  cls = part[0..-2].join('.')
  mtd = part[-1]
  if to
    pdf = to
  else
    pdf = cmd + ".pdf"
  end
  Dex.send(cmd.to_sym, dex, cls, mtd, pdf)
  system("mv -f #{HOME}/#{pdf} #{RES}") unless to
when "dump_method", "dependants", "live", "const"
  if not mtd
    close(apk)
    raise "No target method is specified"
  end
  part = mtd.split('.')
  cls = part[0..-2].join('.')
  mtd = part[-1]
  Dex.send(cmd.to_sym, dex, cls, mtd)
  puts Dex.out if dex_succ?(apk, cmd)
when "permissions", "sdk", "launcher"
  apk? apk
  res = apk.send(cmd.to_sym)
  if res != []
    puts ARGV[0]
    puts res
  end
when "logging"
  apk.send(cmd.to_sym)
  if not apk.succ
    puts apk.out
    close(apk)
    raise "rewriting dex failed"
  end
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
  system("cp -f #{tmp_dir}/classes.dex #{RES}")
  system("cp -f #{tmp_dir}/AndroidManifest.xml #{RES}")
  # and move the rewritten apk
  if not to
    rewritten = File.basename(ARGV[0])
    system("mv -f #{rewritten} #{RES}") if apk.succ
  end
  puts apk.out if apk.succ
when "hello"
  Dex.hello
  system("mv -f #{HOME}/classes.dex #{RES}") if dex_succ?(apk, cmd)
end

close(apk)
