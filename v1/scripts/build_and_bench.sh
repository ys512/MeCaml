#!/bin/bash

scripts/compile.sh $1
ocamlopt -o ocaml_code/$1.exe ocaml_code/$1.ml
scripts/bench.sh $1