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

[spsm]: http://dx.doi.org/10.1145/2381934.2381938

Requirements
------------

* OCaml and Ruby

This tool is tested under [OCaml][ml] 4.00.0 and [Ruby][rb] 1.8.6(7),
so you need to install them (or higher versions of them).

* OCaml SHA library (ocamlfind/findlib or FlexDLL)

If you're using a linux machine, you can easily find a distribution.

If not, e.g., using a Mac, you need to install it by yourself.
You can find the original source codes at [here][sha].
Build it by running make, and link the resulting directory into ocamlfind's
root site-lib directory; or sudo make install.

If you're using a PC, you need to install [ocamlfind/findlib][flib]
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

[ml]: http://ocaml.org/
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

To build redexer, just make!  You can see redexer binary at the top level.

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

This option dumps instructions for a specified method.

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

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd api [--sdk android.]
    $ ruby scripts/cmd.rb target.(apk|dex) --cmd api --sdk com.facebook.

* opcode statistics

Aren't you curious how rarely some opcodes are used in Dalvik bytecodes?
It will show you the histogram of entire opcodes, or you can look up
how often the exact opcode is used in the given app.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd opstat [--op opcode1,opcode2,...]

For instance,

    $ ruby scripts/cmd.rb ~/apps/top24/com.whatsapp.apk --cmd opstat
    $ ruby scripts/cmd.rb ~/apps/top24/com.whatsapp.apk --cmd opstat --op div-int/lit16,nop

* Intent resolution analysis

This option conducts propagation-based Intent resolution analysis,
and prints out transitions amongst Activity classes.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd intent

* call graph

This option generates a pdf file that depicts a call graph of the given file.
If you don't specify the pdf name, cg.pdf will be used.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd cg [--to blah.pdf] [--no-pdf]

* control-flow graph

This option generates a pdf file that shows a control-flow graph of the given
method.  Append a method name to a class name with dot: class_name.method_name

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd cfg --mtd cls.mtd [--to blah.pdf] [--no-pdf]

* (post) dominator tree

This option is similar to the above feature, except for that it depicts
(post) dominator tree.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd (p)dom --mtd cls.mtd [--to blah.pdf] [--no-pdf]

* liveness analysis

This option performs a classic backward data-flow analysis.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd live --mtd cls.mtd

* constant-propagation analysis

This option conducts a classic forward data-flow analysis.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd const --mtd cls.mtd

* reaching definition analysis

This option conducts a classic forward data-flow analysis.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd reach --mtd cls.mtd

* dependants

This option finds class dependancy.

    $ ruby scripts/cmd.rb target.(apk|dex) --cmd dependants --mtd cls.mtd

* launcher activity

This option prints out the launching activity name of the given apk.

    $ ruby scripts/cmd.rb target.apk --cmd launcher

* exported

This option lets you know what components are exposed to outside.

    $ ruby scripts/cmd.rb target.apk --cmd exported

* activity, service, provider, receiver

These options print out Android basic components declared in the manifest.

    $ ruby scripts/cmd.rb target.apk --cmd [activity | service | provider | receiver]

* custom_views

This option explores layout definitions in resource and prints out custom views.

    $ ruby scripts/cmd.rb target.apk --cmd custom_views

* fragments

This option explores layout definitions in resource and prints out Fragment elements.

    $ ruby scripts/cmd.rb target.apk --cmd fragments

* buttons

This option explores layout definitions in resource and prints out Buttons,
along with their id (or text) as well as callback method (if exists).

    $ ruby scripts/cmd.rb target.apk --cmd buttons

* permissions declared in the app's manifest

This option prints out permissions the apk uses.

    $ ruby scripts/cmd.rb target.apk --cmd permissions

* target SDK version

This option prints out what SDK version the apk requires.

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

* logging

This is a variant of the rewrite feature.  Using this feature, you can log
apps behavior from specific points of view.  First, build logging/ as follows.

    $ cd logging
    $ android update project -p .
    $ ant debug
    $ cd ..

After logging/bin/classes.dex is generated correctly, use the following command.

    $ ruby scripts/cmd.rb target.apk --cmd logging

trim.py can capture the call-return sequences of the instrumented app.
(You should first instrument the app under test using redexer.)

If those logs are short enough, i.e., the phone (or emulator) can hold
all information in the memory, you may use the offline mode of the script:

    $ ./scripts/trim.py -d

Note that all command-line parameters will be passed to adb logcat, and
by default, "org.umd.logging:I *:S" is passed to filter out irrelevant logs.

If logs overflow, you should use the online mode:

    $ ./scripts/trim.py

The script catches key interrupt, so you can finish logging via Ctrl+C.

In either mode, logs are saved in log.txt and shown to the screen at once.
Thus, after collecting logs, you may need to move that file, e.g.:

    $ mv log.txt app.scenario.txt

* directed exploration

This option finds component transition paths towards target method calls.

    $ ruby scripts/cmd.rb target.apk --cmd directed

You can specify target methods to be invoked in data/directed.txt

Those component transition paths are used to drive apps to test security
vulnerabilities in 3rd party libraries.  More details are described at
the following paper:

    * Brahmastra: Driving Apps to Test the Security of Third-Party Components.
    R. Bhoraskar, et. al. In 23rd Usenix Security Symposium (Security '14).

