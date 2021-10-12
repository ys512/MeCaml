# MeCaml
MeCaml is the acronym for **M**emory-**e**fficient Functional Language based on O**Caml**, the inspiration behind it stems from the inefficiencies arising from boxing of values. As such MeCaml adopts a systematic design, relying unboxed representation of values as its default encoding of types.

A brief repository overview is as follows:

- **lexer.mll**: source file compiled by *ocamllex* in construction of the lexer
- **parser.mly**: source file compiled by *Menhir* to construct the parser
- **pst.ml**: Syntax Tree directly produced via parsing
- **tst.ml**: Typed Syntax Tree, syntax tree with type annotations at each node
- **expr.ml**: expressions used in type definitions and evaluation of expressions inside types
- **ntype.ml**: structure for normal types, which are produced by normalizing type definition in **pst.ml**
- **norm.ml**: module to convert parsed types to normed types
- **type\_checker.ml**: type checker to convert a PST to a TST
- **frontend.ml**: combines lexer, parser and type checker to perform static checks on user program
- **backend.ml**: translator from TST's to malfunction code
- **mecaml.ml**: combines **frontend** and **backend** to form the entire compilation pipeline, entry point for compilation
- **scripts**: scripts for building the compiler, running benchmarks and compiling user inputs
- **ocaml\_code**: benchmark programs written in ocaml, including *fib*, *fib2*, *gcd* and *gcd2*.
- **mecaml\_code**: benchmark programs written in mecaml, including *fib*, *fib2*, *gcd* and *gcd2*.



In particular, the user might find executing the scripts in the following order to be useful:

```bash
# First make sure you are inside v1 directory

scripts/build_exe.sh # Build the compiler

scripts/compile.sh filename 
# e.g. scripts/compile.sh gcd will look for gcd.mlm in mecaml_code folder and compile it to gcd.mlf and gcd.exe, you can call mecaml_code/gcd.exe to execute your code

scripts/make_and_bench.sh filename
# e.g. scripts/make_and_bench.sh gcd will compile:
# mecaml_code/gcd.mlm -> mecaml_code/gcd.exe
# ocaml_code/gcd.ml -> ocaml_code/gcd.exe
# The two executables will be run using the time command, that prints execution time to stdout

scripts/bench filename
scripts/multi_bench filename
# These two scripts are designed to run after your source files have been compiled into executable to avoid repeated compilation
```



If you want to write your own code, place it inside mecaml_code (*.mlm) and ocaml_code (\*.ml) respectively.

Also, the compilation allows you to debug your program by setting one of variables as "out" to have its value printed to stdout.

For example, the following program would print $fib(10) = 89$ to stdout:

```
let n = 10;
let out =
	let rec fib (x:int):int = 
    if x=0 then 1 else (
        if x=1 then 1 
        else (fib (x-1)) + (fib (x-2))
    ) in fib n;
```



*Enjoy trying out MeCaml!!! If you are interested, you can navigate to v2, where an near complete version with support for more advanced features like compact layout, run time sizing and pattern flattening is implemented*