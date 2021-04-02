
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
  | MenhirState139
  | MenhirState135
  | MenhirState134
  | MenhirState132
  | MenhirState129
  | MenhirState127
  | MenhirState126
  | MenhirState124
  | MenhirState122
  | MenhirState121
  | MenhirState120
  | MenhirState119
  | MenhirState117
  | MenhirState114
  | MenhirState108
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
  
open Pst

# 132 "parser.ml"

let rec _menhir_goto_comp_pattern : _menhir_env -> 'ttv_tail -> _menhir_state -> (Pst.comp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (p : (Pst.comp))) = _menhir_stack in
            let _v : (Pst.comp) = 
# 105 "parser.mly"
                                   ( Align p )
# 151 "parser.ml"
             in
            _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState91 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState98)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (p1 : (Pst.comp))), _, (p2 : (Pst.comp))) = _menhir_stack in
            let _v : (Pst.comp) = 
# 106 "parser.mly"
                                                          ( Pair (p1, p2) )
# 205 "parser.ml"
             in
            _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, (p : (Pst.comp))) = _menhir_stack in
        let _v : (Pst.comp) = 
# 107 "parser.mly"
                            ( New p )
# 221 "parser.ml"
         in
        _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v
    | MenhirState132 | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_VBAR_c_case_ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((Pst.comp * Pst.comp) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : ((Pst.comp * Pst.comp) list)) = _v in
        let _v : ((Pst.comp * Pst.comp) list) = 
# 96 "parser.mly"
                                          ( _1 )
# 275 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (cases : ((Pst.comp * Pst.comp) list)) = _v in
        let ((_menhir_stack, _menhir_s), (x : (
# 15 "parser.mly"
      (string)
# 283 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Pst.comp) = 
# 91 "parser.mly"
                                      ( Match (Var x, cases) )
# 288 "parser.ml"
         in
        _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v
    | MenhirState132 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : ((Pst.comp * Pst.comp) list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (Pst.comp * Pst.comp))) = _menhir_stack in
        let _v : ((Pst.comp * Pst.comp) list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 299 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_VBAR_c_case_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_bop : _menhir_env -> 'ttv_tail -> (Pst.bop) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
    | SIZE ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState60
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60

and _menhir_run88 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LABEL _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (a : (
# 14 "parser.mly"
      (string)
# 334 "parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (Pst.comp) = 
# 104 "parser.mly"
                       ( Tag a )
# 340 "parser.ml"
         in
        _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

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
# 422 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (n : (
# 16 "parser.mly"
      (int)
# 430 "parser.ml"
    )) = _v in
    let _v : (Pst.comp) = 
# 102 "parser.mly"
                  ( Int n )
# 435 "parser.ml"
     in
    _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v

and _menhir_run94 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
      (string)
# 442 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (x : (
# 15 "parser.mly"
      (string)
# 450 "parser.ml"
    )) = _v in
    let _v : (Pst.comp) = 
# 103 "parser.mly"
                 ( Var x )
# 455 "parser.ml"
     in
    _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_comp : _menhir_env -> 'ttv_tail -> _menhir_state -> (Pst.comp) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState117 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), (x : (
# 15 "parser.mly"
      (string)
# 491 "parser.ml"
            ))), _, (t : (Pst.type_expr))), _, (c : (Pst.comp))) = _menhir_stack in
            let _v : (Pst.comp) = 
# 90 "parser.mly"
                                                              ( Lambda (x, t, c) )
# 496 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119)
    | MenhirState135 | MenhirState134 | MenhirState129 | MenhirState124 | MenhirState127 | MenhirState122 | MenhirState121 | MenhirState120 | MenhirState119 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (c1 : (Pst.comp))), _, (c2 : (Pst.comp))) = _menhir_stack in
            let _v : (Pst.comp) = 
# 92 "parser.mly"
                           ( App (c1, c2) )
# 532 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120)
    | MenhirState108 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
        | COMMA | RBRACE | RPAREN | SEMICOLON | VBAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (a : (
# 14 "parser.mly"
      (string)
# 567 "parser.ml"
            ))), _, (c : (Pst.comp))) = _menhir_stack in
            let _v : (Pst.comp) = 
# 87 "parser.mly"
                                            ( Block (a, c) )
