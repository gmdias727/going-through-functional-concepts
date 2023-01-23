(* let () = print_endline "\nHello, World!" *)

(* let mult m n f =
  m (n f) 
in *)

type colour = Red | Green | Blue | Yellow

let additive_primaries = (Red, Green, Blue);;
val additive_primaries : colour * colour * colour = (Red, Green, Blue)

let pattern = [ (1, Red); (3, Green); (1, Red); (2, Green); ];;


let example c =
  match c with
  | Red -> "rose";;
in

let example2 d =
  match d with 
  Red -> "yellow";;
