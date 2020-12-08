
module MenhirBasics = struct
  
  exception Error
  
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
    | LABEL of (
# 15 "mecaml_parser.mly"
      (string)
# 31 "mecaml_parser.ml"
  )
    | INT64
    | INT32
    | INT of (
# 17 "mecaml_parser.mly"
      (int)
# 38 "mecaml_parser.ml"
  )
    | IF
    | ID of (
# 16 "mecaml_parser.mly"
      (string)
# 44 "mecaml_parser.ml"
  )
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
  | MenhirState136
  | MenhirState134
  | MenhirState127
  | MenhirState125
  | MenhirState120
  | MenhirState118
  | MenhirState117
  | MenhirState115
  | MenhirState112
  | MenhirState110
  | MenhirState108
  | MenhirState107
  | MenhirState106
  | MenhirState105
  | MenhirState103
  | MenhirState101
  | MenhirState99
  | MenhirState96
  | MenhirState94
  | MenhirState93
  | MenhirState91
  | MenhirState85
  | MenhirState82
  | MenhirState77
  | MenhirState76
  | MenhirState75
  | MenhirState72
  | MenhirState71
  | MenhirState67
  | MenhirState66
  | MenhirState63
  | MenhirState59
  | MenhirState52
  | MenhirState49
  | MenhirState47
  | MenhirState45
  | MenhirState43
  | MenhirState40
  | MenhirState33
  | MenhirState30
  | MenhirState28
  | MenhirState20
  | MenhirState19
  | MenhirState18
  | MenhirState14
  | MenhirState12
  | MenhirState10
  | MenhirState6
  | MenhirState5
  | MenhirState4
  | MenhirState3
  | MenhirState0

# 1 "mecaml_parser.mly"
  
open Mecaml

# 129 "mecaml_parser.ml"

let rec _menhir_goto_separated_nonempty_list_COMMA_LABEL_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_LABEL_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv517 * _menhir_state * (
# 15 "mecaml_parser.mly"
      (string)
# 140 "mecaml_parser.ml"
        ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv515 * _menhir_state * (
# 15 "mecaml_parser.mly"
      (string)
# 146 "mecaml_parser.ml"
        ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : (
# 15 "mecaml_parser.mly"
      (string)
# 151 "mecaml_parser.ml"
        ))), _, (xs : 'tv_separated_nonempty_list_COMMA_LABEL_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_LABEL_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 157 "mecaml_parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_LABEL_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv516)) : 'freshtv518)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv525 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv521 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv519 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_separated_nonempty_list_COMMA_LABEL_)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 178 "mecaml_parser.ml"
            ) = 
# 48 "mecaml_parser.mly"
                                                        ( Tagset _2 )
# 182 "mecaml_parser.ml"
             in
            _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv520)) : 'freshtv522)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv523 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv524)) : 'freshtv526)
    | _ ->
        _menhir_fail ()

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 198 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | INT _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | SIZE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | TAG ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run47 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 224 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | INT _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | SIZE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | TAG ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_run16 : _menhir_env -> 'ttv_tail * _menhir_state -> (
# 16 "mecaml_parser.mly"
      (string)
# 250 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv513 * _menhir_state) = Obj.magic _menhir_stack in
    let ((id : (
# 16 "mecaml_parser.mly"
      (string)
# 259 "mecaml_parser.ml"
    )) : (
# 16 "mecaml_parser.mly"
      (string)
# 263 "mecaml_parser.ml"
    )) = _v in
    ((let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 270 "mecaml_parser.ml"
    ) = 
# 73 "mecaml_parser.mly"
                     ( Tag id )
# 274 "mecaml_parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv514)

and _menhir_reduce22 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 17 "mecaml_parser.mly"
      (int)
# 281 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (n : (
# 17 "mecaml_parser.mly"
      (int)
# 287 "mecaml_parser.ml"
    ))) = _menhir_stack in
    let _v : (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 292 "mecaml_parser.ml"
    ) = 
# 71 "mecaml_parser.mly"
                  ( Int n )
# 296 "mecaml_parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_separated_nonempty_list_VBAR_comp_match_case_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_VBAR_comp_match_case_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv507) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VBAR_comp_match_case_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv505) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_separated_nonempty_list_VBAR_comp_match_case_) : 'tv_separated_nonempty_list_VBAR_comp_match_case_) = _v in
        ((let _v : 'tv_comp_match_cases = 
# 103 "mecaml_parser.mly"
                                                  ( _1 )
# 315 "mecaml_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv503) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_comp_match_cases) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv501 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 325 "mecaml_parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_comp_match_cases) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv499 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 333 "mecaml_parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((cases : 'tv_comp_match_cases) : 'tv_comp_match_cases) = _v in
        ((let (((_menhir_stack, _menhir_s), _, (c : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 340 "mecaml_parser.ml"
        ))), _) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 347 "mecaml_parser.ml"
        ) = 
# 98 "mecaml_parser.mly"
                                               ( Match (c, cases) )
# 351 "mecaml_parser.ml"
         in
        _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv500)) : 'freshtv502)) : 'freshtv504)) : 'freshtv506)) : 'freshtv508)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv511 * _menhir_state * 'tv_comp_match_case)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VBAR_comp_match_case_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv509 * _menhir_state * 'tv_comp_match_case)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_VBAR_comp_match_case_) : 'tv_separated_nonempty_list_VBAR_comp_match_case_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_comp_match_case)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_VBAR_comp_match_case_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 368 "mecaml_parser.ml"
         in
        _menhir_goto_separated_nonempty_list_VBAR_comp_match_case_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv510)) : 'freshtv512)
    | _ ->
        _menhir_fail ()

and _menhir_run94 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 377 "mecaml_parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | CHAR ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | INT32 ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | INT64 ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | LBRACE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | LCAST ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | MATCH ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | SHORT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94

and _menhir_run125 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 412 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
    | LBRACE ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState125
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125

and _menhir_run127 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 432 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
    | LBRACE ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127