# 572 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121)
    | MenhirState107 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOL _v ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | FUN ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | ID _v ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | INT _v ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | LABEL _v ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | LBRACE ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | LPAREN ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState122 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (c : (Pst.comp))) = _menhir_stack in
            let _v : (Pst.comp) = 
# 86 "parser.mly"
                             ( Align c )
# 611 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122)
    | MenhirState105 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOL _v ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState124 in
            let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
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
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState126)
        | FUN ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | ID _v ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | INT _v ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | LABEL _v ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
        | LBRACE ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | LPAREN ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState124
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState124 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (c : (Pst.comp))) = _menhir_stack in
            let _v : (Pst.comp) = 
# 93 "parser.mly"
                             ( c )
# 679 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124)
    | MenhirState126 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOL _v ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | FUN ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | ID _v ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | INT _v ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | LABEL _v ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | LBRACE ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | LPAREN ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState127 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (c1 : (Pst.comp))), _), _, (c2 : (Pst.comp))) = _menhir_stack in
            let _v : (Pst.comp) = 
# 88 "parser.mly"
                                          ( Pair (c1, c2) )
# 718 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127)
    | MenhirState104 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOL _v ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
        | FUN ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | ID _v ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
        | INT _v ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
        | LABEL _v ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
        | LBRACE ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | LPAREN ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | COMMA | RBRACE | RPAREN | SEMICOLON | VBAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (p : (Pst.comp))), _, (c : (Pst.comp))) = _menhir_stack in
            let _v : (Pst.comp * Pst.comp) = 
# 99 "parser.mly"
                                     ( (p, c) )
# 754 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | VBAR ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ID _v ->
                    _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
                | INT _v ->
                    _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
                | LBRACE ->
                    _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState132
                | LPAREN ->
                    _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState132
                | NEW ->
                    _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState132
                | TAG ->
                    _menhir_run88 _menhir_env (Obj.magic _menhir_stack) MenhirState132
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState132)
            | BOOL _ | COMMA | FUN | ID _ | INT _ | LABEL _ | LBRACE | LPAREN | MATCH | NEW | RBRACE | RPAREN | SEMICOLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (x : (Pst.comp * Pst.comp))) = _menhir_stack in
                let _v : ((Pst.comp * Pst.comp) list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 788 "parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_VBAR_c_case_ _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129)
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
        | COMMA | RBRACE | RPAREN | SEMICOLON | VBAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (c : (Pst.comp))) = _menhir_stack in
            let _v : (Pst.comp) = 
# 89 "parser.mly"
                      ( New c )
# 830 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134)
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | BOOL _v ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
        | FUN ->
            _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | ID _v ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
        | INT _v ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
        | LABEL _v ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState135 _v
        | LBRACE ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | LPAREN ->
            _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | MATCH ->
            _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | NEW ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState135
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState135 in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), (x : (
# 15 "parser.mly"
      (string)
# 868 "parser.ml"
            ))), _, (t : (Pst.type_expr))), _, (c : (Pst.comp))) = _menhir_stack in
            let _v : (Pst.compdef) = 
# 41 "parser.mly"
                                                                        ( Compdef (x, t, c) )
# 873 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LET ->
                _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | EOF ->
                _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState139)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState135)
    | _ ->
        _menhir_fail ()

and _menhir_run57 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Pst.bop) = 
# 66 "parser.mly"
              ( LT )
# 902 "parser.ml"
     in
    _menhir_goto_bop _menhir_env _menhir_stack _v

and _menhir_run58 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Pst.bop) = 
# 65 "parser.mly"
              ( GT )
# 913 "parser.ml"
     in
    _menhir_goto_bop _menhir_env _menhir_stack _v

and _menhir_run59 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Pst.bop) = 
# 67 "parser.mly"
              ( EQ )
# 924 "parser.ml"
     in
    _menhir_goto_bop _menhir_env _menhir_stack _v

and _menhir_goto_list_compdef_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Pst.compdef list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Pst.tagdef list))), _, (_2 : (Pst.typedef list))), _, (_3 : (Pst.compdef list))) = _menhir_stack in
            let _v : (Pst.prog) = 
# 32 "parser.mly"
                                               ( (_1, _2, _3) )
# 944 "parser.ml"
             in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_1 : (Pst.prog)) = _v in
            Obj.magic _1
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState139 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Pst.compdef))), _, (xs : (Pst.compdef list))) = _menhir_stack in
        let _v : (Pst.compdef list) = 
