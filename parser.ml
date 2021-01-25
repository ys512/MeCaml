
module MenhirBasics = struct
  
  exception Error
  
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
    | LABEL of (
# 14 "parser.mly"
      (string)
# 31 "parser.ml"
  )
    | INTTYPE
    | INT of (
# 16 "parser.mly"
      (int)
# 37 "parser.ml"
  )
    | IF
    | ID of (
# 15 "parser.mly"
      (string)
# 43 "parser.ml"
  )
    | GT
    | FUN
    | EQ
    | EOF
    | ELSE
    | DIV
    | COMMA
    | COLON
    | BOOLTYPE
    | BOOL of (
# 17 "parser.mly"
      (bool)
# 57 "parser.ml"
  )
    | ARROW
    | ADD
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState129
  | MenhirState127
  | MenhirState121
  | MenhirState118
  | MenhirState112
  | MenhirState110
  | MenhirState109
  | MenhirState108
  | MenhirState106
  | MenhirState102
  | MenhirState101
  | MenhirState99
  | MenhirState96
  | MenhirState94
  | MenhirState93
  | MenhirState92
  | MenhirState90
  | MenhirState89
  | MenhirState88
  | MenhirState86
  | MenhirState81
  | MenhirState70
  | MenhirState65
  | MenhirState63
  | MenhirState59
  | MenhirState56
  | MenhirState54
  | MenhirState49
  | MenhirState47
  | MenhirState45
  | MenhirState44
  | MenhirState43
  | MenhirState42
  | MenhirState40
  | MenhirState38
  | MenhirState36
  | MenhirState35
  | MenhirState33
  | MenhirState30
  | MenhirState29
  | MenhirState28
  | MenhirState22
  | MenhirState16
  | MenhirState15
  | MenhirState14
  | MenhirState11
  | MenhirState9
  | MenhirState8
  | MenhirState5
  | MenhirState1

# 1 "parser.mly"
  
open Syntax

# 132 "parser.ml"

let rec _menhir_goto_bop : _menhir_env -> 'ttv_tail -> 'tv_bop -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv501 * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 141 "parser.ml"
    )) * 'tv_bop) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
    | SIZE ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState70
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv502)

and _menhir_goto_separated_nonempty_list_COMMA_LABEL_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_LABEL_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv491 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 164 "parser.ml"
        ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv489 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 170 "parser.ml"
        ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : (
# 14 "parser.mly"
      (string)
# 175 "parser.ml"
        ))), _, (xs : 'tv_separated_nonempty_list_COMMA_LABEL_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_LABEL_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 181 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_LABEL_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv490)) : 'freshtv492)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv499 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv495 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv493 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_separated_nonempty_list_COMMA_LABEL_)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 26 "parser.mly"
      (Syntax.tag)
# 202 "parser.ml"
            ) = 
# 49 "parser.mly"
                                                        ( Tagset _2 )
# 206 "parser.ml"
             in
            _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv494)) : 'freshtv496)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv497 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv498)) : 'freshtv500)
    | _ ->
        _menhir_fail ()

