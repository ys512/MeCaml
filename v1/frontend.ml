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

let rec process_tag tag = 
    match tag with
    | Var x -> Env.lookup_tagset x
    | Tagset ts -> ts
    | Sum (tag1, tag2) -> 
        let ts1 = process_tag(tag1) in
        let ts2 = process_tag(tag2) in
        union ts1 ts2
    | Prod (tag1, tag2) -> 
        let ts1 = process_tag(tag1) in
        let ts2 = process_tag(tag2) in
        prod ts1 ts2

let process_tagdef (tag, def) = 
    let ts = process_tag def in
    Env.remove_tagset tag; Env.add_tagset tag ts

let process_typedef (t, def) =
    let nt = Norm.norm def in
    Env.remove_type t; Env.add_type t nt

let process_compdef (x, c) = 
    Env.set_current_var x;
    let cc, tc = Type_checker.check_comp c None (Env.get_typing ()) in
    if x = "_" then () else Env.add_typing x tc; (x, (cc, tc))
    

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