and _menhir_run119 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "mecaml_parser.mly"
      (string)
# 452 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv493 * _menhir_state * (
# 15 "mecaml_parser.mly"
      (string)
# 464 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LABEL _v ->
            _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120) : 'freshtv494)
    | RBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv495 * _menhir_state * (
# 15 "mecaml_parser.mly"
      (string)
# 480 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 15 "mecaml_parser.mly"
      (string)
# 485 "mecaml_parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_LABEL_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 490 "mecaml_parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_LABEL_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv496)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv497 * _menhir_state * (
# 15 "mecaml_parser.mly"
      (string)
# 500 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv498)

and _menhir_run73 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LABEL _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv489 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 15 "mecaml_parser.mly"
      (string)
# 517 "mecaml_parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv487 * _menhir_state) = Obj.magic _menhir_stack in
        let ((id : (
# 15 "mecaml_parser.mly"
      (string)
# 525 "mecaml_parser.ml"
        )) : (
# 15 "mecaml_parser.mly"
      (string)
# 529 "mecaml_parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 536 "mecaml_parser.ml"
        ) = 
# 111 "mecaml_parser.mly"
                       ( Tag id )
# 540 "mecaml_parser.ml"
         in
        _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv488)) : 'freshtv490)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv491 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv492)

and _menhir_run75 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | INT _v ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState75 _v
    | LBRACE ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | LPAREN ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | NEW ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | TAG ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState75
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState75

and _menhir_run76 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | INT _v ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
    | LBRACE ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | LPAREN ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | NEW ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | TAG ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState76
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76

and _menhir_run77 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | INT _v ->
        _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState77 _v
    | LBRACE ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | LPAREN ->
        _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | NEW ->
        _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | TAG ->
        _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState77
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77

and _menhir_run78 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "mecaml_parser.mly"
      (int)
# 629 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv485) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 17 "mecaml_parser.mly"
      (int)
# 639 "mecaml_parser.ml"
    )) : (
# 17 "mecaml_parser.mly"
      (int)
# 643 "mecaml_parser.ml"
    )) = _v in
    ((let _v : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 648 "mecaml_parser.ml"
    ) = 
# 109 "mecaml_parser.mly"
                  ( Int n )
# 652 "mecaml_parser.ml"
     in
    _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv486)

and _menhir_run82 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 659 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | CHAR ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | INT32 ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | INT64 ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
    | LBRACE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | LCAST ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | MATCH ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | SHORT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82

and _menhir_run67 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | INT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv479) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState67 in
        let (_v : (
# 17 "mecaml_parser.mly"
      (int)
# 709 "mecaml_parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ | GT | WITH ->
            _menhir_reduce22 _menhir_env (Obj.magic _menhir_stack)
        | COLON | FUN | ID _ | INT _ | LABEL _ | LBRACE | LPAREN | MATCH | NEW | TAG ->
            _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv477 * _menhir_state * (
# 17 "mecaml_parser.mly"
      (int)
# 726 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv478)) : 'freshtv480)
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | LBRACE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | MATCH ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | NEW ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | SIZE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | TAG ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv483) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState67 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _v
        | LABEL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv481 * _menhir_state) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv482)) : 'freshtv484)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67

and _menhir_run101 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | CHAR ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | FUN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
    | INT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
    | INT32 ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | INT64 ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
    | LBRACE ->
        _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | LCAST ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | MATCH ->
        _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | NEW ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | SHORT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | TAG ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101

and _menhir_goto_separated_nonempty_list_VBAR_expr_match_case_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_VBAR_expr_match_case_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv471) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VBAR_expr_match_case_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv469) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_separated_nonempty_list_VBAR_expr_match_case_) : 'tv_separated_nonempty_list_VBAR_expr_match_case_) = _v in
        ((let _v : 'tv_expr_match_cases = 
# 80 "mecaml_parser.mly"
                                                  ( _1 )
# 822 "mecaml_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv467) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_expr_match_cases) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv465 * _menhir_state) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 832 "mecaml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_expr_match_cases) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv463 * _menhir_state) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 840 "mecaml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((cases : 'tv_expr_match_cases) : 'tv_expr_match_cases) = _v in
        ((let ((_menhir_stack, _menhir_s), _, (e : (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 847 "mecaml_parser.ml"
        ))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 854 "mecaml_parser.ml"
        ) = 
# 68 "mecaml_parser.mly"
                                               ( Match (e, cases) )
# 858 "mecaml_parser.ml"
         in
        _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv464)) : 'freshtv466)) : 'freshtv468)) : 'freshtv470)) : 'freshtv472)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv475 * _menhir_state * 'tv_expr_match_case)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VBAR_expr_match_case_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv473 * _menhir_state * 'tv_expr_match_case)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_VBAR_expr_match_case_) : 'tv_separated_nonempty_list_VBAR_expr_match_case_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_expr_match_case)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_VBAR_expr_match_case_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 875 "mecaml_parser.ml"
         in
        _menhir_goto_separated_nonempty_list_VBAR_expr_match_case_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv474)) : 'freshtv476)
    | _ ->
        _menhir_fail ()

and _menhir_run53 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LABEL _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv459 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 15 "mecaml_parser.mly"
      (string)
# 893 "mecaml_parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv457 * _menhir_state) = Obj.magic _menhir_stack in
        let ((id : (
# 15 "mecaml_parser.mly"
      (string)
# 901 "mecaml_parser.ml"
        )) : (
# 15 "mecaml_parser.mly"
      (string)
# 905 "mecaml_parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 912 "mecaml_parser.ml"
        ) = 
# 88 "mecaml_parser.mly"
                       ( Tag id )
# 916 "mecaml_parser.ml"
         in
        _menhir_goto_expr_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv458)) : 'freshtv460)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv461 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv462)

and _menhir_run55 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "mecaml_parser.mly"
      (int)
# 930 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv455) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 17 "mecaml_parser.mly"
      (int)
