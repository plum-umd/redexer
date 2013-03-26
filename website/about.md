---
title: About Redexer
---

redexer
=======

Redexer is a reengineering tool that manipulates Android app binaries.
This tool is able to parse a DEX file into an in-memory data structure;
to infer with which parameters the app uses certain permissions
(we name this feature RefineDroid); to modify and unparse that data
structure to produce an output DEX file (we name these features
Dr. Android, which stands for Dalvik Rewriting for Android).

Publications
------------

* [Dr. Android and Mr. Hide: Fine-grained Permissions in Android Applications.][spsm]
  Jinseong Jeon, Kristopher K. Micinski, Jeffrey A. Vaughan, Ari Fogel, Nikhilesh Reddy, Jeffrey S. Foster, and Todd Millstein.
  In ACM CCS Workshop on Security and Privacy in Smartphones and Mobile Devices (SPSM '12), Oct 2012.

* [Dr. Android and Mr. Hide: Fine-grained security policies on unmodified Android.][tr2]
  Jinseong Jeon, Kristopher K. Micinski, Jeffrey A. Vaughan, Nikhilesh Reddy, Yixin Zhu, Jeffrey S. Foster, and Todd Millstein.
  CS-TR-5006, Department of Computer Science, University of Maryland, College Park, Dec 2011.

* [Application-centric security policies on unmodified Android.][tr1]
  Nikhilesh Reddy, Jinseong Jeon, Jeffrey A. Vaughan, Todd Millstein, and Jeffrey S. Foster.
  UCLA TR #110017, Jul 2011.

[spsm]: http://dx.doi.org/10.1145/2381934.2381938
[tr2]: http://hdl.handle.net/1903/12852
[tr1]: http://fmdb.cs.ucla.edu/Treports/110017.pdf

Requirements
------------

* OCaml and Ruby

This tool is tested under [OCaml][ml] 3.12 and [Ruby][rb] 1.8.6(7),
so you need to install them (or higher version of them).

* OCaml SHA library (ocamlfind/findlib or FlexDLL)

If you're using a linux machine, you can easily find a distribution.

If not, e.g., using a Mac, you need to install it by yourself.
You can find the original source codes at [here][sha].
Build it by running make, and link the resulting directory into ocamlfind's
root site-lib directory; or sudo make install.

If you're PC, you need to install [ocamlfind/findlib][flib]
and [FlexDLL][fdll] first.  Please make sure that your environment
variables are set correctly as follows:

    OCAMLLIB=C:\OCaml\lib
    CAML_LD_LIBRARY_PATH=%OCAMLLIB%\stublibs
    FLEXLINKFLAGS=-L%MinGW%\lib -L%MinGW%\lib\gcc\mingw32\N.N.N

* Android SDK (or sources)

To unpack and repack apk files, we use [apktool][apk], an open source APK
reengineering tool.  Since it uses aapt, Android Asset Packaging Tool,
you need to install [Android SDK][sdk] or sources.  Besides, we use
zipalign, which also comes from Android SDK, to optimize rewritten apps.

* RubyGems and Nokogiri

The main scripts are written in Ruby and require [RubyGems][gem], a Ruby
package manager, and [Nokogiri][xml], an XML library to manipulate
manifest files.

* (optional) graphviz dot

If you want to see graphs (e.g. call graph, control-flow graph,
dominator tree, etc.), you need to install [graphviz dot][dot].

[ml]: http://caml.inria.fr/ocaml/
[rb]: http://www.ruby-lang.org/
[sha]: https://github.com/vincenthz/ocaml-sha/
[fdll]: http://alain.frisch.fr/flexdll.html
[flib]: http://projects.camlcity.org/projects/findlib.html/
[apk]: http://code.google.com/p/android-apktool/
[sdk]: http://developer.android.com/sdk/index.html
[gem]: http://rubygems.org/
[xml]: http://nokogiri.org/
[dot]: http://www.graphviz.org/

Build
-----

Note that on some machines, macs, for example, before building you
need to set some arch specific flags.  An export CFLAGS="-arch i386"
or similar should work to solve strange linking problems from arch
specific stat code.

    $ ./configure

It will generate ocamlutil/stat_stubs.c, which reflects your env.
Then, make!  You can see redexer binary at the top level.

    $ make (clean)

Before using the tool, installing the most recent platform file
for apktool is up to users.  For instance, you need to do like

    $ java -jar tools/apktool.jar if [proper platform file]

You can generate API documents in html format as well.

    $ make api

Usage
-----

* help

You can see all the options the tool provides:

    $ ruby scripts/cmd.rb -h
    $ ruby scripts/cmd.rb --help

* unparse

Like dexdump at Android SDK, redexer allows you to view the internals
of the given dex file in a YAML format.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd unparse [--to blah.yml]

* dump method

This option dumps instructions for a specified method

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd dump_method --mtd cls.mtd

* identity

This feature is to test parsing and dumping modules of redexer.
It probably generates an identical dex file.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd id [--to blah.dex]

* info

You can also see basic statistics about the dex file, e.g., # instr.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd info

* classes

This option prints out all class names defined in the dex file.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd classes

It may be useful to search specific third-party libraries, e.g.,

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd classes | egrep 'apache'

* api

This option prints out API usage in the dex file.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd api

* opcode statistics

Aren't you curious how rarely some opcodes are used in Dalvik bytecodes?
It will show you the histogram of entire opcodes, or you can look up
how often the exact opcode is used in the given app.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd opstat [--op opcode1,opcode2,...]

For instance,

    $ ruby scripts/cmd.rb ~/apps/top24/com.whatsapp.apk --cmd opstat
    $ ruby scripts/cmd.rb ~/apps/top24/com.whatsapp.apk --cmd opstat --op div-int/lit16,nop

* call graph

This option generates a pdf file that depicts a call graph of the given file.
If you don't specify the pdf name, cg.pdf will be used.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd cg [--to blah.pdf]

* control-flow graph

This option generates a pdf file that shows a control-flow graph of the given
method.  Append a method name to a class name with dot: class_name.method_name

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd cfg --mtd cls.mtd [--to blah.pdf]

* (post) dominator tree

This option is similar to the above feature, except for that it depicts
(post) dominator tree.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd (p)dom --mtd cls.mtd [--to blah.pdf]

* liveness analysis

This option performs a classic backward data-flow analysis.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd live --mtd cls.mtd

* constant-propagation analysis

This option conducts a classic forward data-flow analysis.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd const --mtd cls.mtd

* dependants

This option finds class dependancy.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd dependants --mtd cls.mtd

* launcher activity

This option prints out the launching activity name of the given apk

    $ ruby scripts/cmd.rb target.apk --cmd launcher

* target SDK version

This option prints out what SDK version the apk requires

    $ ruby scripts/cmd.rb target.apk --cmd sdk

If you don't want to unpack the apk file,
actually, you can do the same thing with a combination of commands:

    $ aapt dump badging target.apk | grep 'targetSdkVersion' | tr -dc 0-9.\\n

* Hello, DEX

This option would generate a dex file that prints out a simple message.
That dex file is made only using redexer's APIs.

    $ ruby scripts/cmd.rb --cmd hello

Check its internal.

    $ dexdump -d results/classes.dex

If you're interested, you can test that dex file as follows.
Assume path to ANDROID_SDK is set.

    // create a temporary jar suitable for dalvik VM
    $ aapt add temp.jar results/classes.dex

    // (optional) if you didn't make an avd, then make it.
    $ android create avd -n myAVD1 -t android-8

    // launch your emulator
    $ emulator -avd myAVD1 &

    // push the temporary jar
    $ adb push temp.jar /data

    // connect to adb shell
    $ adb shell

    // at last, run the dex
    # /system/bin/dalvikvm -Xbootclasspath:/system/framework/core.jar \
     -classpath /data/temp.jar Hello
    Hello, DEX
    #

