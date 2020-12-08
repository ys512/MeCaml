
(* The type of tokens. *)

type token = 
  | WITH
  | VBAR
  | TYPE
  | THEN
  | TAG
  | SIZE
  | SHORT
  | SEMICOLON
  | RPAREN
  | REF
  | RCAST
  | RBRACE
  | RARROW
  | PLUS
  | NEW
  | MATCH
  | LT
  | LPAREN
  | LCAST
  | LBRACE
  | LABEL of (string)
  | INT64
  | INT32
  | INT of (int)
  | IF
  | ID of (string)
  | GT
  | FUN
  | EQ
  | EOF
  | ELSE
  | CROSS
  | COMMA
  | COLON
  | CHAR
  | BOOL

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val toplevel_typedef: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Mecaml.typedef)

val toplevel_tagdef: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Mecaml.tagdef)

val toplevel_comp: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Mecaml.comp)