# 940 "mecaml_parser.ml"
    )) : (
# 17 "mecaml_parser.mly"
      (int)
# 944 "mecaml_parser.ml"
    )) = _v in
    ((let _v : (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 949 "mecaml_parser.ml"
    ) = 
# 86 "mecaml_parser.mly"
                  ( Int n )
# 953 "mecaml_parser.ml"
     in
    _menhir_goto_expr_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv456)

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 960 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv423 * _menhir_state) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 970 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv419 * _menhir_state) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 984 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
            | IF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState43
            | INT _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
            | LABEL _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
            | SIZE ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState43
            | TAG ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState43
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43) : 'freshtv420)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv421 * _menhir_state) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1012 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv422)) : 'freshtv424)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv429 * _menhir_state) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1021 "mecaml_parser.ml"
        ))) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1025 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv425 * _menhir_state) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1035 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1039 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
            | IF ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | INT _v ->
                _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
            | LABEL _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
            | SIZE ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | TAG ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49) : 'freshtv426)
        | EQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv427 * _menhir_state) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1071 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1075 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv428)) : 'freshtv430)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv435 * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1084 "mecaml_parser.ml"
        ))) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1088 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | THEN | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv431 * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1102 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1106 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1111 "mecaml_parser.ml"
            ))), _, (e2 : (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1115 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1121 "mecaml_parser.ml"
            ) = 
# 75 "mecaml_parser.mly"
                             ( Gt (e1, e2) )
# 1125 "mecaml_parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv432)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv433 * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1135 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1139 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv434)) : 'freshtv436)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv441 * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1148 "mecaml_parser.ml"
        ))) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1152 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | THEN | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv437 * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1166 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1170 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (e1 : (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1175 "mecaml_parser.ml"
            ))), _, (e2 : (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1179 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1185 "mecaml_parser.ml"
            ) = 
# 76 "mecaml_parser.mly"
                             ( Eq (e1, e2) )
# 1189 "mecaml_parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv438)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv439 * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1199 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1203 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv440)) : 'freshtv442)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv447 * _menhir_state) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1212 "mecaml_parser.ml"
        ))) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1216 "mecaml_parser.ml"
        ))) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1220 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | THEN | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv443 * _menhir_state) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1234 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1238 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1242 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (e0 : (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1247 "mecaml_parser.ml"
            ))), _, (e1 : (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1251 "mecaml_parser.ml"
            ))), _, (e2 : (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1255 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1263 "mecaml_parser.ml"
            ) = 
# 77 "mecaml_parser.mly"
                                             ( If (e0, e1, e2) )
# 1267 "mecaml_parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv444)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv445 * _menhir_state) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1277 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1281 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1285 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv446)) : 'freshtv448)
    | MenhirState67 | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv453 * _menhir_state) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1294 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv449 * _menhir_state) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1308 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | INT _v ->
                _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | LABEL _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | TAG ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv450)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv451 * _menhir_state) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 1332 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv452)) : 'freshtv454)
    | _ ->
        _menhir_fail ()

and _menhir_run26 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 1342 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv417 * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 1350 "mecaml_parser.ml"
    )) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (t : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 1355 "mecaml_parser.ml"
    ))) = _menhir_stack in
    let _2 = () in
    let _v : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 1361 "mecaml_parser.ml"
    ) = 
# 63 "mecaml_parser.mly"
                          ( Ref t )
# 1365 "mecaml_parser.ml"
     in
    _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)

and _menhir_run28 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 1372 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | CHAR ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | INT32 ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | INT64 ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | LBRACE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | LCAST ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | MATCH ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | SHORT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_run30 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 1406 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | CHAR ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | INT32 ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | INT64 ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
    | LBRACE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | LCAST ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | MATCH ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | SHORT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState30
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv415 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv416)

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv411 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | CHAR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | ID _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | INT32 ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | INT64 ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | LABEL _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
        | LBRACE ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | LCAST ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | MATCH ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | SHORT ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState18
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv412)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv413 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv414)

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "mecaml_parser.mly"
      (int)
# 1500 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce22 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | INT _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | SIZE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | TAG ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40

and _menhir_goto_comp : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1533 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState4 | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv355 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1543 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | FUN ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | ID _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
        | LABEL _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState71 _v
        | LBRACE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | LPAREN ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | MATCH ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | NEW ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | TAG ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv353 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1573 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState71 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
            | INT _v ->
                _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
            | LABEL _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
            | LBRACE ->
                _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | LPAREN ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | NEW ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | TAG ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState72
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72) : 'freshtv354)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv356)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv369 * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1607 "mecaml_parser.ml"
        ))) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1611 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | FUN ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | ID _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | LABEL _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
        | LBRACE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | LPAREN ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | MATCH ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | NEW ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | TAG ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState93
        | COMMA | EOF | RBRACE | RPAREN | VBAR | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv367 * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1641 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1645 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (p : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1650 "mecaml_parser.ml"
            ))), _, (c : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1654 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_comp_match_case = 
# 106 "mecaml_parser.mly"
                                      ( (p, c) )
# 1660 "mecaml_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv365) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_comp_match_case) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv363 * _menhir_state * 'tv_comp_match_case) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | VBAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv357 * _menhir_state * 'tv_comp_match_case) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
                | INT _v ->
                    _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
                | LABEL _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
                | LBRACE ->
                    _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | LPAREN ->
                    _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | NEW ->
                    _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | TAG ->
                    _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99) : 'freshtv358)
            | COLON | COMMA | EOF | FUN | ID _ | INT _ | LABEL _ | LBRACE | LPAREN | MATCH | NEW | RBRACE | RPAREN | TAG | WITH ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv359 * _menhir_state * 'tv_comp_match_case) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_comp_match_case)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_VBAR_comp_match_case_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1703 "mecaml_parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_VBAR_comp_match_case_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv361 * _menhir_state * 'tv_comp_match_case) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv362)) : 'freshtv364)) : 'freshtv366)) : 'freshtv368)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv370)
    | MenhirState112 | MenhirState110 | MenhirState106 | MenhirState108 | MenhirState105 | MenhirState103 | MenhirState71 | MenhirState96 | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv373 * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1722 "mecaml_parser.ml"
        )) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1726 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | FUN ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | ID _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | LABEL _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | LBRACE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | LPAREN ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | MATCH ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | NEW ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | TAG ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | COMMA | EOF | RBRACE | RPAREN | VBAR | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv371 * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1756 "mecaml_parser.ml"
            )) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1760 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (c1 : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1765 "mecaml_parser.ml"
            ))), _, (c2 : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1769 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1774 "mecaml_parser.ml"
            ) = 
