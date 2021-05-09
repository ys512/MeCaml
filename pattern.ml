open Ntype
open Printf

let fail_pattern msg = ksprintf failwith "Pattern Error: %s\n" msg

(* Here could be improved, could combine env inference with typing checking, left as extension *)
let rec check_pattern (pattern:Pst.pattern) target = 
	match pattern, target with
	| Pst.PTag a, NTag ta										-> 
		if Env.mem_tag a ta then [(Tst.PTag a), target], []
		else ksprintf fail_pattern "tag %s does not belong to tagset %s" a ta
	| Pst.PVar x, _ 													-> [Tst.PVar x, target], [(x, target)]
	| Pst.PPair (p1, p2), NProd (t1, t2)			-> 
		let p1, e1 = check_pattern p1 t1 in
		let p2, e2 = check_pattern p2 t2 in p1 @ p2, e1 @ e2
	| Pst.PBlock (a, p) , NMatch (ta, cases)	-> 
		if Env.mem_tag a ta then 
			let t = List.assoc a cases in 
			let p, e = check_pattern p t in
			(Tst.PTag a, NTag ta)::p, e
		else
			ksprintf fail_pattern "tag %s does not belong to tagset %s" a ta
	(* | Pst.Align c, NAlign t -> check_pattern c t *)
	| Pst.PNew c, NRef t -> check_pattern c t
	| _ -> fail_pattern "pattern does not have the correct type"