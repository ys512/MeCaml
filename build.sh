#!/bin/bash

ocamllex lexer.mll
menhir parser.mly

ocamlc -a -o mecaml.cma parser.mli parser.ml lexer.ml syntax.ml norm_type.ml env.ml norm.ml expr.ml type_checker.ml
