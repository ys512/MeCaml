%{
open MeCaml
}%


%token EOF, TYPE
%token BOOL, CHAR, SHORT, INT32, INT64
%token LBRACE RBRACE LCAST RCAST
%token CROSS ADD TAG COLON REF
%token IF THEN ELSE MATCH WITH VBAR
%token EQ COMMA
%token<string> ID
%token<int> INT

%start <MeCaml.expr> toplevel_expr
%start <MeCaml.typedef> toplevel_typedef

%%

toplevel_typedef:
| typedef EOF                   { $1 }
| tagdef EOF					{ $1 }

typedef:
| TYPE id = ID EQ t = type      { Type (id, t) }

type:
| BOOL							{ Bool }
| CHAR							{ CHAR }
| SHORT							{ Short }
| INT32							{ Int32 }
| INT64							{ Int64 }
| LBRACE t = type RBRACE 		{ Align t }
| LCAST t = type RCAST		    { Cast t }
| t1 = type CROSS t2 = type     { Product (t1, t2) }
| TAG id = ID				    { Tag id }
| ID: t							{ t }
| IF e = expr THEN t1 = type ELSE t2 = type      { If (e, t1, t2) }
| MATCH e WITH cases = match_cases		         { MATCH (e, cases) }
| t = type REF					{ Ref t }

tagdef:
| TAG id = ID EQ spec = tag_spec { Tag (id, spec) }

tag_spec:
| id = ID						{ Tag id }
| t1 = tag_spec ADD t2 = tag_spec         { Union (t1, t2) }
| t1 = tag_spec CROSS t2 = tag_spec       { Product (t1, t2) }