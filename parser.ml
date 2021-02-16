
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
  | MenhirState138
  | MenhirState134
  | MenhirState133
  | MenhirState131
  | MenhirState128
  | MenhirState126
  | MenhirState125
  | MenhirState123
  | MenhirState121
  | MenhirState120
  | MenhirState119
  | MenhirState117
  | MenhirState114
  | MenhirState107
  | MenhirState105
  | MenhirState104
  | MenhirState98
  | MenhirState92
  | MenhirState91
  | MenhirState90
  | MenhirState87
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
  
open Syntax

# 130 "parser.ml"

let rec _menhir_goto_comp_pattern : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_comp_pattern -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv497 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv493 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv491 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (p : 'tv_comp_pattern)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_comp_pattern = 
# 104 "parser.mly"
                                   ( Align p )
# 154 "parser.ml"
             in
            _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv492)) : 'freshtv494)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv495 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv496)) : 'freshtv498)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv503 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv499 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
            | INT _v ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState98 _v
            | LBRACE ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | LPAREN ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | NEW ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | TAG ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState98
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98) : 'freshtv500)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv501 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv502)) : 'freshtv504)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv511 * _menhir_state) * _menhir_state * 'tv_comp_pattern)) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv507 * _menhir_state) * _menhir_state * 'tv_comp_pattern)) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv505 * _menhir_state) * _menhir_state * 'tv_comp_pattern)) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (p1 : 'tv_comp_pattern)), _, (p2 : 'tv_comp_pattern)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_comp_pattern = 
# 105 "parser.mly"
                                                          ( Pair (p1, p2) )
# 218 "parser.ml"
             in
            _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv506)) : 'freshtv508)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv509 * _menhir_state) * _menhir_state * 'tv_comp_pattern)) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv510)) : 'freshtv512)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv515 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv513 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (p : 'tv_comp_pattern)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_comp_pattern = 
# 106 "parser.mly"
                            ( New p )
# 238 "parser.ml"
         in
        _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv514)) : 'freshtv516)
    | MenhirState131 | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv521 * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv517 * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL _v ->
                _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | FUN ->
                _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | ID _v ->
                _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | INT _v ->
                _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | LABEL _v ->
                _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
            | LBRACE ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | LPAREN ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | MATCH ->
                _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | NEW ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState104
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104) : 'freshtv518)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv519 * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv520)) : 'freshtv522)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_VBAR_c_case_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_VBAR_c_case_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv485) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VBAR_c_case_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv483) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_separated_nonempty_list_VBAR_c_case_) : 'tv_separated_nonempty_list_VBAR_c_case_) = _v in
        ((let _v : 'tv_c_cases = 
# 95 "parser.mly"
                                          ( _1 )
# 300 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv481) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_c_cases) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv479 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 310 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_c_cases) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv477 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 318 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((cases : 'tv_c_cases) : 'tv_c_cases) = _v in
        ((let ((_menhir_stack, _menhir_s), (x : (
# 15 "parser.mly"
      (string)
# 325 "parser.ml"
        ))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (
# 24 "parser.mly"
      (Syntax.comp)
# 332 "parser.ml"
        ) = 
# 90 "parser.mly"
                                      ( Match (Var x, cases) )
# 336 "parser.ml"
         in
        _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv478)) : 'freshtv480)) : 'freshtv482)) : 'freshtv484)) : 'freshtv486)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv489 * _menhir_state * 'tv_c_case)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VBAR_c_case_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv487 * _menhir_state * 'tv_c_case)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_VBAR_c_case_) : 'tv_separated_nonempty_list_VBAR_c_case_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_c_case)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_VBAR_c_case_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 353 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_VBAR_c_case_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv488)) : 'freshtv490)
    | _ ->
        _menhir_fail ()

and _menhir_goto_bop : _menhir_env -> 'ttv_tail -> 'tv_bop -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv475 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.expr)
# 366 "parser.ml"
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv476)

and _menhir_run88 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LABEL _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv471 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 14 "parser.mly"
      (string)
# 392 "parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv469 * _menhir_state) = Obj.magic _menhir_stack in
        let ((a : (
# 14 "parser.mly"
      (string)
# 400 "parser.ml"
        )) : (
# 14 "parser.mly"
      (string)
# 404 "parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_comp_pattern = 
# 103 "parser.mly"
                       ( Tag a )
# 411 "parser.ml"
         in
        _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv470)) : 'freshtv472)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv473 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv474)

and _menhir_run90 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | INT _v ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | LBRACE ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | LPAREN ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | NEW ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | TAG ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90

and _menhir_run91 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | INT _v ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | LBRACE ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | LPAREN ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | NEW ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | TAG ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91

and _menhir_run92 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | INT _v ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
    | LBRACE ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | LPAREN ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | NEW ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | TAG ->
        _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState92
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92

and _menhir_run93 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
      (int)
# 494 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv467) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 16 "parser.mly"
      (int)
