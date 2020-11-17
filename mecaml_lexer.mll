{
open MeCaml_parser
exception Lexing_error of MeCaml.location * string

let id = (['a'-'z' 'A'-'Z'] ['a'-'z' 'A'-'Z' '_' '0'-'9']*)
let int = (['-']? ['0'-'9']+)
let ws = ['\t' ' ' '\n']*
let comment = '#' [^'\n']*
let string = '"' ([^'"'] | ('\\' '"'))* '"'
let char = '\'' ([^'\''] | ('\\' '\'')) '\''

rule lex = parse
  | eof      { EOF }
  | 'type'   { TYPE }
  | 'bool'   { BOOL }
  | 'char'   { CHAR }
  | 'short'  { SHORT }
  | 'int32'  { INT32 }
  | 'int64'  { INT64 }
  
  | '{'      { LBRACE }
  | '}'      { RBRACE }
  | '{|'     { LCAST }
  | '|}'     { RCAST }
  | '*'      { CROSS }
  | '+'		 { PLUS }
  | 'tag'    { TAG }
  | ':'      { COLON }
  | 'if'     { IF }
  | 'then'   { THEN }
  | 'else'   { ELSE }
  | 'match'  { MATCH }
  | 'with'   { WITH }
  | '|'      { VBAR }
  | 'ref'    { REF }
  
  | '='      { EQ }
  | ','	     { COMMA }
  | id as x  { ID x }
  | int as i { try INT (int_of_string i)
			   with Failure _ -> int_out_of_range lexbuf i }
  
  | "\n"     { Lexing.new_line lexbuf; lex lexbuf }
  | ws       { lex lexbuf }
  | comment  { lex lexbuf }
  | _  as c  { unexpected_character lexbuf c }

{
}