# 99 "mecaml_parser.mly"
                           ( App (c1, c2) )
# 1778 "mecaml_parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv372)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96) : 'freshtv374)
    | MenhirState6 | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv379 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1790 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | FUN ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | ID _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | LABEL _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | LBRACE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | LPAREN ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | MATCH ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | NEW ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv377 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1818 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState103 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv375 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1826 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (c : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1832 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1839 "mecaml_parser.ml"
            ) = 
# 94 "mecaml_parser.mly"
                             ( Align c )
# 1843 "mecaml_parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv376)) : 'freshtv378)
        | TAG ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv380)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv383 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 1857 "mecaml_parser.ml"
        ))) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1861 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | FUN ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | ID _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | LABEL _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | LBRACE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | LPAREN ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | MATCH ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | NEW ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | TAG ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | COMMA | EOF | RBRACE | RPAREN | VBAR | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv381 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 1891 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1895 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (id : 'tv_id)), _, (t : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 1900 "mecaml_parser.ml"
            ))), _, (c : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1904 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1912 "mecaml_parser.ml"
            ) = 
# 97 "mecaml_parser.mly"
                                                  ( Fun (id, t, c) )
# 1916 "mecaml_parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv382)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv384)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv387 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1928 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv385 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1940 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState106 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FUN ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | ID _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
            | INT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
            | LABEL _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
            | LBRACE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | MATCH ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | NEW ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | TAG ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState107
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107) : 'freshtv386)
        | FUN ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | ID _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | LABEL _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
        | LBRACE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | LPAREN ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | MATCH ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | NEW ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | TAG ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState106
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv388)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv393 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 1996 "mecaml_parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2000 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | FUN ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | ID _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
        | LABEL _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
        | LBRACE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | LPAREN ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | MATCH ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | NEW ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv391 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2028 "mecaml_parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2032 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState108 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv389 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2040 "mecaml_parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2044 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (c1 : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2050 "mecaml_parser.ml"
            ))), _), _, (c2 : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2054 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2062 "mecaml_parser.ml"
            ) = 
# 95 "mecaml_parser.mly"
                                          ( Pair (c1, c2) )
# 2066 "mecaml_parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv390)) : 'freshtv392)
        | TAG ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108) : 'freshtv394)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv397 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2080 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | FUN ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | ID _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
        | LABEL _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
        | LBRACE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | LPAREN ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | MATCH ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | NEW ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | TAG ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | COMMA | EOF | RBRACE | RPAREN | VBAR | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv395 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2110 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (c : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2115 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2121 "mecaml_parser.ml"
            ) = 
# 96 "mecaml_parser.mly"
                      ( New c )
# 2125 "mecaml_parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv396)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110) : 'freshtv398)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv409 * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2137 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv407 * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2149 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState112 in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv405 * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2156 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, (_1 : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2162 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 24 "mecaml_parser.mly"
       (Mecaml.comp)
# 2168 "mecaml_parser.ml"
            ) = 
# 37 "mecaml_parser.mly"
                   ( _1 )
# 2172 "mecaml_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv403) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 24 "mecaml_parser.mly"
       (Mecaml.comp)
# 2180 "mecaml_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv401) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 24 "mecaml_parser.mly"
       (Mecaml.comp)
# 2188 "mecaml_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv399) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 24 "mecaml_parser.mly"
       (Mecaml.comp)
# 2196 "mecaml_parser.ml"
            )) : (
# 24 "mecaml_parser.mly"
       (Mecaml.comp)
# 2200 "mecaml_parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv400)) : 'freshtv402)) : 'freshtv404)) : 'freshtv406)) : 'freshtv408)
        | FUN ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | ID _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
        | INT _v ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
        | LABEL _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
        | LBRACE ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | LPAREN ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | MATCH ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | NEW ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | TAG ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112) : 'freshtv410)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_tag_spec : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2236 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv339) * _menhir_state * 'tv_id)) * _menhir_state * (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2246 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CROSS ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run125 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv335) * _menhir_state * 'tv_id)) * _menhir_state * (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2260 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _, (id : 'tv_id)), _, (spec : (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2265 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_tagdef = 
# 44 "mecaml_parser.mly"
                                    ( Tagbind (id, spec) )
# 2272 "mecaml_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv333) = _menhir_stack in
            let (_v : 'tv_tagdef) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv331 * 'tv_tagdef) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EOF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv327 * 'tv_tagdef) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv325 * 'tv_tagdef) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, (_1 : 'tv_tagdef)) = _menhir_stack in
                let _2 = () in
                let _v : (
# 25 "mecaml_parser.mly"
       (Mecaml.tagdef)
# 2293 "mecaml_parser.ml"
                ) = 
# 34 "mecaml_parser.mly"
                    ( _1 )
# 2297 "mecaml_parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv323) = _menhir_stack in
                let (_v : (
# 25 "mecaml_parser.mly"
       (Mecaml.tagdef)
# 2304 "mecaml_parser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv321) = Obj.magic _menhir_stack in
                let (_v : (
# 25 "mecaml_parser.mly"
       (Mecaml.tagdef)
# 2311 "mecaml_parser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv319) = Obj.magic _menhir_stack in
                let ((_1 : (
# 25 "mecaml_parser.mly"
       (Mecaml.tagdef)
# 2318 "mecaml_parser.ml"
                )) : (
# 25 "mecaml_parser.mly"
       (Mecaml.tagdef)
# 2322 "mecaml_parser.ml"
                )) = _v in
                (Obj.magic _1 : 'freshtv320)) : 'freshtv322)) : 'freshtv324)) : 'freshtv326)) : 'freshtv328)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv329 * 'tv_tagdef) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv330)) : 'freshtv332)) : 'freshtv334)) : 'freshtv336)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv337) * _menhir_state * 'tv_id)) * _menhir_state * (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2338 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv338)) : 'freshtv340)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv345 * _menhir_state * (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2347 "mecaml_parser.ml"
        ))) * _menhir_state * (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2351 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CROSS ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run125 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv341 * _menhir_state * (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2365 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2369 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (t1 : (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2374 "mecaml_parser.ml"
            ))), _, (t2 : (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2378 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2384 "mecaml_parser.ml"
            ) = 
# 49 "mecaml_parser.mly"
                                            ( Sum (t1, t2) )
# 2388 "mecaml_parser.ml"
             in
            _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv342)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv343 * _menhir_state * (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2398 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2402 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv351 * _menhir_state * (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2411 "mecaml_parser.ml"
        ))) * _menhir_state * (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2415 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CROSS ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run125 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv347 * _menhir_state * (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2429 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2433 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (t1 : (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2438 "mecaml_parser.ml"
            ))), _, (t2 : (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2442 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2448 "mecaml_parser.ml"
            ) = 
# 50 "mecaml_parser.mly"
                                           ( Product (t1, t2) )
# 2452 "mecaml_parser.ml"
             in
            _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv348)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv349 * _menhir_state * (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2462 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 2466 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv350)) : 'freshtv352)
    | _ ->
        _menhir_fail ()