# 504 "parser.ml"
    )) : (
# 16 "parser.mly"
      (int)
# 508 "parser.ml"
    )) = _v in
    ((let _v : 'tv_comp_pattern = 
# 101 "parser.mly"
                  ( Int n )
# 513 "parser.ml"
     in
    _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv468)

and _menhir_run94 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
      (string)
# 520 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv465) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 15 "parser.mly"
      (string)
# 530 "parser.ml"
    )) : (
# 15 "parser.mly"
      (string)
# 534 "parser.ml"
    )) = _v in
    ((let _v : 'tv_comp_pattern = 
# 102 "parser.mly"
                 ( Var x )
# 539 "parser.ml"
     in
    _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv466)

and _menhir_goto_comp : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 24 "parser.mly"
      (Syntax.comp)
# 546 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv411 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 556 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 560 "parser.ml"
        )))) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 564 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
        | FUN ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | ID _v ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
        | INT _v ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
        | LABEL _v ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
        | LBRACE ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | LPAREN ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | COMMA | RBRACE | RPAREN | SEMICOLON | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv409 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 592 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 596 "parser.ml"
            )))) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 600 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), (x : (
# 15 "parser.mly"
      (string)
# 605 "parser.ml"
            ))), _, (t : (
# 22 "parser.mly"
      (Syntax.metype)
# 609 "parser.ml"
            ))), _, (c : (
# 24 "parser.mly"
      (Syntax.comp)
# 613 "parser.ml"
            ))) = _menhir_stack in
            let _7 = () in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 24 "parser.mly"
      (Syntax.comp)
# 623 "parser.ml"
            ) = 
# 89 "parser.mly"
                                                              ( Lambda (x, t, c) )
# 627 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv410)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119) : 'freshtv412)
    | MenhirState134 | MenhirState133 | MenhirState128 | MenhirState123 | MenhirState126 | MenhirState121 | MenhirState120 | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv415 * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 639 "parser.ml"
        )) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 643 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
        | FUN ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | ID _v ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
        | INT _v ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
        | LABEL _v ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
        | LBRACE ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | LPAREN ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | COMMA | RBRACE | RPAREN | SEMICOLON | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv413 * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 671 "parser.ml"
            )) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 675 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (c1 : (
# 24 "parser.mly"
      (Syntax.comp)
# 680 "parser.ml"
            ))), _, (c2 : (
# 24 "parser.mly"
      (Syntax.comp)
# 684 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 24 "parser.mly"
      (Syntax.comp)
# 689 "parser.ml"
            ) = 
# 91 "parser.mly"
                           ( App (c1, c2) )
# 693 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv414)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120) : 'freshtv416)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv421 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 705 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | FUN ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | ID _v ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | INT _v ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | LABEL _v ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | LBRACE ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | LPAREN ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv419 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 733 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState121 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv417 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 741 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (c : (
# 24 "parser.mly"
      (Syntax.comp)
# 747 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 24 "parser.mly"
      (Syntax.comp)
# 754 "parser.ml"
            ) = 
# 86 "parser.mly"
                             ( Align c )
# 758 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)) : 'freshtv420)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121) : 'freshtv422)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv429 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 770 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv423 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 782 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState123 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL _v ->
                _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
            | FUN ->
                _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | ID _v ->
                _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
            | INT _v ->
                _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
            | LABEL _v ->
                _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
            | LBRACE ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | LPAREN ->
                _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | MATCH ->
                _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | NEW ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState125
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125) : 'freshtv424)
        | FUN ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | ID _v ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | INT _v ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | LABEL _v ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | LBRACE ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | LPAREN ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv427 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 832 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState123 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv425 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 840 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (c : (
# 24 "parser.mly"
      (Syntax.comp)
# 846 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 24 "parser.mly"
      (Syntax.comp)
# 853 "parser.ml"
            ) = 
# 92 "parser.mly"
                             ( c )
# 857 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv426)) : 'freshtv428)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123) : 'freshtv430)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv435 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 869 "parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 873 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
        | FUN ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | ID _v ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
        | INT _v ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
        | LABEL _v ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
        | LBRACE ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | LPAREN ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState126
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv433 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 901 "parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 905 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState126 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv431 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 913 "parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 917 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (c1 : (
# 24 "parser.mly"
      (Syntax.comp)
# 923 "parser.ml"
            ))), _), _, (c2 : (
# 24 "parser.mly"
      (Syntax.comp)
# 927 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 24 "parser.mly"
      (Syntax.comp)
# 935 "parser.ml"
            ) = 
# 87 "parser.mly"
                                          ( Pair (c1, c2) )
# 939 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv432)) : 'freshtv434)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState126) : 'freshtv436)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv449 * _menhir_state * 'tv_comp_pattern)) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 951 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
        | FUN ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState128
        | ID _v ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
        | INT _v ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
        | LABEL _v ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
        | LBRACE ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState128
        | LPAREN ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState128
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState128
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState128
        | COMMA | RBRACE | RPAREN | SEMICOLON | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv447 * _menhir_state * 'tv_comp_pattern)) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 979 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (p : 'tv_comp_pattern)), _, (c : (
# 24 "parser.mly"
      (Syntax.comp)
# 984 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_c_case = 
# 98 "parser.mly"
                                     ( (p, c) )
# 990 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv445) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_c_case) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv443 * _menhir_state * 'tv_c_case) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | VBAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv437 * _menhir_state * 'tv_c_case) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
                | INT _v ->
                    _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState131 _v
                | LBRACE ->
                    _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState131
                | LPAREN ->
                    _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState131
                | NEW ->
                    _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState131
                | TAG ->
                    _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState131
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131) : 'freshtv438)
            | BOOL _ | COMMA | FUN | ID _ | INT _ | LABEL _ | LBRACE | LPAREN | MATCH | NEW | RBRACE | RPAREN | SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv439 * _menhir_state * 'tv_c_case) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_c_case)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_VBAR_c_case_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1031 "parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_VBAR_c_case_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv440)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv441 * _menhir_state * 'tv_c_case) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv442)) : 'freshtv444)) : 'freshtv446)) : 'freshtv448)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128) : 'freshtv450)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv453 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 1050 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | FUN ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | ID _v ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | INT _v ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | LABEL _v ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | LBRACE ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | LPAREN ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | COMMA | RBRACE | RPAREN | SEMICOLON | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv451 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 1078 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (c : (
# 24 "parser.mly"
      (Syntax.comp)
# 1083 "parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (
# 24 "parser.mly"
      (Syntax.comp)
# 1089 "parser.ml"
            ) = 
# 88 "parser.mly"
                      ( New c )
# 1093 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv452)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133) : 'freshtv454)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv463 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 1105 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 1109 "parser.ml"
        )))) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 1113 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
        | FUN ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | ID _v ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
        | INT _v ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
        | LABEL _v ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState134 _v
        | LBRACE ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | LPAREN ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv461 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 1141 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 1145 "parser.ml"
            )))) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 1149 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState134 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv459 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 1157 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 1161 "parser.ml"
            )))) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 1165 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), (x : (
# 15 "parser.mly"
      (string)
# 1171 "parser.ml"
            ))), _, (t : (
# 22 "parser.mly"
      (Syntax.metype)
# 1175 "parser.ml"
            ))), _, (c : (
# 24 "parser.mly"
      (Syntax.comp)
# 1179 "parser.ml"
            ))) = _menhir_stack in
            let _9 = () in
            let _7 = () in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_compdef = 
