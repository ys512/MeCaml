#!/bin/bash
set -ex

./build_win.sh
./mecaml.exe
ocamlopt -c mem.ml
malfunction cmx example.mlf
ocamlopt -o example.exe mem.cmx example.cmx
./example.exe