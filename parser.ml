
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
  | MenhirState137
  | MenhirState133
  | MenhirState132
  | MenhirState130
  | MenhirState127
  | MenhirState125
  | MenhirState124
  | MenhirState122
  | MenhirState120
  | MenhirState119
  | MenhirState118
  | MenhirState116
  | MenhirState113
  | MenhirState106
  | MenhirState104
  | MenhirState103
  | MenhirState97
  | MenhirState91
  | MenhirState90
  | MenhirState89
  | MenhirState86
  | MenhirState83
  | MenhirState82
  | MenhirState79
  | MenhirState77
  | MenhirState72
  | MenhirState61
  | MenhirState56
  | MenhirState54
  | MenhirState50
  | MenhirState48
  | MenhirState40
  | MenhirState38
  | MenhirState36
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
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv491 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv487 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv485 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (p : 'tv_comp_pattern)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_comp_pattern = 
# 106 "parser.mly"
                                   ( Align p )
# 154 "parser.ml"
             in
            _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv486)) : 'freshtv488)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv489 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv490)) : 'freshtv492)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv497 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv493 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
            | INT _v ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
            | LBRACE ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | LPAREN ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | NEW ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | TAG ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv494)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv495 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv496)) : 'freshtv498)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv505 * _menhir_state) * _menhir_state * 'tv_comp_pattern)) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv501 * _menhir_state) * _menhir_state * 'tv_comp_pattern)) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv499 * _menhir_state) * _menhir_state * 'tv_comp_pattern)) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (p1 : 'tv_comp_pattern)), _, (p2 : 'tv_comp_pattern)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_comp_pattern = 
# 107 "parser.mly"
                                                          ( Pair (p1, p2) )
# 218 "parser.ml"
             in
            _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv500)) : 'freshtv502)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv503 * _menhir_state) * _menhir_state * 'tv_comp_pattern)) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv504)) : 'freshtv506)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv509 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv507 * _menhir_state) * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (p : 'tv_comp_pattern)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_comp_pattern = 
# 108 "parser.mly"
                            ( New p )
# 238 "parser.ml"
         in
        _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv508)) : 'freshtv510)
    | MenhirState130 | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv515 * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv511 * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL _v ->
                _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | FUN ->
                _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | ID _v ->
                _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | INT _v ->
                _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | LABEL _v ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
            | LBRACE ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | LPAREN ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | MATCH ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | NEW ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState103
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv512)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv513 * _menhir_state * 'tv_comp_pattern) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv514)) : 'freshtv516)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_VBAR_c_case_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_VBAR_c_case_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv479) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VBAR_c_case_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv477) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_separated_nonempty_list_VBAR_c_case_) : 'tv_separated_nonempty_list_VBAR_c_case_) = _v in
        ((let _v : 'tv_c_cases = 
# 97 "parser.mly"
                                          ( _1 )
# 300 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv475) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_c_cases) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv473 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 310 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_c_cases) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv471 * _menhir_state) * (
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
# 25 "parser.mly"
      (Syntax.comp)
# 332 "parser.ml"
        ) = 
# 92 "parser.mly"
                                      ( Match (x, cases) )
# 336 "parser.ml"
         in
        _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv472)) : 'freshtv474)) : 'freshtv476)) : 'freshtv478)) : 'freshtv480)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv483 * _menhir_state * 'tv_c_case)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VBAR_c_case_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv481 * _menhir_state * 'tv_c_case)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_VBAR_c_case_) : 'tv_separated_nonempty_list_VBAR_c_case_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_c_case)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_VBAR_c_case_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 353 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_VBAR_c_case_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv482)) : 'freshtv484)
    | _ ->
        _menhir_fail ()

and _menhir_goto_bop : _menhir_env -> 'ttv_tail -> 'tv_bop -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv469 * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 366 "parser.ml"
    )) * 'tv_bop) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState61 _v
    | SIZE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState61
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv470)

and _menhir_run87 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LABEL _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv465 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 14 "parser.mly"
      (string)
# 392 "parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv463 * _menhir_state) = Obj.magic _menhir_stack in
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
# 105 "parser.mly"
                       ( Tag a )
# 411 "parser.ml"
         in
        _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv464)) : 'freshtv466)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv467 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv468)

and _menhir_run89 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | INT _v ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
    | LBRACE ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | LPAREN ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | NEW ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | TAG ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState89
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89

and _menhir_run90 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | INT _v ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | LBRACE ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | LPAREN ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | NEW ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | TAG ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState90
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
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | INT _v ->
        _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | LBRACE ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | LPAREN ->
        _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | NEW ->
        _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | TAG ->
        _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91

and _menhir_run92 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
      (int)
# 494 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv461) = Obj.magic _menhir_stack in
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
# 103 "parser.mly"
                  ( Int n )
# 513 "parser.ml"
     in
    _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv462)

and _menhir_run93 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
      (string)
# 520 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv459) = Obj.magic _menhir_stack in
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
# 104 "parser.mly"
                 ( Var x )
# 539 "parser.ml"
     in
    _menhir_goto_comp_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv460)

and _menhir_goto_comp : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 25 "parser.mly"
      (Syntax.comp)
