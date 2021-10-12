#!/bin/bash

set -ex

time mecaml_code/$1.exe
time ocaml_code/$1.exe