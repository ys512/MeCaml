#!/bin/bash

ocamllex lexer.mll
menhir parser.mly

ocamlc -a -o mecaml.cma parser.mli parser.ml lexer.ml syntax.ml ntype.ml env.ml util.ml pprint.ml norm.ml expr.ml type_checker.ml front_end.ml