# 546 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv405 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 556 "parser.ml"
        ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 560 "parser.ml"
        )))) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 564 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
        | FUN ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | ID _v ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
        | INT _v ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
        | LABEL _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
        | LBRACE ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | LPAREN ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | MATCH ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | NEW ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState118
        | COMMA | RBRACE | RPAREN | SEMICOLON | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv403 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 592 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 596 "parser.ml"
            )))) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 600 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), (x : (
# 15 "parser.mly"
      (string)
# 605 "parser.ml"
            ))), _, (t : (
# 23 "parser.mly"
      (Syntax.metype)
# 609 "parser.ml"
            ))), _, (c : (
# 25 "parser.mly"
      (Syntax.comp)
# 613 "parser.ml"
            ))) = _menhir_stack in
            let _7 = () in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 25 "parser.mly"
      (Syntax.comp)
# 623 "parser.ml"
            ) = 
# 91 "parser.mly"
                                                              ( Lambda (x, t, c) )
# 627 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv404)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118) : 'freshtv406)
    | MenhirState133 | MenhirState132 | MenhirState127 | MenhirState122 | MenhirState125 | MenhirState120 | MenhirState119 | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv409 * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 639 "parser.ml"
        )) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 643 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
        | FUN ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | ID _v ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
        | INT _v ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
        | LABEL _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState119 _v
        | LBRACE ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | LPAREN ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | MATCH ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | NEW ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | COMMA | RBRACE | RPAREN | SEMICOLON | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv407 * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 671 "parser.ml"
            )) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 675 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (c1 : (
# 25 "parser.mly"
      (Syntax.comp)
# 680 "parser.ml"
            ))), _, (c2 : (
# 25 "parser.mly"
      (Syntax.comp)
# 684 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 25 "parser.mly"
      (Syntax.comp)
# 689 "parser.ml"
            ) = 
# 93 "parser.mly"
                           ( App (c1, c2) )
# 693 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv408)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119) : 'freshtv410)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv415 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 705 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
        | FUN ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | ID _v ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
        | INT _v ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
        | LABEL _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
        | LBRACE ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | LPAREN ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | MATCH ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | NEW ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState120
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv413 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 733 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState120 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv411 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 741 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (c : (
# 25 "parser.mly"
      (Syntax.comp)
# 747 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 25 "parser.mly"
      (Syntax.comp)
# 754 "parser.ml"
            ) = 
# 88 "parser.mly"
                             ( Align c )
# 758 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv412)) : 'freshtv414)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120) : 'freshtv416)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv423 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 770 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv417 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 782 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState122 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL _v ->
                _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | FUN ->
                _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | ID _v ->
                _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | INT _v ->
                _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | LABEL _v ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
            | LBRACE ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | LPAREN ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | MATCH ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | NEW ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState124
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124) : 'freshtv418)
        | FUN ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | ID _v ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | INT _v ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | LABEL _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
        | LBRACE ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | LPAREN ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | MATCH ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | NEW ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState122
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv421 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 832 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState122 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv419 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 840 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (c : (
# 25 "parser.mly"
      (Syntax.comp)
# 846 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 25 "parser.mly"
      (Syntax.comp)
# 853 "parser.ml"
            ) = 
# 94 "parser.mly"
                             ( c )
# 857 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv420)) : 'freshtv422)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv424)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv429 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 869 "parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 873 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | FUN ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | ID _v ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | INT _v ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | LABEL _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState125 _v
        | LBRACE ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | LPAREN ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | MATCH ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | NEW ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv427 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 901 "parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 905 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState125 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv425 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 913 "parser.ml"
            )) * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 917 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((((_menhir_stack, _menhir_s), _, (c1 : (
# 25 "parser.mly"
      (Syntax.comp)
# 923 "parser.ml"
            ))), _), _, (c2 : (
# 25 "parser.mly"
      (Syntax.comp)
# 927 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 25 "parser.mly"
      (Syntax.comp)
# 935 "parser.ml"
            ) = 
# 89 "parser.mly"
                                          ( Pair (c1, c2) )
# 939 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv426)) : 'freshtv428)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125) : 'freshtv430)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv443 * _menhir_state * 'tv_comp_pattern)) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 951 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | FUN ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | ID _v ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | INT _v ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | LABEL _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
        | LBRACE ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | LPAREN ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | MATCH ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | NEW ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | COMMA | RBRACE | RPAREN | SEMICOLON | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv441 * _menhir_state * 'tv_comp_pattern)) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 979 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (p : 'tv_comp_pattern)), _, (c : (
# 25 "parser.mly"
      (Syntax.comp)
# 984 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_c_case = 
# 100 "parser.mly"
                                     ( (p, c) )
# 990 "parser.ml"
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
                    _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
                | INT _v ->
                    _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
                | LBRACE ->
                    _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState130
                | LPAREN ->
                    _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState130
                | NEW ->
                    _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState130
                | TAG ->
                    _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState130
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130) : 'freshtv432)
            | BOOL _ | COMMA | FUN | ID _ | INT _ | LABEL _ | LBRACE | LPAREN | MATCH | NEW | RBRACE | RPAREN | SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv433 * _menhir_state * 'tv_c_case) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_c_case)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_VBAR_c_case_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 1031 "parser.ml"
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127) : 'freshtv444)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv447 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1050 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
        | FUN ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | ID _v ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
        | INT _v ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
        | LABEL _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
        | LBRACE ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | LPAREN ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | MATCH ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | NEW ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | COMMA | RBRACE | RPAREN | SEMICOLON | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv445 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1078 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (c : (
# 25 "parser.mly"
      (Syntax.comp)
# 1083 "parser.ml"
            ))) = _menhir_stack in
            let _1 = () in
            let _v : (
# 25 "parser.mly"
      (Syntax.comp)
# 1089 "parser.ml"
            ) = 
