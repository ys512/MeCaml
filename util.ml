let word_size = 32

let undef field name = failwith (field ^ ": " ^ name ^ "undefined")

let find x env name =
	try List.assoc x env
	with Not_found -> undef name x