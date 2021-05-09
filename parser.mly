%{
open Pst

let rec parse_curry args body = 
    match args with
    | [] -> body
    | (x,t)::tail -> Lambda (x, t, parse_curry tail body)


let rec parse_rec args body t_body = 
    match args with
    | [] -> body, t_body
    | (x,t)::tail -> 
        let c_tail, t_tail = parse_rec tail body t_body in
        Lambda (x, t, c_tail), TFun (t, t_tail)
%}

%token EOF TYPE TAG LET REC IN
%token BOOLTYPE INTTYPE
%token LPAREN RPAREN LBRACE RBRACE LCAST RCAST
%token ADD SUB MUL DIV
%token IF THEN ELSE
%token MATCH WITH VBAR ARROW
%token EQ LT GT
%token SIZE REF NEW FUN
%token COMMA COLON SEMICOLON
%token<string> LABEL
%token<string> ID
%token<int> INT
%token<bool> BOOL

%nonassoc LT, GT, EQ
%left ADD, SUB
%left MUL, DIV
%right ARROW

%type <Pst.type_expr> type_spec
%type <Pst.expr> expr
%type <Pst.comp> comp
%type <Pst.tag_expr> tag_spec

%start <Pst.prog> start

%%

start:
| list(tagdef) list(typedef) list(compdef) EOF	{ ($1, $2, $3) }

tagdef:
| TAG x = ID EQ spec = tag_spec	SEMICOLON	{ (x, spec) }

typedef:
| TYPE x = ID EQ spec = type_spec SEMICOLON	{ (x, spec) }

compdef:
| LET x = ID COLON t = type_spec EQ c = comp SEMICOLON      { (x, Typed (c, t)) }
| LET x = ID EQ c = comp SEMICOLON                          { (x, c) }
| c = comp SEMICOLON                                        { ("_", c) }

tag_spec:
| x = ID								  	{ Var x }
| l = separated_nonempty_list(VBAR, LABEL)  { Tagset l }
| t1 = tag_spec ADD t2 = tag_spec         	{ Sum (t1, t2) }
| t1 = tag_spec MUL t2 = tag_spec       	{ Prod (t1, t2) }
| LPAREN t = tag_spec RPAREN			    { t }

type_spec:
| BOOLTYPE									{ TBool }
| INTTYPE									{ TInt }
| x = ID COLON a = ID						{ TVarTag (x, a) }
| x = ID									{ TVar x }
| TAG a = ID								{ TTag a }
| t = type_spec REF							{ TRef t }
// | LBRACE t = type_spec RBRACE 				{ TAlign t }
| t1 = type_spec MUL t2 = type_spec			{ TProd (t1, t2) }
| t1 = type_spec ARROW t2 = type_spec		{ TFun (t1, t2) }
| MATCH x = ID WITH cases = t_cases			{ TMatch (x, cases) }
| IF e = expr THEN t1 = type_spec ELSE t2 = type_spec	{ TIf (e, t1, t2) }
| LPAREN t = type_spec RPAREN				{ t }

cop:
| GT										{ GT }
| LT										{ LT }
| EQ										{ EQ }

expr:
| n = INT									{ Int n }
| SIZE LPAREN t = type_spec RPAREN 			{ Size t }
| e1 = expr op = ebop e2 = expr             { Cop (op, e1, e2) }

t_cases:
| separated_nonempty_list(VBAR, t_case)  	    { $1 }
| VBAR separated_nonempty_list(VBAR, t_case)    { $2 }

t_case:
| p = LABEL ARROW t = type_spec 			{ (p, t) }

bop:
| ADD										{ ADD }
| SUB										{ SUB }
| MUL										{ MUL }
| DIV										{ DIV }

comp:
| LPAREN RPAREN								{ Unit }
| n = INT									{ Int n }
| b = BOOL									{ Bool b }
| x = ID									{ Var x }
| a = LABEL                                 { Tag a }
// | LBRACE c = comp RBRACE					{ Align c }
| a = LABEL c = comp                        { Block (a, c) }
| LPAREN c1 = comp COMMA c2 = comp RPAREN	{ Pair (c1, c2) }
| NEW c = comp								{ New c }
| c1 = comp op = cop c2 = comp              { Cop (op, c1, c2) }
| c1 = comp op = bop c2 = comp              { Bop (op, c1, c2) }
| IF c1 = comp THEN c2= comp ELSE c3 = comp { If (c1, c2, c3) }
| FUN x = ID COLON t = type_spec ARROW c = comp     { Lambda (x, t, c) }
| LET x = ID EQ c1 = comp IN c2 = comp              { Let (x, c1, c2) }
| LET x = ID COLON t = type_spec EQ c1 = comp IN c2 = comp          { Let (x, Typed(c1, t), c2) }
| LET f = ID args = list(typed_var) EQ c1 = comp IN c2 = comp       { Let (f, parse_curry args c1, c2) }
| LET f = ID LPAREN args = list(typed_var) RPAREN COLON t = type_spec EQ c1 = comp IN c2 = comp
                                                                    { Let (f, parse_curry args (Typed (c1, t)), c2) }
| LET REC f = ID LPAREN args = list(typed_var) RPAREN COLON t = type_spec EQ c1 = comp IN c2 = comp   
                                                                    { LetRec (f, parse_rec args c1 t, c2) }
| MATCH c = comp WITH cases = c_cases	    { Match (c, cases) }
| f = comp arg = comp %prec ARROW           { App (f, arg) }
| c = comp COLON t = type_spec              { Typed (c, t) }
| LPAREN c = comp RPAREN                    { c }

typed_var:
x = ID COLON t = type_spec                  { (x, t) }

c_cases:
| separated_nonempty_list(VBAR, c_case)  	    { $1 }
| VBAR separated_nonempty_list(VBAR, c_case)  	{ $2 }

c_case:
| p = comp_pattern ARROW c = comp 			{ (p, c) }

comp_pattern:
| n = INT									{ PInt n }
| x = ID									{ PVar x }
| a = LABEL								    { PTag a }
| a = LABEL c = comp_pattern                { PBlock (a, c) }
// | LBRACE p = comp_pattern RBRACE			{ Align p }
| LPAREN p1 = comp_pattern COMMA p2 = comp_pattern RPAREN	{ PPair (p1, p2) }
| NEW p = comp_pattern						{ PNew p }