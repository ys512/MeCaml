
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
  | MenhirState141
  | MenhirState137
  | MenhirState136
  | MenhirState134
  | MenhirState131
  | MenhirState130
  | MenhirState124
  | MenhirState117
  | MenhirState116
  | MenhirState115
  | MenhirState114
  | MenhirState113
  | MenhirState112
  | MenhirState110
  | MenhirState109
  | MenhirState107
  | MenhirState105
  | MenhirState104
  | MenhirState103
  | MenhirState101
  | MenhirState100
  | MenhirState98
  | MenhirState95
  | MenhirState89
  | MenhirState88
  | MenhirState86
  | MenhirState85
  | MenhirState84
  | MenhirState83
  | MenhirState80
  | MenhirState76
  | MenhirState74
  | MenhirState69
  | MenhirState60
  | MenhirState55
  | MenhirState53
  | MenhirState49
  | MenhirState47
  | MenhirState39
  | MenhirState37
  | MenhirState35
  | MenhirState34
  | MenhirState33
  | MenhirState31
  | MenhirState26
  | MenhirState23
  | MenhirState20
  | MenhirState16
  | MenhirState14
  | MenhirState7
  | MenhirState5
  | MenhirState4
  | MenhirState3
  | MenhirState0

# 1 "parser.mly"
  
open Pst

# 136 "parser.ml"

let rec _menhir_goto_comp_pattern : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_comp_pattern -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv507 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 147 "parser.ml"
        )) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv505 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 153 "parser.ml"
        )) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (a : (
# 14 "parser.mly"
      (string)
# 158 "parser.ml"
        ))), _, (c : 'tv_comp_pattern)) = _menhir_stack in
        let _v : 'tv_comp_pattern = 
# 106 "parser.mly"
                                            ( Block (a, c) )
# 163 "parser.ml"
         in
        _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv506)) : 'freshtv508)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv515 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv511 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv509 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (p : 'tv_comp_pattern)) = _menhir_stack in
            let _v : 'tv_comp_pattern = 
# 107 "parser.mly"
                                   ( Align p )
# 182 "parser.ml"
             in
            _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv510)) : 'freshtv512)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv513 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv514)) : 'freshtv516)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv521 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv517 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | INT _v ->
                _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | LABEL _v ->
                _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | LBRACE ->
                _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | LPAREN ->
                _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | NEW ->
                _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124) : 'freshtv518)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv519 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv520)) : 'freshtv522)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv529 * _menhir_state) * _menhir_state * 'tv_comp_pattern)) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv525 * _menhir_state) * _menhir_state * 'tv_comp_pattern)) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv523 * _menhir_state) * _menhir_state * 'tv_comp_pattern)) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (p1 : 'tv_comp_pattern)), _, (p2 : 'tv_comp_pattern)) = _menhir_stack in
            let _v : 'tv_comp_pattern = 
# 108 "parser.mly"
                                                          ( Pair (p1, p2) )
# 243 "parser.ml"
             in
            _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv524)) : 'freshtv526)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv527 * _menhir_state) * _menhir_state * 'tv_comp_pattern)) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv528)) : 'freshtv530)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv533 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv531 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (p : 'tv_comp_pattern)) = _menhir_stack in
        let _v : 'tv_comp_pattern = 
# 109 "parser.mly"
                            ( New p )
# 262 "parser.ml"
         in
        _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv532)) : 'freshtv534)
    | MenhirState134 | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv539 * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv535 * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL _v ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | FUN ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | ID _v ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | INT _v ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | LABEL _v ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
            | LBRACE ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | LPAREN ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | MATCH ->
                _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | NEW ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState130
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130) : 'freshtv536)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv537 * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv538)) : 'freshtv540)
    | _ ->
        _menhir_fail ()

and _menhir_goto_bop : _menhir_env -> 'ttv_tail -> 'tv_bop -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv503 * _menhir_state * (
# 23 "parser.mly"
      (Pst.expr)
# 316 "parser.ml"
    )) * 'tv_bop) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | SIZE ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv504)

and _menhir_goto_separated_nonempty_list_VBAR_c_case_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_VBAR_c_case_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv497) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VBAR_c_case_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv495) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_separated_nonempty_list_VBAR_c_case_) : 'tv_separated_nonempty_list_VBAR_c_case_) = _v in
        ((let _v : 'tv_c_cases = 
# 97 "parser.mly"
                                          ( _1 )
# 345 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv493) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_c_cases) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv491 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 355 "parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_c_cases) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv489 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 363 "parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((cases : 'tv_c_cases) : 'tv_c_cases) = _v in
        ((let (((_menhir_stack, _menhir_s), _, (c : (
# 24 "parser.mly"
      (Pst.comp)
# 370 "parser.ml"
        ))), _) = _menhir_stack in
        let _v : (
# 24 "parser.mly"
      (Pst.comp)
# 375 "parser.ml"
        ) = 
# 91 "parser.mly"
                                          ( Match (c, cases) )
# 379 "parser.ml"
         in
        _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv490)) : 'freshtv492)) : 'freshtv494)) : 'freshtv496)) : 'freshtv498)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv501 * _menhir_state * 'tv_c_case)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VBAR_c_case_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv499 * _menhir_state * 'tv_c_case)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_VBAR_c_case_) : 'tv_separated_nonempty_list_VBAR_c_case_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_c_case)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_VBAR_c_case_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 395 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_VBAR_c_case_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv500)) : 'freshtv502)
    | _ ->
        _menhir_fail ()

and _menhir_run114 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
    | INT _v ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
    | LABEL _v ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
    | LBRACE ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | LPAREN ->
        _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | NEW ->
        _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState114
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114

and _menhir_run115 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
    | INT _v ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
    | LABEL _v ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
    | LBRACE ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | LPAREN ->
        _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | NEW ->
        _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState115
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115

and _menhir_run116 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
    | INT _v ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
    | LABEL _v ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
    | LBRACE ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState116
    | LPAREN ->
        _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState116
    | NEW ->
        _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState116
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116

and _menhir_run117 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "parser.mly"
      (string)