# 213 "<standard.mly>"
    ( x :: xs )
# 963 "parser.ml"
         in
        _menhir_goto_list_compdef_ _menhir_env _menhir_stack _menhir_s _v
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
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

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
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState105 in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (Pst.comp) = 
# 81 "parser.mly"
                       ( Unit )
# 1077 "parser.ml"
         in
        _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v
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
# 1117 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
    | FUN ->
        _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | ID _v ->
        _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
    | INT _v ->
        _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
    | LABEL _v ->
        _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
    | LBRACE ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | LPAREN ->
        _menhir_run105 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | MATCH ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | NEW ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | COMMA | RBRACE | RPAREN | SEMICOLON | VBAR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (a : (
# 14 "parser.mly"
      (string)
# 1147 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Pst.comp) = 
# 85 "parser.mly"
                    ( Tag a )
# 1152 "parser.ml"
         in
        _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108

and _menhir_run109 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
      (int)
# 1163 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (n : (
# 16 "parser.mly"
      (int)
# 1171 "parser.ml"
    )) = _v in
    let _v : (Pst.comp) = 
# 82 "parser.mly"
                  ( Int n )
# 1176 "parser.ml"
     in
    _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run110 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
      (string)
# 1183 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (x : (
# 15 "parser.mly"
      (string)
# 1191 "parser.ml"
    )) = _v in
    let _v : (Pst.comp) = 
# 84 "parser.mly"
                 ( Var x )
# 1196 "parser.ml"
     in
    _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run111 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run118 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "parser.mly"
      (bool)
# 1264 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (b : (
# 17 "parser.mly"
      (bool)
# 1272 "parser.ml"
    )) = _v in
    let _v : (Pst.comp) = 
# 83 "parser.mly"
                   ( Bool b )
# 1277 "parser.ml"
     in
    _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_separated_nonempty_list_VBAR_t_case_ : _menhir_env -> 'ttv_tail -> _menhir_state -> ((string * Pst.type_expr) list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (xs : ((string * Pst.type_expr) list)) = _v in
        let (_menhir_stack, _menhir_s, (x : (string * Pst.type_expr))) = _menhir_stack in
        let _v : ((string * Pst.type_expr) list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1292 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_VBAR_t_case_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_1 : ((string * Pst.type_expr) list)) = _v in
        let _v : ((string * Pst.type_expr) list) = 
# 75 "parser.mly"
                                          ( _1 )
# 1302 "parser.ml"
         in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (cases : ((string * Pst.type_expr) list)) = _v in
        let ((_menhir_stack, _menhir_s), (x : (
# 15 "parser.mly"
      (string)
# 1310 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Pst.type_expr) = 
# 60 "parser.mly"
                                      ( TMatch (x, cases) )
# 1315 "parser.ml"
         in
        _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (Pst.expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQ ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run57 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s, (_1 : (Pst.expr))), (_2 : (Pst.bop))), _, (_3 : (Pst.expr))) = _menhir_stack in
            let _v : (Pst.expr) = 
# 72 "parser.mly"
                       ( Bop (_2, _1, _3) )
# 1384 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run46 : _menhir_env -> 'ttv_tail * _menhir_state * (Pst.type_expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (_menhir_stack, _menhir_s, (t : (Pst.type_expr))) = _menhir_stack in
    let _v : (Pst.type_expr) = 
# 56 "parser.mly"
                          ( TRef t )
# 1404 "parser.ml"
     in
    _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v

and _menhir_run47 : _menhir_env -> 'ttv_tail * _menhir_state * (Pst.type_expr) -> 'ttv_return =
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

and _menhir_run49 : _menhir_env -> 'ttv_tail * _menhir_state * (Pst.type_expr) -> 'ttv_return =
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

and _menhir_reduce29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Pst.compdef list) = 
# 211 "<standard.mly>"
    ( [] )
# 1465 "parser.ml"
     in
    _menhir_goto_list_compdef_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run77 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | COLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "parser.mly"
      (string)
# 1533 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARROW ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run51 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
      (int)
# 1613 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (n : (
# 16 "parser.mly"
      (int)
# 1621 "parser.ml"
    )) = _v in
    let _v : (Pst.expr) = 
# 70 "parser.mly"
                  ( Int n )
