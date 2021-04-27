#!/bin/bash

ocamllex lexer.mll
menhir parser.mly

ocamlfind ocamlc -o mecaml.exe syntax.ml parser.mli parser.ml lexer.ml norm_type.ml env.ml norm.ml expr.ml type_checker.ml -linkall -package malfunction
