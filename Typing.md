t ::= id | {t}  | {|t|}	

​       | t1 * t2 | let x = t1 in t2 | x : id (*only for tags\*)

​       | match e with (| p_e ->  t)+

​       | t ref | t1 -> t2

tag ::= tag id = tag_specs

tag_specs ::= {(ID,)*ID} | id | tag_specs U tag_specs | tag_specs X tag_specs



v :: = n | id | tag ID

e :: = v | size(t) | e1 > e2 | e1 = e2 | if e then e1 else e2

p_e :: = id | n | tag ID



c :: = n | id | {c} | (c1, c2) | tag ID | new c | fn x : T -> c

​         | match c with (| p_c -> c) + | c1 c2 | c : T

p_c :: = id | {p_c} | (p1, p2) | tag ID | new p_c | p_c : T



e1|- a->b  e2 |- a      =>      e1 e2 |- b