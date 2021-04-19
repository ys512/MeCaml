let compile prog = 
  String.concat ";\n" (List.map Backend.translate (Frontend.from_string prog))

let compile_file filename = 
  let asts = Frontend.from_file filename in
  let r = Str.regexp "\\([A-Za-z0-9]*\\).mlm" in
  let out_file = Str.replace_first r "\\1.mlf" filename in
  let out_chan = open_out out_file in
  List.iter (fun ast -> Printf.fprintf out_chan "%s;\n" (Backend.translate ast)) asts;
  close_out out_chan;