and _menhir_run118 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LABEL _v ->
        _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118

and _menhir_goto_comp_pattern : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2489 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv291 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2499 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack)
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv287 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2511 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv285 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2518 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (p : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2523 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2530 "mecaml_parser.ml"
            ) = 
# 112 "mecaml_parser.mly"
                                   ( Align p )
# 2534 "mecaml_parser.ml"
             in
            _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv286)) : 'freshtv288)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv289 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2544 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)) : 'freshtv292)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv297 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2553 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv293 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2565 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
            | INT _v ->
                _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
            | LABEL _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
            | LBRACE ->
                _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | LPAREN ->
                _menhir_run76 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | NEW ->
                _menhir_run75 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | TAG ->
                _menhir_run73 _menhir_env (Obj.magic _menhir_stack) MenhirState85
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85) : 'freshtv294)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv295 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2595 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv296)) : 'freshtv298)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv305 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2604 "mecaml_parser.ml"
        ))) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2608 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv301 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2620 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2624 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv299 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2631 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2635 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (p1 : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2640 "mecaml_parser.ml"
            ))), _, (p2 : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2644 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2652 "mecaml_parser.ml"
            ) = 
# 113 "mecaml_parser.mly"
                                                          ( Pair (p1, p2) )
# 2656 "mecaml_parser.ml"
             in
            _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv300)) : 'freshtv302)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv303 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2666 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2670 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv304)) : 'freshtv306)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv311 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2679 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | RARROW | RBRACE | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv307 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2691 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (p : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2696 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2702 "mecaml_parser.ml"
            ) = 
# 114 "mecaml_parser.mly"
                            ( New p )
# 2706 "mecaml_parser.ml"
             in
            _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv308)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv309 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2716 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)) : 'freshtv312)
    | MenhirState99 | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv317 * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2725 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack)
        | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv313 * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2737 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FUN ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | ID _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | INT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | LABEL _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
            | LBRACE ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | MATCH ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | NEW ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | TAG ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState91
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv314)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv315 * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2771 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv316)) : 'freshtv318)
    | _ ->
        _menhir_fail ()

and _menhir_reduce4 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_id -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (id : 'tv_id)) = _menhir_stack in
    let _v : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 2784 "mecaml_parser.ml"
    ) = 
# 92 "mecaml_parser.mly"
                  ( Var id )
# 2788 "mecaml_parser.ml"
     in
    _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_expr_pattern : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 2795 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv283 * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 2803 "mecaml_parser.ml"
    )) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RARROW ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv279 * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 2813 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | CHAR ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | ID _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
        | INT32 ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | INT64 ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | LABEL _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
        | LBRACE ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | LCAST ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | MATCH ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | SHORT ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState59
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59) : 'freshtv280)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv281 * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 2849 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv282)) : 'freshtv284)

and _menhir_reduce23 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_id -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (id : 'tv_id)) = _menhir_stack in
    let _v : (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 2860 "mecaml_parser.ml"
    ) = 
# 72 "mecaml_parser.mly"
                  ( Var id )
# 2864 "mecaml_parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_type_spec : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 2871 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState101 | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv193 * _menhir_state) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 2881 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CROSS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | RARROW ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv189 * _menhir_state) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 2895 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv187 * _menhir_state) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 2902 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 2907 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 2914 "mecaml_parser.ml"
            ) = 
# 64 "mecaml_parser.mly"
                                  ( Align t )
# 2918 "mecaml_parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv188)) : 'freshtv190)
        | REF ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv191 * _menhir_state) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 2930 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)) : 'freshtv194)
    | MenhirState66 | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv199 * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 2939 "mecaml_parser.ml"
        ))) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 2943 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CROSS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | RARROW ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | COLON | COMMA | EOF | FUN | ID _ | INT _ | LABEL _ | LBRACE | LPAREN | MATCH | NEW | RBRACE | RCAST | RPAREN | TAG | VBAR | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv195 * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 2959 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 2963 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (t1 : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 2968 "mecaml_parser.ml"
            ))), _, (t2 : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 2972 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 2978 "mecaml_parser.ml"
            ) = 
# 67 "mecaml_parser.mly"
                                        ( Fun (t1, t2) )