# 1626 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_type_spec : _menhir_env -> 'ttv_tail -> _menhir_state -> (Pst.type_expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (t : (Pst.type_expr))) = _menhir_stack in
            let _v : (Pst.expr) = 
# 71 "parser.mly"
                                      ( Size t )
# 1653 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | MUL | RBRACE | RPAREN | SEMICOLON | VBAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (t1 : (Pst.type_expr))), _, (t2 : (Pst.type_expr))) = _menhir_stack in
            let _v : (Pst.type_expr) = 
# 58 "parser.mly"
                                      ( TProd (t1, t2) )
# 1677 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | RBRACE | RPAREN | SEMICOLON | VBAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (t1 : (Pst.type_expr))), _, (t2 : (Pst.type_expr))) = _menhir_stack in
            let _v : (Pst.type_expr) = 
# 59 "parser.mly"
                                       ( TFun (t1, t2) )
# 1703 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | ELSE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55)
        | MUL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | RBRACE | RPAREN | SEMICOLON | VBAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((((_menhir_stack, _menhir_s), _, (e : (Pst.expr))), _, (t1 : (Pst.type_expr))), _, (t2 : (Pst.type_expr))) = _menhir_stack in
            let _v : (Pst.type_expr) = 
# 61 "parser.mly"
                                                      ( TIf (e, t1, t2) )
# 1771 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (t : (Pst.type_expr))) = _menhir_stack in
            let _v : (Pst.type_expr) = 
# 57 "parser.mly"
                                  ( TAlign t )
# 1797 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Pst.type_expr))) = _menhir_stack in
            let _v : (Pst.type_expr) = 
# 62 "parser.mly"
                              ( _2 )
# 1827 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | RBRACE | RPAREN | SEMICOLON | VBAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (p : (
# 14 "parser.mly"
      (string)
# 1852 "parser.ml"
            ))), _, (t : (Pst.type_expr))) = _menhir_stack in
            let _v : (string * Pst.type_expr) = 
# 78 "parser.mly"
                                   ( (p, t) )
# 1857 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | VBAR ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | LABEL _v ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69)
            | ARROW | ELSE | MUL | RBRACE | REF | RPAREN | SEMICOLON ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (x : (string * Pst.type_expr))) = _menhir_stack in
                let _v : ((string * Pst.type_expr) list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1881 "parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_VBAR_t_case_ _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (x : (
# 15 "parser.mly"
      (string)
# 1914 "parser.ml"
            ))), _, (spec : (Pst.type_expr))) = _menhir_stack in
            let _v : (Pst.typedef) = 
# 38 "parser.mly"
                                            ( Typedef (x, spec) )
# 1919 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | TYPE ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | EOF | LET ->
                _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState74
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState74)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EQ ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState114 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ARROW ->
            _menhir_run49 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ARROW ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                (match _tok with
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
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_typedef_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Pst.typedef list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Pst.typedef))), _, (xs : (Pst.typedef list))) = _menhir_stack in
        let _v : (Pst.typedef list) = 
# 213 "<standard.mly>"
    ( x :: xs )
# 2064 "parser.ml"
         in
        _menhir_goto_list_typedef_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LET ->
            _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | EOF ->
            _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76)
    | _ ->
        _menhir_fail ()

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (a : (
# 15 "parser.mly"
      (string)
# 2096 "parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (Pst.type_expr) = 
# 55 "parser.mly"
                    ( TTag a )
# 2102 "parser.ml"
         in
        _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | WITH ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LABEL _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

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
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Pst.type_expr) = 
# 52 "parser.mly"
                  ( TInt )
# 2209 "parser.ml"
     in
    _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v

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
# 2231 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ID _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (a : (
# 15 "parser.mly"
      (string)
# 2250 "parser.ml"
            )) = _v in
            let (_menhir_stack, _menhir_s, (x : (
# 15 "parser.mly"
      (string)
# 2255 "parser.ml"
            ))) = _menhir_stack in
            let _v : (Pst.type_expr) = 
# 53 "parser.mly"
                           ( TVarTag (x, a) )
# 2260 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | ARROW | ELSE | MUL | RBRACE | REF | RPAREN | SEMICOLON | VBAR ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : (
# 15 "parser.mly"
      (string)
# 2274 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Pst.type_expr) = 
# 54 "parser.mly"
                 ( TVar x )
