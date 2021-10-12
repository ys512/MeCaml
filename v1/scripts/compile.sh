#!/bin/bash

set -ex

# ./build_win.sh
./mecaml.exe mecaml_code/$1.mlm
ocamlopt -c mem.ml
malfunction cmx mecaml_code/$1.mlf
ocamlopt -o mecaml_code/$1.exe mem.cmx mecaml_code/$1.cmx
# mecaml_code/$1.exe