# 2982 "mecaml_parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv196)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv197 * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 2992 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 2996 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)) : 'freshtv200)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv205 * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3005 "mecaml_parser.ml"
        ))) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3009 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CROSS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | RARROW ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | COLON | COMMA | EOF | FUN | ID _ | INT _ | LABEL _ | LBRACE | LPAREN | MATCH | NEW | RBRACE | RCAST | RPAREN | TAG | VBAR | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv201 * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3025 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3029 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (t1 : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3034 "mecaml_parser.ml"
            ))), _, (t2 : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3038 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3044 "mecaml_parser.ml"
            ) = 
# 66 "mecaml_parser.mly"
                                       ( Product (t1, t2) )
# 3048 "mecaml_parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv202)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv203 * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3058 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3062 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)) : 'freshtv206)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv213 * _menhir_state) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3071 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CROSS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | RARROW ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | RCAST ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv209 * _menhir_state) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3085 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv207 * _menhir_state) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3092 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3097 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3104 "mecaml_parser.ml"
            ) = 
# 65 "mecaml_parser.mly"
                                ( Cast t )
# 3108 "mecaml_parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv208)) : 'freshtv210)
        | REF ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv211 * _menhir_state) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3120 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)) : 'freshtv214)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv221 * _menhir_state)) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3129 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CROSS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | RARROW ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv217 * _menhir_state)) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3145 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv215 * _menhir_state)) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3152 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3157 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 3165 "mecaml_parser.ml"
            ) = 
# 74 "mecaml_parser.mly"
                                      ( Size t )
# 3169 "mecaml_parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv216)) : 'freshtv218)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv219 * _menhir_state)) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3179 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)) : 'freshtv222)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv237 * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 3188 "mecaml_parser.ml"
        ))) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3192 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CROSS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | RARROW ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | COLON | COMMA | EOF | FUN | ID _ | INT _ | LABEL _ | LBRACE | LPAREN | MATCH | NEW | RBRACE | RCAST | RPAREN | TAG | VBAR | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv233 * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 3208 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3212 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (p : (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 3217 "mecaml_parser.ml"
            ))), _, (t : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3221 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expr_match_case = 
# 83 "mecaml_parser.mly"
                                         ( (p, t) )
# 3227 "mecaml_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv231) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_expr_match_case) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv229 * _menhir_state * 'tv_expr_match_case) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | VBAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv223 * _menhir_state * 'tv_expr_match_case) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
                | INT _v ->
                    _menhir_run55 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
                | LABEL _v ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
                | TAG ->
                    _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv224)
            | COLON | COMMA | CROSS | EOF | FUN | ID _ | INT _ | LABEL _ | LBRACE | LPAREN | MATCH | NEW | RARROW | RBRACE | RCAST | REF | RPAREN | TAG | WITH ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv225 * _menhir_state * 'tv_expr_match_case) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_expr_match_case)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_VBAR_expr_match_case_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 3264 "mecaml_parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_VBAR_expr_match_case_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv226)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv227 * _menhir_state * 'tv_expr_match_case) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)) : 'freshtv230)) : 'freshtv232)) : 'freshtv234)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv235 * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 3281 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3285 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)) : 'freshtv238)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv243 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3294 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CROSS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | RARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv239 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3306 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | CHAR ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | FUN ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | ID _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | INT _v ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | INT32 ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | INT64 ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | LABEL _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | LBRACE ->
                _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | LCAST ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | MATCH ->
                _menhir_run67 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | NEW ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | SHORT ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | TAG ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv240)
        | REF ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv241 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3354 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)) : 'freshtv244)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv249 * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 3363 "mecaml_parser.ml"
        ))) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3367 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CROSS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | RARROW ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | COLON | COMMA | RBRACE | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv245 * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 3383 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3387 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (c : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 3392 "mecaml_parser.ml"
            ))), _, (t : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3396 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 3402 "mecaml_parser.ml"
            ) = 
# 115 "mecaml_parser.mly"
                                        ( Type (c, t) )
# 3406 "mecaml_parser.ml"
             in
            _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv246)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv247 * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 3416 "mecaml_parser.ml"
            ))) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3420 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)) : 'freshtv250)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv255 * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 3429 "mecaml_parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3433 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CROSS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | RARROW ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | COLON | COMMA | EOF | FUN | ID _ | INT _ | LABEL _ | LBRACE | LPAREN | MATCH | NEW | RBRACE | RPAREN | TAG | VBAR | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv251 * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 3449 "mecaml_parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3453 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (c : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 3458 "mecaml_parser.ml"
            ))), _), _, (t : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3462 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 3468 "mecaml_parser.ml"
            ) = 
# 100 "mecaml_parser.mly"
                                  ( Type (c, t) )
# 3472 "mecaml_parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv252)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv253 * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 3482 "mecaml_parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3486 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)) : 'freshtv256)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv277) * _menhir_state * 'tv_id)) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3495 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CROSS ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack)
        | RARROW ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack)
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv273) * _menhir_state * 'tv_id)) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3511 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _, (id : 'tv_id)), _, (spec : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3516 "mecaml_parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_typedef = 
# 53 "mecaml_parser.mly"
                                         ( Typebind (id, spec) )
# 3523 "mecaml_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv271) = _menhir_stack in
            let (_v : 'tv_typedef) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv269 * 'tv_typedef) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EOF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv265 * 'tv_typedef) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv263 * 'tv_typedef) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, (_1 : 'tv_typedef)) = _menhir_stack in
                let _2 = () in
                let _v : (
# 26 "mecaml_parser.mly"
       (Mecaml.typedef)
# 3544 "mecaml_parser.ml"
                ) = 
# 31 "mecaml_parser.mly"
                                   ( _1 )
# 3548 "mecaml_parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv261) = _menhir_stack in
                let (_v : (
# 26 "mecaml_parser.mly"
       (Mecaml.typedef)
# 3555 "mecaml_parser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv259) = Obj.magic _menhir_stack in
                let (_v : (
# 26 "mecaml_parser.mly"
       (Mecaml.typedef)
# 3562 "mecaml_parser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv257) = Obj.magic _menhir_stack in
                let ((_1 : (
# 26 "mecaml_parser.mly"
       (Mecaml.typedef)
# 3569 "mecaml_parser.ml"
                )) : (
# 26 "mecaml_parser.mly"
       (Mecaml.typedef)
# 3573 "mecaml_parser.ml"
                )) = _v in
                (Obj.magic _1 : 'freshtv258)) : 'freshtv260)) : 'freshtv262)) : 'freshtv264)) : 'freshtv266)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv267 * 'tv_typedef) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv268)) : 'freshtv270)) : 'freshtv272)) : 'freshtv274)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv275) * _menhir_state * 'tv_id)) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3589 "mecaml_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv276)) : 'freshtv278)
    | _ ->
        _menhir_fail ()