# 41 "parser.mly"
                                                                        ( Compdef (x, t, c) )
# 1190 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv457) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_compdef) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv455 * _menhir_state * 'tv_compdef) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LET ->
                _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | EOF ->
                _menhir_reduce28 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState138) : 'freshtv456)) : 'freshtv458)) : 'freshtv460)) : 'freshtv462)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134) : 'freshtv464)
    | _ ->
        _menhir_fail ()

and _menhir_run57 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv407) = Obj.magic _menhir_stack in
    ((let _1 = () in
    let _v : 'tv_bop = 
# 66 "parser.mly"
              ( LT )
# 1226 "parser.ml"
     in
    _menhir_goto_bop _menhir_env _menhir_stack _v) : 'freshtv408)

and _menhir_run58 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv405) = Obj.magic _menhir_stack in
    ((let _1 = () in
    let _v : 'tv_bop = 
# 65 "parser.mly"
              ( GT )
# 1239 "parser.ml"
     in
    _menhir_goto_bop _menhir_env _menhir_stack _v) : 'freshtv406)

and _menhir_run59 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv403) = Obj.magic _menhir_stack in
    ((let _1 = () in
    let _v : 'tv_bop = 
# 67 "parser.mly"
              ( EQ )
# 1252 "parser.ml"
     in
    _menhir_goto_bop _menhir_env _menhir_stack _v) : 'freshtv404)

and _menhir_goto_list_compdef_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_compdef_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv397 * _menhir_state * 'tv_list_tagdef_) * _menhir_state * 'tv_list_typedef_) * _menhir_state * 'tv_list_compdef_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv393 * _menhir_state * 'tv_list_tagdef_) * _menhir_state * 'tv_list_typedef_) * _menhir_state * 'tv_list_compdef_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv391 * _menhir_state * 'tv_list_tagdef_) * _menhir_state * 'tv_list_typedef_) * _menhir_state * 'tv_list_compdef_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_list_tagdef_)), _, (_2 : 'tv_list_typedef_)), _, (_3 : 'tv_list_compdef_)) = _menhir_stack in
            let _4 = () in
            let _v : (
# 27 "parser.mly"
       (Syntax.tagdef list * Syntax.typedef list * Syntax.compdef list)
# 1276 "parser.ml"
            ) = 
# 32 "parser.mly"
                                               ( (_1, _2, _3) )
# 1280 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv389) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 27 "parser.mly"
       (Syntax.tagdef list * Syntax.typedef list * Syntax.compdef list)
# 1288 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv387) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 27 "parser.mly"
       (Syntax.tagdef list * Syntax.typedef list * Syntax.compdef list)
# 1296 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv385) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 27 "parser.mly"
       (Syntax.tagdef list * Syntax.typedef list * Syntax.compdef list)
# 1304 "parser.ml"
            )) : (
# 27 "parser.mly"
       (Syntax.tagdef list * Syntax.typedef list * Syntax.compdef list)
# 1308 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv386)) : 'freshtv388)) : 'freshtv390)) : 'freshtv392)) : 'freshtv394)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv395 * _menhir_state * 'tv_list_tagdef_) * _menhir_state * 'tv_list_typedef_) * _menhir_state * 'tv_list_compdef_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv396)) : 'freshtv398)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv401 * _menhir_state * 'tv_compdef) * _menhir_state * 'tv_list_compdef_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv399 * _menhir_state * 'tv_compdef) * _menhir_state * 'tv_list_compdef_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_compdef)), _, (xs : 'tv_list_compdef_)) = _menhir_stack in
        let _v : 'tv_list_compdef_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 1327 "parser.ml"
         in
        _menhir_goto_list_compdef_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv400)) : 'freshtv402)
    | _ ->
        _menhir_fail ()

and _menhir_run84 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | FUN ->
        _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | ID _v ->
        _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | INT _v ->
        _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | LABEL _v ->
        _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
    | LBRACE ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState84
    | LPAREN ->
        _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState84
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
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv381 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 15 "parser.mly"
      (string)
