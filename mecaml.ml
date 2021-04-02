let compile prog = 
  String.concat ";" (List.map Backend.translate (Frontend.from_string prog))

let compile_file filename = 
  String.concat ";" (List.map Backend.translate (Frontend.from_file filename))