and _menhir_reduce55 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_id -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (id : 'tv_id)) = _menhir_stack in
    let _v : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3602 "mecaml_parser.ml"
    ) = 
# 61 "mecaml_parser.mly"
                  ( Var id )
# 3606 "mecaml_parser.ml"
     in
    _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v

and _menhir_run33 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_id -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv185) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3634 "mecaml_parser.ml"
    ) = 
# 58 "mecaml_parser.mly"
                 ( Short )
# 3638 "mecaml_parser.ml"
     in
    _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv186)

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | IF ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | INT _v ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | SIZE ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | TAG ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | CHAR ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | INT32 ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | INT64 ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | LBRACE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | LCAST ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | MATCH ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | SHORT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | CHAR ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | INT32 ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | INT64 ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | LBRACE ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | LCAST ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | MATCH ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | SHORT ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv183) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3737 "mecaml_parser.ml"
    ) = 
# 60 "mecaml_parser.mly"
                 ( Int64 )
# 3741 "mecaml_parser.ml"
     in
    _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv184)

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv181) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3755 "mecaml_parser.ml"
    ) = 
# 59 "mecaml_parser.mly"
                 ( Int32 )
# 3759 "mecaml_parser.ml"
     in
    _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv182)

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv179) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3773 "mecaml_parser.ml"
    ) = 
# 57 "mecaml_parser.mly"
                ( Char )
# 3777 "mecaml_parser.ml"
     in
    _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv180)

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv177) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3791 "mecaml_parser.ml"
    ) = 
# 56 "mecaml_parser.mly"
                ( Bool )
# 3795 "mecaml_parser.ml"
     in
    _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv178)

and _menhir_run2 : _menhir_env -> 'ttv_tail * _menhir_state -> (
# 15 "mecaml_parser.mly"
      (string)
# 3802 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv175 * _menhir_state) = Obj.magic _menhir_stack in
    let ((id : (
# 15 "mecaml_parser.mly"
      (string)
# 3811 "mecaml_parser.ml"
    )) : (
# 15 "mecaml_parser.mly"
      (string)
# 3815 "mecaml_parser.ml"
    )) = _v in
    ((let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 3822 "mecaml_parser.ml"
    ) = 
# 93 "mecaml_parser.mly"
                       ( Tag id )
# 3826 "mecaml_parser.ml"
     in
    _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv176)

and _menhir_reduce3 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 17 "mecaml_parser.mly"
      (int)
# 3833 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, (n : (
# 17 "mecaml_parser.mly"
      (int)
# 3839 "mecaml_parser.ml"
    ))) = _menhir_stack in
    let _v : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 3844 "mecaml_parser.ml"
    ) = 
# 91 "mecaml_parser.mly"
                  ( Int n )
# 3848 "mecaml_parser.ml"
     in
    _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_id : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_id -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv129 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv125 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | CHAR ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | ID _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
            | INT32 ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | INT64 ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | LABEL _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
            | LBRACE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | LCAST ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | MATCH ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | SHORT ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState12
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv126)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv127 * _menhir_state) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)) : 'freshtv130)
    | MenhirState136 | MenhirState12 | MenhirState94 | MenhirState82 | MenhirState59 | MenhirState18 | MenhirState19 | MenhirState20 | MenhirState28 | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | CROSS | EOF | FUN | ID _ | INT _ | LABEL _ | LBRACE | LPAREN | MATCH | NEW | RARROW | RBRACE | RCAST | REF | RPAREN | TAG | VBAR | WITH ->
            _menhir_reduce55 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv131 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)) : 'freshtv134)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv137 * _menhir_state * 'tv_id)) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv135 * _menhir_state * 'tv_id)) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (id : 'tv_id)), _, (tag : 'tv_id)) = _menhir_stack in
        let _2 = () in
        let _v : (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 3926 "mecaml_parser.ml"
        ) = 
# 62 "mecaml_parser.mly"
                             ( Tag (id, tag) )
# 3930 "mecaml_parser.ml"
         in
        _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv136)) : 'freshtv138)
    | MenhirState14 | MenhirState49 | MenhirState47 | MenhirState45 | MenhirState43 | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        (_menhir_reduce23 _menhir_env (Obj.magic _menhir_stack) : 'freshtv140)
    | MenhirState63 | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (id : 'tv_id)) = _menhir_stack in
        let _v : (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 3946 "mecaml_parser.ml"
        ) = 
# 87 "mecaml_parser.mly"
                  ( Var id )
# 3950 "mecaml_parser.ml"
         in
        _menhir_goto_expr_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv142)) : 'freshtv144)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ | GT | WITH ->
            _menhir_reduce23 _menhir_env (Obj.magic _menhir_stack)
        | COLON | FUN | ID _ | INT _ | LABEL _ | LBRACE | LPAREN | MATCH | NEW | TAG ->
            _menhir_reduce4 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv145 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)) : 'freshtv148)
    | MenhirState99 | MenhirState72 | MenhirState75 | MenhirState85 | MenhirState76 | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (id : 'tv_id)) = _menhir_stack in
        let _v : (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 3979 "mecaml_parser.ml"
        ) = 
# 110 "mecaml_parser.mly"
                  ( Var id )
# 3983 "mecaml_parser.ml"
         in
        _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv150)) : 'freshtv152)
    | MenhirState112 | MenhirState0 | MenhirState110 | MenhirState3 | MenhirState4 | MenhirState106 | MenhirState108 | MenhirState107 | MenhirState5 | MenhirState6 | MenhirState105 | MenhirState103 | MenhirState71 | MenhirState96 | MenhirState93 | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        (_menhir_reduce4 _menhir_env (Obj.magic _menhir_stack) : 'freshtv154)
    | MenhirState66 | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | CROSS | RARROW | RBRACE | REF ->
            _menhir_reduce55 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EOF | FUN | ID _ | INT _ | LABEL _ | LBRACE | LPAREN | MATCH | NEW | RPAREN | TAG | VBAR | WITH ->
            _menhir_reduce4 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv155 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)) : 'freshtv158)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv163) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv159) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
            | LABEL _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
            | LBRACE ->
                _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState117
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117) : 'freshtv160)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv161) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)) : 'freshtv164)
    | MenhirState117 | MenhirState125 | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165 * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (id : 'tv_id)) = _menhir_stack in
        let _v : (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 4047 "mecaml_parser.ml"
        ) = 
# 47 "mecaml_parser.mly"
                    ( Var id )
# 4051 "mecaml_parser.ml"
         in
        _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv166)) : 'freshtv168)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv173) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv169) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState136
            | CHAR ->
                _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState136
            | ID _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
            | INT32 ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState136
            | INT64 ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState136
            | LABEL _v ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
            | LBRACE ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState136
            | LCAST ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState136
            | MATCH ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState136
            | SHORT ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState136
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState136) : 'freshtv170)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv171) * _menhir_state * 'tv_id) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)) : 'freshtv174)
    | _ ->
        _menhir_fail ()

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LABEL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv123 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | INT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | LBRACE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | MATCH ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | NEW ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | TAG ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | INT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | LBRACE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | MATCH ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | NEW ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | TAG ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | INT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | LBRACE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | MATCH ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | NEW ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | TAG ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | INT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
    | LBRACE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | MATCH ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | NEW ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | TAG ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState6
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "mecaml_parser.mly"
      (int)
