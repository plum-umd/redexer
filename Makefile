SOURCES := \
	ocamlutil/stats.ml ocamlutil/clist.ml \
	ocamlutil/uChar.ml ocamlutil/uTF8.ml \
	ocamlutil/enum.ml ocamlutil/dynArray.ml \
	src/util.ml src/log.ml src/java.ml src/instr.ml src/dex.ml \
	src/parse.ml src/visitor.ml src/android.ml \
	src/ext/unparse.ml src/ext/htmlunparse.ml \
	src/ext/ctrlflow.ml src/ext/dataflow.ml \
	src/ext/liveness.ml src/ext/propagation.ml src/ext/reaching.ml \
	src/ext/callgraph.ml \
	src/modify.ml src/combine.ml src/dump.ml \
	src/ext/logging.ml src/ext/directed.ml \
	src/main.ml

DOC_FILES := \
	src/util.mli src/log.mli src/java.mli src/instr.mli src/dex.mli \
	src/parse.mli src/visitor.mli src/android.mli \
	src/ext/unparse.mli src/ext/htmlunparse.mli \
	src/ext/callgraph.mli src/ext/ctrlflow.mli src/ext/dataflow.mli \
	src/ext/liveness.mli src/ext/propagation.mli src/ext/reaching.mli \
	src/modify.mli src/combine.mli src/dump.mli \
	src/ext/logging.mli src/main.mli

RESULT := redexer

OCAMLFLAGS := -g
PACKS := sha
LIBS := unix str
ANNOTATE := yes
CC := gcc

all: native-code

api: all htdoc
	cp -rf doc/redexer/html/ docs/api/
	rm -rf doc

-include OCamlMakefile