# 90 "parser.mly"
                      ( New c )
# 1093 "parser.ml"
             in
            _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv446)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState132) : 'freshtv448)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv457 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 1105 "parser.ml"
        ))) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1109 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOL _v ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | FUN ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | ID _v ->
            _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | INT _v ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | LABEL _v ->
            _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _v
        | LBRACE ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | LPAREN ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | MATCH ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | NEW ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv455 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 1137 "parser.ml"
            ))) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1141 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState133 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv453 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 1149 "parser.ml"
            ))) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 1153 "parser.ml"
            )) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 15 "parser.mly"
      (string)
# 1159 "parser.ml"
            ))), _, (comp : (
# 25 "parser.mly"
      (Syntax.comp)
# 1163 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_compdef = 
# 42 "parser.mly"
                                       ( Compdef (x, comp) )
# 1171 "parser.ml"
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
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | EOF ->
                _menhir_reduce28 _menhir_env (Obj.magic _menhir_stack) MenhirState137
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState137) : 'freshtv450)) : 'freshtv452)) : 'freshtv454)) : 'freshtv456)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133) : 'freshtv458)
    | _ ->
        _menhir_fail ()

and _menhir_run58 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv401) = Obj.magic _menhir_stack in
    ((let _1 = () in
    let _v : 'tv_bop = 
# 68 "parser.mly"
              ( LT )
# 1207 "parser.ml"
     in
    _menhir_goto_bop _menhir_env _menhir_stack _v) : 'freshtv402)

and _menhir_run59 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv399) = Obj.magic _menhir_stack in
    ((let _1 = () in
    let _v : 'tv_bop = 
# 67 "parser.mly"
              ( GT )
# 1220 "parser.ml"
     in
    _menhir_goto_bop _menhir_env _menhir_stack _v) : 'freshtv400)

and _menhir_run60 : _menhir_env -> 'ttv_tail -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv397) = Obj.magic _menhir_stack in
    ((let _1 = () in
    let _v : 'tv_bop = 
# 69 "parser.mly"
              ( EQ )
# 1233 "parser.ml"
     in
    _menhir_goto_bop _menhir_env _menhir_stack _v) : 'freshtv398)

and _menhir_goto_list_compdef_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_compdef_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv391 * _menhir_state * 'tv_list_tagdef_) * _menhir_state * 'tv_list_typedef_) * _menhir_state * 'tv_list_compdef_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv387 * _menhir_state * 'tv_list_tagdef_) * _menhir_state * 'tv_list_typedef_) * _menhir_state * 'tv_list_compdef_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv385 * _menhir_state * 'tv_list_tagdef_) * _menhir_state * 'tv_list_typedef_) * _menhir_state * 'tv_list_compdef_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (_1 : 'tv_list_tagdef_)), _, (_2 : 'tv_list_typedef_)), _, (_3 : 'tv_list_compdef_)) = _menhir_stack in
            let _4 = () in
            let _v : (
# 28 "parser.mly"
       (Syntax.tagdef list * Syntax.typedef list * Syntax.compdef list)
# 1257 "parser.ml"
            ) = 
# 33 "parser.mly"
                                               ( (_1, _2, _3) )
# 1261 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv383) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 28 "parser.mly"
       (Syntax.tagdef list * Syntax.typedef list * Syntax.compdef list)
# 1269 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv381) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 28 "parser.mly"
       (Syntax.tagdef list * Syntax.typedef list * Syntax.compdef list)
# 1277 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv379) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 28 "parser.mly"
       (Syntax.tagdef list * Syntax.typedef list * Syntax.compdef list)
# 1285 "parser.ml"
            )) : (
# 28 "parser.mly"
       (Syntax.tagdef list * Syntax.typedef list * Syntax.compdef list)
# 1289 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv380)) : 'freshtv382)) : 'freshtv384)) : 'freshtv386)) : 'freshtv388)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv389 * _menhir_state * 'tv_list_tagdef_) * _menhir_state * 'tv_list_typedef_) * _menhir_state * 'tv_list_compdef_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv390)) : 'freshtv392)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv395 * _menhir_state * 'tv_compdef) * _menhir_state * 'tv_list_compdef_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv393 * _menhir_state * 'tv_compdef) * _menhir_state * 'tv_list_compdef_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_compdef)), _, (xs : 'tv_list_compdef_)) = _menhir_stack in
        let _v : 'tv_list_compdef_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 1308 "parser.ml"
         in
        _menhir_goto_list_compdef_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv394)) : 'freshtv396)
    | _ ->
        _menhir_fail ()

and _menhir_run83 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | FUN ->
        _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | ID _v ->
        _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | INT _v ->
        _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | LABEL _v ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
    | LBRACE ->
        _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | LPAREN ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | MATCH ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | NEW ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState83
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83