# 473 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
    | INT _v ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
    | LABEL _v ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
    | LBRACE ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | LPAREN ->
        _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | NEW ->
        _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState117
    | ARROW | COMMA | RBRACE | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv487 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 497 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (a : (
# 14 "parser.mly"
      (string)
# 502 "parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_comp_pattern = 
# 105 "parser.mly"
                       ( Tag a )
# 507 "parser.ml"
         in
        _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv488)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117

and _menhir_run118 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
      (int)
# 518 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv485) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 16 "parser.mly"
      (int)
# 528 "parser.ml"
    )) : (
# 16 "parser.mly"
      (int)
# 532 "parser.ml"
    )) = _v in
    ((let _v : 'tv_comp_pattern = 
# 103 "parser.mly"
                  ( Int n )
# 537 "parser.ml"
     in
    _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv486)

and _menhir_run119 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
      (string)
# 544 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv483) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 15 "parser.mly"
      (string)
# 554 "parser.ml"
    )) : (
# 15 "parser.mly"
      (string)
# 558 "parser.ml"
    )) = _v in
    ((let _v : 'tv_comp_pattern = 
# 104 "parser.mly"
                 ( Var x )
# 563 "parser.ml"
     in
    _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv484)

and _menhir_run101 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 570 "parser.ml"
) -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | ID _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
    | IF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | INTTYPE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | LBRACE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | LPAREN ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | MATCH ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | TAG ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState101
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101

and _menhir_run57 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv481) = Obj.magic _menhir_stack in
    ((let _v : 'tv_bop = 
# 66 "parser.mly"
              ( LT )
# 606 "parser.ml"
     in
    _menhir_goto_bop _menhir_env _menhir_stack _v) : 'freshtv482)

and _menhir_run58 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv479) = Obj.magic _menhir_stack in
    ((let _v : 'tv_bop = 
# 65 "parser.mly"
              ( GT )
# 618 "parser.ml"
     in
    _menhir_goto_bop _menhir_env _menhir_stack _v) : 'freshtv480)

and _menhir_run59 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv477) = Obj.magic _menhir_stack in
    ((let _v : 'tv_bop = 
# 67 "parser.mly"
              ( EQ )
# 630 "parser.ml"
     in
    _menhir_goto_bop _menhir_env _menhir_stack _v) : 'freshtv478)

and _menhir_goto_list_compdef_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_compdef_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv471 * _menhir_state * 'tv_list_tagdef_) * _menhir_state * 'tv_list_typedef_) * _menhir_state * 'tv_list_compdef_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv467 * _menhir_state * 'tv_list_tagdef_) * _menhir_state * 'tv_list_typedef_) * _menhir_state * 'tv_list_compdef_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv465 * _menhir_state * 'tv_list_tagdef_) * _menhir_state * 'tv_list_typedef_) * _menhir_state * 'tv_list_compdef_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_list_tagdef_)), _, (_2 : 'tv_list_typedef_)), _, (_3 : 'tv_list_compdef_)) = _menhir_stack in
            let _v : (
# 27 "parser.mly"
       (Pst.prog)
# 653 "parser.ml"
            ) = 
# 32 "parser.mly"
                                               ( (_1, _2, _3) )
# 657 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv463) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 27 "parser.mly"
       (Pst.prog)
# 665 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv461) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 27 "parser.mly"
       (Pst.prog)
# 673 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv459) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 27 "parser.mly"
       (Pst.prog)
# 681 "parser.ml"
            )) : (
# 27 "parser.mly"
       (Pst.prog)
# 685 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv460)) : 'freshtv462)) : 'freshtv464)) : 'freshtv466)) : 'freshtv468)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv469 * _menhir_state * 'tv_list_tagdef_) * _menhir_state * 'tv_list_typedef_) * _menhir_state * 'tv_list_compdef_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv470)) : 'freshtv472)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv475 * _menhir_state * 'tv_compdef) * _menhir_state * 'tv_list_compdef_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv473 * _menhir_state * 'tv_compdef) * _menhir_state * 'tv_list_compdef_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_compdef)), _, (xs : 'tv_list_compdef_)) = _menhir_stack in
        let _v : 'tv_list_compdef_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 704 "parser.ml"
         in
        _menhir_goto_list_compdef_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv474)) : 'freshtv476)
    | _ ->
        _menhir_fail ()

and _menhir_goto_comp : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 24 "parser.mly"
      (Pst.comp)