# 1374 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv377 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 1385 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
            | INT _v ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
            | LBRACE ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | LPAREN ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | NEW ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | TAG ->
                _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87) : 'freshtv378)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv379 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 1413 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv380)) : 'freshtv382)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv383 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv384)

and _menhir_run105 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | FUN ->
        _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | ID _v ->
        _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | INT _v ->
        _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | LABEL _v ->
        _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState105 _v
    | LBRACE ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | LPAREN ->
        _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | MATCH ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | NEW ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState105
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv375 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState105 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv373 * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : (
# 24 "parser.mly"
      (Syntax.comp)
# 1463 "parser.ml"
        ) = 
# 81 "parser.mly"
                       ( Unit )
# 1467 "parser.ml"
         in
        _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv374)) : 'freshtv376)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105

and _menhir_run107 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | FUN ->
        _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | ID _v ->
        _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | INT _v ->
        _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | LABEL _v ->
        _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
    | LBRACE ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | LPAREN ->
        _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | MATCH ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | NEW ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState107
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107

and _menhir_run108 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "parser.mly"
      (string)
# 1507 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv371) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((a : (
# 14 "parser.mly"
      (string)
# 1517 "parser.ml"
    )) : (
# 14 "parser.mly"
      (string)
# 1521 "parser.ml"
    )) = _v in
    ((let _v : (
# 24 "parser.mly"
      (Syntax.comp)
# 1526 "parser.ml"
    ) = 
# 85 "parser.mly"
                    ( Tag a )
# 1530 "parser.ml"
     in
    _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv372)

and _menhir_run109 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
      (int)
# 1537 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv369) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 16 "parser.mly"
      (int)
# 1547 "parser.ml"
    )) : (
# 16 "parser.mly"
      (int)
# 1551 "parser.ml"
    )) = _v in
    ((let _v : (
# 24 "parser.mly"
      (Syntax.comp)
# 1556 "parser.ml"
    ) = 
# 82 "parser.mly"
                  ( Int n )
# 1560 "parser.ml"
     in
    _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv370)

and _menhir_run110 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
      (string)
# 1567 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv367) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 15 "parser.mly"
      (string)
# 1577 "parser.ml"
    )) : (
# 15 "parser.mly"
      (string)
# 1581 "parser.ml"
    )) = _v in
    ((let _v : (
# 24 "parser.mly"
      (Syntax.comp)
# 1586 "parser.ml"
    ) = 
# 84 "parser.mly"
                 ( Var x )
# 1590 "parser.ml"
     in
    _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv368)

and _menhir_run111 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv363 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv359 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 15 "parser.mly"
      (string)
# 1612 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv355 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 1623 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOLTYPE ->
                    _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState114
                | ID _v ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState114 _v
                | IF ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState114
                | INTTYPE ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState114
                | LBRACE ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState114
                | LPAREN ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState114
                | MATCH ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState114
                | TAG ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState114
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114) : 'freshtv356)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv357 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 1655 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv358)) : 'freshtv360)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv361 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv362)) : 'freshtv364)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv365 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv366)

and _menhir_run118 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "parser.mly"
      (bool)
# 1677 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv353) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 17 "parser.mly"
      (bool)
# 1687 "parser.ml"
    )) : (
# 17 "parser.mly"
      (bool)
# 1691 "parser.ml"
    )) = _v in
    ((let _v : (
# 24 "parser.mly"
      (Syntax.comp)
# 1696 "parser.ml"
    ) = 
# 83 "parser.mly"
                   ( Bool b )
# 1700 "parser.ml"
     in
    _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv354)

and _menhir_goto_separated_nonempty_list_VBAR_t_case_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_VBAR_t_case_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv341 * _menhir_state * 'tv_t_case)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VBAR_t_case_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv339 * _menhir_state * 'tv_t_case)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_VBAR_t_case_) : 'tv_separated_nonempty_list_VBAR_t_case_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_t_case)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_VBAR_t_case_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1721 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_VBAR_t_case_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv340)) : 'freshtv342)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv351) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VBAR_t_case_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv349) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_separated_nonempty_list_VBAR_t_case_) : 'tv_separated_nonempty_list_VBAR_t_case_) = _v in
        ((let _v : 'tv_t_cases = 
# 75 "parser.mly"
                                          ( _1 )
# 1736 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv347) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_t_cases) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv345 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 1746 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_t_cases) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv343 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 1754 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((cases : 'tv_t_cases) : 'tv_t_cases) = _v in
        ((let ((_menhir_stack, _menhir_s), (x : (
# 15 "parser.mly"
      (string)
# 1761 "parser.ml"
        ))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (
# 22 "parser.mly"
      (Syntax.metype)
# 1768 "parser.ml"
        ) = 
# 60 "parser.mly"
                                      ( TMatch (x, cases) )
# 1772 "parser.ml"
         in
        _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv344)) : 'freshtv346)) : 'freshtv348)) : 'freshtv350)) : 'freshtv352)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
      (Syntax.expr)
# 1781 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv331 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.expr)
# 1791 "parser.ml"
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
            let (_menhir_stack : ('freshtv327 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.expr)
# 1807 "parser.ml"
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv328)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv329 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.expr)
# 1839 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv330)) : 'freshtv332)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv337 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.expr)
# 1848 "parser.ml"
        )) * 'tv_bop) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.expr)