and _menhir_run84 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv375 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 15 "parser.mly"
      (string)
# 1355 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv371 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 1366 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
            | INT _v ->
                _menhir_run92 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
            | LBRACE ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | LPAREN ->
                _menhir_run90 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | NEW ->
                _menhir_run89 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | TAG ->
                _menhir_run87 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv372)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv373 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 1394 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv374)) : 'freshtv376)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv377 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv378)

and _menhir_run104 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
    | FUN ->
        _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState104
    | ID _v ->
        _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
    | INT _v ->
        _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
    | LABEL _v ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState104 _v
    | LBRACE ->
        _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState104
    | LPAREN ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState104
    | MATCH ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState104
    | NEW ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState104
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv369 * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState104 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv367 * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _2 = () in
        let _1 = () in
        let _v : (
# 25 "parser.mly"
      (Syntax.comp)
# 1444 "parser.ml"
        ) = 
# 83 "parser.mly"
                       ( Unit )
# 1448 "parser.ml"
         in
        _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv368)) : 'freshtv370)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState104

and _menhir_run106 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL _v ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | FUN ->
        _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | ID _v ->
        _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | INT _v ->
        _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | LABEL _v ->
        _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | LBRACE ->
        _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | LPAREN ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | MATCH ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | NEW ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106

and _menhir_run107 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "parser.mly"
      (string)
# 1488 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv365) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((a : (
# 14 "parser.mly"
      (string)
# 1498 "parser.ml"
    )) : (
# 14 "parser.mly"
      (string)
# 1502 "parser.ml"
    )) = _v in
    ((let _v : (
# 25 "parser.mly"
      (Syntax.comp)
# 1507 "parser.ml"
    ) = 
# 87 "parser.mly"
                    ( Tag a )
# 1511 "parser.ml"
     in
    _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv366)

and _menhir_run108 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
      (int)
# 1518 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv363) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 16 "parser.mly"
      (int)
# 1528 "parser.ml"
    )) : (
# 16 "parser.mly"
      (int)
# 1532 "parser.ml"
    )) = _v in
    ((let _v : (
# 25 "parser.mly"
      (Syntax.comp)
# 1537 "parser.ml"
    ) = 
# 84 "parser.mly"
                  ( Int n )
# 1541 "parser.ml"
     in
    _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv364)

and _menhir_run109 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
      (string)
# 1548 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv361) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 15 "parser.mly"
      (string)
# 1558 "parser.ml"
    )) : (
# 15 "parser.mly"
      (string)
# 1562 "parser.ml"
    )) = _v in
    ((let _v : (
# 25 "parser.mly"
      (Syntax.comp)
# 1567 "parser.ml"
    ) = 
# 86 "parser.mly"
                 ( Var x )
# 1571 "parser.ml"
     in
    _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv362)

and _menhir_run110 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv357 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv353 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 15 "parser.mly"
      (string)
# 1593 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv349 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 1604 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOLTYPE ->
                    _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | ID _v ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
                | IF ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | INTTYPE ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | LBRACE ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | LCAST ->
                    _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | LPAREN ->
                    _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | MATCH ->
                    _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | TAG ->
                    _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState113
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113) : 'freshtv350)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv351 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 1638 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv352)) : 'freshtv354)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv355 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv356)) : 'freshtv358)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv359 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv360)

and _menhir_run117 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 17 "parser.mly"
      (bool)
# 1660 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv347) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((b : (
# 17 "parser.mly"
      (bool)
# 1670 "parser.ml"
    )) : (
# 17 "parser.mly"
      (bool)
# 1674 "parser.ml"
    )) = _v in
    ((let _v : (
# 25 "parser.mly"
      (Syntax.comp)
# 1679 "parser.ml"
    ) = 
# 85 "parser.mly"
                   ( Bool b )
# 1683 "parser.ml"
     in
    _menhir_goto_comp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv348)

and _menhir_goto_separated_nonempty_list_VBAR_t_case_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_VBAR_t_case_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv335 * _menhir_state * 'tv_t_case)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VBAR_t_case_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv333 * _menhir_state * 'tv_t_case)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_VBAR_t_case_) : 'tv_separated_nonempty_list_VBAR_t_case_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_t_case)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_VBAR_t_case_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 1704 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_VBAR_t_case_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv334)) : 'freshtv336)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv345) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_VBAR_t_case_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv343) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : 'tv_separated_nonempty_list_VBAR_t_case_) : 'tv_separated_nonempty_list_VBAR_t_case_) = _v in
        ((let _v : 'tv_t_cases = 
# 77 "parser.mly"
                                          ( _1 )
# 1719 "parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv341) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_t_cases) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv339 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 1729 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_t_cases) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv337 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 1737 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((cases : 'tv_t_cases) : 'tv_t_cases) = _v in
        ((let ((_menhir_stack, _menhir_s), (x : (
# 15 "parser.mly"
      (string)
# 1744 "parser.ml"
        ))) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 1751 "parser.ml"
        ) = 
# 62 "parser.mly"
                                      ( TMatch (x, cases) )
# 1755 "parser.ml"
         in
        _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv338)) : 'freshtv340)) : 'freshtv342)) : 'freshtv344)) : 'freshtv346)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 24 "parser.mly"
      (Syntax.expr)