# 713 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv397 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 723 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 727 "parser.ml"
        )))) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 731 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | COLON ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | FUN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | ID _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | INT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | LABEL _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState100 _v
        | LBRACE ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | LPAREN ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState100
        | COMMA | RBRACE | RPAREN | SEMICOLON | VBAR | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv395 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 761 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 765 "parser.ml"
            )))) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 769 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), (x : (
# 15 "parser.mly"
      (string)
# 774 "parser.ml"
            ))), _, (t : (
# 22 "parser.mly"
      (Pst.type_expr)
# 778 "parser.ml"
            ))), _, (c : (
# 24 "parser.mly"
      (Pst.comp)
# 782 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 24 "parser.mly"
      (Pst.comp)
# 787 "parser.ml"
            ) = 
# 90 "parser.mly"
                                                              ( Lambda (x, t, c) )
# 791 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv396)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState100) : 'freshtv398)
    | MenhirState137 | MenhirState136 | MenhirState112 | MenhirState131 | MenhirState107 | MenhirState110 | MenhirState105 | MenhirState104 | MenhirState103 | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv401 * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 803 "parser.ml"
        )) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 807 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | COLON ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | FUN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | ID _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | INT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | LABEL _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
        | LBRACE ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | LPAREN ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState103
        | COMMA | RBRACE | RPAREN | SEMICOLON | VBAR | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv399 * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 837 "parser.ml"
            )) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 841 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (c1 : (
# 24 "parser.mly"
      (Pst.comp)
# 846 "parser.ml"
            ))), _, (c2 : (
# 24 "parser.mly"
      (Pst.comp)
# 850 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 24 "parser.mly"
      (Pst.comp)
# 855 "parser.ml"
            ) = 
# 92 "parser.mly"
                           ( App (c1, c2) )
# 859 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv400)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv402)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv405 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 871 "parser.ml"
        )) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 875 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | COLON ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | FUN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | ID _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | INT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | LABEL _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
        | LBRACE ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | LPAREN ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState104
        | COMMA | RBRACE | RPAREN | SEMICOLON | VBAR | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv403 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 905 "parser.ml"
            )) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 909 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (a : (
# 14 "parser.mly"
      (string)
# 914 "parser.ml"
            ))), _, (c : (
# 24 "parser.mly"
      (Pst.comp)
# 918 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 24 "parser.mly"
      (Pst.comp)
# 923 "parser.ml"
            ) = 
# 87 "parser.mly"
                                            ( Block (a, c) )
# 927 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv404)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104) : 'freshtv406)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv411 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 939 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | COLON ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | FUN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | ID _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | INT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | LABEL _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
        | LBRACE ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | LPAREN ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv409 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 969 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState105 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv407 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 977 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (c : (
# 24 "parser.mly"
      (Pst.comp)
# 983 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 24 "parser.mly"
      (Pst.comp)
# 988 "parser.ml"
            ) = 
# 86 "parser.mly"
                             ( Align c )
# 992 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv408)) : 'freshtv410)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv412)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv419 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 1004 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | COLON ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv413 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 1018 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState107 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL _v ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | FUN ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | ID _v ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | INT _v ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | LABEL _v ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState109 _v
            | LBRACE ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | LPAREN ->
                _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | MATCH ->
                _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | NEW ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState109
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv414)
        | FUN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | ID _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | INT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | LABEL _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | LBRACE ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | LPAREN ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv417 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 1068 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState107 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv415 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 1076 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (c : (
# 24 "parser.mly"
      (Pst.comp)
# 1082 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 24 "parser.mly"
      (Pst.comp)
# 1087 "parser.ml"
            ) = 
# 94 "parser.mly"
                             ( c )
# 1091 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv416)) : 'freshtv418)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107) : 'freshtv420)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv425 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 1103 "parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 1107 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
        | COLON ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | FUN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | ID _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
        | INT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
        | LABEL _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
        | LBRACE ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | LPAREN ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState110
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv423 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 1137 "parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 1141 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState110 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv421 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 1149 "parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 1153 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (c1 : (
# 24 "parser.mly"
      (Pst.comp)
# 1159 "parser.ml"
            ))), _), _, (c2 : (
# 24 "parser.mly"
      (Pst.comp)
# 1163 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 24 "parser.mly"
      (Pst.comp)
# 1168 "parser.ml"
            ) = 
# 88 "parser.mly"
                                          ( Pair (c1, c2) )
# 1172 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv422)) : 'freshtv424)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110) : 'freshtv426)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv429 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 1184 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
        | COLON ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | FUN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | ID _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
        | INT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
        | LABEL _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
        | LBRACE ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | LPAREN ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv427 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 1214 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState112 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
            | INT _v ->
                _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
            | LABEL _v ->
                _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
            | LBRACE ->
                _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | LPAREN ->
                _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | NEW ->
                _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState113
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113) : 'freshtv428)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112) : 'freshtv430)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv443 * _menhir_state * 'tv_comp_pattern)) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 1246 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | COLON ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | FUN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | ID _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | INT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | LABEL _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
        | LBRACE ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | LPAREN ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | COMMA | RBRACE | RPAREN | SEMICOLON | VBAR | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv441 * _menhir_state * 'tv_comp_pattern)) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 1276 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (p : 'tv_comp_pattern)), _, (c : (
# 24 "parser.mly"
      (Pst.comp)
# 1281 "parser.ml"
            ))) = _menhir_stack in
            let _v : 'tv_c_case = 
# 100 "parser.mly"
                                     ( (p, c) )
# 1286 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv439) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_c_case) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv437 * _menhir_state * 'tv_c_case) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | VBAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv431 * _menhir_state * 'tv_c_case) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run119 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
                | INT _v ->
                    _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
                | LABEL _v ->
                    _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
                | LBRACE ->
                    _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState134
                | LPAREN ->
                    _menhir_run115 _menhir_env (Obj.magic _menhir_stack) MenhirState134
                | NEW ->
                    _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState134
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134) : 'freshtv432)
            | BOOL _ | COLON | COMMA | FUN | ID _ | INT _ | LABEL _ | LBRACE | LPAREN | MATCH | NEW | RBRACE | RPAREN | SEMICOLON | WITH ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv433 * _menhir_state * 'tv_c_case) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_c_case)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_VBAR_c_case_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1327 "parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_VBAR_c_case_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv434)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv435 * _menhir_state * 'tv_c_case) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv436)) : 'freshtv438)) : 'freshtv440)) : 'freshtv442)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131) : 'freshtv444)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv447 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 1346 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
        | COLON ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState136
        | FUN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState136
        | ID _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
        | INT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
        | LABEL _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
        | LBRACE ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState136
        | LPAREN ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState136
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState136
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState136
        | COMMA | RBRACE | RPAREN | SEMICOLON | VBAR | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv445 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 1376 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (c : (
# 24 "parser.mly"
      (Pst.comp)
# 1381 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 24 "parser.mly"
      (Pst.comp)
# 1386 "parser.ml"
            ) = 
# 89 "parser.mly"
                      ( New c )
# 1390 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv446)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState136) : 'freshtv448)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv457 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 1402 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 1406 "parser.ml"
        )))) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 1410 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
        | COLON ->
            _menhir_run101 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | FUN ->
            _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | ID _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
        | INT _v ->
            _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
        | LABEL _v ->
            _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState137 _v
        | LBRACE ->
            _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | LPAREN ->
            _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv455 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 1440 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 1444 "parser.ml"
            )))) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 1448 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState137 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv453 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 1456 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 1460 "parser.ml"
            )))) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 1464 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), (x : (
# 15 "parser.mly"
      (string)
# 1470 "parser.ml"
            ))), _, (t : (
# 22 "parser.mly"
      (Pst.type_expr)
# 1474 "parser.ml"
            ))), _, (c : (
# 24 "parser.mly"
      (Pst.comp)
# 1478 "parser.ml"
            ))) = _menhir_stack in
            let _v : 'tv_compdef = 
# 41 "parser.mly"
                                                                        ( Compdef (x, t, c) )
# 1483 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv451) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_compdef) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv449 * _menhir_state * 'tv_compdef) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LET ->
                _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | EOF ->
                _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141) : 'freshtv450)) : 'freshtv452)) : 'freshtv454)) : 'freshtv456)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState137) : 'freshtv458)
    | _ ->
        _menhir_fail ()

