#!/bin/bash

rm -f *.cmo
rm -f *.cma
rm -f *.cmi

ocamllex lexer.mll
menhir parser.mly

ocamlfind ocamlc -a -o mecaml.cma pst.ml ntype.ml env.ml tst.ml parser.mli parser.ml lexer.ml util.ml pprint.ml norm.ml expr.ml type_checker.ml front_end.ml
