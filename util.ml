let word_size = 32

let undef field name = failwith (field ^ ": " ^ name ^ "undefined")

let find x env name =
	try List.assoc x env
	with Not_found -> undef name x

let bits_to_words b = b/word_size, b mod word_size