(******************************************************************************)

(* Define these in case we need to change them later/dynamically *)

let dirsep = "/"
let pathsep = ":"

(* Check whether a programs exists in a given directory *)
let prog_exists_dir (prog : string) (dir : string) =
  if (is_file_directory_fn dir) then
    is_file_executable_fn (dir ^ dirsep ^ prog)
  else
    (error ("Tried to check the existence of program " ^ prog ^ " in non-directory " ^ dir))

(* basename *)
let basename (fn : string) =
  let parts = Str.split (regexp dirsep) fn in
  let rec last (l : string list) : string = 
    (match l with 
     | []     -> (error "Argument to basename doesn't have a basecase?!")
     | [base] -> base
     | h::t   -> last t) in
   last (parts)  
  
(* Check whether a program exists in the users path *)
let prog_exists_path (prog : string) : bool = 
 exists (prog_exists_dir prog) (exec_path_list ())

(* Run a program and return the output as a string *)
let system (prog : string) (args : string list) : string = 
  run_with_string (fun _ -> exec_path prog args)
