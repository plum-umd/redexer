default: redexer model

all: redexer graphLog model

# native code targets
redexer: main.native
	mv main redexer

# debugging code targets; could also (more likely) build *.d.byte separately
debug: main.d.byte
	mv main.d.byte redexer

# auxiliary targets
doc:
	ocamlbuild -no-hygiene -use-ocamlfind redexer.docdir/index.html
	mkdir -p docs
	rm -rf docs/api
	mv redexer.docdir docs/api

api: doc

clean:
	ocamlbuild -clean
	rm -f redexer redexer.d.byte redexer.native
	rm -rf docs

allclean: clean 

# x.native; strip the .native extension after building
%.native:
	ocamlbuild -no-hygiene -use-ocamlfind -tag thread $@
	mv $@ $*

# x.d.byte or x.byte
%.byte:
	ocamlbuild -use-ocamlfind $@

.PHONY: doc debug all model test clean modelclean allclean default

