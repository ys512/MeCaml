
(* The type of tokens. *)

type token = 
  | WITH
  | VBAR
  | TYPE
  | THEN
  | TAG
  | SUB
  | SIZE
  | SEMICOLON
  | RPAREN
  | REF
  | RCAST
  | RBRACE
  | NEW
  | MUL
  | MATCH
  | LT
  | LPAREN
  | LET
  | LCAST
  | LBRACE
  | LABEL of (string)
  | INTTYPE
  | INT of (int)
  | IF
  | ID of (string)
  | GT
  | FUN
  | EQ
  | EOF
  | ELSE
  | DIV
  | COMMA
  | COLON
  | BOOLTYPE
  | BOOL of (bool)
  | ARROW
  | ADD

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val start: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Pst.prog)