and _menhir_run67 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv487) = Obj.magic _menhir_stack in
    ((let _1 = () in
    let _v : 'tv_bop = 
# 71 "parser.mly"
              ( LT )
# 228 "parser.ml"
     in
    _menhir_goto_bop _menhir_env _menhir_stack _v) : 'freshtv488)

and _menhir_run68 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv485) = Obj.magic _menhir_stack in
    ((let _1 = () in
    let _v : 'tv_bop = 
# 70 "parser.mly"
              ( GT )
# 241 "parser.ml"
     in
    _menhir_goto_bop _menhir_env _menhir_stack _v) : 'freshtv486)

and _menhir_run69 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv483) = Obj.magic _menhir_stack in
    ((let _1 = () in
    let _v : 'tv_bop = 
# 72 "parser.mly"
              ( EQ )
# 254 "parser.ml"
     in
    _menhir_goto_bop _menhir_env _menhir_stack _v) : 'freshtv484)

and _menhir_run118 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 261 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
    | LABEL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
    | LBRACE ->
        _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState118
    | LPAREN ->
        _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState118
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118

and _menhir_run121 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 283 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
    | LABEL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
    | LBRACE ->
        _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState121
    | LPAREN ->
        _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState121
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121

and _menhir_run111 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "parser.mly"
      (string)
# 305 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv477 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 317 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LABEL _v ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112) : 'freshtv478)
    | RBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv479 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 333 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 14 "parser.mly"
      (string)
# 338 "parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_LABEL_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 343 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_LABEL_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv480)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv481 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 353 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv482)

and _menhir_goto_separated_nonempty_list_VBAR_c_case_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_VBAR_c_case_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv471) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VBAR_c_case_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv469) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_separated_nonempty_list_VBAR_c_case_) : 'tv_separated_nonempty_list_VBAR_c_case_) = _v in
        ((let _v : 'tv_c_cases = 
# 97 "parser.mly"
                                          ( _1 )
# 373 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv467) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_c_cases) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv465 * _menhir_state) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_c_cases) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv463 * _menhir_state) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((cases : 'tv_c_cases) : 'tv_c_cases) = _v in
        ((let ((_menhir_stack, _menhir_s), _, (x : 'tv_id)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (
# 25 "parser.mly"
      (Syntax.comp)
# 393 "parser.ml"
        ) = 
# 93 "parser.mly"
                                      ( Match (x, cases) )
# 397 "parser.ml"
         in
        _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv464)) : 'freshtv466)) : 'freshtv468)) : 'freshtv470)) : 'freshtv472)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv475 * _menhir_state * 'tv_c_case)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VBAR_c_case_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv473 * _menhir_state * 'tv_c_case)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_VBAR_c_case_) : 'tv_separated_nonempty_list_VBAR_c_case_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_c_case)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_VBAR_c_case_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 414 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_VBAR_c_case_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv474)) : 'freshtv476)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_VBAR_t_case_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_VBAR_t_case_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv451 * _menhir_state * 'tv_t_case)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VBAR_t_case_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv449 * _menhir_state * 'tv_t_case)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_VBAR_t_case_) : 'tv_separated_nonempty_list_VBAR_t_case_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_t_case)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_VBAR_t_case_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 437 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_VBAR_t_case_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv450)) : 'freshtv452)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv461) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VBAR_t_case_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv459) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_separated_nonempty_list_VBAR_t_case_) : 'tv_separated_nonempty_list_VBAR_t_case_) = _v in
        ((let _v : 'tv_t_cases = 
# 80 "parser.mly"
                                          ( _1 )
# 452 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv457) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_t_cases) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv455 * _menhir_state) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_t_cases) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv453 * _menhir_state) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((cases : 'tv_t_cases) : 'tv_t_cases) = _v in
        ((let ((_menhir_stack, _menhir_s), _, (x : 'tv_id)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 472 "parser.ml"
        ) = 
# 65 "parser.mly"
                                      ( TMatch (x, cases) )
# 476 "parser.ml"
         in
        _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv454)) : 'freshtv456)) : 'freshtv458)) : 'freshtv460)) : 'freshtv462)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 24 "parser.mly"
      (Syntax.expr)
# 485 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv441 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 495 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv437 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 511 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLTYPE ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | ID _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
            | IF ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | INTTYPE ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | LABEL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
            | LBRACE ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | LCAST ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | LPAREN ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | MATCH ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | TAG ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState63
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv438)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv439 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 547 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv440)) : 'freshtv442)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv447 * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 556 "parser.ml"
        )) * 'tv_bop) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 560 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run69 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run68 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv443 * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 576 "parser.ml"
            )) * 'tv_bop) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 580 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (_1 : (
# 24 "parser.mly"
      (Syntax.expr)
# 585 "parser.ml"
            ))), (_2 : 'tv_bop)), _, (_3 : (
# 24 "parser.mly"
      (Syntax.expr)
# 589 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 24 "parser.mly"
      (Syntax.expr)
# 594 "parser.ml"
            ) = 
# 77 "parser.mly"
                       ( Bop (_2, _1, _3) )
# 598 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv444)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv445 * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 608 "parser.ml"
            )) * 'tv_bop) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 612 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv446)) : 'freshtv448)
    | _ ->
        _menhir_fail ()

and _menhir_run53 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 622 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv435 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 630 "parser.ml"
    )) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (t : (
# 23 "parser.mly"
      (Syntax.metype)
# 635 "parser.ml"
    ))) = _menhir_stack in
    let _2 = () in
    let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 641 "parser.ml"
    ) = 
# 60 "parser.mly"
                          ( TRef t )
# 645 "parser.ml"
     in
    _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv436)

and _menhir_run54 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 652 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | ID _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | IF ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | INTTYPE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LABEL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | LBRACE ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LCAST ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LPAREN ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | MATCH ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | TAG ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54

and _menhir_run56 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 686 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | ID _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | IF ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | INTTYPE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LABEL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | LBRACE ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LCAST ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LPAREN ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | MATCH ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | TAG ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56

and _menhir_run48 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv431 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOLTYPE ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | ID _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
        | IF ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | INTTYPE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | LABEL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
        | LBRACE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | LCAST ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | LPAREN ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | MATCH ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | TAG ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState49
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49) : 'freshtv432)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv433 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv434)

and _menhir_run61 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
      (int)
# 764 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv429) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 16 "parser.mly"
      (int)
