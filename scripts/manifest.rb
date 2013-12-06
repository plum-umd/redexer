## Copyright (c) 2010-2013,
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

class Manifest
  require 'nokogiri'
  require 'set'

  attr_reader :out, :pkg

  ROOT = "/manifest"
  APP  = ROOT + "/application"
  ACT  = "activity"
  ACTV = APP + "/" + ACT
  IFL  = "intent-filter"
  IFLT = ACTV + "/" + IFL
  ACN  = "action"
  ACTN = IFLT + "/" + ACN
  CTG  = "category"
  CATG = IFLT + "/" + CTG
  
  NAME = "name"
  PKG  = "package"
  ENABLED = "enabled"
  ANDNAME = "android:name"

  def initialize(file_name)
    f = File.open(file_name, 'r')
    @doc = Nokogiri::XML(f)
    f.close
    @pkg = @doc.xpath(ROOT)[0][PKG]
    @out = ""
  end

  def lookup_name(a)
    a[NAME] || a[ANDNAME]
  end

  def launcher
    @out = ""
    main_acts = Set.new
    launchers = Set.new

    actions = @doc.xpath(ACTN)
    actions.each do |action|
      if action[NAME].split('.')[-1] == "MAIN"
        main_acts << lookup_name(action.parent.parent)
      end
    end

    categories = @doc.xpath(CATG)
    categories.each do |category|
      if category[NAME].split('.')[-1] == "LAUNCHER"
        launchers << lookup_name(category.parent.parent)
      end
    end

    inter = main_acts & launchers
    @out = self.class.class_name(@pkg, inter.to_a[0]) unless inter.empty?
  end

  def save_to(file_name)
    @out = ""
    f = File.open(file_name, 'w')
    @doc.write_xml_to(f)
    f.close
    @out << "saved to #{file_name}\n"
  end

  PERM = "uses-permission"

  def permissions
    perms = Array.new
    permissions = @doc.xpath(ROOT + "/" + PERM)
    permissions.each do |perm|
      perms << lookup_name(perm)
    end
    @out = perms
  end

  def sdk
    v = 3 # minSdkVersion
    sdks = @doc.xpath(ROOT + "/uses-sdk")
    sdks.each do |sdk|
      v = [v, sdk["targetSdkVersion"].to_i].max
    end
    @out = v
  end

private
  
  def self.class_name(pkg, act)
    part = act.split('.') # ".Main" or "Login"
    return act if part.length > 1 and part[0].length > 0
    return pkg + act if act.include? '.'
    return pkg + "." + act
  end
  
end