# 4235 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce3 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv19) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv22)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv23 * _menhir_state * (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 4274 "mecaml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv25 * _menhir_state * (
# 22 "mecaml_parser.mly"
      (Mecaml.tag)
# 4283 "mecaml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state * (
# 15 "mecaml_parser.mly"
      (string)
# 4292 "mecaml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv31) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv34)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 4315 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 4324 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv39 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 4333 "mecaml_parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 4337 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv41 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 4346 "mecaml_parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 4355 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv45 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 4364 "mecaml_parser.ml"
        ))) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 4368 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 4377 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * 'tv_comp_match_case)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 4396 "mecaml_parser.ml"
        )) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 4400 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 4409 "mecaml_parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv57 * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 4418 "mecaml_parser.ml"
        ))) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 4422 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 4431 "mecaml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv61 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 4440 "mecaml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 4449 "mecaml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState75 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv71 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 4473 "mecaml_parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state) * _menhir_state * (
# 21 "mecaml_parser.mly"
      (Mecaml.comp)
# 4482 "mecaml_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv77 * _menhir_state) * _menhir_state * 'tv_id)) * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 4496 "mecaml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_expr_match_case)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 4510 "mecaml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv83 * _menhir_state) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 4519 "mecaml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv85 * _menhir_state) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 4528 "mecaml_parser.ml"
        ))) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 4532 "mecaml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 4541 "mecaml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 4550 "mecaml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv91 * _menhir_state) * _menhir_state * (
# 20 "mecaml_parser.mly"
      (Mecaml.expr)
# 4559 "mecaml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 4578 "mecaml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState28 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state * (
# 19 "mecaml_parser.mly"
      (Mecaml.metype)
# 4587 "mecaml_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv109 * _menhir_state) * _menhir_state * 'tv_id)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv115 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv119 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv122)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "mecaml_parser.mly"
      (string)
# 4649 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 15 "mecaml_parser.mly"
      (string)
# 4659 "mecaml_parser.ml"
    )) : (
# 15 "mecaml_parser.mly"
      (string)
# 4663 "mecaml_parser.ml"
    )) = _v in
    ((let _v : 'tv_id = 
# 41 "mecaml_parser.mly"
                 ( _1 )
# 4668 "mecaml_parser.ml"
     in
    _menhir_goto_id _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "mecaml_parser.mly"
      (string)
# 4675 "mecaml_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv15) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 16 "mecaml_parser.mly"
      (string)
# 4685 "mecaml_parser.ml"
    )) : (
# 16 "mecaml_parser.mly"
      (string)
# 4689 "mecaml_parser.ml"
    )) = _v in
    ((let _v : 'tv_id = 
# 40 "mecaml_parser.mly"
              ( _1 )
# 4694 "mecaml_parser.ml"
     in
    _menhir_goto_id _menhir_env _menhir_stack _menhir_s _v) : 'freshtv16)

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

and toplevel_comp : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 24 "mecaml_parser.mly"
       (Mecaml.comp)
# 4723 "mecaml_parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv13) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FUN ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ID _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | INT _v ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LABEL _v ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | LBRACE ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | MATCH ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NEW ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TAG ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv14))

and toplevel_tagdef : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 25 "mecaml_parser.mly"
       (Mecaml.tagdef)
# 4758 "mecaml_parser.ml"
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
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | LABEL _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv8)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv10)) : 'freshtv12))

and toplevel_typedef : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 26 "mecaml_parser.mly"
       (Mecaml.typedef)
# 4791 "mecaml_parser.ml"
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
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
        | LABEL _v ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134) : 'freshtv2)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv4)) : 'freshtv6))

# 269 "<standard.mly>"
  

# 4824 "mecaml_parser.ml"
