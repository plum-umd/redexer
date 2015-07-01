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

class Resources
  require 'nokogiri'
  require 'fileutils'

  attr_reader :out

  def initialize(dir)
    @dir = dir + "/res"
  end

  def strings
    strs = []
    Dir.glob(@dir + "/values*/*.xml").each do |res|
      f = File.open(res, 'r')
      doc = Nokogiri::XML(f)
      f.close
      doc.xpath("//string").each do |e|
        strs += extract_str(e)
      end
      doc.xpath("//string-array/item").each do |e|
        strs += extract_str(e)
      end
      doc.xpath("//plurals/item").each do |e|
        strs += extract_str(e)
      end
    end
    strs
  end

  def custom_views
    customs = {}
    Dir.glob(@dir + "/layout*/*.xml").each do |res|
      f = File.open(res, 'r')
      doc = Nokogiri::XML(f)
      f.close
      san_res = sanitize_path(res)
      doc.root.traverse do |node|
        custom = node.name if node.name.split('.').length > 1
        next unless custom
        customs[san_res] = [] unless customs[san_res]
        customs[san_res] << custom
      end
    end
    customs
  end

  NS = "android"

  def lookup(a, k)
    a[k] || a[NS+':'+k]
  end

  NAME = "name"

  def fragments
    frags = {}
    Dir.glob(@dir + "/layout*/*.xml").each do |res|
      f = File.open(res, 'r')
      doc = Nokogiri::XML(f)
      f.close
      san_res = sanitize_path(res)
      doc.xpath("//fragment").each do |e|
        cls = lookup(e, NAME)
        cls = e["class"] unless cls
        frags[san_res] = [] unless frags[san_res]
        frags[san_res] << cls
      end
    end
    frags
  end

  ID = "id"
  TXT = "text"
  ONCLK = "onClick"

  def buttons
    bs = {}
    Dir.glob(@dir + "/layout*/*.xml").each do |res|
      f = File.open(res, 'r')
      doc = Nokogiri::XML(f)
      f.close
      san_res = sanitize_path(res)
      doc.xpath("//Button").each do |e|
        id = lookup(e, ID)
        id = lookup(e, TXT) unless id
        onclk = lookup(e, ONCLK)
        bs[san_res] = {} unless bs[san_res]
        bs[san_res][id] = onclk
      end
    end
    bs
  end

  def ids
    ids = {}
    Dir.glob(@dir + "/values*/*.xml").each do |res|
      f = File.open(res, 'r')
      doc = Nokogiri::XML(f)
      f.close
      doc.xpath("//public").each do |e|
        id = lookup(e, ID)
        name = lookup(e, NAME)
        ids[id] = name if id and name
      end
    end
    ids
  end

  A11Y_META = "ui_logging_service"
  A11Y_SRV = "accessibility-service"

  def add_a11y_srv_meta(pkg)
    doc = Nokogiri::XML::Document.new
    # <accessibility-service .../>
    mnode = Nokogiri::XML::Node.new(A11Y_SRV, doc)
    mnode["xmlns:android"] = "http://schemas.android.com/apk/res/android"
    a11y = NS+":accessibility"
    mnode[a11y+"EventTypes"] = "typeAllMask"
    mnode[a11y+"Flags"] = "flagReportViewIds"
    mnode[a11y+"FeedbackType"] = "feedbackGeneric"
    mnode[NS+":canRetrieveWindowContent"] = "true"
    mnode[NS+":packageNames"] = pkg

    doc.add_child(mnode)
    xml_dir = get_or_create_dir(@dir, "xml")
    f = File.open(File.join(xml_dir, A11Y_META+".xml"), 'w')
    doc.write_xml_to(f)
    f.close
  end

private

  def extract_str(elt)
    strs = []
    elt.children.each do |txt|
      strs << txt.content
    end
    strs
  end

  def extract_ns(elt)
    elt.namespaces.keys.map do |ns|
      ns.split(':')[1]
    end
  end

  # tmp_blahblah/res/layout*/*.xml => layout*/*.xml
  def sanitize_path(res)
    res.split('/').last(2).join('/')
  end

  def get_or_create_dir(base, dir_name)
    FileUtils::mkdir_p File.join(base, dir_name)
  end

end
