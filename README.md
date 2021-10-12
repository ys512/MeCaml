# MeCaml

MeCaml is the acronym for **M**emory-**e**fficient Functional Language based on O**Caml**, which uses unboxing to achieve memory efficiency. Currently there are two versions: `v1` and `v2` included in the top directory:

- `v1` is a functioning product that supports primitives like `bool/char/short/int` and composite constructs such as pairs -`(a, b)` and variants - `A 0`.  It also supports functions and recursive functions as well as match expressions. The syntax of `MeCaml` is slightly complicated and requires the somewhat frequent use of type annotations.
- `v2` is not fully functioning, but explored certain optimizing ideas such as pattern flattening and runtime sizing. It also improves on automated type inference to improve usability.



For new users, please navigate to `v1` and have a brief look at the README file before trying out the language. `v2` serves primarily as reference and is not executable.