# 774 "parser.ml"
    )) : (
# 16 "parser.mly"
      (int)
# 778 "parser.ml"
    )) = _v in
    ((let _v : (
# 24 "parser.mly"
      (Syntax.expr)
# 783 "parser.ml"
    ) = 
# 75 "parser.mly"
                  ( Int n )
# 787 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv430)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_tag_spec : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 26 "parser.mly"
      (Syntax.tag)
# 799 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv403 * _menhir_state) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 809 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADD ->
            _menhir_run121 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv399 * _menhir_state) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 823 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv397 * _menhir_state) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 830 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : (
# 26 "parser.mly"
      (Syntax.tag)
# 835 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 26 "parser.mly"
      (Syntax.tag)
# 842 "parser.ml"
            ) = 
# 52 "parser.mly"
                             ( _2 )
# 846 "parser.ml"
             in
            _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv398)) : 'freshtv400)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv401 * _menhir_state) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 856 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv402)) : 'freshtv404)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv407 * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 865 "parser.ml"
        ))) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 869 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv405 * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 875 "parser.ml"
        ))) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 879 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (t1 : (
# 26 "parser.mly"
      (Syntax.tag)
# 884 "parser.ml"
        ))), _, (t2 : (
# 26 "parser.mly"
      (Syntax.tag)
# 888 "parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 26 "parser.mly"
      (Syntax.tag)
# 894 "parser.ml"
        ) = 
# 51 "parser.mly"
                                         ( Prod (t1, t2) )
# 898 "parser.ml"
         in
        _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv406)) : 'freshtv408)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv413 * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 906 "parser.ml"
        ))) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 910 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MUL ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack)
        | ADD | EOF | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv409 * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 922 "parser.ml"
            ))) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 926 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (t1 : (
# 26 "parser.mly"
      (Syntax.tag)
# 931 "parser.ml"
            ))), _, (t2 : (
# 26 "parser.mly"
      (Syntax.tag)
# 935 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 26 "parser.mly"
      (Syntax.tag)
# 941 "parser.ml"
            ) = 
# 50 "parser.mly"
                                           ( Sum (t1, t2) )
# 945 "parser.ml"
             in
            _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv410)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv411 * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 955 "parser.ml"
            ))) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 959 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv412)) : 'freshtv414)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv427) * _menhir_state * 'tv_id)) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 968 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADD ->
            _menhir_run121 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv423) * _menhir_state * 'tv_id)) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 980 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv421) * _menhir_state * 'tv_id)) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 986 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _, (id : 'tv_id)), _, (spec : (
# 26 "parser.mly"
      (Syntax.tag)
# 991 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 29 "parser.mly"
       (Syntax.tagdef)
# 999 "parser.ml"
            ) = 
# 35 "parser.mly"
                                      ( Tagdef (id, spec) )
# 1003 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv419) = _menhir_stack in
            let (_v : (
# 29 "parser.mly"
       (Syntax.tagdef)
# 1010 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv417) = Obj.magic _menhir_stack in
            let (_v : (
# 29 "parser.mly"
       (Syntax.tagdef)
# 1017 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv415) = Obj.magic _menhir_stack in
            let ((_1 : (
# 29 "parser.mly"
       (Syntax.tagdef)
# 1024 "parser.ml"
            )) : (
# 29 "parser.mly"
       (Syntax.tagdef)
# 1028 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv416)) : 'freshtv418)) : 'freshtv420)) : 'freshtv422)) : 'freshtv424)
        | MUL ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv425) * _menhir_state * 'tv_id)) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 1040 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv426)) : 'freshtv428)
    | _ ->
        _menhir_fail ()

and _menhir_run109 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
    | LABEL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
    | LBRACE ->
        _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | LPAREN ->
        _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState109
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109

and _menhir_run110 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LABEL _v ->
        _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110

and _menhir_goto_comp : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
      (Syntax.comp)
# 1082 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv345 * _menhir_state)) * _menhir_state * 'tv_id)) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1092 "parser.ml"
        )))) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1096 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FUN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | ID _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | INT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | LABEL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
        | LBRACE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | MATCH ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | NEW ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | TAG ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | COMMA | EOF | RBRACE | RPAREN | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv343 * _menhir_state)) * _menhir_state * 'tv_id)) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1124 "parser.ml"
            )))) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1128 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (x : 'tv_id)), _, (t : (
# 23 "parser.mly"
      (Syntax.metype)
# 1133 "parser.ml"
            ))), _, (c : (
# 25 "parser.mly"
      (Syntax.comp)
# 1137 "parser.ml"
            ))) = _menhir_stack in
            let _7 = () in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 25 "parser.mly"
      (Syntax.comp)
# 1147 "parser.ml"
            ) = 
# 92 "parser.mly"
                                                              ( Lambda (x, t, c) )