# 1852 "parser.ml"
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
            let (_menhir_stack : (('freshtv333 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.expr)
# 1868 "parser.ml"
            )) * 'tv_bop) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.expr)
# 1872 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (_1 : (
# 23 "parser.mly"
      (Syntax.expr)
# 1877 "parser.ml"
            ))), (_2 : 'tv_bop)), _, (_3 : (
# 23 "parser.mly"
      (Syntax.expr)
# 1881 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 23 "parser.mly"
      (Syntax.expr)
# 1886 "parser.ml"
            ) = 
# 72 "parser.mly"
                       ( Bop (_2, _1, _3) )
# 1890 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv334)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv335 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.expr)
# 1900 "parser.ml"
            )) * 'tv_bop) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.expr)
# 1904 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv336)) : 'freshtv338)
    | _ ->
        _menhir_fail ()

and _menhir_run46 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 1914 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv325 * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 1922 "parser.ml"
    )) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (t : (
# 22 "parser.mly"
      (Syntax.metype)
# 1927 "parser.ml"
    ))) = _menhir_stack in
    let _2 = () in
    let _v : (
# 22 "parser.mly"
      (Syntax.metype)
# 1933 "parser.ml"
    ) = 
# 56 "parser.mly"
                          ( TRef t )
# 1937 "parser.ml"
     in
    _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv326)

and _menhir_run47 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 1944 "parser.ml"
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
      (Syntax.metype)
# 1974 "parser.ml"
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

and _menhir_reduce28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_compdef_ = 
# 211 "<standard.mly>"
    ( [] )
# 2006 "parser.ml"
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
        let (_menhir_stack : 'freshtv321 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv317 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 15 "parser.mly"
      (string)
# 2028 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv313 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 2039 "parser.ml"
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80) : 'freshtv314)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv315 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 2071 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv316)) : 'freshtv318)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv319 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)) : 'freshtv322)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv323 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv324)

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "parser.mly"
      (string)
# 2093 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARROW ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv309 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 2105 "parser.ml"
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv310)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv311 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 2137 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv305 * _menhir_state) = Obj.magic _menhir_stack in
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39) : 'freshtv306)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv307 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv308)

and _menhir_run51 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
      (int)
# 2185 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv303) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 16 "parser.mly"
      (int)
# 2195 "parser.ml"
    )) : (
# 16 "parser.mly"
      (int)
# 2199 "parser.ml"
    )) = _v in
    ((let _v : (
# 23 "parser.mly"
      (Syntax.expr)
# 2204 "parser.ml"
    ) = 
# 70 "parser.mly"
                  ( Int n )
# 2208 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv304)

and _menhir_goto_type_spec : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "parser.mly"
      (Syntax.metype)
# 2215 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv213 * _menhir_state)) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2225 "parser.ml"
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
            let (_menhir_stack : (('freshtv209 * _menhir_state)) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2241 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv207 * _menhir_state)) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2248 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : (
# 22 "parser.mly"
      (Syntax.metype)
# 2253 "parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 23 "parser.mly"
      (Syntax.expr)
# 2261 "parser.ml"
            ) = 
# 71 "parser.mly"
                                      ( Size t )
# 2265 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv208)) : 'freshtv210)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv211 * _menhir_state)) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2275 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)) : 'freshtv214)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv219 * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2284 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2288 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | MUL | RBRACE | RPAREN | SEMICOLON | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv215 * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2302 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2306 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (t1 : (
# 22 "parser.mly"
      (Syntax.metype)
# 2311 "parser.ml"
            ))), _, (t2 : (
# 22 "parser.mly"
      (Syntax.metype)
# 2315 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 22 "parser.mly"
      (Syntax.metype)
# 2321 "parser.ml"
            ) = 
# 58 "parser.mly"
                                      ( TProd (t1, t2) )
# 2325 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv216)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv217 * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2335 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2339 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)) : 'freshtv220)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv225 * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2348 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2352 "parser.ml"
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
        | ELSE | RBRACE | RPAREN | SEMICOLON | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv221 * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2368 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2372 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (t1 : (
# 22 "parser.mly"
      (Syntax.metype)
# 2377 "parser.ml"
            ))), _, (t2 : (
# 22 "parser.mly"
      (Syntax.metype)
# 2381 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 22 "parser.mly"
      (Syntax.metype)
# 2387 "parser.ml"
            ) = 
# 59 "parser.mly"
                                       ( TFun (t1, t2) )
# 2391 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv222)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv223 * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2401 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2405 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)) : 'freshtv226)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv231 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.expr)
# 2414 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2418 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv227 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.expr)
# 2430 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2434 "parser.ml"
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv228)
        | MUL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv229 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.expr)
# 2470 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2474 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)) : 'freshtv232)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv237 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.expr)
# 2483 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2487 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2491 "parser.ml"
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
        | ELSE | RBRACE | RPAREN | SEMICOLON | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv233 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.expr)
# 2507 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2511 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2515 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (e : (
# 23 "parser.mly"
      (Syntax.expr)