# 1764 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv325 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 1774 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv321 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 1790 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLTYPE ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | ID _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
            | IF ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | INTTYPE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | LBRACE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | LCAST ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | LPAREN ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | MATCH ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | TAG ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState54
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54) : 'freshtv322)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv323 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 1824 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv324)) : 'freshtv326)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv331 * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 1833 "parser.ml"
        )) * 'tv_bop) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 1837 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            _menhir_run60 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run58 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv327 * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 1853 "parser.ml"
            )) * 'tv_bop) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 1857 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (_1 : (
# 24 "parser.mly"
      (Syntax.expr)
# 1862 "parser.ml"
            ))), (_2 : 'tv_bop)), _, (_3 : (
# 24 "parser.mly"
      (Syntax.expr)
# 1866 "parser.ml"
            ))) = _menhir_stack in
            let _v : (
# 24 "parser.mly"
      (Syntax.expr)
# 1871 "parser.ml"
            ) = 
# 74 "parser.mly"
                       ( Bop (_2, _1, _3) )
# 1875 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv328)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv329 * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 1885 "parser.ml"
            )) * 'tv_bop) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 1889 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv330)) : 'freshtv332)
    | _ ->
        _menhir_fail ()

and _menhir_run47 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1899 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv319 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1907 "parser.ml"
    )) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _menhir_s, (t : (
# 23 "parser.mly"
      (Syntax.metype)
# 1912 "parser.ml"
    ))) = _menhir_stack in
    let _2 = () in
    let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 1918 "parser.ml"
    ) = 
# 57 "parser.mly"
                          ( TRef t )
# 1922 "parser.ml"
     in
    _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv320)

and _menhir_run48 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1929 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | IF ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | INTTYPE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LBRACE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LCAST ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LPAREN ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | MATCH ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | TAG ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48

and _menhir_run50 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 1961 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | IF ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | INTTYPE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LBRACE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LCAST ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LPAREN ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | MATCH ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | TAG ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50

and _menhir_reduce28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_compdef_ = 
# 211 "<standard.mly>"
    ( [] )
# 1995 "parser.ml"
     in
    _menhir_goto_list_compdef_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run80 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv315 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 15 "parser.mly"
      (string)
# 2011 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv311 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 2022 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL _v ->
                _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | FUN ->
                _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | ID _v ->
                _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | INT _v ->
                _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | LABEL _v ->
                _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
            | LBRACE ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | LPAREN ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | MATCH ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | NEW ->
                _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState82
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82) : 'freshtv312)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv313 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 2056 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv314)) : 'freshtv316)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv317 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv318)

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "parser.mly"
      (string)
# 2071 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ARROW ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv307 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 2083 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOLTYPE ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | ID _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | IF ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | INTTYPE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | LBRACE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | LCAST ->
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
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv308)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv309 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 2117 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv303 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BOOLTYPE ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | ID _v ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
        | IF ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | INTTYPE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LBRACE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LCAST ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | LPAREN ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | MATCH ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | TAG ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState40
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40) : 'freshtv304)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv305 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv306)

and _menhir_run52 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
      (int)
# 2167 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv301) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 16 "parser.mly"
      (int)
# 2177 "parser.ml"
    )) : (
# 16 "parser.mly"
      (int)
# 2181 "parser.ml"
    )) = _v in
    ((let _v : (
# 24 "parser.mly"
      (Syntax.expr)
# 2186 "parser.ml"
    ) = 
# 72 "parser.mly"
                  ( Int n )
# 2190 "parser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv302)

and _menhir_goto_type_spec : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 23 "parser.mly"
      (Syntax.metype)
# 2197 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv213 * _menhir_state)) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2207 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv209 * _menhir_state)) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2223 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv207 * _menhir_state)) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2230 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : (
# 23 "parser.mly"
      (Syntax.metype)
# 2235 "parser.ml"
            ))) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : (
# 24 "parser.mly"
      (Syntax.expr)
# 2243 "parser.ml"
            ) = 
# 73 "parser.mly"
                                      ( Size t )