# 1151 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv344)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv346)
    | MenhirState102 | MenhirState101 | MenhirState96 | MenhirState92 | MenhirState94 | MenhirState90 | MenhirState89 | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv349 * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1163 "parser.ml"
        )) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1167 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FUN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | ID _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | INT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | LABEL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
        | LBRACE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | MATCH ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | NEW ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | TAG ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState89
        | COMMA | EOF | RBRACE | RPAREN | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv347 * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1195 "parser.ml"
            )) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1199 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (c1 : (
# 25 "parser.mly"
      (Syntax.comp)
# 1204 "parser.ml"
            ))), _, (c2 : (
# 25 "parser.mly"
      (Syntax.comp)
# 1208 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 25 "parser.mly"
      (Syntax.comp)
# 1213 "parser.ml"
            ) = 
# 94 "parser.mly"
                           ( App (c1, c2) )
# 1217 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv348)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv350)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv355 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1229 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FUN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | ID _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | INT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | LABEL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
        | LBRACE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | MATCH ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | NEW ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv353 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1255 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState90 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv351 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1263 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (c : (
# 25 "parser.mly"
      (Syntax.comp)
# 1269 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 25 "parser.mly"
      (Syntax.comp)
# 1276 "parser.ml"
            ) = 
# 89 "parser.mly"
                             ( Align c )
# 1280 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv352)) : 'freshtv354)
        | TAG ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState90
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv356)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv359 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1294 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv357 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1304 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState92 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FUN ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | ID _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | INT _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | LABEL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | LBRACE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | MATCH ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | NEW ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | TAG ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv358)
        | FUN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | ID _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | INT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | LABEL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | LBRACE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | MATCH ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | NEW ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | TAG ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv360)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv365 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1360 "parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1364 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FUN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | ID _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | INT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | LABEL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
        | LBRACE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | MATCH ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | NEW ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv363 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1390 "parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1394 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState94 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv361 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1402 "parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1406 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (c1 : (
# 25 "parser.mly"
      (Syntax.comp)
# 1412 "parser.ml"
            ))), _), _, (c2 : (
# 25 "parser.mly"
      (Syntax.comp)
# 1416 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 25 "parser.mly"
      (Syntax.comp)
# 1424 "parser.ml"
            ) = 
# 90 "parser.mly"
                                          ( Pair (c1, c2) )
# 1428 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv362)) : 'freshtv364)
        | TAG ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState94
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv366)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv379 * _menhir_state * 'tv_comp_pattern)) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1442 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FUN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | ID _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | INT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | LABEL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | LBRACE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | MATCH ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | NEW ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | TAG ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | COMMA | EOF | RBRACE | RPAREN | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv377 * _menhir_state * 'tv_comp_pattern)) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1470 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (p : 'tv_comp_pattern)), _, (c : (
# 25 "parser.mly"
      (Syntax.comp)
# 1475 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_c_case = 
# 100 "parser.mly"
                                     ( (p, c) )
# 1481 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv375) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_c_case) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv373 * _menhir_state * 'tv_c_case) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | VBAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv367 * _menhir_state * 'tv_c_case) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
                | INT _v ->
                    _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
                | LABEL _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
                | LBRACE ->
                    _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | LPAREN ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | NEW ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | TAG ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99) : 'freshtv368)
            | COMMA | EOF | FUN | ID _ | INT _ | LABEL _ | LBRACE | LPAREN | MATCH | NEW | RBRACE | RPAREN | TAG ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv369 * _menhir_state * 'tv_c_case) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_c_case)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_VBAR_c_case_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1524 "parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_VBAR_c_case_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv370)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv371 * _menhir_state * 'tv_c_case) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv372)) : 'freshtv374)) : 'freshtv376)) : 'freshtv378)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96) : 'freshtv380)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv383 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1543 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FUN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | ID _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | INT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | LABEL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
        | LBRACE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | MATCH ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | NEW ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | TAG ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState101
        | COMMA | EOF | RBRACE | RPAREN | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv381 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1571 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (c : (
# 25 "parser.mly"
      (Syntax.comp)
# 1576 "parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (
# 25 "parser.mly"
      (Syntax.comp)
# 1582 "parser.ml"
            ) = 
# 91 "parser.mly"
                      ( New c )
# 1586 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv382)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101) : 'freshtv384)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv395) * _menhir_state * 'tv_id)) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1598 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv393) * _menhir_state * 'tv_id)) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1608 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState102 in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv391) * _menhir_state * 'tv_id)) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1615 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _, (id : 'tv_id)), _, (comp : (
# 25 "parser.mly"
      (Syntax.comp)
# 1621 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 28 "parser.mly"
       (Syntax.compdef)
# 1629 "parser.ml"
            ) = 
# 41 "parser.mly"
                                   ( Compdef (id, comp) )