and _menhir_run84 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | FUN ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | ID _v ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | INT _v ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | LABEL _v ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | LBRACE ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | LPAREN ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | MATCH ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | NEW ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84

and _menhir_run85 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | FUN ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | ID _v ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | INT _v ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | LABEL _v ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState85 _v
    | LBRACE ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | LPAREN ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | MATCH ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | NEW ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState85
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState85

and _menhir_run86 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | FUN ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | ID _v ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | INT _v ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | LABEL _v ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
    | LBRACE ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | LPAREN ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | MATCH ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | NEW ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState86
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv393 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState86 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv391 * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 24 "parser.mly"
      (Pst.comp)
# 1604 "parser.ml"
        ) = 
# 81 "parser.mly"
                       ( Unit )
# 1608 "parser.ml"
         in
        _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv392)) : 'freshtv394)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86

and _menhir_run88 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | FUN ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | ID _v ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | INT _v ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | LABEL _v ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
    | LBRACE ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | LPAREN ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | MATCH ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | NEW ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState88
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88

and _menhir_run89 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "parser.mly"
      (string)
# 1648 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | FUN ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | ID _v ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | INT _v ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | LABEL _v ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | LBRACE ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | LPAREN ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | MATCH ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | NEW ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | COLON | COMMA | RBRACE | RPAREN | SEMICOLON | VBAR | WITH ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv389 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 1678 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (a : (
# 14 "parser.mly"
      (string)
# 1683 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 24 "parser.mly"
      (Pst.comp)
# 1688 "parser.ml"
        ) = 
# 85 "parser.mly"
                    ( Tag a )
# 1692 "parser.ml"
         in
        _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv390)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89

and _menhir_run90 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
      (int)
# 1703 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv387) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 16 "parser.mly"
      (int)
# 1713 "parser.ml"
    )) : (
# 16 "parser.mly"
      (int)
# 1717 "parser.ml"
    )) = _v in
    ((let _v : (
# 24 "parser.mly"
      (Pst.comp)
# 1722 "parser.ml"
    ) = 
# 82 "parser.mly"
                  ( Int n )
# 1726 "parser.ml"
     in
    _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv388)

and _menhir_run91 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
      (string)
# 1733 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv385) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 15 "parser.mly"
      (string)
# 1743 "parser.ml"
    )) : (
# 15 "parser.mly"
      (string)
# 1747 "parser.ml"
    )) = _v in
    ((let _v : (
# 24 "parser.mly"
      (Pst.comp)
# 1752 "parser.ml"
    ) = 
# 84 "parser.mly"
                 ( Var x )
# 1756 "parser.ml"
     in
    _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv386)

and _menhir_run92 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv381 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv377 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 15 "parser.mly"
      (string)
# 1778 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv373 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 1789 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOLTYPE ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState95
                | ID _v ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
                | IF ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState95
                | INTTYPE ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState95
                | LBRACE ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState95
                | LPAREN ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState95
                | MATCH ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState95
                | TAG ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState95
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95) : 'freshtv374)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv375 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 1821 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv376)) : 'freshtv378)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv379 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv380)) : 'freshtv382)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv383 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv384)

and _menhir_run99 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "parser.mly"
      (bool)
# 1843 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv371) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 17 "parser.mly"
      (bool)
# 1853 "parser.ml"
    )) : (
# 17 "parser.mly"
      (bool)
# 1857 "parser.ml"
    )) = _v in
    ((let _v : (
# 24 "parser.mly"
      (Pst.comp)
# 1862 "parser.ml"
    ) = 
# 83 "parser.mly"
                   ( Bool b )
# 1866 "parser.ml"
     in
    _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv372)

and _menhir_goto_separated_nonempty_list_VBAR_t_case_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_VBAR_t_case_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv359 * _menhir_state * 'tv_t_case)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VBAR_t_case_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv357 * _menhir_state * 'tv_t_case)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_VBAR_t_case_) : 'tv_separated_nonempty_list_VBAR_t_case_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_t_case)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_VBAR_t_case_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1886 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_VBAR_t_case_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv358)) : 'freshtv360)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv369) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VBAR_t_case_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv367) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_separated_nonempty_list_VBAR_t_case_) : 'tv_separated_nonempty_list_VBAR_t_case_) = _v in
        ((let _v : 'tv_t_cases = 
# 75 "parser.mly"
                                          ( _1 )
# 1901 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv365) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_t_cases) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv363 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 1911 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_t_cases) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv361 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 1919 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((cases : 'tv_t_cases) : 'tv_t_cases) = _v in
        ((let ((_menhir_stack, _menhir_s), (x : (
# 15 "parser.mly"
      (string)
# 1926 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 22 "parser.mly"
      (Pst.type_expr)
# 1931 "parser.ml"
        ) = 
# 60 "parser.mly"
                                      ( TMatch (x, cases) )
# 1935 "parser.ml"
         in
        _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv362)) : 'freshtv364)) : 'freshtv366)) : 'freshtv368)) : 'freshtv370)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
      (Pst.expr)
# 1944 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv349 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Pst.expr)
# 1954 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv345 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Pst.expr)
# 1970 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLTYPE ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | ID _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
            | IF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | INTTYPE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | LBRACE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | LPAREN ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | MATCH ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | TAG ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv346)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv347 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Pst.expr)
# 2002 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv348)) : 'freshtv350)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv355 * _menhir_state * (
# 23 "parser.mly"
      (Pst.expr)
# 2011 "parser.ml"
        )) * 'tv_bop) * _menhir_state * (
# 23 "parser.mly"
      (Pst.expr)
# 2015 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv351 * _menhir_state * (
# 23 "parser.mly"
      (Pst.expr)
# 2031 "parser.ml"
            )) * 'tv_bop) * _menhir_state * (
# 23 "parser.mly"
      (Pst.expr)
# 2035 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (_1 : (
# 23 "parser.mly"
      (Pst.expr)
# 2040 "parser.ml"
            ))), (_2 : 'tv_bop)), _, (_3 : (
# 23 "parser.mly"
      (Pst.expr)
# 2044 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 23 "parser.mly"
      (Pst.expr)
# 2049 "parser.ml"
            ) = 
