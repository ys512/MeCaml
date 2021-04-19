open Env
open Util
open Pprint
open Lexer
open Pst
open Lexing
open Parser

let load file = 
    let in_chan = open_in file in
    let lexbuf = from_channel in_chan in
    let _ = lexbuf.lex_curr_p <- { pos_fname = file; pos_lnum = 1; pos_bol = 0; pos_cnum = 0; } in
    lexbuf

let parse lexbuf = Parser.start Lexer.lex lexbuf

let rec union ts1 ts2 acc = 
    match ts2 with
    | [] -> ts1 @ List.rev acc
    | tg::tail -> 
        if (List.mem tg ts1)
        then union ts1 tail acc
        else union ts1 tail (tg::acc)

let union ts1 ts2 = union ts1 ts2 []

let prod ts1 ts2 = 
    List.flatten(
        List.map (fun tag1->
            List.map (fun tag2 -> 
                tag1 ^ tag2
            ) ts2
        ) ts1
    )

let rec process_tag tg = 
    match tg with
    | Var x -> find x !tag_env "tag"
    | Tagset ts -> ts
    | Sum (tg1, tg2) -> 
        let ts1 = process_tag(tg1) in
        let ts2 = process_tag(tg2) in
        union ts1 ts2
    | Prod (tg1, tg2) -> 
        let ts1 = process_tag(tg1) in
        let ts2 = process_tag(tg2) in
        prod ts1 ts2

let process_tagdef (Tagdef(tag, def)) = 
    let ts = process_tag def in
    match List.assoc_opt tag !tag_env with
    | Some _ -> tag_env := (tag, ts)::(List.remove_assoc tag !tag_env)
    | None -> tag_env := (tag, ts)::!tag_env

let process_typedef (Typedef(t, def)) =
    let nt = Norm.norm def in
    match List.assoc_opt t !type_env with
    | Some _ -> type_env := (t, nt)::(List.remove_assoc t !type_env)
    | None -> type_env := (t, nt)::!type_env

let process_compdef = Type_checker.check

let from_file filename = 
    let (tagdefs, typedefs, compdefs) = parse (load filename) in
    List.iter process_tagdef tagdefs;
    print_tag_env (); print_type_env ();
    List.iter process_typedef typedefs;
    print_tag_env (); print_type_env ();
    List.map process_compdef compdefs

let from_string program = 
    let (tagdefs, typedefs, compdefs) = parse (from_string program) in
    List.iter process_tagdef tagdefs;
    print_tag_env (); print_type_env ();
    List.iter process_typedef typedefs;
    print_tag_env (); print_type_env ();
    List.map process_compdef compdefs