# 1633 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv389) = _menhir_stack in
            let (_v : (
# 28 "parser.mly"
       (Syntax.compdef)
# 1640 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv387) = Obj.magic _menhir_stack in
            let (_v : (
# 28 "parser.mly"
       (Syntax.compdef)
# 1647 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv385) = Obj.magic _menhir_stack in
            let ((_1 : (
# 28 "parser.mly"
       (Syntax.compdef)
# 1654 "parser.ml"
            )) : (
# 28 "parser.mly"
       (Syntax.compdef)
# 1658 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv386)) : 'freshtv388)) : 'freshtv390)) : 'freshtv392)) : 'freshtv394)
        | FUN ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | ID _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
        | INT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
        | LABEL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
        | LBRACE ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | LPAREN ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | MATCH ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | NEW ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | TAG ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv396)
    | _ ->
        _menhir_fail ()

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "parser.mly"
      (string)
# 1689 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARROW ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv339 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 1701 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOLTYPE ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | ID _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | IF ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | INTTYPE ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LABEL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
        | LBRACE ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LCAST ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | LPAREN ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | MATCH ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | TAG ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState42
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42) : 'freshtv340)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv341 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 1737 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv342)

and _menhir_goto_type_spec : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
      (Syntax.metype)
# 1745 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv249 * _menhir_state)) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1755 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv245 * _menhir_state)) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1771 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv243 * _menhir_state)) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1778 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : (
# 23 "parser.mly"
      (Syntax.metype)
# 1783 "parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 24 "parser.mly"
      (Syntax.expr)
# 1791 "parser.ml"
            ) = 
# 76 "parser.mly"
                                      ( Size t )
# 1795 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv244)) : 'freshtv246)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv247 * _menhir_state)) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1805 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)) : 'freshtv250)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv255 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1814 "parser.ml"
        ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1818 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | EOF | MUL | RBRACE | RCAST | RPAREN | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv251 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1832 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1836 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (t1 : (
# 23 "parser.mly"
      (Syntax.metype)
# 1841 "parser.ml"
            ))), _, (t2 : (
# 23 "parser.mly"
      (Syntax.metype)
# 1845 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 1851 "parser.ml"
            ) = 
# 63 "parser.mly"
                                      ( TProd (t1, t2) )
# 1855 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv252)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv253 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1865 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1869 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)) : 'freshtv256)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv261 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1878 "parser.ml"
        ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1882 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | EOF | MUL | RBRACE | RCAST | RPAREN | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv257 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1896 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1900 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (t1 : (
# 23 "parser.mly"
      (Syntax.metype)
# 1905 "parser.ml"
            ))), _, (t2 : (
# 23 "parser.mly"
      (Syntax.metype)
# 1909 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 1915 "parser.ml"
            ) = 
# 64 "parser.mly"
                                       ( TFun (t1, t2) )
# 1919 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv258)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv259 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1929 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1933 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)) : 'freshtv262)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv267 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 1942 "parser.ml"
        ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1946 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv263 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 1958 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1962 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLTYPE ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | ID _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
            | IF ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | INTTYPE ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | LABEL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
            | LBRACE ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | LCAST ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | LPAREN ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | MATCH ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | TAG ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState65
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv264)
        | MUL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv265 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 2002 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2006 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)) : 'freshtv268)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv273 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 2015 "parser.ml"
        ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2019 "parser.ml"
        ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2023 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | EOF | RBRACE | RCAST | RPAREN | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv269 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 2039 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2043 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2047 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (e : (
# 24 "parser.mly"
      (Syntax.expr)
# 2052 "parser.ml"
            ))), _, (t1 : (
# 23 "parser.mly"
      (Syntax.metype)
# 2056 "parser.ml"
            ))), _, (t2 : (
# 23 "parser.mly"
      (Syntax.metype)
# 2060 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 2068 "parser.ml"
            ) = 
# 66 "parser.mly"
                                                      ( TIf (e, t1, t2) )
# 2072 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv271 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 2082 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2086 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2090 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)) : 'freshtv274)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv281 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2099 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv277 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2113 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv275 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2120 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : (
# 23 "parser.mly"
      (Syntax.metype)
# 2125 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 2132 "parser.ml"
            ) = 
# 61 "parser.mly"
                                  ( TAlign t )
# 2136 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv276)) : 'freshtv278)
        | REF ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv279 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2148 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv280)) : 'freshtv282)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv289 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2157 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | RCAST ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv285 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2171 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv283 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2178 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : (
# 23 "parser.mly"
      (Syntax.metype)
# 2183 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 2190 "parser.ml"
            ) = 
# 62 "parser.mly"
                                ( TCast t )
# 2194 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv284)) : 'freshtv286)
        | REF ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv287 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2206 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv288)) : 'freshtv290)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv297 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2215 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv293 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2231 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv291 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2238 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : (
# 23 "parser.mly"
      (Syntax.metype)
# 2243 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 2250 "parser.ml"
            ) = 
# 67 "parser.mly"
                              ( _2 )
