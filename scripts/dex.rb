# Copyright (c) 2010-2012,
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

class Dex
  require 'pathname'

  THIS_FILE = Pathname.new(__FILE__).realpath.to_s
  HERE = File.dirname(THIS_FILE)
  HOME = HERE + "/.."
  DAT  = HOME + "/data"
  REDEXER = HOME + "/redexer"

  QUIET = "2>/dev/null"
  TOO = "2>&1"

  DEX = HOME + "/classes.dex"
  
  def self.unparse(dex_name=DEX, *file_name)
    yml = `#{REDEXER} -unparse #{dex_name} #{QUIET}`
    @@succ = $?.exitstatus == 0
    if file_name.length > 0
      f = File.open(file_name[0], 'w')
      f.puts yml
      f.close
    else
      yml
    end
  end

  def self.info(dex_name=DEX)
    self.runcmd("#{REDEXER} -info #{dex_name} #{QUIET}")
  end

  def self.classes(dex_name=DEX)
    self.runcmd("#{REDEXER} -classes #{dex_name} #{QUIET}")
  end

  def self.api(de_name=DEX)
    self.runcmd("#{REDEXER} -api #{dex_name} #{QUIET}")
  end

  def self.dump(dex_name=DEX, *out_name)
    self.runcmd("#{REDEXER} #{self.out_opt(out_name)} -dump #{dex_name} #{QUIET}")
  end

  def self.combine(dex_name, lib, *out_name)
    opt = self.out_opt(out_name)
    self.runcmd("#{REDEXER} #{opt} -lib #{lib} -combine #{dex_name} #{QUIET}")
  end
  
  def self.logging(dex_name=DEX)
    self.runcmd("#{REDEXER} #{dex_name} -logging #{QUIET}")
  end
  
  CSS = DAT + "/dex-format.css"

  def self.htmlunparse(dex_name=DEX, dir_name="output")
    if not File.exists?(dir_name)
      puts "Creating new output directory: #{dir_name}"
      system("mkdir #{dir_name}")
      puts "Moving default stylesheet to #{dir_name}"
      system("cp #{CSS} #{dir_name}/dex-format.css")
    end
    if !(test ?d, dir_name)
      puts "Error!  ``#{dir_name}'' exists and is not a directory"
    else
      self.runcmd("#{REDEXER} -htmlunparse #{dex_name} -outputdir #{dir_name}")
      @@succ = $?.exitstatus == 0
    end
  end
  
  def self.opstat(dex_name=DEX, *opcode)
    fmt = /0x[0-9a-fA-F]{8}: \[sort: instruction\, op: (\S+)(\, opr: \[.+\])?\]/
    hash = Hash.new
    yml = self.unparse(dex_name)
    yml.each_line do |line|
      ins = line.scan(fmt)
      op = ins[0][0] unless ins.empty?
      if op != nil
        if hash[op] == nil
          hash[op] = 1
        else
          hash[op] += 1
        end
      end
    end
    opcode.flatten!
    @@out = ""
    if opcode.length == 0
      total = 0
      hash.sort { |x,y| y[1] <=> x[1] }.each do |op, cnt|
        total += cnt
        @@out << "#{op}: #{cnt}\n"
      end
      @@out << "total: #{total}\n"
    else
      opcode.each do |op|
        if hash[op]
          @@out << "#{op}: #{hash[op]}\n"
        else
          @@out << "#{op}: 0\n"
        end
      end
    end
    @@out
  end

  def self.toPDF(pdf)
    "| dot -Tpdf -o #{pdf}"
  end

  def self.callgraph(dex_name=DEX, *pdf_name)
    pdf = self.pdf(dex_name, pdf_name)
    `#{REDEXER} -cg #{dex_name} #{self.toPDF(pdf)}`
  end

  def self.cfg(dex_name, cls, mtd, *pdf_name)
    pdf = self.pdf(dex_name, pdf_name)
    `#{REDEXER} -cls #{cls} -mtd #{mtd} -cfg #{dex_name} #{self.toPDF(pdf)}`
  end
  
  def self.dom(dex_name, cls, mtd, *pdf_name)
    pdf = self.pdf(dex_name, pdf_name)
    `#{REDEXER} -cls #{cls} -mtd #{mtd} -dom #{dex_name} #{self.toPDF(pdf)}`
  end

  def self.pdom(dex_name, cls, mtd, *pdf_name)
    pdf = self.pdf(dex_name, pdf_name)
    `#{REDEXER} -cls #{cls} -mtd #{mtd} -pdom #{dex_name} #{self.toPDF(pdf)}`
  end
 
  def self.dump_method(dex_name, cls, mtd)
    self.runcmd("#{REDEXER} -cls #{cls} -mtd #{mtd} -dump_method #{dex_name}")
  end

  def self.dependants(dex_name, cls, mtd)
    mds = `#{REDEXER} -cls #{cls} -mtd #{mtd} -dependants #{dex_name} #{QUIET}`
    @@succ = $?.exitstatus == 0
    @@out  = mds
  end

  def self.live(dex_name, cls, mtd)
    self.runcmd("#{REDEXER} -cls #{cls} -mtd #{mtd} -live #{dex_name}")
  end

  def self.const(dex_name, cls, mtd)
    self.runcmd("#{REDEXER} -cls #{cls} -mtd #{mtd} -const #{dex_name}")
  end

  def self.hello
    self.runcmd("#{REDEXER} -hello")
  end

  def self.out
    @@out
  end

  def self.succ
    @@succ
  end

private

  @@online = true

  def self.runcmd(cmd)
    @@out = ""
    @@out << cmd + "\n"
    @@out << `#{cmd}`
    @@succ = $?.exitstatus == 0
  end

  def self.out_opt(out_name)
    if out_name.length > 0
      "-out " + out_name[0]
    else
      ""
    end
  end

  def self.pdf(dex_name, pdf_name)
    if pdf_name.length > 0
      pdf_name[0]
    else
      base = File.basename(dex_name,".dex")
      base + ".pdf"
    end
  end

end