# 2520 "parser.ml"
            ))), _, (t1 : (
# 22 "parser.mly"
      (Syntax.metype)
# 2524 "parser.ml"
            ))), _, (t2 : (
# 22 "parser.mly"
      (Syntax.metype)
# 2528 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 22 "parser.mly"
      (Syntax.metype)
# 2536 "parser.ml"
            ) = 
# 61 "parser.mly"
                                                      ( TIf (e, t1, t2) )
# 2540 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv234)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv235 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.expr)
# 2550 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2554 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2558 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)) : 'freshtv238)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv245 * _menhir_state) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2567 "parser.ml"
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
            let (_menhir_stack : ('freshtv241 * _menhir_state) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2581 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv239 * _menhir_state) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2588 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : (
# 22 "parser.mly"
      (Syntax.metype)
# 2593 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 22 "parser.mly"
      (Syntax.metype)
# 2600 "parser.ml"
            ) = 
# 57 "parser.mly"
                                  ( TAlign t )
# 2604 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)) : 'freshtv242)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv243 * _menhir_state) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2616 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)) : 'freshtv246)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv253 * _menhir_state) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2625 "parser.ml"
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
            let (_menhir_stack : ('freshtv249 * _menhir_state) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2641 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv247 * _menhir_state) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2648 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : (
# 22 "parser.mly"
      (Syntax.metype)
# 2653 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 22 "parser.mly"
      (Syntax.metype)
# 2660 "parser.ml"
            ) = 
# 62 "parser.mly"
                              ( _2 )
# 2664 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv248)) : 'freshtv250)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv251 * _menhir_state) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2674 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)) : 'freshtv254)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv269 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 2683 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2687 "parser.ml"
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
        | ELSE | RBRACE | RPAREN | SEMICOLON | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv265 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 2703 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2707 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (p : (
# 14 "parser.mly"
      (string)
# 2712 "parser.ml"
            ))), _, (t : (
# 22 "parser.mly"
      (Syntax.metype)
# 2716 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_t_case = 
# 78 "parser.mly"
                                   ( (p, t) )
# 2722 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv263) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_t_case) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv261 * _menhir_state * 'tv_t_case) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | VBAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv255 * _menhir_state * 'tv_t_case) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LABEL _v ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv256)
            | ARROW | ELSE | MUL | RBRACE | REF | RPAREN | SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv257 * _menhir_state * 'tv_t_case) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_t_case)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_VBAR_t_case_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2753 "parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_VBAR_t_case_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv258)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv259 * _menhir_state * 'tv_t_case) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)) : 'freshtv262)) : 'freshtv264)) : 'freshtv266)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv267 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 2770 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2774 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv268)) : 'freshtv270)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv281 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 2783 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2787 "parser.ml"
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
            let (_menhir_stack : ((('freshtv277 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 2803 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2807 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv275 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 2814 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2818 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 15 "parser.mly"
      (string)
# 2823 "parser.ml"
            ))), _, (spec : (
# 22 "parser.mly"
      (Syntax.metype)
# 2827 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_typedef = 
# 38 "parser.mly"
                                            ( Typedef (x, spec) )
# 2835 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv273) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_typedef) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv271 * _menhir_state * 'tv_typedef) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TYPE ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | EOF | LET ->
                _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74) : 'freshtv272)) : 'freshtv274)) : 'freshtv276)) : 'freshtv278)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv279 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 2862 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2866 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv280)) : 'freshtv282)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv291 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 2875 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2879 "parser.ml"
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
            let (_menhir_stack : (((('freshtv287 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 2895 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2899 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv283 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 2909 "parser.ml"
                ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2913 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL _v ->
                    _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                | FUN ->
                    _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | ID _v ->
                    _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                | INT _v ->
                    _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                | LABEL _v ->
                    _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
                | LBRACE ->
                    _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | LPAREN ->
                    _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | MATCH ->
                    _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | NEW ->
                    _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState83
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83) : 'freshtv284)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv285 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 2947 "parser.ml"
                ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2951 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv286)) : 'freshtv288)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv289 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 2962 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2966 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)) : 'freshtv292)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv301 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 2975 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2979 "parser.ml"
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
            let (_menhir_stack : (((('freshtv297 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 2995 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 2999 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARROW ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv293 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 3009 "parser.ml"
                ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 3013 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL _v ->
                    _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
                | FUN ->
                    _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState117
                | ID _v ->
                    _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
                | INT _v ->
                    _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
                | LABEL _v ->
                    _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState117 _v
                | LBRACE ->
                    _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState117
                | LPAREN ->
                    _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState117
                | MATCH ->
                    _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState117
                | NEW ->
                    _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState117
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117) : 'freshtv294)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv295 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 3047 "parser.ml"
                ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 3051 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv296)) : 'freshtv298)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv299 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 3062 "parser.ml"
            ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 3066 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)) : 'freshtv302)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_typedef_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_typedef_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state * 'tv_typedef) * _menhir_state * 'tv_list_typedef_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv201 * _menhir_state * 'tv_typedef) * _menhir_state * 'tv_list_typedef_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_typedef)), _, (xs : 'tv_list_typedef_)) = _menhir_stack in
        let _v : 'tv_list_typedef_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 3086 "parser.ml"
         in
        _menhir_goto_list_typedef_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv202)) : 'freshtv204)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv205 * _menhir_state * 'tv_list_tagdef_) * _menhir_state * 'tv_list_typedef_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LET ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | EOF ->
            _menhir_reduce28 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv206)
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
        let (_menhir_stack : 'freshtv197 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 15 "parser.mly"
      (string)
# 3118 "parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv195 * _menhir_state) = Obj.magic _menhir_stack in
        let ((a : (
# 15 "parser.mly"
      (string)
# 3126 "parser.ml"
        )) : (
# 15 "parser.mly"
      (string)
# 3130 "parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (
# 22 "parser.mly"
      (Syntax.metype)
# 3137 "parser.ml"
        ) = 
# 55 "parser.mly"
                    ( TTag a )
# 3141 "parser.ml"
         in
        _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv196)) : 'freshtv198)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv199 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv191 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 15 "parser.mly"
      (string)