# 2254 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv292)) : 'freshtv294)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv295 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2264 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv296)) : 'freshtv298)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv313 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 2273 "parser.ml"
        ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2277 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | EOF | MUL | RBRACE | RCAST | RPAREN | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv309 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 2291 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2295 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (p : (
# 14 "parser.mly"
      (string)
# 2300 "parser.ml"
            ))), _, (t : (
# 23 "parser.mly"
      (Syntax.metype)
# 2304 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_t_case = 
# 83 "parser.mly"
                                   ( (p, t) )
# 2310 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv307) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_t_case) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv305 * _menhir_state * 'tv_t_case) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | VBAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv299 * _menhir_state * 'tv_t_case) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LABEL _v ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81) : 'freshtv300)
            | ARROW | ELSE | EOF | MUL | RBRACE | RCAST | REF | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv301 * _menhir_state * 'tv_t_case) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_t_case)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_VBAR_t_case_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2341 "parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_VBAR_t_case_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv302)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv303 * _menhir_state * 'tv_t_case) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv304)) : 'freshtv306)) : 'freshtv308)) : 'freshtv310)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv311 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 2358 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2362 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)) : 'freshtv314)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv323 * _menhir_state)) * _menhir_state * 'tv_id)) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2371 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv319 * _menhir_state)) * _menhir_state * 'tv_id)) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2387 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARROW ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv315 * _menhir_state)) * _menhir_state * 'tv_id)) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2397 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | FUN ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | ID _v ->
                    _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
                | INT _v ->
                    _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
                | LABEL _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
                | LBRACE ->
                    _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | LPAREN ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | MATCH ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | NEW ->
                    _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | TAG ->
                    _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState86
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv316)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv317 * _menhir_state)) * _menhir_state * 'tv_id)) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2431 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv318)) : 'freshtv320)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv321 * _menhir_state)) * _menhir_state * 'tv_id)) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2442 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv322)) : 'freshtv324)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv337) * _menhir_state * 'tv_id)) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2451 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv333) * _menhir_state * 'tv_id)) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2463 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv331) * _menhir_state * 'tv_id)) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2469 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _, (id : 'tv_id)), _, (spec : (
# 23 "parser.mly"
      (Syntax.metype)
# 2474 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 30 "parser.mly"
       (Syntax.typedef)
# 2482 "parser.ml"
            ) = 
# 38 "parser.mly"
                                        ( Typedef (id, spec) )
# 2486 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv329) = _menhir_stack in
            let (_v : (
# 30 "parser.mly"
       (Syntax.typedef)
# 2493 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv327) = Obj.magic _menhir_stack in
            let (_v : (
# 30 "parser.mly"
       (Syntax.typedef)
# 2500 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv325) = Obj.magic _menhir_stack in
            let ((_1 : (
# 30 "parser.mly"
       (Syntax.typedef)
# 2507 "parser.ml"
            )) : (
# 30 "parser.mly"
       (Syntax.typedef)
# 2511 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv326)) : 'freshtv328)) : 'freshtv330)) : 'freshtv332)) : 'freshtv334)
        | MUL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run53 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv335) * _menhir_state * 'tv_id)) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2525 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv336)) : 'freshtv338)
    | _ ->
        _menhir_fail ()

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | LABEL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | LABEL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | ID _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | IF ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | INTTYPE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LABEL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | LBRACE ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LCAST ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LPAREN ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MATCH ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | TAG ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | ID _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | IF ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | INTTYPE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LABEL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | LBRACE ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LCAST ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LPAREN ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | MATCH ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | TAG ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | ID _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | IF ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | INTTYPE ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LABEL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | LBRACE ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LCAST ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LPAREN ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | MATCH ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | TAG ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv241) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 2665 "parser.ml"
    ) = 
# 56 "parser.mly"
                  ( TInt )
# 2669 "parser.ml"
     in
    _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv242)

and _menhir_run47 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        _menhir_run61 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | SIZE ->
        _menhir_run48 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_run50 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv239) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 2698 "parser.ml"
    ) = 
# 55 "parser.mly"
                   ( TBool )
# 2702 "parser.ml"
     in
    _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)

and _menhir_goto_comp_pattern : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_comp_pattern -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv213 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv209 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv207 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (p : 'tv_comp_pattern)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_comp_pattern = 
# 106 "parser.mly"
                                   ( Align p )
# 2728 "parser.ml"
             in
            _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv208)) : 'freshtv210)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv211 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)) : 'freshtv214)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv219 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv215 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | INT _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | LABEL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
            | LBRACE ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | LPAREN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | NEW ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | TAG ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState22
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22) : 'freshtv216)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv217 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)) : 'freshtv220)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv227 * _menhir_state) * _menhir_state * 'tv_comp_pattern)) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv223 * _menhir_state) * _menhir_state * 'tv_comp_pattern)) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv221 * _menhir_state) * _menhir_state * 'tv_comp_pattern)) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (p1 : 'tv_comp_pattern)), _, (p2 : 'tv_comp_pattern)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_comp_pattern = 
# 107 "parser.mly"
                                                          ( Pair (p1, p2) )
# 2794 "parser.ml"
             in
            _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv222)) : 'freshtv224)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv225 * _menhir_state) * _menhir_state * 'tv_comp_pattern)) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv226)) : 'freshtv228)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv231 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv229 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (p : 'tv_comp_pattern)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_comp_pattern = 