# 2247 "parser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv208)) : 'freshtv210)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv211 * _menhir_state)) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2257 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)) : 'freshtv214)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv219 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2266 "parser.ml"
        ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2270 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | MUL | RBRACE | RCAST | RPAREN | SEMICOLON | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv215 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2284 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2288 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (t1 : (
# 23 "parser.mly"
      (Syntax.metype)
# 2293 "parser.ml"
            ))), _, (t2 : (
# 23 "parser.mly"
      (Syntax.metype)
# 2297 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 2303 "parser.ml"
            ) = 
# 60 "parser.mly"
                                      ( TProd (t1, t2) )
# 2307 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv216)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv217 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2317 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2321 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)) : 'freshtv220)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv225 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2330 "parser.ml"
        ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2334 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | MUL | RBRACE | RCAST | RPAREN | SEMICOLON | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv221 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2348 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2352 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (t1 : (
# 23 "parser.mly"
      (Syntax.metype)
# 2357 "parser.ml"
            ))), _, (t2 : (
# 23 "parser.mly"
      (Syntax.metype)
# 2361 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 2367 "parser.ml"
            ) = 
# 61 "parser.mly"
                                       ( TFun (t1, t2) )
# 2371 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv222)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv223 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2381 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2385 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)) : 'freshtv226)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv231 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 2394 "parser.ml"
        ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2398 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | ELSE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv227 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 2410 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2414 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLTYPE ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | ID _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
            | IF ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | INTTYPE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | LBRACE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | LCAST ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | LPAREN ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | MATCH ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | TAG ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState56
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv228)
        | MUL ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv229 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 2452 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2456 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv230)) : 'freshtv232)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv237 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 2465 "parser.ml"
        ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2469 "parser.ml"
        ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2473 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | RBRACE | RCAST | RPAREN | SEMICOLON | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv233 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 2489 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2493 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2497 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, (e : (
# 24 "parser.mly"
      (Syntax.expr)
# 2502 "parser.ml"
            ))), _, (t1 : (
# 23 "parser.mly"
      (Syntax.metype)
# 2506 "parser.ml"
            ))), _, (t2 : (
# 23 "parser.mly"
      (Syntax.metype)
# 2510 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 2518 "parser.ml"
            ) = 
# 63 "parser.mly"
                                                      ( TIf (e, t1, t2) )
# 2522 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv234)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv235 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 2532 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2536 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2540 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)) : 'freshtv238)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv245 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2549 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv241 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2563 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv239 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2570 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : (
# 23 "parser.mly"
      (Syntax.metype)
# 2575 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 2582 "parser.ml"
            ) = 
# 58 "parser.mly"
                                  ( TAlign t )
# 2586 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)) : 'freshtv242)
        | REF ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv243 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2598 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)) : 'freshtv246)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv253 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2607 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | RCAST ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv249 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2621 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv247 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2628 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : (
# 23 "parser.mly"
      (Syntax.metype)
# 2633 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 2640 "parser.ml"
            ) = 
# 59 "parser.mly"
                                ( TCast t )
# 2644 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv248)) : 'freshtv250)
        | REF ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv251 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2656 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)) : 'freshtv254)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv261 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2665 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv257 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2681 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv255 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2688 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : (
# 23 "parser.mly"
      (Syntax.metype)
# 2693 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 2700 "parser.ml"
            ) = 
# 64 "parser.mly"
                              ( _2 )
# 2704 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv256)) : 'freshtv258)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv259 * _menhir_state) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2714 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)) : 'freshtv262)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv277 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 2723 "parser.ml"
        ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2727 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | ELSE | MUL | RBRACE | RCAST | RPAREN | SEMICOLON | VBAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv273 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 2741 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2745 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (p : (
# 14 "parser.mly"
      (string)
# 2750 "parser.ml"
            ))), _, (t : (
# 23 "parser.mly"
      (Syntax.metype)
# 2754 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_t_case = 
# 80 "parser.mly"
                                   ( (p, t) )
# 2760 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv271) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_t_case) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv269 * _menhir_state * 'tv_t_case) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | VBAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv263 * _menhir_state * 'tv_t_case) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LABEL _v ->
                    _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72) : 'freshtv264)
            | ARROW | ELSE | MUL | RBRACE | RCAST | REF | RPAREN | SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv265 * _menhir_state * 'tv_t_case) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_t_case)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_VBAR_t_case_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2791 "parser.ml"
                 in
                _menhir_goto_separated_nonempty_list_VBAR_t_case_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv267 * _menhir_state * 'tv_t_case) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv268)) : 'freshtv270)) : 'freshtv272)) : 'freshtv274)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv275 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 2808 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2812 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv276)) : 'freshtv278)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv289 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 2821 "parser.ml"
        ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2825 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv285 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 2841 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2845 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv283 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 2852 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2856 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 15 "parser.mly"
      (string)
# 2861 "parser.ml"
            ))), _, (spec : (
# 23 "parser.mly"
      (Syntax.metype)
# 2865 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_typedef = 
# 39 "parser.mly"
                                            ( Typedef (x, spec) )
# 2873 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv281) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_typedef) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv279 * _menhir_state * 'tv_typedef) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | TYPE ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | EOF | LET ->
                _menhir_reduce32 _menhir_env (Obj.magic _menhir_stack) MenhirState77
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState77) : 'freshtv280)) : 'freshtv282)) : 'freshtv284)) : 'freshtv286)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv287 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 2900 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2904 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv288)) : 'freshtv290)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv299 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 2913 "parser.ml"
        ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2917 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | REF ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv295 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 2933 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2937 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARROW ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv291 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 2947 "parser.ml"
                ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2951 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL _v ->
                    _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
                | FUN ->
                    _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState116
                | ID _v ->
                    _menhir_run109 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
                | INT _v ->
                    _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
                | LABEL _v ->
                    _menhir_run107 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v
                | LBRACE ->
                    _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState116
                | LPAREN ->
                    _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState116
                | MATCH ->
                    _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState116
                | NEW ->
                    _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState116
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116) : 'freshtv292)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv293 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 2985 "parser.ml"
                ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 2989 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv294)) : 'freshtv296)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv297 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 3000 "parser.ml"
            ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 3004 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv298)) : 'freshtv300)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_typedef_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_typedef_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state * 'tv_typedef) * _menhir_state * 'tv_list_typedef_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv201 * _menhir_state * 'tv_typedef) * _menhir_state * 'tv_list_typedef_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_typedef)), _, (xs : 'tv_list_typedef_)) = _menhir_stack in
        let _v : 'tv_list_typedef_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 3024 "parser.ml"
         in
        _menhir_goto_list_typedef_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv202)) : 'freshtv204)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv205 * _menhir_state * 'tv_list_tagdef_) * _menhir_state * 'tv_list_typedef_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LET ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | EOF ->
            _menhir_reduce28 _menhir_env (Obj.magic _menhir_stack) MenhirState79
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv206)
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
# 3056 "parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv195 * _menhir_state) = Obj.magic _menhir_stack in
        let ((a : (
# 15 "parser.mly"
      (string)
# 3064 "parser.ml"
        )) : (
# 15 "parser.mly"
      (string)
# 3068 "parser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 3075 "parser.ml"
        ) = 
# 55 "parser.mly"
                    ( TTag a )
# 3079 "parser.ml"
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
# 3102 "parser.ml"
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
# 3113 "parser.ml"
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
# 3131 "parser.ml"
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
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | IF ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | INTTYPE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | LBRACE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | LCAST ->
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
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | IF ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | INTTYPE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LBRACE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | LCAST ->
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
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOLTYPE ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | ID _v ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | IF ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | INTTYPE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LBRACE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LCAST ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LPAREN ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | MATCH ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | TAG ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv185) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 3240 "parser.ml"
    ) = 