# 3164 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv187 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 3175 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LABEL _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31) : 'freshtv188)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv189 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 3193 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)) : 'freshtv192)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv193 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)

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
    let (_menhir_stack : 'freshtv185) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 22 "parser.mly"
      (Syntax.metype)
# 3269 "parser.ml"
    ) = 
# 52 "parser.mly"
                  ( TInt )
# 3273 "parser.ml"
     in
    _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv186)

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
# 3295 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv179 * _menhir_state * (
# 15 "parser.mly"
      (string)
# 3307 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv175 * _menhir_state * (
# 15 "parser.mly"
      (string)
# 3317 "parser.ml"
            ))) = Obj.magic _menhir_stack in
            let (_v : (
# 15 "parser.mly"
      (string)
# 3322 "parser.ml"
            )) = _v in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv173 * _menhir_state * (
# 15 "parser.mly"
      (string)
# 3329 "parser.ml"
            ))) = Obj.magic _menhir_stack in
            let ((a : (
# 15 "parser.mly"
      (string)
# 3334 "parser.ml"
            )) : (
# 15 "parser.mly"
      (string)
# 3338 "parser.ml"
            )) = _v in
            ((let (_menhir_stack, _menhir_s, (x : (
# 15 "parser.mly"
      (string)
# 3343 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 22 "parser.mly"
      (Syntax.metype)
# 3349 "parser.ml"
            ) = 
# 53 "parser.mly"
                           ( TVarTag (x, a) )
# 3353 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv174)) : 'freshtv176)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv177 * _menhir_state * (
# 15 "parser.mly"
      (string)
# 3363 "parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)) : 'freshtv180)
    | ARROW | ELSE | MUL | RBRACE | REF | RPAREN | SEMICOLON | VBAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv181 * _menhir_state * (
# 15 "parser.mly"
      (string)
# 3372 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 15 "parser.mly"
      (string)
# 3377 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 22 "parser.mly"
      (Syntax.metype)
# 3382 "parser.ml"
        ) = 
# 54 "parser.mly"
                 ( TVar x )
# 3386 "parser.ml"
         in
        _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv182)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv183 * _menhir_state * (
# 15 "parser.mly"
      (string)
# 3396 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv171) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 22 "parser.mly"
      (Syntax.metype)
# 3411 "parser.ml"
    ) = 
# 51 "parser.mly"
                   ( TBool )
# 3415 "parser.ml"
     in
    _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv172)

and _menhir_goto_separated_nonempty_list_COMMA_LABEL_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_LABEL_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv161 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 3428 "parser.ml"
        ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv159 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 3434 "parser.ml"
        ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : (
# 14 "parser.mly"
      (string)
# 3439 "parser.ml"
        ))), _, (xs : 'tv_separated_nonempty_list_COMMA_LABEL_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_LABEL_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 3445 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_LABEL_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv160)) : 'freshtv162)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv165 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv163 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : 'tv_separated_nonempty_list_COMMA_LABEL_)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 25 "parser.mly"
      (Syntax.tag)
# 3466 "parser.ml"
            ) = 
# 45 "parser.mly"
                                                        ( Tagset _2 )
# 3470 "parser.ml"
             in
            _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv164)) : 'freshtv166)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv167 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)) : 'freshtv170)
    | _ ->
        _menhir_fail ()

and _menhir_run14 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 25 "parser.mly"
      (Syntax.tag)
# 3486 "parser.ml"
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
      (Syntax.tag)
# 3506 "parser.ml"
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

and _menhir_reduce32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_typedef_ = 
# 211 "<standard.mly>"
    ( [] )
# 3533 "parser.ml"
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
        let (_menhir_stack : 'freshtv155 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 15 "parser.mly"
      (string)
# 3549 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv151 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 3560 "parser.ml"
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26) : 'freshtv152)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv153 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 3592 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)) : 'freshtv156)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "parser.mly"
      (string)
# 3607 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 3619 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LABEL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7) : 'freshtv146)
    | RBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 3635 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 14 "parser.mly"
      (string)
# 3640 "parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_LABEL_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 3645 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_LABEL_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv148)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 3655 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)

and _menhir_goto_tag_spec : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
      (Syntax.tag)
# 3663 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv121 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.tag)
# 3673 "parser.ml"
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
            let (_menhir_stack : ('freshtv117 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.tag)
# 3687 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv115 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.tag)
# 3694 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : (
# 25 "parser.mly"
      (Syntax.tag)
# 3699 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 25 "parser.mly"
      (Syntax.tag)
# 3706 "parser.ml"
            ) = 
# 48 "parser.mly"
                             ( _2 )
# 3710 "parser.ml"
             in
            _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv116)) : 'freshtv118)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv119 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.tag)
# 3720 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)) : 'freshtv122)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv125 * _menhir_state * (
# 25 "parser.mly"
      (Syntax.tag)
# 3729 "parser.ml"
        ))) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.tag)
# 3733 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv123 * _menhir_state * (
# 25 "parser.mly"
      (Syntax.tag)
# 3739 "parser.ml"
        ))) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.tag)