# 108 "parser.mly"
                            ( New p )
# 2814 "parser.ml"
         in
        _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv230)) : 'freshtv232)
    | MenhirState99 | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv237 * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv233 * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FUN ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | ID _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
            | INT _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
            | LABEL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
            | LBRACE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | MATCH ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | NEW ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | TAG ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState28
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28) : 'freshtv234)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv235 * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)) : 'freshtv238)
    | _ ->
        _menhir_fail ()

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LABEL _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv203 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 14 "parser.mly"
      (string)
# 2873 "parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv201 * _menhir_state) = Obj.magic _menhir_stack in
        let ((a : (
# 14 "parser.mly"
      (string)
# 2881 "parser.ml"
        )) : (
# 14 "parser.mly"
      (string)
# 2885 "parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_comp_pattern = 
# 105 "parser.mly"
                       ( Tag a )
# 2892 "parser.ml"
         in
        _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv202)) : 'freshtv204)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv205 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | INT _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | LABEL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | LBRACE ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | LPAREN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | TAG ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | INT _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | LABEL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState15 _v
    | LBRACE ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | LPAREN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | TAG ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState15
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState15

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | INT _v ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | LABEL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | LBRACE ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | LPAREN ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | NEW ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | TAG ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
      (int)
# 2981 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv199) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 16 "parser.mly"
      (int)
# 2991 "parser.ml"
    )) : (
# 16 "parser.mly"
      (int)
# 2995 "parser.ml"
    )) = _v in
    ((let _v : 'tv_comp_pattern = 
# 103 "parser.mly"
                  ( Int n )
# 3000 "parser.ml"
     in
    _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv200)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LABEL _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv195 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 14 "parser.mly"
      (string)
# 3016 "parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv193 * _menhir_state) = Obj.magic _menhir_stack in
        let ((a : (
# 14 "parser.mly"
      (string)
# 3024 "parser.ml"
        )) : (
# 14 "parser.mly"
      (string)
# 3028 "parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (
# 25 "parser.mly"
      (Syntax.comp)
# 3035 "parser.ml"
        ) = 
# 88 "parser.mly"
                       ( Tag a )
# 3039 "parser.ml"
         in
        _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv194)) : 'freshtv196)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | ID _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | INT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | LABEL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | LBRACE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | MATCH ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | TAG ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | LABEL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | ID _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | INT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | LABEL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | LBRACE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | MATCH ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | TAG ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUN ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | ID _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | INT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | LABEL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | LBRACE ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | LPAREN ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | MATCH ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | NEW ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | TAG ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
      (int)
# 3155 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv191) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 16 "parser.mly"
      (int)
# 3165 "parser.ml"
    )) : (
# 16 "parser.mly"
      (int)
# 3169 "parser.ml"
    )) = _v in
    ((let _v : (
# 25 "parser.mly"
      (Syntax.comp)
# 3174 "parser.ml"
    ) = 
# 86 "parser.mly"
                  ( Int n )
# 3178 "parser.ml"
     in
    _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv192)

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv187 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | LABEL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv188)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv189 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)

and _menhir_goto_id : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_id -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv127) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv123) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FUN ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | ID _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
            | INT _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
            | LABEL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
            | LBRACE ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | LPAREN ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | MATCH ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | NEW ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | TAG ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5) : 'freshtv124)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv125) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)) : 'freshtv128)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv133 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv129 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
            | INT _v ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
            | LABEL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
            | LBRACE ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState11
            | LPAREN ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState11
            | NEW ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState11
            | TAG ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11) : 'freshtv130)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv131 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)) : 'freshtv134)
    | MenhirState99 | MenhirState11 | MenhirState14 | MenhirState22 | MenhirState15 | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_id)) = _menhir_stack in
        let _v : 'tv_comp_pattern = 
# 104 "parser.mly"
                 ( Var x )
# 3301 "parser.ml"
         in
        _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv136)) : 'freshtv138)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv143 * _menhir_state)) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv139 * _menhir_state)) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLTYPE ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | ID _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
            | IF ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | INTTYPE ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | LABEL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
            | LBRACE ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | LCAST ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | LPAREN ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | MATCH ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | TAG ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35) : 'freshtv140)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv141 * _menhir_state)) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)) : 'freshtv144)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv147 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv145 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (a : 'tv_id)) = _menhir_stack in
        let _1 = () in
        let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 3357 "parser.ml"
        ) = 
# 58 "parser.mly"
                    ( TTag a )
# 3361 "parser.ml"
         in
        _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv146)) : 'freshtv148)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv153 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv149 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LABEL _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40) : 'freshtv150)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv151 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)) : 'freshtv154)
    | MenhirState129 | MenhirState35 | MenhirState42 | MenhirState43 | MenhirState44 | MenhirState45 | MenhirState63 | MenhirState65 | MenhirState49 | MenhirState54 | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv161 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv155 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
            | LABEL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv156)
        | ARROW | ELSE | EOF | MUL | RBRACE | RCAST | REF | RPAREN | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv157 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_id)) = _menhir_stack in
            let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 3416 "parser.ml"
            ) = 
