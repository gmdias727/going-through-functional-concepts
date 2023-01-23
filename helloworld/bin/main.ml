type term = 
  | Var of string 
  | Lambda of string * term
  | Apply of term * term

let x = Lambda ("x", Var "x")