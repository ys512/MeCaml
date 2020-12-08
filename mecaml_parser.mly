%{
open Mecaml
%}


%token EOF TYPE TAG
%token BOOL CHAR SHORT INT32 INT64
%token LPAREN RPAREN LBRACE RBRACE LCAST RCAST
%token CROSS PLUS
%token IF THEN ELSE 
%token MATCH WITH VBAR RARROW
%token EQ LT GT
%token SIZE REF NEW FUN
%token COMMA COLON SEMICOLON
%token<string> LABEL
%token<string> ID
%token<int> INT

%type <Mecaml.metype> type_spec
%type <Mecaml.expr> expr expr_pattern
%type <Mecaml.comp> comp comp_pattern
%type <Mecaml.tag> tag_spec

%start <Mecaml.comp> toplevel_comp
%start <Mecaml.tagdef> toplevel_tagdef
%start <Mecaml.typedef> toplevel_typedef

%%

toplevel_typedef:
| typedef EOF                   			{ $1 }

toplevel_tagdef:
| tagdef EOF								{ $1 }

toplevel_comp:
| comp EOF									{ $1 }

id:
| ID										{ $1 }
| LABEL										{ $1 }

tagdef:
| TAG id = id EQ spec = tag_spec 			{ Tagbind (id, spec) }

tag_spec:
| id = id								  	{ Var id }
| LBRACE separated_nonempty_list(COMMA, LABEL) RBRACE   { Tagset $2 }
| t1 = tag_spec PLUS t2 = tag_spec         	{ Sum (t1, t2) }
| t1 = tag_spec CROSS t2 = tag_spec       	{ Product (t1, t2) }

typedef:
| TYPE id = id EQ spec = type_spec      	{ Typebind (id, spec) }

type_spec:
| BOOL										{ Bool }
| CHAR										{ Char }
| SHORT										{ Short }
| INT32										{ Int32 }
| INT64										{ Int64 }
| id = id									{ Var id }
| id = id COLON tag = id					{ Tag (id, tag) }
| t = type_spec REF							{ Ref t }
| LBRACE t = type_spec RBRACE 				{ Align t }
| LCAST t = type_spec RCAST					{ Cast t }
| t1 = type_spec CROSS t2 = type_spec		{ Product (t1, t2) }
| t1 = type_spec RARROW t2 = type_spec		{ Fun (t1, t2) }
| MATCH e = expr WITH cases = expr_match_cases	{ Match (e, cases) }

expr:
| n = INT									{ Int n }
| id = id									{ Var id }
| TAG id = ID								{ Tag id }
| SIZE LPAREN t = type_spec RPAREN 			{ Size t }
| e1 = expr GT e2 = expr					{ Gt (e1, e2) }
| e1 = expr EQ e2 = expr					{ Eq (e1, e2) }
| IF e0 = expr THEN e1 = expr ELSE e2 = expr	{ If (e0, e1, e2) }

expr_match_cases:
| separated_nonempty_list(VBAR, expr_match_case)  { $1 }

expr_match_case:
| p = expr_pattern RARROW t = type_spec 	{ (p, t) }

expr_pattern:
| n = INT									{ Int n }
| id = id									{ Var id }
| TAG id = LABEL							{ Tag id }

comp:
| n = INT									{ Int n }
| id = id									{ Var id }
| TAG id = LABEL							{ Tag id }
| LBRACE c = comp RBRACE					{ Align c }
| LPAREN c1 = comp COMMA c2 = comp RPAREN	{ Pair (c1, c2) }
| NEW c = comp								{ New c }
| FUN id = id COLON t = type_spec RARROW c = comp	{ Fun (id, t, c) }
| MATCH c = comp WITH cases = comp_match_cases	{ Match (c, cases) }
| c1 = comp c2 = comp						{ App (c1, c2) }
| c = comp COLON t = type_spec				{ Type (c, t) }

comp_match_cases:
| separated_nonempty_list(VBAR, comp_match_case)  { $1 }

comp_match_case:
| p = comp_pattern RARROW c = comp 			{ (p, c) }

comp_pattern:
| n = INT									{ Int n }
| id = id									{ Var id }
| TAG id = LABEL							{ Tag id }
| LBRACE p = comp_pattern RBRACE			{ Align p }
| LPAREN p1 = comp_pattern COMMA p2 = comp_pattern RPAREN	{ Pair (p1, p2) }
| NEW p = comp_pattern						{ New p }
| c = comp_pattern COLON t = type_spec		{ Type (c, t) }