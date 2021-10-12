#!/bin/bash

rm -f *.cmo
rm -f *.cma
rm -f *.cmi

menhir parser.mly
ocamllex lexer.mll

ocamlfind ocamlc -a -o mecaml.cma str.cma pst.ml ntype.ml env.ml tst.ml \
parser.mli parser.ml lexer.ml util.ml pprint.ml expr.ml norm.ml type_checker.ml \
frontend.ml backend.ml mecaml.ml -linkall -package malfunction