# 72 "parser.mly"
                       ( Bop (_2, _1, _3) )
# 2053 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv352)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv353 * _menhir_state * (
# 23 "parser.mly"
      (Pst.expr)
# 2063 "parser.ml"
            )) * 'tv_bop) * _menhir_state * (
# 23 "parser.mly"
      (Pst.expr)
# 2067 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv354)) : 'freshtv356)
    | _ ->
        _menhir_fail ()

and _menhir_run46 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2077 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv343 * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2085 "parser.ml"
    )) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (t : (
# 22 "parser.mly"
      (Pst.type_expr)
# 2090 "parser.ml"
    ))) = _menhir_stack in
    let _v : (
# 22 "parser.mly"
      (Pst.type_expr)
# 2095 "parser.ml"
    ) = 
# 56 "parser.mly"
                          ( TRef t )
# 2099 "parser.ml"
     in
    _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv344)

and _menhir_run47 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2106 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | ID _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | IF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | INTTYPE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | LBRACE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | LPAREN ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | MATCH ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | TAG ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_run49 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2136 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | ID _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
    | IF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | INTTYPE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | LBRACE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | LPAREN ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | MATCH ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | TAG ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState49
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49

and _menhir_reduce31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_compdef_ = 
# 211 "<standard.mly>"
    ( [] )
# 2168 "parser.ml"
     in
    _menhir_goto_list_compdef_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run77 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv339 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv335 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 15 "parser.mly"
      (string)
# 2190 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv331 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 2201 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOLTYPE ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                | ID _v ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v
                | IF ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                | INTTYPE ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                | LBRACE ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                | LPAREN ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                | MATCH ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                | TAG ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState80
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80) : 'freshtv332)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv333 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 2233 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv334)) : 'freshtv336)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv337 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv338)) : 'freshtv340)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv341 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv342)

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "parser.mly"
      (string)
# 2255 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARROW ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv327 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 2267 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOLTYPE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | ID _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | IF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | INTTYPE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | LBRACE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | LPAREN ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | MATCH ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | TAG ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv328)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv329 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 2299 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv330)

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv323 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOLTYPE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | ID _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
        | IF ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | INTTYPE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | LBRACE ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | LPAREN ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | MATCH ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | TAG ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState39
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39) : 'freshtv324)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv325 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv326)

and _menhir_run51 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
      (int)
# 2347 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv321) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 16 "parser.mly"
      (int)
# 2357 "parser.ml"
    )) : (
# 16 "parser.mly"
      (int)
# 2361 "parser.ml"
    )) = _v in
    ((let _v : (
# 23 "parser.mly"
      (Pst.expr)
# 2366 "parser.ml"
    ) = 
# 70 "parser.mly"
                  ( Int n )
# 2370 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv322)

and _menhir_goto_type_spec : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "parser.mly"
      (Pst.type_expr)
# 2377 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv225 * _menhir_state)) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2387 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv221 * _menhir_state)) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2403 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv219 * _menhir_state)) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2410 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : (
# 22 "parser.mly"
      (Pst.type_expr)
# 2415 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 23 "parser.mly"
      (Pst.expr)
# 2420 "parser.ml"
            ) = 
# 71 "parser.mly"
                                      ( Size t )
# 2424 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv220)) : 'freshtv222)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv223 * _menhir_state)) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2434 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)) : 'freshtv226)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv231 * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2443 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2447 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | BOOL _ | COLON | COMMA | ELSE | FUN | ID _ | INT _ | LABEL _ | LBRACE | LPAREN | MATCH | MUL | NEW | RBRACE | RPAREN | SEMICOLON | VBAR | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv227 * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2461 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2465 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (t1 : (
# 22 "parser.mly"
      (Pst.type_expr)
# 2470 "parser.ml"
            ))), _, (t2 : (
# 22 "parser.mly"
      (Pst.type_expr)
# 2474 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 22 "parser.mly"
      (Pst.type_expr)
# 2479 "parser.ml"
            ) = 
# 58 "parser.mly"
                                      ( TProd (t1, t2) )
# 2483 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv228)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv229 * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2493 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2497 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)) : 'freshtv232)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv237 * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2506 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2510 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | BOOL _ | COLON | COMMA | ELSE | FUN | ID _ | INT _ | LABEL _ | LBRACE | LPAREN | MATCH | NEW | RBRACE | RPAREN | SEMICOLON | VBAR | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv233 * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2526 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2530 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (t1 : (
# 22 "parser.mly"
      (Pst.type_expr)
# 2535 "parser.ml"
            ))), _, (t2 : (
# 22 "parser.mly"
      (Pst.type_expr)
# 2539 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 22 "parser.mly"
      (Pst.type_expr)
# 2544 "parser.ml"
            ) = 
# 59 "parser.mly"
                                       ( TFun (t1, t2) )
# 2548 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv234)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv235 * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2558 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2562 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)) : 'freshtv238)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv243 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Pst.expr)
# 2571 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2575 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv239 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Pst.expr)
# 2587 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2591 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLTYPE ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | ID _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | IF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | INTTYPE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | LBRACE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | LPAREN ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | MATCH ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | TAG ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv240)
        | MUL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv241 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Pst.expr)
# 2627 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2631 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)) : 'freshtv244)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv249 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Pst.expr)
# 2640 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2644 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2648 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | BOOL _ | COLON | COMMA | ELSE | FUN | ID _ | INT _ | LABEL _ | LBRACE | LPAREN | MATCH | NEW | RBRACE | RPAREN | SEMICOLON | VBAR | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv245 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Pst.expr)
# 2664 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2668 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2672 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (e : (
# 23 "parser.mly"
      (Pst.expr)
# 2677 "parser.ml"
            ))), _, (t1 : (
# 22 "parser.mly"
      (Pst.type_expr)
# 2681 "parser.ml"
            ))), _, (t2 : (
# 22 "parser.mly"
      (Pst.type_expr)
# 2685 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 22 "parser.mly"
      (Pst.type_expr)
# 2690 "parser.ml"
            ) = 
# 61 "parser.mly"
                                                      ( TIf (e, t1, t2) )
# 2694 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv246)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv247 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Pst.expr)
# 2704 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2708 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2712 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)) : 'freshtv250)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv257 * _menhir_state) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2721 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv253 * _menhir_state) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2735 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv251 * _menhir_state) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2742 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : (
# 22 "parser.mly"
      (Pst.type_expr)
# 2747 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 22 "parser.mly"
      (Pst.type_expr)
# 2752 "parser.ml"
            ) = 
