type expression = 
  | Int of int
  | Variable of string
  | Abstraction of { param: string; param_typ : typ; body : expr }
  | Application of { param: string; body: expression }
  | Type_abstraction of { param: string; body : expression }
  | Type_application of { funct: expression; argument: typ }

[@@deriving show { with_path = false }]

