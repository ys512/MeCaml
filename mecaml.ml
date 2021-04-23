let compile prog = 
  Backend.translate_seq (Frontend.from_string prog)

let compile_file filename = 
  let r = Str.regexp "\\([A-Za-z0-9]*\\).mlm" in
  let out_file = Str.replace_first r "\\1.mlf" filename in
  let out_chan = open_out out_file in
  output_string out_chan (Backend.translate_seq (Frontend.from_file filename));
  close_out out_chan
let test_example = compile_file "example.mlm"