# 53 "parser.mly"
                  ( TInt )
# 3244 "parser.ml"
     in
    _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv186)

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INT _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | SIZE ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
      (string)
# 3266 "parser.ml"
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
# 3278 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv175 * _menhir_state * (
# 15 "parser.mly"
      (string)
# 3288 "parser.ml"
            ))) = Obj.magic _menhir_stack in
            let (_v : (
# 15 "parser.mly"
      (string)
# 3293 "parser.ml"
            )) = _v in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv173 * _menhir_state * (
# 15 "parser.mly"
      (string)
# 3300 "parser.ml"
            ))) = Obj.magic _menhir_stack in
            let ((a : (
# 15 "parser.mly"
      (string)
# 3305 "parser.ml"
            )) : (
# 15 "parser.mly"
      (string)
# 3309 "parser.ml"
            )) = _v in
            ((let (_menhir_stack, _menhir_s, (x : (
# 15 "parser.mly"
      (string)
# 3314 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 3320 "parser.ml"
            ) = 
# 56 "parser.mly"
                           ( TVarTag (x, a) )
# 3324 "parser.ml"
             in
            _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv174)) : 'freshtv176)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv177 * _menhir_state * (
# 15 "parser.mly"
      (string)
# 3334 "parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)) : 'freshtv180)
    | ARROW | ELSE | MUL | RBRACE | RCAST | REF | RPAREN | SEMICOLON | VBAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv181 * _menhir_state * (
# 15 "parser.mly"
      (string)
# 3343 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 15 "parser.mly"
      (string)
# 3348 "parser.ml"
        ))) = _menhir_stack in
        let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 3353 "parser.ml"
        ) = 
# 54 "parser.mly"
                 ( TVar x )
# 3357 "parser.ml"
         in
        _menhir_goto_type_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv182)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv183 * _menhir_state * (
# 15 "parser.mly"
      (string)
# 3367 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv171) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 23 "parser.mly"
      (Syntax.metype)
# 3382 "parser.ml"
    ) = 
# 52 "parser.mly"
                   ( TBool )
# 3386 "parser.ml"
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
# 3399 "parser.ml"
        ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv159 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 3405 "parser.ml"
        ))) * _menhir_state * 'tv_separated_nonempty_list_COMMA_LABEL_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : (
# 14 "parser.mly"
      (string)
# 3410 "parser.ml"
        ))), _, (xs : 'tv_separated_nonempty_list_COMMA_LABEL_)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_LABEL_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 3416 "parser.ml"
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
# 26 "parser.mly"
      (Syntax.tag)
# 3437 "parser.ml"
            ) = 
# 46 "parser.mly"
                                                        ( Tagset _2 )
# 3441 "parser.ml"
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
# 26 "parser.mly"
      (Syntax.tag)
# 3457 "parser.ml"
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
# 26 "parser.mly"
      (Syntax.tag)
# 3477 "parser.ml"
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
# 3504 "parser.ml"
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
# 3520 "parser.ml"
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
# 3531 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOLTYPE ->
                _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | ID _v ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState26 _v
            | IF ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | INTTYPE ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | LBRACE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState26
            | LCAST ->
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
# 3565 "parser.ml"
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
# 3580 "parser.ml"
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
# 3592 "parser.ml"
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
# 3608 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 14 "parser.mly"
      (string)
# 3613 "parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_LABEL_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 3618 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_LABEL_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv148)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 3628 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)

and _menhir_goto_tag_spec : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 26 "parser.mly"
      (Syntax.tag)
# 3636 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv121 * _menhir_state) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 3646 "parser.ml"
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
# 26 "parser.mly"
      (Syntax.tag)
# 3660 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv115 * _menhir_state) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 3667 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (_2 : (
# 26 "parser.mly"
      (Syntax.tag)
