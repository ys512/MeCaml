t ::= bool | char | short | int32 | int64 | {t}  | {|t|}

​       | t1 * t2 | tag ID | ID : t

​       | if e then t1 else t2 

​       | match e with (| v :  t)+

​       | t ref

tag ::= tag ID = tag_specs

tag_specs = {(tag_name,)*tag_name} | ID | tag_specs U tag_specs | tag_specs X tag_specs



v :: = n | true | false | tag_name

e :: = v | size(t) 

| (e1, e2) | fst(e) | snd(e) 

| e1 > e2 | e1 < e2 | e1 = e2 

| if e then e1 else e2