# 57 "parser.mly"
                                  ( TAlign t )
# 2756 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv252)) : 'freshtv254)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv255 * _menhir_state) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2768 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv256)) : 'freshtv258)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv265 * _menhir_state) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2777 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv261 * _menhir_state) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2793 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv259 * _menhir_state) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2800 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : (
# 22 "parser.mly"
      (Pst.type_expr)
# 2805 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 22 "parser.mly"
      (Pst.type_expr)
# 2810 "parser.ml"
            ) = 
# 62 "parser.mly"
                              ( _2 )
# 2814 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv260)) : 'freshtv262)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv263 * _menhir_state) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2824 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)) : 'freshtv266)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv281 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 2833 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2837 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | BOOL _ | COLON | COMMA | ELSE | FUN | ID _ | INT _ | LABEL _ | LBRACE | LPAREN | MATCH | NEW | RBRACE | RPAREN | SEMICOLON | VBAR | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv277 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 2853 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2857 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (p : (
# 14 "parser.mly"
      (string)
# 2862 "parser.ml"
            ))), _, (t : (
# 22 "parser.mly"
      (Pst.type_expr)
# 2866 "parser.ml"
            ))) = _menhir_stack in
            let _v : 'tv_t_case = 
# 78 "parser.mly"
                                   ( (p, t) )
# 2871 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv275) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_t_case) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv273 * _menhir_state * 'tv_t_case) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | VBAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv267 * _menhir_state * 'tv_t_case) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LABEL _v ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv268)
            | ARROW | BOOL _ | COLON | COMMA | ELSE | FUN | ID _ | INT _ | LABEL _ | LBRACE | LPAREN | MATCH | MUL | NEW | RBRACE | REF | RPAREN | SEMICOLON | WITH ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv269 * _menhir_state * 'tv_t_case) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_t_case)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_VBAR_t_case_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2902 "parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_VBAR_t_case_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv270)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv271 * _menhir_state * 'tv_t_case) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv272)) : 'freshtv274)) : 'freshtv276)) : 'freshtv278)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv279 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 2919 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2923 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv280)) : 'freshtv282)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv293 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 2932 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2936 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv289 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 2952 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2956 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv287 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 2963 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 2967 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 15 "parser.mly"
      (string)
# 2972 "parser.ml"
            ))), _, (spec : (
# 22 "parser.mly"
      (Pst.type_expr)
# 2976 "parser.ml"
            ))) = _menhir_stack in
            let _v : 'tv_typedef = 
# 38 "parser.mly"
                                            ( Typedef (x, spec) )
# 2981 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv285) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_typedef) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv283 * _menhir_state * 'tv_typedef) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TYPE ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | EOF | LET ->
                _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv284)) : 'freshtv286)) : 'freshtv288)) : 'freshtv290)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv291 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 3008 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 3012 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)) : 'freshtv294)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv303 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 3021 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 3025 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv299 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 3041 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 3045 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv295 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 3055 "parser.ml"
                ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 3059 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL _v ->
                    _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                | FUN ->
                    _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | ID _v ->
                    _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                | INT _v ->
                    _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                | LABEL _v ->
                    _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                | LBRACE ->
                    _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | LPAREN ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | MATCH ->
                    _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | NEW ->
                    _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83) : 'freshtv296)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv297 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 3093 "parser.ml"
                ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 3097 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv298)) : 'freshtv300)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv301 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 3108 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 3112 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv302)) : 'freshtv304)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv313 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 3121 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 3125 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv309 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 3141 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 3145 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARROW ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv305 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 3155 "parser.ml"
                ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 3159 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL _v ->
                    _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | FUN ->
                    _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                | ID _v ->
                    _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | INT _v ->
                    _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | LABEL _v ->
                    _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
                | LBRACE ->
                    _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                | LPAREN ->
                    _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                | MATCH ->
                    _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                | NEW ->
                    _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState98
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98) : 'freshtv306)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv307 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 3193 "parser.ml"
                ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 3197 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv308)) : 'freshtv310)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv311 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 3208 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 3212 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)) : 'freshtv314)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv319 * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 3221 "parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 3225 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | BOOL _ | COLON | COMMA | FUN | ID _ | INT _ | LABEL _ | LBRACE | LPAREN | MATCH | NEW | RBRACE | RPAREN | SEMICOLON | VBAR | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv315 * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 3241 "parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 3245 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (c : (
# 24 "parser.mly"
      (Pst.comp)
# 3250 "parser.ml"
            ))), _), _, (t : (
# 22 "parser.mly"
      (Pst.type_expr)
# 3254 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 24 "parser.mly"
      (Pst.comp)
# 3259 "parser.ml"
            ) = 
# 93 "parser.mly"
                                            ( Typed (c, t) )
# 3263 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv316)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv317 * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 3273 "parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 3277 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv318)) : 'freshtv320)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_typedef_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_typedef_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv215 * _menhir_state * 'tv_typedef) * _menhir_state * 'tv_list_typedef_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv213 * _menhir_state * 'tv_typedef) * _menhir_state * 'tv_list_typedef_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_typedef)), _, (xs : 'tv_list_typedef_)) = _menhir_stack in
        let _v : 'tv_list_typedef_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 3297 "parser.ml"
         in
        _menhir_goto_list_typedef_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv214)) : 'freshtv216)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv217 * _menhir_state * 'tv_list_tagdef_) * _menhir_state * 'tv_list_typedef_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LET ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | EOF ->
            _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv218)
    | _ ->
        _menhir_fail ()

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv209 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 15 "parser.mly"
      (string)
# 3329 "parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207 * _menhir_state) = Obj.magic _menhir_stack in
        let ((a : (
# 15 "parser.mly"
      (string)
# 3337 "parser.ml"
        )) : (
# 15 "parser.mly"
      (string)
# 3341 "parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (
# 22 "parser.mly"
      (Pst.type_expr)
# 3347 "parser.ml"
        ) = 
# 55 "parser.mly"
                    ( TTag a )
# 3351 "parser.ml"
         in
        _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv208)) : 'freshtv210)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv211 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv203 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 15 "parser.mly"
      (string)
