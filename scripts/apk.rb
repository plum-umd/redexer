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

class Apk
  require 'yaml'
  require 'tempfile'
  require 'rbconfig'

  THIS_FILE = File.expand_path(__FILE__)
  HERE = File.dirname(THIS_FILE)
  HOME = File.join(HERE, "..")

  require "#{File.join(HERE, "dex")}"
  require "#{File.join(HERE, "manifest")}"
  require "#{File.join(HERE, "resources")}"

  attr_reader :out, :succ

  def org_in_manifest
    @org_app = @manifest.application
    @org_launcher = @manifest.launcher
    comps = @manifest.find_comps("activity")
    @org_acts = comps[0].keys + comps[1]
    @org_acts = "no" if @org_acts.length < 1
  end

  def initialize(file_or_dir, *to_dir_or_file)
    if File.directory?(file_or_dir) # already unpacked
      @dir = file_or_dir
      if to_dir_or_file.length > 0
        @apk = to_dir_or_file[0]
      else
        yml = YAML.load_file(File.join(@dir, "apktool.yml"))
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
    @res = Resources.new(@dir)
    @out = ""
    @succ = true
    @detail = :none
  end

  def dex
    File.join(@dir, "classes.dex")
  end

  def xml
    File.join(@dir, "AndroidManifest.xml")
  end

  TOOL = File.join(HOME, "tools")
  APKT = File.join(TOOL, "apktool.jar")

  def unpack
    if @manifest == nil
      runcmd("java -Djava.awt.headless=true -jar #{cygpath(APKT)} d -f --no-src --keep-broken-res -o #{cygpath(@dir)} #{cygpath(@apk)}")
      if @succ
        @manifest = Manifest.new(xml)
        org_in_manifest()
      end
    end
    @succ
  end

  def unpacked 
    @manifest == nil
  end

  def logging(detail)
    Dex.logging(dex,detail,dex)
    @out << Dex.out
    @succ = Dex.succ
  end
  
  DAT = File.join(HOME, "data")
  LIBDEX = File.join(DAT, "logging-ui.dex")

  def logging_ui()
    @manifest.add_a11y_srv()
    @manifest.save_to(xml)
    @res.add_a11y_srv_meta(@manifest.pkg)
    Dex.combine(dex, LIBDEX, dex)
    @out << Dex.out
    @succ = Dex.succ
  end

  def directed()
    f = Tempfile.new("redexer", HOME)
    begin
      f.puts @org_launcher # to place launcher first
      f.puts @manifest.exported - [@org_launcher]
      f.close
      Dex.directed(dex, f.path, @manifest.pkg, dex)
    ensure
      f.unlink
    end
    out = Dex.out
    @res.ids.each do |id, name|
      out.gsub!(id, name)
    end
    @out << out
    @succ = Dex.succ
  end

  JAR = File.join(TOOL, "signapk.jar")
  PEM = File.join(TOOL, "platform.x509.pem")
  PK8 = File.join(TOOL, "platform.pk8")

  def repack(to_name = File.basename(@apk))
    unsigned = File.join(@dir, "unsigned.apk")
    runcmd("java -jar #{cygpath(APKT)} b -f -o #{cygpath(unsigned)} #{cygpath(@dir)}")
    succ = @succ
    if succ
      unaligned = File.join(@dir, "unaligned.apk")
      runcmd("java -jar #{cygpath(JAR)} #{cygpath(PEM)} #{cygpath(PK8)} #{cygpath(unsigned)} #{cygpath(unaligned)}")
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

  PERMISSION = "\t<uses-permission android:name=\"android.permission.WRITE_EXTERNAL_STORAGE\"/>"
  MANIFEST_START = "<manifest.*>"
  def add_permission()
    file_path = File.join(@dir, "AndroidManifest.xml")
    if not (File.readlines(file_path).grep(/#{PERMISSION}/).size > 0)
      temp_file = Tempfile.new(@dir)
      begin
        File.readlines(file_path).each do |line|
          temp_file.puts(line)
          temp_file.puts(PERMISSION) if line =~ /#{MANIFEST_START}/
        end
        temp_file.close
        FileUtils.mv(temp_file.path,file_path)
      ensure
        temp_file.delete
      end
    end
  end
  
  def launcher
    @manifest.launcher
  end

  def exported
    @manifest.exported
  end

  def find_comps(tag)
    @manifest.find_comps(tag)
  end

  def custom_views
    @res.custom_views
  end

  def fragments
    @res.fragments
  end

  def buttons
    Dex.listener(dex, @manifest.pkg)
    out = Dex.out
    @res.ids.each do |id, name|
      out.gsub!(id, name)
    end
    puts out
    @res.buttons
  end

  def permissions
    @manifest.permissions
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

  def cygpath(path)
    if is_cygwin
      wp = `cygpath -wp #{path}`
      "\"#{wp.strip || wp}\""
    else
      path
    end
  end

  def is_cygwin
    RbConfig::CONFIG['host_os'] =~ /cygwin/
  end

end
