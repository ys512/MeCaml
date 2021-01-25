%{
open Syntax
%}

%token EOF TYPE TAG LET
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

%left ADD
%left MUL
%right ARROW

%type <Syntax.metype> type_spec
%type <Syntax.expr> expr
%type <Syntax.comp> comp
%type <Syntax.tag> tag_spec

%start <Syntax.compdef> compdef
%start <Syntax.tagdef> tagdef
%start <Syntax.typedef> typedef

%%

tagdef:
| TAG id = id EQ spec = tag_spec EOF		{ Tagdef (id, spec) }

typedef:
| TYPE id = id EQ spec = type_spec EOF		{ Typedef (id, spec) }

compdef:
| LET id = id EQ comp = comp EOF			{ Compdef (id, comp) }

id:
| ID										{ $1 }
| LABEL										{ $1 }

tag_spec:
| id = id								  	{ Var id }
| LBRACE separated_nonempty_list(COMMA, LABEL) RBRACE   { Tagset $2 }
| t1 = tag_spec ADD t2 = tag_spec         	{ Sum (t1, t2) }
| t1 = tag_spec MUL t2 = tag_spec       	{ Prod (t1, t2) }
| LPAREN tag_spec RPAREN					{ $2 }

type_spec:
| BOOLTYPE									{ TBool }
| INTTYPE									{ TInt }
| x = id									{ TVar x }
| TAG a = id								{ TTag a }
| x = id COLON a = id						{ TVarTag (x, a) }
| t = type_spec REF							{ TRef t }
| LBRACE t = type_spec RBRACE 				{ TAlign t }
| LCAST t = type_spec RCAST					{ TCast t }
| t1 = type_spec MUL t2 = type_spec			{ TProd (t1, t2) }
| t1 = type_spec ARROW t2 = type_spec		{ TFun (t1, t2) }
| MATCH x = id WITH cases = t_cases			{ TMatch (x, cases) }
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
| n = INT									{ Int n }
| x = id									{ Var x }
| TAG a = LABEL								{ Tag a }
| LBRACE c = comp RBRACE					{ Align c }
| LPAREN c1 = comp COMMA c2 = comp RPAREN	{ Pair (c1, c2) }
| NEW c = comp								{ New c }
| FUN LPAREN x = id COLON t = type_spec RPAREN ARROW c = comp	{ Lambda (x, t, c) }
| MATCH x = id WITH cases = c_cases			{ Match (x, cases) }
| c1 = comp c2 = comp						{ App (c1, c2) }

c_cases:
| separated_nonempty_list(VBAR, c_case)  	{ $1 }

c_case:
| p = comp_pattern ARROW c = comp 			{ (p, c) }

comp_pattern:
| n = INT									{ Int n }
| x = id									{ Var x }
| TAG a = LABEL								{ Tag a }
| LBRACE p = comp_pattern RBRACE			{ Align p }
| LPAREN p1 = comp_pattern COMMA p2 = comp_pattern RPAREN	{ Pair (p1, p2) }
| NEW p = comp_pattern						{ New p }