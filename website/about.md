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

- [OCaml][ml] 3.12 or higher

- The OCaml SHA library (ocamlfind/findlib or FlexDLL).
If you're using a linux machine, you can easily find a distribution.
If not, e.g., using a Mac, you need to compile and install it yourself.
You can find the original source codes at [here][sha].
Build it by running make, and link the resulting directory into ocamlfind's
root site-lib directory; or sudo make install.
If you're using a PC, you need to install [ocamlfind/findlib][flib]
and [FlexDLL][fdll] first.  Please make sure that your environment
variables are set correctly as follows:

    OCAMLLIB=C:\OCaml\lib
    CAML_LD_LIBRARY_PATH=%OCAMLLIB%\stublibs
    FLEXLINKFLAGS=-L%MinGW%\lib -L%MinGW%\lib\gcc\mingw32\N.N.N

- [Ruby][rb] 1.8.6 or higher

- RubyGems and Nokogiri
The main scripts are written in Ruby and require [RubyGems][gem], a Ruby
package manager, and [Nokogiri][xml], an XML library to manipulate
manifest files.

- The Android SDK (or sources)
To unpack and repack apk files, we use [apktool][apk], an open source APK
reengineering tool.  Since it uses aapt, Android Asset Packaging Tool,
you need to install the [Android SDK][sdk] or sources.  Also, we use
zipalign, which also comes from Android SDK, to optimize rewritten apps.

- (optional) graphviz dot
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

Building
--------

Note that on some machines, you need to set some architecture-specific
flags before building.  An export CFLAGS="-arch i386" or similar should
work to solve strange linking problems from architecture-specific stat code.
Building follows the usual configure-make convention:

    $ ./configure
    $ make (clean)

The build process leaves the redexer binary at the top level.
Before using redexer, you must install the most recent platform file
for apktool:

    $ java -jar tools/apktool.jar if [proper platform file]

You can generate API documents in html format as well.

    $ make api

Usage
-----

- help
Show all options provided by redexer.

    $ ruby scripts/cmd.rb -h
    $ ruby scripts/cmd.rb --help

- unparse
Produce a YAML file containing the contents of a bytecode file.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd unparse [--to blah.yml]

- dump method
Dump the instructions for the specified method.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd dump_method --mtd cls_.mtd

- identity
Parse a dex file and generate an identical output file. This feature
is really just for shaking out bugs in redexer.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd id [--to blah.dex]

- info
Show basic statistics about the dex file.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd info

- classes
Print the names of all classes defined in the dex file.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd classes

- opstat
Report how option opcodes are used in a file

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd opstat [--op opcode1,opcode2,...]

For instance,

    $ ruby scripts/cmd.rb ~/apps/top24/com.whatsapp.apk --cmd opstat
    $ ruby scripts/cmd.rb ~/apps/top24/com.whatsapp.apk --cmd opstat --op div-int/lit16,nop

- cg
Generate a pdf file containing the call graph of the given file.
If you don't specify the output pdf name, cg.pdf will be used.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd cg [--to blah.pdf]

- cfg
Generate a pdf containing the control-flow graph of a given
method.  Append a method name to a class name with dot: class_name.method_name

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd cfg --mtd cls_.mtd [--to blah.pdf]

- dom/pdom
Generate a pdf containing either the domainator or postdomaintor tree
for a method.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd (p)dom --mtd cls_.mtd [--to blah.pdf]

- live
Perform classic live variable analysis on a method.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd live --mtd cls_.mtd

- const
Perform constant propagation on a method.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd const --mtd cls_.mtd

- analyze_perms
Find what permission-protected API calls are used by an app.  Using
constant propagation analysis, this option also prints out constant
arguments for such calls.  Permission names are same as Mr. Hide ones,
e.g. url, con, sta, set, etc.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd analyze_perms
    $ ruby scripts/cmd.rb target.(apk|dex) --cmd analyze_perms --perms url,set

- dependants
Find class dependency.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd dependants --mtd cls_.mtd

- launcher
Print out the name of the launcher activity for an apk.

    $ ruby scripts/cmd.rb target.apk --cmd launcher

- sdk
Prints out what SDK version the apk requires.

    $ ruby scripts/cmd.rb target.apk --cmd sdk

If you don't want to unpack the apk file,
you can do the same thing with a combination of commands:

    $ aapt dump badging target.apk | grep 'targetSdkVersion' | tr -dc 0-9.\\n

- hello
Generate a dex file that, when executed, prints out a simple message.
That dex file is made only using redexer APIs.

    $ ruby scripts/cmd.rb --cmd hello

If you're interested, you can test that dex file as follows.
We assume the path to ANDROID_SDK is set correctly.

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

