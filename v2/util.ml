let word_size = 64

let undef field name = failwith (field ^ ": " ^ name ^ "undefined")

let find x env name =
	try List.assoc x env
	with Not_found -> undef name x

let bits_to_words b = b/word_size, b mod word_size

(* return l2-l1 if l1 is prefix of l2, otherwise fail
let rec preflist l1 l2 = 
	match l1,l2 with
	| [], _ -> l2
	| _, [] -> failwith "Prefixlist error"
	| x::tl1, y::tl2 -> 
		if x==y then 
			preflist tl1 tl2
		else
			failwith "Prefixlist error" *)