# 3743 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (t1 : (
# 25 "parser.mly"
      (Syntax.tag)
# 3748 "parser.ml"
        ))), _, (t2 : (
# 25 "parser.mly"
      (Syntax.tag)
# 3752 "parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 25 "parser.mly"
      (Syntax.tag)
# 3758 "parser.ml"
        ) = 
# 47 "parser.mly"
                                         ( Prod (t1, t2) )
# 3762 "parser.ml"
         in
        _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv124)) : 'freshtv126)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv131 * _menhir_state * (
# 25 "parser.mly"
      (Syntax.tag)
# 3770 "parser.ml"
        ))) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.tag)
# 3774 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MUL ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | ADD | RPAREN | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv127 * _menhir_state * (
# 25 "parser.mly"
      (Syntax.tag)
# 3786 "parser.ml"
            ))) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.tag)
# 3790 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (t1 : (
# 25 "parser.mly"
      (Syntax.tag)
# 3795 "parser.ml"
            ))), _, (t2 : (
# 25 "parser.mly"
      (Syntax.tag)
# 3799 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 25 "parser.mly"
      (Syntax.tag)
# 3805 "parser.ml"
            ) = 
# 46 "parser.mly"
                                           ( Sum (t1, t2) )
# 3809 "parser.ml"
             in
            _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv128)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv129 * _menhir_state * (
# 25 "parser.mly"
      (Syntax.tag)
# 3819 "parser.ml"
            ))) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.tag)
# 3823 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)) : 'freshtv132)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv143 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 3832 "parser.ml"
        ))) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.tag)
# 3836 "parser.ml"
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
            let (_menhir_stack : ((('freshtv139 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 3850 "parser.ml"
            ))) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.tag)
# 3854 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv137 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 3861 "parser.ml"
            ))) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.tag)
# 3865 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 15 "parser.mly"
      (string)
# 3870 "parser.ml"
            ))), _, (spec : (
# 25 "parser.mly"
      (Syntax.tag)
# 3874 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_tagdef = 
# 35 "parser.mly"
                                          ( Tagdef (x, spec) )
# 3882 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv135) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_tagdef) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv133 * _menhir_state * 'tv_tagdef) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TAG ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | EOF | LET | TYPE ->
                _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv134)) : 'freshtv136)) : 'freshtv138)) : 'freshtv140)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv141 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 3909 "parser.ml"
            ))) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.tag)
# 3913 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)) : 'freshtv144)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_tagdef_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_tagdef_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv111 * _menhir_state * 'tv_tagdef) * _menhir_state * 'tv_list_tagdef_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv109 * _menhir_state * 'tv_tagdef) * _menhir_state * 'tv_list_tagdef_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_tagdef)), _, (xs : 'tv_list_tagdef_)) = _menhir_stack in
        let _v : 'tv_list_tagdef_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 3933 "parser.ml"
         in
        _menhir_goto_list_tagdef_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv110)) : 'freshtv112)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state * 'tv_list_tagdef_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TYPE ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | EOF | LET ->
            _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv114)
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
# 3986 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv107) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 15 "parser.mly"
      (string)
# 3996 "parser.ml"
    )) : (
# 15 "parser.mly"
      (string)
# 4000 "parser.ml"
    )) = _v in
    ((let _v : (
# 25 "parser.mly"
      (Syntax.tag)
# 4005 "parser.ml"
    ) = 
# 44 "parser.mly"
                   ( Var x )
# 4009 "parser.ml"
     in
    _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv108)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state * 'tv_compdef) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv13 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 4026 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 4030 "parser.ml"
        )))) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 4034 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv15 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 4043 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv17 * _menhir_state * 'tv_c_case)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv19 * _menhir_state * 'tv_comp_pattern)) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 4057 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv21 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 4066 "parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 4070 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv23 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 4079 "parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv25 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 4088 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 4097 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 4106 "parser.ml"
        )) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 4110 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv31 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 4119 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 4123 "parser.ml"
        )))) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.comp)
# 4127 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv33 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 4136 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 4140 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv35 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 4149 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * 'tv_comp_pattern)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState98 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv43 * _menhir_state) * _menhir_state * 'tv_comp_pattern)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv51 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 4193 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv55 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 4207 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 4211 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv57 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 4220 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * 'tv_list_tagdef_) * _menhir_state * 'tv_list_typedef_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState74 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state * 'tv_typedef) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * 'tv_t_case)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.expr)
# 4244 "parser.ml"
        )) * 'tv_bop) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv67 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.expr)
# 4253 "parser.ml"
        ))) * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 4257 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv69 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.expr)
# 4266 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 4275 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * (
# 22 "parser.mly"
      (Syntax.metype)
# 4284 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv83 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 4313 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 4322 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv87 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 4331 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * _menhir_state * 'tv_list_tagdef_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state * 'tv_tagdef) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * (
# 25 "parser.mly"
      (Syntax.tag)
# 4350 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * (
# 25 "parser.mly"
      (Syntax.tag)
# 4359 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 4368 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv103 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 4387 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv106)

and _menhir_reduce30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_tagdef_ = 
# 211 "<standard.mly>"
    ( [] )
# 4401 "parser.ml"
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
# 4417 "parser.ml"
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
# 4428 "parser.ml"
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
# 4450 "parser.ml"
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
       (Syntax.tagdef list * Syntax.typedef list * Syntax.compdef list)
# 4477 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TAG ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF | LET | TYPE ->
        _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 4508 "parser.ml"