# 2279 "parser.ml"
         in
        _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Pst.type_expr) = 
# 51 "parser.mly"
                   ( TBool )
# 2296 "parser.ml"
     in
    _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_separated_nonempty_list_COMMA_LABEL_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Pst.tag list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (
# 14 "parser.mly"
      (string)
# 2310 "parser.ml"
        ))), _, (xs : (Pst.tag list))) = _menhir_stack in
        let _v : (Pst.tag list) = 
# 243 "<standard.mly>"
    ( x :: xs )
# 2315 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_LABEL_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Pst.tag list))) = _menhir_stack in
            let _v : (Pst.tag_expr) = 
# 45 "parser.mly"
                                                        ( Tagset _2 )
# 2331 "parser.ml"
             in
            _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_run14 : _menhir_env -> 'ttv_tail * _menhir_state * (Pst.tag_expr) -> 'ttv_return =
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

and _menhir_run16 : _menhir_env -> 'ttv_tail * _menhir_state * (Pst.tag_expr) -> 'ttv_return =
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

and _menhir_reduce33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Pst.typedef list) = 
# 211 "<standard.mly>"
    ( [] )
# 2385 "parser.ml"
     in
    _menhir_goto_list_typedef_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState26)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "parser.mly"
      (string)
# 2442 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LABEL _v ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7)
    | RBRACE ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, (x : (
# 14 "parser.mly"
      (string)
# 2465 "parser.ml"
        ))) = _menhir_stack in
        let _v : (Pst.tag list) = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2470 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_LABEL_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_tag_spec : _menhir_env -> 'ttv_tail -> _menhir_state -> (Pst.tag_expr) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADD ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (_2 : (Pst.tag_expr))) = _menhir_stack in
            let _v : (Pst.tag_expr) = 
# 48 "parser.mly"
                             ( _2 )
# 2501 "parser.ml"
             in
            _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (t1 : (Pst.tag_expr))), _, (t2 : (Pst.tag_expr))) = _menhir_stack in
        let _v : (Pst.tag_expr) = 
# 47 "parser.mly"
                                         ( Prod (t1, t2) )
# 2517 "parser.ml"
         in
        _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | MUL ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | ADD | RPAREN | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (t1 : (Pst.tag_expr))), _, (t2 : (Pst.tag_expr))) = _menhir_stack in
            let _v : (Pst.tag_expr) = 
# 46 "parser.mly"
                                           ( Sum (t1, t2) )
# 2533 "parser.ml"
             in
            _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ADD ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), (x : (
# 15 "parser.mly"
      (string)
# 2558 "parser.ml"
            ))), _, (spec : (Pst.tag_expr))) = _menhir_stack in
            let _v : (Pst.tagdef) = 
# 35 "parser.mly"
                                          ( Tagdef (x, spec) )
# 2563 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | TAG ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | EOF | LET | TYPE ->
                _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState20
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_tagdef_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Pst.tagdef list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Pst.tagdef))), _, (xs : (Pst.tagdef list))) = _menhir_stack in
        let _v : (Pst.tagdef list) = 
# 213 "<standard.mly>"
    ( x :: xs )
# 2598 "parser.ml"
         in
        _menhir_goto_list_tagdef_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | TYPE ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | EOF | LET ->
            _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23)
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
# 2650 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (x : (
# 15 "parser.mly"
      (string)
# 2658 "parser.ml"
    )) = _v in
    let _v : (Pst.tag_expr) = 
# 44 "parser.mly"
                   ( Var x )
# 2663 "parser.ml"
     in
    _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState139 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState135 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState134 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState132 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState129 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState127 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState126 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState124 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState122 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState121 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState120 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState119 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState117 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState114 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState108 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState107 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState105 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState104 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState98 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState92 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState91 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState84 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState83 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState80 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState76 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState74 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState60 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState53 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState49 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState39 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState35 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState33 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState31 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState26 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState23 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState4 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState3 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_reduce31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Pst.tagdef list) = 
# 211 "<standard.mly>"
    ( [] )
# 2875 "parser.ml"
     in
    _menhir_goto_list_tagdef_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EQ ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | ID _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
            | LBRACE ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3
            | LPAREN ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

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

and start : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Pst.prog) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TAG ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF | LET | TYPE ->
        _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 269 "<standard.mly>"
  

# 2955 "parser.ml"