# 3374 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv199 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 3385 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LABEL _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31) : 'freshtv200)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv201 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 3403 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)) : 'freshtv204)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv205 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | ID _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | IF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | INTTYPE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | LBRACE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | LPAREN ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | MATCH ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | TAG ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | ID _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | IF ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | INTTYPE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LBRACE ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LPAREN ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | MATCH ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | TAG ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv197) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : (
# 22 "parser.mly"
      (Pst.type_expr)
# 3478 "parser.ml"
    ) = 
# 52 "parser.mly"
                  ( TInt )
# 3482 "parser.ml"
     in
    _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv198)

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | SIZE ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
      (string)
# 3504 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv191 * _menhir_state * (
# 15 "parser.mly"
      (string)
# 3516 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv187 * _menhir_state * (
# 15 "parser.mly"
      (string)
# 3526 "parser.ml"
            ))) = Obj.magic _menhir_stack in
            let (_v : (
# 15 "parser.mly"
      (string)
# 3531 "parser.ml"
            )) = _v in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv185 * _menhir_state * (
# 15 "parser.mly"
      (string)
# 3538 "parser.ml"
            ))) = Obj.magic _menhir_stack in
            let ((a : (
# 15 "parser.mly"
      (string)
# 3543 "parser.ml"
            )) : (
# 15 "parser.mly"
      (string)
# 3547 "parser.ml"
            )) = _v in
            ((let (_menhir_stack, _menhir_s, (x : (
# 15 "parser.mly"
      (string)
# 3552 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 22 "parser.mly"
      (Pst.type_expr)
# 3557 "parser.ml"
            ) = 
# 53 "parser.mly"
                           ( TVarTag (x, a) )
# 3561 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv186)) : 'freshtv188)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv189 * _menhir_state * (
# 15 "parser.mly"
      (string)
# 3571 "parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)) : 'freshtv192)
    | ARROW | BOOL _ | COMMA | ELSE | FUN | ID _ | INT _ | LABEL _ | LBRACE | LPAREN | MATCH | MUL | NEW | RBRACE | REF | RPAREN | SEMICOLON | VBAR | WITH ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv193 * _menhir_state * (
# 15 "parser.mly"
      (string)
# 3580 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 15 "parser.mly"
      (string)
# 3585 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 22 "parser.mly"
      (Pst.type_expr)
# 3590 "parser.ml"
        ) = 
# 54 "parser.mly"
                 ( TVar x )
# 3594 "parser.ml"
         in
        _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv194)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv195 * _menhir_state * (
# 15 "parser.mly"
      (string)
# 3604 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv183) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : (
# 22 "parser.mly"
      (Pst.type_expr)
# 3618 "parser.ml"
    ) = 
# 51 "parser.mly"
                   ( TBool )
# 3622 "parser.ml"
     in
    _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv184)

and _menhir_goto_separated_nonempty_list_COMMA_LABEL_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_LABEL_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv173 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 3635 "parser.ml"
        ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv171 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 3641 "parser.ml"
        ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : (
# 14 "parser.mly"
      (string)
# 3646 "parser.ml"
        ))), _, (xs : 'tv_separated_nonempty_list_COMMA_LABEL_)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_LABEL_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 3651 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_LABEL_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv172)) : 'freshtv174)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv181 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv177 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv175 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_separated_nonempty_list_COMMA_LABEL_)) = _menhir_stack in
            let _v : (
# 25 "parser.mly"
      (Pst.tag_expr)
# 3670 "parser.ml"
            ) = 
# 45 "parser.mly"
                                                        ( Tagset _2 )
# 3674 "parser.ml"
             in
            _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv176)) : 'freshtv178)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv179 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)) : 'freshtv182)
    | _ ->
        _menhir_fail ()

and _menhir_run14 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 25 "parser.mly"
      (Pst.tag_expr)
# 3690 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | LBRACE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14

and _menhir_run16 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 25 "parser.mly"
      (Pst.tag_expr)
# 3710 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | LBRACE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_typedef_ = 
# 211 "<standard.mly>"
    ( [] )
# 3737 "parser.ml"
     in
    _menhir_goto_list_typedef_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 15 "parser.mly"
      (string)
# 3753 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv163 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 3764 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLTYPE ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | ID _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
            | IF ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | INTTYPE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | LBRACE ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | LPAREN ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | MATCH ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | TAG ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv164)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv165 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 3796 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)) : 'freshtv168)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv169 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "parser.mly"
      (string)
# 3811 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 3823 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LABEL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7) : 'freshtv158)
    | RBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv159 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 3839 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 14 "parser.mly"
      (string)
# 3844 "parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_LABEL_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 3849 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_LABEL_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv160)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv161 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 3859 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)

and _menhir_goto_tag_spec : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
      (Pst.tag_expr)
# 3867 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv133 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Pst.tag_expr)
# 3877 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADD ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv129 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Pst.tag_expr)
# 3891 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv127 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Pst.tag_expr)
# 3898 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : (
# 25 "parser.mly"
      (Pst.tag_expr)
# 3903 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 25 "parser.mly"
      (Pst.tag_expr)
# 3908 "parser.ml"
            ) = 
# 48 "parser.mly"
                             ( _2 )
# 3912 "parser.ml"
             in
            _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv128)) : 'freshtv130)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv131 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Pst.tag_expr)
# 3922 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)) : 'freshtv134)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv137 * _menhir_state * (
# 25 "parser.mly"
      (Pst.tag_expr)
# 3931 "parser.ml"
        ))) * _menhir_state * (
# 25 "parser.mly"
      (Pst.tag_expr)
# 3935 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv135 * _menhir_state * (
# 25 "parser.mly"
      (Pst.tag_expr)
# 3941 "parser.ml"
        ))) * _menhir_state * (
# 25 "parser.mly"
      (Pst.tag_expr)
# 3945 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (t1 : (
# 25 "parser.mly"
      (Pst.tag_expr)
# 3950 "parser.ml"
        ))), _, (t2 : (
# 25 "parser.mly"
      (Pst.tag_expr)
# 3954 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 25 "parser.mly"
      (Pst.tag_expr)
# 3959 "parser.ml"
        ) = 
# 47 "parser.mly"
                                         ( Prod (t1, t2) )
# 3963 "parser.ml"
         in
        _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv136)) : 'freshtv138)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv143 * _menhir_state * (