# 57 "parser.mly"
                 ( TVar x )
# 3420 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv158)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv159 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)) : 'freshtv162)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv165 * _menhir_state * 'tv_id)) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv163 * _menhir_state * 'tv_id)) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_id)), _, (a : 'tv_id)) = _menhir_stack in
        let _2 = () in
        let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 3440 "parser.ml"
        ) = 
# 59 "parser.mly"
                           ( TVarTag (x, a) )
# 3444 "parser.ml"
         in
        _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv164)) : 'freshtv166)
    | MenhirState102 | MenhirState5 | MenhirState101 | MenhirState8 | MenhirState96 | MenhirState28 | MenhirState92 | MenhirState94 | MenhirState93 | MenhirState29 | MenhirState90 | MenhirState30 | MenhirState89 | MenhirState88 | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv169 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_id)) = _menhir_stack in
        let _v : (
# 25 "parser.mly"
      (Syntax.comp)
# 3456 "parser.ml"
        ) = 
# 87 "parser.mly"
                 ( Var x )
# 3460 "parser.ml"
         in
        _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv168)) : 'freshtv170)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv175) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv171) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | LABEL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | LBRACE ->
                _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | LPAREN ->
                _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108) : 'freshtv172)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv173) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)) : 'freshtv176)
    | MenhirState108 | MenhirState109 | MenhirState121 | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv179 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (id : 'tv_id)) = _menhir_stack in
        let _v : (
# 26 "parser.mly"
      (Syntax.tag)
# 3503 "parser.ml"
        ) = 
# 48 "parser.mly"
                    ( Var id )
# 3507 "parser.ml"
         in
        _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv178)) : 'freshtv180)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv181) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLTYPE ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | ID _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
            | IF ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | INTTYPE ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | LABEL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
            | LBRACE ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | LCAST ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | LPAREN ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | MATCH ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | TAG ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState129
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129) : 'freshtv182)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv183) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)) : 'freshtv186)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv23) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv26)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 3573 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 3582 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 3591 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv37) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv40)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv41) * _menhir_state * 'tv_id)) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 3619 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 3628 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state * 'tv_c_case)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv47 * _menhir_state * 'tv_comp_pattern)) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 3642 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv49 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 3651 "parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 3655 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv51 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 3664 "parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 3673 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 3682 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 3691 "parser.ml"
        )) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 3695 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv59 * _menhir_state)) * _menhir_state * 'tv_id)) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 3704 "parser.ml"
        )))) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 3708 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv61 * _menhir_state)) * _menhir_state * 'tv_id)) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 3717 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * 'tv_t_case)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 3731 "parser.ml"
        )) * 'tv_bop) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv67 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 3740 "parser.ml"
        ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 3744 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv69 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 3753 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 3767 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 3776 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 3810 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv89 * _menhir_state) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv95 * _menhir_state)) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state * 'tv_comp_pattern)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState22 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv105 * _menhir_state) * _menhir_state * 'tv_comp_pattern)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState15 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv113 * _menhir_state) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv119) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv122)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "parser.mly"
      (string)
# 3902 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv21) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 14 "parser.mly"
      (string)
# 3912 "parser.ml"
    )) : (
# 14 "parser.mly"
      (string)
# 3916 "parser.ml"
    )) = _v in
    ((let _v : 'tv_id = 
# 45 "parser.mly"
                 ( _1 )
# 3921 "parser.ml"
     in
    _menhir_goto_id _menhir_env _menhir_stack _menhir_s _v) : 'freshtv22)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
      (string)
# 3928 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv19) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 15 "parser.mly"
      (string)
# 3938 "parser.ml"
    )) : (
# 15 "parser.mly"
      (string)
# 3942 "parser.ml"
    )) = _v in
    ((let _v : 'tv_id = 
# 44 "parser.mly"
              ( _1 )
# 3947 "parser.ml"
     in
    _menhir_goto_id _menhir_env _menhir_stack _menhir_s _v) : 'freshtv20)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and _menhir_init : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> _menhir_env =
  fun lexer lexbuf ->
    let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and compdef : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 28 "parser.mly"
       (Syntax.compdef)
# 3976 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv17) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
        | LABEL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1) : 'freshtv14)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv16)) : 'freshtv18))

and tagdef : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 29 "parser.mly"
       (Syntax.tagdef)
# 4009 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TAG ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | LABEL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv8)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv10)) : 'freshtv12))

and typedef : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 30 "parser.mly"
       (Syntax.typedef)
# 4042 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TYPE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | LABEL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127) : 'freshtv2)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv4)) : 'freshtv6))

# 269 "<standard.mly>"
  

# 4075 "parser.ml"
