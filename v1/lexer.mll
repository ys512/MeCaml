{
open Parser

let unexpected_character lexbuf c =
  Printf.ksprintf failwith "Unexpected character %c" c
  
let int_out_of_range lexbuf s =
  Printf.ksprintf failwith "Int out of range %s" s  
}

let id = (['a'-'z'] ['a'-'z' 'A'-'Z' '_' '0'-'9']*)
let ID = (['A'-'Z'] ['a'-'z' 'A'-'Z' '_' '0'-'9']*)
let int = (['0'-'9']+)
let ws = ['\t' ' ' '\n']*
let comment = '#' [^'\n']*
let string = '"' ([^'"'] | ('\\' '"'))* '"'
let char = '\'' ([^'\''] | ('\\' '\'')) '\''

rule lex = parse
  | eof       { EOF }
  | "type"    { TYPE }
  | "tag"     { TAG }
  | "let"     { LET }
  | "rec"     { REC }
  
  | "unit"    { UNITTYPE }
  | "bool"    { BOOLTYPE }
  | "int"     { INTTYPE }
  | "char"    { CHARTYPE }
  | "short"   { SHORTTYPE }
  
  | "true"    { BOOL true }
  | "false"   { BOOL false }
  
  | '('       { LPAREN }
  | ')'       { RPAREN }
  
  | '+'       { ADD }
  | '-'       { SUB }
  | '*'       { MUL }
  | '/'       { DIV }
  | '%'       { MOD }
  
  | "if"      { IF }
  | "then"    { THEN }
  | "else"    { ELSE }
  | "match"   { MATCH }
  | "with"    { WITH }
  | '|'       { VBAR }
  | "->"      { ARROW }
  
  | '>'       { GT }
  | '<'       { LT }
  | '='       { EQ }
  
  | "size"    { SIZE }
  | "ref"     { REF }
  | "new"     { NEW }
  | "fun"     { FUN }
  | "let"     { LET }
  | "in"      { IN }
  
  | ','       { COMMA }
  | ':'       { COLON }
  | ';'       { SEMICOLON }
  
  | id as x   { ID x }
  | ID as x   { LABEL x }
  | int as i  { try INT (int_of_string i)
			   with Failure _ -> int_out_of_range lexbuf i }
  
  | "\n"      { Lexing.new_line lexbuf; lex lexbuf }
  | ws        { lex lexbuf }
  | comment   { lex lexbuf }
  | _  as c   { unexpected_character lexbuf c }

{
}