# 25 "parser.mly"
      (Pst.tag_expr)
# 3971 "parser.ml"
        ))) * _menhir_state * (
# 25 "parser.mly"
      (Pst.tag_expr)
# 3975 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MUL ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | ADD | RPAREN | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv139 * _menhir_state * (
# 25 "parser.mly"
      (Pst.tag_expr)
# 3987 "parser.ml"
            ))) * _menhir_state * (
# 25 "parser.mly"
      (Pst.tag_expr)
# 3991 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (t1 : (
# 25 "parser.mly"
      (Pst.tag_expr)
# 3996 "parser.ml"
            ))), _, (t2 : (
# 25 "parser.mly"
      (Pst.tag_expr)
# 4000 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 25 "parser.mly"
      (Pst.tag_expr)
# 4005 "parser.ml"
            ) = 
# 46 "parser.mly"
                                           ( Sum (t1, t2) )
# 4009 "parser.ml"
             in
            _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv140)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv141 * _menhir_state * (
# 25 "parser.mly"
      (Pst.tag_expr)
# 4019 "parser.ml"
            ))) * _menhir_state * (
# 25 "parser.mly"
      (Pst.tag_expr)
# 4023 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)) : 'freshtv144)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv155 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 4032 "parser.ml"
        ))) * _menhir_state * (
# 25 "parser.mly"
      (Pst.tag_expr)
# 4036 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADD ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv151 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 4050 "parser.ml"
            ))) * _menhir_state * (
# 25 "parser.mly"
      (Pst.tag_expr)
# 4054 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv149 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 4061 "parser.ml"
            ))) * _menhir_state * (
# 25 "parser.mly"
      (Pst.tag_expr)
# 4065 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 15 "parser.mly"
      (string)
# 4070 "parser.ml"
            ))), _, (spec : (
# 25 "parser.mly"
      (Pst.tag_expr)
# 4074 "parser.ml"
            ))) = _menhir_stack in
            let _v : 'tv_tagdef = 
# 35 "parser.mly"
                                          ( Tagdef (x, spec) )
# 4079 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv147) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_tagdef) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv145 * _menhir_state * 'tv_tagdef) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TAG ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | EOF | LET | TYPE ->
                _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv146)) : 'freshtv148)) : 'freshtv150)) : 'freshtv152)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv153 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 4106 "parser.ml"
            ))) * _menhir_state * (
# 25 "parser.mly"
      (Pst.tag_expr)
# 4110 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)) : 'freshtv156)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_tagdef_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_tagdef_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv123 * _menhir_state * 'tv_tagdef) * _menhir_state * 'tv_list_tagdef_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv121 * _menhir_state * 'tv_tagdef) * _menhir_state * 'tv_list_tagdef_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_tagdef)), _, (xs : 'tv_list_tagdef_)) = _menhir_stack in
        let _v : 'tv_list_tagdef_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 4130 "parser.ml"
         in
        _menhir_goto_list_tagdef_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv122)) : 'freshtv124)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125 * _menhir_state * 'tv_list_tagdef_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TYPE ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | EOF | LET ->
            _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv126)
    | _ ->
        _menhir_fail ()

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | LBRACE ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | LPAREN ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState4
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
    | LABEL _v ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
      (string)
# 4183 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv119) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 15 "parser.mly"
      (string)
# 4193 "parser.ml"
    )) : (
# 15 "parser.mly"
      (string)
# 4197 "parser.ml"
    )) = _v in
    ((let _v : (
# 25 "parser.mly"
      (Pst.tag_expr)
# 4202 "parser.ml"
    ) = 
# 44 "parser.mly"
                   ( Var x )
# 4206 "parser.ml"
     in
    _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv120)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state * 'tv_compdef) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv13 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 4223 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 4227 "parser.ml"
        )))) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 4231 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv15 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 4240 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv17 * _menhir_state * 'tv_c_case)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv19 * _menhir_state * 'tv_comp_pattern)) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 4254 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv21 * _menhir_state * 'tv_comp_pattern)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv23 * _menhir_state) * _menhir_state * 'tv_comp_pattern)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 4273 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv33 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 4297 "parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv35 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 4306 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv37 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 4315 "parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 4319 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv39 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 4328 "parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 4337 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 4346 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 4355 "parser.ml"
        )) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 4359 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 4368 "parser.ml"
        )) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 4372 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 4381 "parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState100 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv51 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 4390 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 4394 "parser.ml"
        )))) * _menhir_state * (
# 24 "parser.mly"
      (Pst.comp)
# 4398 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv53 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 4407 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 4411 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv55 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 4420 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 4429 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState85 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv67 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 4458 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 4462 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv69 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 4471 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_list_tagdef_) * _menhir_state * 'tv_list_typedef_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73 * _menhir_state * 'tv_typedef) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_t_case)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * (
# 23 "parser.mly"
      (Pst.expr)
# 4495 "parser.ml"
        )) * 'tv_bop) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv79 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Pst.expr)
# 4504 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 4508 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv81 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Pst.expr)
# 4517 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 4526 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * (
# 22 "parser.mly"
      (Pst.type_expr)
# 4535 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 4564 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv97 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 4573 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv99 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 4582 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state * 'tv_list_tagdef_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state * 'tv_tagdef) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state * (
# 25 "parser.mly"
      (Pst.tag_expr)
# 4601 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107 * _menhir_state * (
# 25 "parser.mly"
      (Pst.tag_expr)
# 4610 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv109 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 4619 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv115 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 4638 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv117) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv118)

and _menhir_reduce33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_tagdef_ = 
# 211 "<standard.mly>"
    ( [] )
# 4652 "parser.ml"
     in
    _menhir_goto_list_tagdef_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 15 "parser.mly"
      (string)
# 4668 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv3 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 4679 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
            | LBRACE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3) : 'freshtv4)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv5 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 4701 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv6)) : 'freshtv8)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)

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

and start : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 27 "parser.mly"
       (Pst.prog)
# 4728 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TAG ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF | LET | TYPE ->
        _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 4754 "parser.ml"