# 3672 "parser.ml"
            ))) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (
# 26 "parser.mly"
      (Syntax.tag)
# 3679 "parser.ml"
            ) = 
# 49 "parser.mly"
                             ( _2 )
# 3683 "parser.ml"
             in
            _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv116)) : 'freshtv118)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv119 * _menhir_state) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 3693 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)) : 'freshtv122)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv125 * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 3702 "parser.ml"
        ))) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 3706 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv123 * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 3712 "parser.ml"
        ))) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 3716 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (t1 : (
# 26 "parser.mly"
      (Syntax.tag)
# 3721 "parser.ml"
        ))), _, (t2 : (
# 26 "parser.mly"
      (Syntax.tag)
# 3725 "parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : (
# 26 "parser.mly"
      (Syntax.tag)
# 3731 "parser.ml"
        ) = 
# 48 "parser.mly"
                                         ( Prod (t1, t2) )
# 3735 "parser.ml"
         in
        _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv124)) : 'freshtv126)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv131 * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 3743 "parser.ml"
        ))) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 3747 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | MUL ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | ADD | RPAREN | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv127 * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 3759 "parser.ml"
            ))) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 3763 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (t1 : (
# 26 "parser.mly"
      (Syntax.tag)
# 3768 "parser.ml"
            ))), _, (t2 : (
# 26 "parser.mly"
      (Syntax.tag)
# 3772 "parser.ml"
            ))) = _menhir_stack in
            let _2 = () in
            let _v : (
# 26 "parser.mly"
      (Syntax.tag)
# 3778 "parser.ml"
            ) = 
# 47 "parser.mly"
                                           ( Sum (t1, t2) )
# 3782 "parser.ml"
             in
            _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv128)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv129 * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 3792 "parser.ml"
            ))) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 3796 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)) : 'freshtv132)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv143 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 3805 "parser.ml"
        ))) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 3809 "parser.ml"
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
# 3823 "parser.ml"
            ))) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 3827 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv137 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 3834 "parser.ml"
            ))) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 3838 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (x : (
# 15 "parser.mly"
      (string)
# 3843 "parser.ml"
            ))), _, (spec : (
# 26 "parser.mly"
      (Syntax.tag)
# 3847 "parser.ml"
            ))) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_tagdef = 
# 36 "parser.mly"
                                          ( Tagdef (x, spec) )
# 3855 "parser.ml"
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
# 3882 "parser.ml"
            ))) * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 3886 "parser.ml"
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
# 3906 "parser.ml"
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
# 3959 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv107) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 15 "parser.mly"
      (string)
# 3969 "parser.ml"
    )) : (
# 15 "parser.mly"
      (string)
# 3973 "parser.ml"
    )) = _v in
    ((let _v : (
# 26 "parser.mly"
      (Syntax.tag)
# 3978 "parser.ml"
    ) = 
# 45 "parser.mly"
                   ( Var x )
# 3982 "parser.ml"
     in
    _menhir_goto_tag_spec _menhir_env _menhir_stack _menhir_s _v) : 'freshtv108)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state * 'tv_compdef) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv13 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 3999 "parser.ml"
        ))) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 4003 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv14)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv15 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 4012 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv17 * _menhir_state * 'tv_c_case)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv19 * _menhir_state * 'tv_comp_pattern)) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 4026 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv21 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 4035 "parser.ml"
        )) * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 4039 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv23 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 4048 "parser.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv25 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 4057 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv27 * _menhir_state) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 4066 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 4075 "parser.ml"
        )) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 4079 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv31 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 4088 "parser.ml"
        ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 4092 "parser.ml"
        )))) * _menhir_state * (
# 25 "parser.mly"
      (Syntax.comp)
# 4096 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv33 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 4105 "parser.ml"
        ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 4109 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv35 * _menhir_state)) * (
# 15 "parser.mly"
      (string)
# 4118 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState104 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * 'tv_comp_pattern)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv43 * _menhir_state) * _menhir_state * 'tv_comp_pattern)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv51 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 4162 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv55 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 4176 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * 'tv_list_tagdef_) * _menhir_state * 'tv_list_typedef_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState77 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * _menhir_state * 'tv_typedef) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * 'tv_t_case)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 4200 "parser.ml"
        )) * 'tv_bop) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv65 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 4209 "parser.ml"
        ))) * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 4213 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv67 * _menhir_state) * _menhir_state * (
# 24 "parser.mly"
      (Syntax.expr)
# 4222 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 4231 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * (
# 23 "parser.mly"
      (Syntax.metype)
# 4240 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState36 ->
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
# 4274 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 4283 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState26 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv87 * _menhir_state) * (
# 15 "parser.mly"
      (string)
# 4292 "parser.ml"
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
# 26 "parser.mly"
      (Syntax.tag)
# 4311 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * (
# 26 "parser.mly"
      (Syntax.tag)
# 4320 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * (
# 14 "parser.mly"
      (string)
# 4329 "parser.ml"
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
# 4348 "parser.ml"
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
# 4362 "parser.ml"
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
# 4378 "parser.ml"
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
# 4389 "parser.ml"
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
# 4411 "parser.ml"
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
# 28 "parser.mly"
       (Syntax.tagdef list * Syntax.typedef list * Syntax.compdef list)
# 4438 "parser.ml"
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
  

# 4469 "parser.ml"
