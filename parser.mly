%{
open Pst

let rec parse_curry args body = 
    match args with
    | [] -> body
    | (x,t)::tail -> Lambda (x, t, parse_curry tail body)
%}

%token EOF TYPE TAG LET IN
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

%left ADD, SUB
%left MUL, DIV

%type <Pst.type_expr> type_spec
%type <Pst.expr> expr
%type <Pst.comp> comp
%type <Pst.tag_expr> tag_spec

%start <Pst.prog> start

%%

start:
| list(tagdef) list(typedef) list(compdef) EOF	{ ($1, $2, $3) }

tagdef:
| TAG x = ID EQ spec = tag_spec	SEMICOLON	{ Tagdef (x, spec) }

typedef:
| TYPE x = ID EQ spec = type_spec SEMICOLON	{ Typedef (x, spec) }

compdef:
| LET LPAREN ID COLON t = type_spec RPAREN EQ c = comp SEMICOLON    { Typed (c, t) }
| c = comp SEMICOLON                        { c }

tag_spec:
| x = ID								  	{ Var x }
| LBRACE separated_nonempty_list(COMMA, LABEL) RBRACE   { Tagset $2 }
| t1 = tag_spec ADD t2 = tag_spec         	{ Sum (t1, t2) }
| t1 = tag_spec MUL t2 = tag_spec       	{ Prod (t1, t2) }
| LPAREN tag_spec RPAREN					{ $2 }

type_spec:
| BOOLTYPE									{ TBool }
| INTTYPE									{ TInt }
| x = ID COLON a = ID						{ TVarTag (x, a) }
| x = ID									{ TVar x }
| TAG a = ID								{ TTag a }
| t = type_spec REF							{ TRef t }
| LBRACE t = type_spec RBRACE 				{ TAlign t }
| t1 = type_spec MUL t2 = type_spec			{ TProd (t1, t2) }
| t1 = type_spec ARROW t2 = type_spec		{ TFun (t1, t2) }
| MATCH x = ID WITH cases = t_cases			{ TMatch (x, cases) }
| IF e = expr THEN t1 = type_spec ELSE t2 = type_spec	{ TIf (e, t1, t2) }
| LPAREN type_spec RPAREN					{ $2 }

bop:
| GT										{ GT }
| LT										{ LT }
| EQ										{ EQ }

expr:
| n = INT									{ Int n }
| SIZE LPAREN t = type_spec RPAREN 			{ Size t }
| expr bop expr								{ Bop ($2, $1, $3) }

t_cases:
| separated_nonempty_list(VBAR, t_case)  	{ $1 }

t_case:
| p = LABEL ARROW t = type_spec 			{ (p, t) }

comp:
| LPAREN RPAREN								{ Unit }
| n = INT									{ Int n }
| b = BOOL									{ Bool b }
| x = ID									{ Var x }
| a = LABEL									{ Tag a }
| LBRACE c = comp RBRACE					{ Align c }
| a = LABEL c = comp                        { Block (a, c) }
| LPAREN c1 = comp COMMA c2 = comp RPAREN	{ Pair (c1, c2) }
| NEW c = comp								{ New c }
| FUN x = ID COLON t = type_spec ARROW c = comp    { Lambda (x, t, c) }
| LET x = ID EQ c1 = comp IN c2 = comp      { Let (x, c1, c2) }
| LET x = ID COLON t = type_spec EQ c1 = comp IN c2 = comp      { Let (x, Typed(c1, t), c2) }
| LET f = ID args = list(typed_var) EQ c1 = comp IN c2 = comp   { Let (f, parse_curry args c1, c2) }
| MATCH c = comp WITH cases = c_cases	    { Match (c, cases) }
| f = comp arg = comp				        { App (f, arg) }
| c = comp COLON t = type_spec              { Typed (c, t) }
| LPAREN c = comp RPAREN					{ c }

typed_var:
x = ID COLON t = type_spec                  { (x, t) }

c_cases:
| separated_nonempty_list(VBAR, c_case)  	{ $1 }

c_case:
| p = comp_pattern ARROW c = comp 			{ (p, c) }

comp_pattern:
| n = INT									{ Int n }
| x = ID									{ Var x }
| a = LABEL								    { Tag a }
| a = LABEL c = comp_pattern                { Block (a, c) }
| LBRACE p = comp_pattern RBRACE			{ Align p }
| LPAREN p1 = comp_pattern COMMA p2 = comp_pattern RPAREN	{ Pair (p1, p2) }
| NEW p = comp_pattern						{ New p }