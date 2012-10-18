--
Title: Tutorial: using redexer to implement logging in Android apps
Author: Kristopher Micinski
Date: August 15, 2012
--

Tutorial: using redexer to implement logging in Android apps
============================================================

Redexer comprises a set of data structures to represent and manipulate
Dalvik bytecode.  Redexer extensions augment these basic structures
and can be used for a wide variety of purposes: static analysis,
bytecode rewriting, generating documentation, etc...  This tutorial
gives an end-to-end example of how to construct an extension to
redexer that adds a bit of logging code to existing Android apps.

Prerequisites
-------------

While not strictly required for this tutorial, it is helpful to have a
high level understanding of the Android ecosystem and an overview of
how the Dalvik VM interprets and manipulates files.  This tutorial
covers using redexer to manipulate Dalvik bytecode, but not the
structure of the bytecode or of the virtual machine proper.  For more
information on these topics, the following references may prove
helpful:

- The [Android developers
  site](http://developer.android.com/index.html) provides information
  about app development with the Android SDK.

- Dan Bornstein has a video tutorial on the [Dalvik Virtual Machine
  Internals](http://www.youtube.com/watch?v=ptjedOZEXPM).

- The [Dalvik Executable
  Format](http://source.android.com/tech/dalvik/dex-format.html)
  document describes the structure of `.dex` files.  This format is
  implemented in redexer, so being familiar with it will help in
  understanding redexer.

- [Bytecode for the Dalvik
  VM](http://source.android.com/tech/dalvik/dalvik-bytecode.html)
  describes the bytecode instruction format used by Dalvik.

### Compiling redexer ###

The redexer system comes with installation notes (in the
`README.md`). After building redexer proper, you will probably also
want to build the documentation by also doing a:

    make doc

This will generate documentation in various forms and put the output
in the `docs/` folder (assuming you have
[OCamlDoc](http://caml.inria.fr/pub/docs/manual-ocaml/manual029.html)
installed).  There are also other `make` targets that will generate
pieces of the documentation (`psdoc` (PostScript), `htdoc` (HTML), and
`ladoc` (LaTeX)).

After making changes to redexer, you will of course have to recompile
it.  For example, throughout the tutorial, we build an extension in
the form of a file that sits in the `src/ext/` folder.  If you are
building a new extension, you will also have to have to add it to the
list of files compiled by `make` by adding it to the `SOURCES`
(potentially) `DOC_FILES` definition in the toplevel `Makefile`.

Motivation
----------

In this tutorial we will build a logging extension to let us find out
when certain lifecycle events happen, e.g., a screen is opened, paused,
etc..  For example, if you were testing an Android app and found a
bug, you might wish to know which sequence of screens the user went
through to get the app in its current state.  Android
[`Activity`](http://developer.android.com/reference/android/app/Activity.html)
instances implement code representing a screen in an app.  When the
Android system responds to certain events (the user presses the back
button, starts the app, etc.), it will call certain methods in an
`Activity` instance. For our purposes we consider:

- `onCreate` -- An `Activity` is first created.
- `onDestroy` -- An `Activity` is destroyed and thrown out of memory.
- `onResume` -- An `Activity` is resumed after sitting in the background.
- `onPause` -- An activity is about to go into the background.

Our extension's goal will be quite simple: find the set
of `Activity`s in the app, and instrument these methods to dump
logging data.  While logging information in these methods is not sufficient to
reconstruct the app's entire state, it provides a rough
approximation of what screens the user was navigating through the app,
and provides a good showcase of how to use redexer to instrument
applications.  

Redexer's structure
-------------------

Looking at the structure for redexer's source will help in understanding
how to add our extension to the system.  Redexer is written as an
[OCaml]() program, but uses a few auxiliary scripts to unpack APK
files and provide utility functionality.

- `docs` -- Documentation.
- `data` -- Auxiliary files, such as the CSS template used by the pretty printer.
- `ocamlutil` -- Library for collecting runtime statistics, handling unicode, etc.
- `scripts` -- Scripts that provide a high level interface.
    + `apk.rb` -- Code for handling APK files.
    + `manifest.rb` -- Code for navigating an app's manifest file.
    + `dex.rb` -- Code for calling the redexer binary.
    + `cmd.rb` -- The main driver tying these together.
- `tools` -- External tools used for unpacking and resigning APKs.
- `src/`
    + `android.ml` -- Utilities for identifying code in the Android SDK.
    + `combine.ml` -- Combining multiple `dex` files.
    + `dex.ml` -- Representation of a `dex` file as an OCaml data structure.
    + `dump.ml` -- Dumping an in-memory `dex` structure to a file.
    + `instr.ml` -- Representation of Dalvik instructions.
    + `java.ml` -- Utilities for working with common classes from the Java library.
    + `log.ml` -- Logging.
    + `main.ml` -- Main entry point.
    + `modify.ml` -- Utility functions to manipulate the structure of a `dex` file.
    + `parse.ml` -- Code for parsing a `dex` file into memory.
    + `util.ml` -- Utilities.
    + `visitor.ml` --  Implementation of the "visitor" pattern for manipulating `dex` files.
    + `ext/` -- Sample redexer extensions
        * `callgraph.ml` -- Calculating and manipulating call graphs.
        * `ctrlflow.ml` -- Calculating and drawing control flow graphs.
        * `dataflow.ml` -- Data flow analysis engine.
        * `htmlunparse.ml` -- HTML based pretty printer.
        * `liveness.ml` -- Liveness analysis.
        * `logging.ml` -- Logging app components (this tutorial).
        * `propagation.ml` -- Constant propagation.
        * `unparse.ml` -- YAML-based pretty printer.

Looking at the structure of redexer already gives us some idea as to
how the system fits together: the core code resides within the `src/`
directory, and extensions sit in the `ext/` directory.

Dex file structure
------------------

Before developing a logging extension, we will briefly explain how Android
apps are structured.  The links provided in the previous references
section give more comprehensive coverage of application structure, so
we give only a high level overview here.

Android apps are usually written in Java, which is first compiled into
JVM bytecode (.class) files as usual.  The JVM is slightly different
than Dalvik: for example, Dalvik files are much more tightly woven
(strings are unique, redundant instances are aliased), and Dalvik is
based on a register machine (rather than a stack based architecture).
To transform JVM code (`.class` files) into Dalvik code, the Android
toolchain has a set of tools that perform the mapping.  The result is
that a (potentially large) set of `.class` files is converted into a
*single* `.dex` file.  An APK file is essentially this `.dex` file,
along with a set of resources (images, i18n strings, etc...), and a
manifest (declaring the app name, icon, permissions, among other
things).  All of these are zipped together and they comprise an `.apk`
file.

A `.dex` file contains such things as class definitions, method
identifiers, static strings, and instruction sequences (code) used in
an app.  The [Dalvik Executable
Format](http://www.netmite.com/android/mydroid/dalvik/docs/dex-format.html)
document describes the exact structure of this file, which is
essentially mirrored in the `src/dex.ml` implementation.  We recommend
you skim that document and then look at the documentation generated by
`make doc` for [`src/dex.ml`](/doc/Dex.html).

Implementing our extension as a visitor
---------------------------------------

A Dalvik file is comprised of many small elements.  A visitor allows
us to traverse files hierarchically: we write a concrete instance of
the [`visitor`](/doc/Visitor.html) class, and the redexer framework iterates through the
structure of the `.dex` file, calling the appropriate methods for us.
In cases where you are doing complex manipulation of `.dex` code
requiring a different traversal order, you might consider using a
custom `visitor` implementation.

To be concrete, you can look at `src/visitor.ml` to find the structure
of a visitor object:

    class type visitor =
    object
      val dx : D.dex
      method get_dx : unit -> D.dex

      method v_fit  : D.field_id_item -> unit
      method v_mit  : D.method_id_item -> unit

      method v_cdef : D.class_def_item -> unit
      method r_eval : D.encoded_value -> D.encoded_value
      method v_anno : D.encoded_annotation -> unit

      method v_cdat : D.class_data_item -> unit
      method v_efld : D.encoded_field -> unit
      method v_emtd : D.encoded_method -> unit

      method v_citm : D.code_item -> unit
      method v_ins  : D.link -> unit
      method v_try  : D.try_item -> unit
      method v_hdl  : D.encoded_catch_handler -> unit
      method v_dbg  : D.debug_info_item -> unit

      method finish : unit -> unit
    end

We can see that subclasses of the `visitor` will "fill in" certain
methods that say what to do when certain elements of the file
structure are encountered.  For example, if we implement the `v_mit`
method in a `visitor` subclass, it will be called on method items of
`.dex` files.  `visitor.ml` also contains the `iterator` class.

A first attempt
---------------

Our extension can now be viewed as a visitor: we will implement a
subclass of `iterator` that will go through the methods in each
`Activity`, check to see if they are the lifecycle methods we need
and, if so, add a snippet of code to force logging information to be
printed upon execution of those methods.  *Note:* at this point, you
can also cheat and look in the implementation `src/ext/logging.ml` to
see the complete version of the logging tutorial.

We start off by creating a baseline version of our class, which will
inherit from `iterator`.  We call our class `trans_logger`, and import
the `Visitor` module:

    module V = Visitor
    module Ap = Android.App
    module As = Android.Preference
    module Ao = Android.OS

    let act_trans = [Ap.onCreate; Ap.onDestroy; Ap.onResume; Ap.onPause]

    class trans_logger (dx: D.dex) =
      let strs = M.new_ty dx (J.to_java_ty ("["^Java.Lang.str)) in
      let [logger_cid::action_cid] = L.map (D.get_cid dx) [logger; action] in
      let log_mid, _ = D.get_the_mtd dx logger_cid logActn in
    object
      inherit V.iterator dx
      
      val mutable do_this_cls = false
      
      method v_cdef (cdef: D.class_def_item) : unit =
        let cid = cdef.D.c_class_id
        and sid = cdef.D.superclass in
        let cname = J.of_java_ty (D.get_ty_str dx cid)
        and sname = J.of_java_ty (D.get_ty_str dx sid) in
        do_this_cls <- L.mem sname tgt_comps
        
      (* to check this is a transition method or not *)
      val mutable mname = ""
      method v_emtd (emtd: D.encoded_method) : unit =
        mname <- D.get_mtd_name dx emtd.D.method_idx

      method v_citm (citm: D.code_item) : unit =
        if L.mem mname act_trans && do_this_cls then
        ()
    end

Let's look at what we've implemented here: we have an iterator that
implements `v_cdef`, `v_emtd`, and `v_citm`.  These methods visit a
class definition, a method definition, and a code item, respectively.
Essentially, we want to think: when we visit a class, `v_cdef` will be
called, and then `v_emtd` will be called on all of its methods, and
then for each call to `v_emtd`, a corresponding call to `v_citm` will
be made on its code item.  We have a few things to keep in mind:

- We only need to check for lifecycle methods in classes that actually
*are* subclasses of `Activity`.  For example, if someone implemented
some other class (such as `org.umd.example.RandomClass`) and *also*
included methods named `onCreate`, we would *not* want to instrument
those methods.  To check whether a class really is a subclass of one
of those we wish to instrument, we can check in `v_cdef`, which will
be called whenever the class is visited.

- We need to ensure that only methods with the correct names are
  instrumented: we can check this inside the `v_emtd`, which is called
  for each method in each class.

- When `v_citm` is called, we check that the current method has the
  correct name (any of `onCreate`, `onResume`, `onPause`, or
  `onDestroy`) *and* is contained within a class which extends
  `Activity`.

So far this code does very little: it simply responds to the
appropriate visitor methods.  What we need now is code to *insert*
into the methods we are targeting.

Using an auxiliary library
--------------------------

How should we log actions taken by the app?  We have a few options, we
could:

- Use the standard Android `Log` class to print out data.

- Do something else in the app to indicate the behavior (such as write
  a file).

- Write a utility class which will do the logging for us, and then
  call a method in *that* class.

Each option has its own benefits: if we use the standard Android `Log`
class we have a simple enough time doing trivial logging, but if we
change the type of information we log later we will have to rewrite
our instrumentation code.  However, generating proper sequences of
bytecode implementing program functionality is difficult, and it is
more natural to write functionality in Java.

We suggest writing as little as instrumentation code as possible, and
writing static blobs of code that implement common functionality as
Java code that can be "pasted" into the app by using redexer's
`Combine` module.  The `Combine` module lets us (essentially) do
static linking to paste two pieces of code together.  In this way, we
can write a "helper" class as a Java file, and then we can write
instrumentation code that calls that helper method.

For the purposes of this tutorial, we have included a class containing
static methods that we can use to log app interactions.  This class is
under the `logging` subdirectory of this tutorial
(`tutorial/logging`), in the `org.umd.logging.util` package.  One
method particularly relevant to our current example is the static
method `logAction`:

    public static void logAction(String c, AppAction a, String... args) {
      String logged = actionNames.get(a) + " component: " + c;
      logged += logArgs(args);
      Log.i(TAG, logged);
    }

`logArgs` is simply a method which turns each of the arguments into a
textual representation which can be printed out.  Were we to call this
method from our Java code, we would do something like this:
     
     // Inside MyMainActivity
     public void onCreate(Bundle bundle) {
       Logger.logAction("MyMainActivity", AppAction.onCreate, bundle);
       ...
       
Our goal will be to *generate* this call in our instrumented binaries.

### Setting up an independent project ###

Generally we will want to static Java code to abstract common pieces
of functionality that will be instrumented in our apps.  To do this,
we can create a new Android project in a subdirectory.  We have some
custom written logging code in the `/tutorial/logging/` subdirectory
of the redexer tree.  To generate an ant build file, you can use the
`android` tool included with the SDK:

    android update project -p .

This will generate a new build.xml, which you can then compile by
doing:

    ant debug

This will build an APK, and a `classes.dex` which will be fed into
redexer (by using a command line option) and merged with the
application fed into redexer by the `Combine` module.

Generating the logging code
---------------------------

Now that we have some boilerplate code that will do the logging for
us, we need to actually generate some code to use it.  In particular
we need to:

- *Find* the method `logAction` so we can ascertain its method ID and
   generate a call to it.

- *Remember* the string delineating the name of the Activity.

- *Map* the name of the method (`onCreate`, `onPause`, etc...) to a
   static field in `AppAction`.

- *Pass* the possible arguments to these methods as an array of
   variadic arguments to the method.

Without further ado, here's the complete `v_citm` method:

    method v_citm (citm: D.code_item) : unit =
      if L.mem mname act_trans && do_this_cls then
      (
        let fid, _ = D.get_the_fld dx action_cid mname in
          let ins0 = I.new_stt_fld sget_obj 0 (D.of_idx fid)
          and ins1 = I.new_const 1 0
          and ins2 = I.new_arr 1 1 (D.of_idx strs)
          and ins3 = I.new_invoke call_stt [0; 1; D.of_idx log_mid] in
          let inss = [ins0; ins1; ins2; ins3] in
          M.insrt_insns_before_end dx citm inss
      )

Let's try to understand what this code does, here are some of the main
methods you should look at:

- `insrt_insns_before_end`: inserts instructions before the *end* of
  the code item.

- `insns`: the list of instructions actually inserted

    + `ins0`: generate an instruction to load the static object
    corresponding to the action into register 0.
    
    + `ins1`: load a constant zero into register 1.

    + `ins2`: create a new array and store a reference to it in
    register 1.  The array will contain strings, and will have size
    zero.

    + `ins3`: Actually *invoke* the `Logger.logAction` method.

There are a few auxiliary operations used in this code from the `Dex`
and `Instr` modules:

- `Dex.of_idx`: Extracts the integral index out of a Dex index.
- `Dex.get_the_fld`:  Looks up a field ID from a class ID and method name.
- `Instr.new_stt_fld`: Generate an instruction to get or put a static field.
- `Instr.new_const`: Generate an instruction that loads a constant into a register.
- `Instr.new_arr`: Generate an instruction that loads a new array
- `Instr.new_invoke`: Generate a new invoke instruction, takes an
  argument that says whether to generate a static or virtual call, and
  takes the set of arguments in the form of a list of parameters.

Inserting unimplemented methods
-------------------------------

It is entirely possible that an arbitrary `Activity` subclass will not
have methods implementing certain lifecycle handlers.  This is fine,
since the `Activity` superclass will simply handle them (though an
`Activity` without implementations of these methods probably will not
do much interesting).  However, these classes will not have lifecycle
methods for us to instrument.  If we want to instrument them, we will
have to manually insert them into the bytecode.

We can insert these method stubs as follows:

- When we first see the class, check whether or not the method
  already exists.

- If a method does not exist, insert it whenever we first see the
  class that should include it.

- Upon seeing the methods later, fix them up as required.

We can use our previous implementation (in `v_citm`) as before, as
long as the methods exist.  If we put our code to insert method stubs
in `v_cdef`, the code will run before any of the `v_citm` methods
calls for code items comprising the class.  Recall our previous
`v_cdef` definition:

      method v_cdef (cdef: D.class_def_item) : unit =
        let cid = cdef.D.c_class_id
        and sid = cdef.D.superclass in
        let cname = J.of_java_ty (D.get_ty_str dx cid)
        and sname = J.of_java_ty (D.get_ty_str dx sid) in
        do_this_cls <- L.mem sname tgt_comps

We now extend it to check whether or not the current class inherits
from `Activity` (or a few others) using an auxiliary method
`target_on_hierarchy`:

    let rec target_on_hierarchy (dx: D.dex) (cid: D.link) : bool =
      if cid = D.no_idx then false else
        let cname = J.of_java_ty (D.get_ty_str dx cid) in
        if L.mem cname tgt_comps then true else
          target_on_hierarchy dx (D.get_superclass dx cid)

Where we define `tgt_comps` to contain `Activity` and subclasses of
`Activity` within the Android SDK.  Our modified version of `v_cdef`
now checks if the necessary methods exist, and if not, inserts null
stubs that simply return.

      method v_cdef (cdef: D.class_def_item) : unit =
        let cid = cdef.D.c_class_id
        and sid = cdef.D.superclass in
        let cname = J.of_java_ty (D.get_ty_str dx cid)
        and sname = J.of_java_ty (D.get_ty_str dx sid) in
        let per_on mname =
          if not (M.override dx cid mname) then
          ( M.insrt_return_void dx cid mname; incr override_cnt )
        in
        (* note that this would find even app's own hierarchy *)
        if target_on_hierarchy dx sid then L.iter per_on act_trans;
        do_this_cls <- L.mem sname tgt_comps

Integrating the logger with the toplevel redexer
------------------------------------------------

Now that we've written our logging module, we need to integrate our
logging code with the rest of redexer proper.  In particular, we need
to:

- Use a command line option to tell redexer to invoke our pass
- Combine our static library for logging with the input app

The main driver code for redexer lives within `src/main.ml`.  There
are a few general purpose things (like collecting timing information
and processing command line arguments), and then toplevel handlers for
the major uses for redexer.

For our purposes, the easiest thing way to add the logging
functionality to redexer will be to use a command line argument.
Command line processing happens with the `arg_specs` list, giving a
list of tuples corresponding to actions that should be taken on a
given command line argument.  If we look at the definition of
`arg_specs`, we see something of the form:

    let arg_specs =
      [
        ("-log", A.String Log.set_level, "set logging level");
        ("-unparse", A.Unit do_unparse, "print dex in yaml format");
        ...
      ]

Redexer uses the standard `Arg` module for parsing command line
options, which is comprised of three components (in the simple case,
there are more complex use cases you can read about in the
documentation):

- An actual command line option

- An action to take for the command (set a string, call a function,
  etc...)

- A string that describes what the command does.

We can add an action for our logging function:

        ("-logging", A.Unit do_logging,
         "instrument logging feature into the given dex");

Our handler simply sets the current `task` to do the instrumentation
for logging (a function yet to be written):

    let do_logging () = task := Some instrument_logging

We now simply need to write the `instrument_logging` function, which
will run our logging instrumentation.  At a high level, this function
needs to:

- Load in the logging library
- Merge the logging library with the passed in application code
- Do the instrumentation we've set up in the `Logging` module
- Dump the constructed output to a file

We can write this using a redexer's built in combinators:

    let instrument_logging (tx: D.dex) : unit =
      let logging_library = "./tutorial/logging/bin/classes.dex" in
      (* parse logging library *)
      let chan = open_in_bin !lib in
      let liblog = Parse.parse chan in
      close_in chan;
      (* merge the external dex file *)
      let cx = Stats.time "merge" (Combine.combine liblog) tx in
      (* seed new addresses for modification *)
      Modify.seed_addr cx.Dex.header.Dex.file_size;
      (* modify target dex accordingly *)
      Logging.modify tx
      (* finally, dump the rewritten dex *)
      Stats.time "dump" (Dump.dump !dex) cx

In this code we have hard-coded the location of the library, but it could be changed 
to accept that as an argument.  We parse the binary channel using the
`Parse` module, and merge it with the existing application (in the
`tx` argument) using the `Combine` module.  One thing to note is the
call to `Modify.seed_addr`.  Whenever new code (instruction segments) is inserted inside
a `dex` structure, redexer needs addresses to place the code (the `dex` 
structure is an integer keyed map, and the keys may not conflict).  It doesn't
really matter where these "fresh" addresses are placed, because in the
dump stage the links will be fixed up anyway, but they can't conflict
with existing addresses inside the dex binary.  (Otherwise you will be
overwriting old code!  This is sometimes useful, for example, if
rewriting a program to use a different version of some library.)  We
call `Logging.modify` to call the previous code we wrote.

Compiling and running
---------------------

Now that you've got all of this running, you should be able to rebuild
redexer:

    make

After this, you should be able to run redexer on `.dex` files.
However, apps are distributed in the form of an APK.  To use
redexer with APKs, we modify the scripts in the `scripts/` directory.
The main driver script is `cmd.rb`.  Most of the code in `cmd.rb`
calls small stubs in `dex.rb`, which in turn call the `redexer`
binary.  We add a little bit of code to the `dex.rb` script:

    def self.logging(dex_name=DEX)
      self.runcmd("#{REDEXER} #{dex_name} -logging #{QUIET}")
    end

And then we add a bit of code to the main `cmd.rb` script to specify
"logging" as an additional command line option by specifying another
case in the option parser:

    when "logging"
      res = apk.send(cmd.to_sym)
      if res != []
        puts ARGV[0]
        puts res
      end

Inside `apk.rb` is a method which implements the logging command:

      def logging()
        Dex.logging(dex)
      end

And inside `dex.rb` is a method which actually calls redexer with the
appropriate options:

      def self.logging(dex_name=DEX)
        self.runcmd("#{REDEXER} #{dex_name} -logging #{QUIET}")
      end

Conclusion
----------

This tutorial has demonstrated how to extend redexer to instrument
apps to include logging information at certain `Activity` lifecycle
methods.  As next steps with redexer you might:

- Read through the example's full documentation in
  `src/ext/logging.ml`.

- Try extending this example to log more complex information.

- Try to understand the range of possible instructions that can be
  generated using redexer.

Much of redexer is infrastructure around a parser and dumper, where
the main `dex` file structure is stored in the `Dex` and `Instr`
modules.  You can read through these files to get an idea of the kinds
of manipulations that will be possible with redexer.  After this, you
can look into the existing extensions (in the `src/ext/` subdirectory)
to get an idea of what already exists (and how you might build on
it!).
