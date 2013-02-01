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

class Apk
  require 'yaml'
  require 'tempfile'

  HOME = File.dirname(__FILE__)

  require "#{HOME}/dex"
  require "#{HOME}/manifest"
  attr_reader :out, :succ

  def initialize(file_or_dir, *to_dir_or_file)
    if File.directory?(file_or_dir) # already unpacked
      @dir = file_or_dir
      if to_dir_or_file.length > 0
        @apk = to_dir_or_file[0]
      else
        yml = YAML.load_file(@dir+"/apktool.yml")
        @apk = yml["apkFileName"]
      end
      @manifest = Manifest.new(xml)
      org_in_manifest()
    else # apk is given
      @apk = file_or_dir
      @dir = "apk"
      if to_dir_or_file.length > 0
        @dir = to_dir_or_file[0]
      end
    end
    @out = ""
    @succ = true
  end

  def dex
    @dir + "/classes.dex"
  end

  def xml
    @dir + "/AndroidManifest.xml"
  end

  TOOL = HOME + "/../tools"
  APKT = TOOL + "/apktool.jar"

  def unpack
    if @manifest == nil
      runcmd("java -Djava.awt.headless=true -jar #{APKT} d -f --no-src --keep-broken-res #{@apk} #{@dir}")
      if @succ
        @manifest = Manifest.new(xml)
      end
    end
    @succ
  end
  
  def logging()
    Dex.logging(dex, dex)
    @out << Dex.out
    @succ = Dex.succ
  end
  
  JAR = TOOL + "/signapk.jar"
  PEM = TOOL + "/platform.x509.pem"
  PK8 = TOOL + "/platform.pk8"

  def repack(to_name = File.basename(@apk))
    unsigned = @dir + "/unsigned.apk"
    runcmd("java -jar #{APKT} b -f #{@dir} #{unsigned}")
    succ = @succ
    if succ
      unaligned = @dir + "/unaligned.apk"
      runcmd("java -jar #{JAR} #{PEM} #{PK8} #{unsigned} #{unaligned}")
      system("rm -f #{to_name}") # zipalign wants it not to exist
      runcmd("zipalign 4 #{unaligned} #{to_name}")
      File.delete(unaligned)
    end
    @succ = succ
  end
  
  def clean
    # if rewriting is successful, results folder will have dex and xml files
    system("rm -rf #{@dir}")
  end
  
  def launcher
    @manifest.launcher
  end
  
  def sdk
    @manifest.sdk
  end

private

  def runcmd(cmd)
    @out = "" if not @out
    @out << cmd + "\n"
    @out << `#{cmd} 2>&1`
    @succ = $?.exitstatus == 0
  end

end
