# β-reduction
## Beta Reduction
```rs
f = λx. x + 1
g = λy. f y
g = λy. (λx. x + 1) y
g = λy. y + 1
```


`f = λx. x + 1` WRONG
  defines a function `f` with 1 parameter which is `x` that evaluates
  to the expression `x + 1`

`g = λy. f y`
  defines another function with 2 parameters which is `f y`
  where `f` is a reduced form of `f = λx. x + 1` **(?)**

`g = λy. (λx. x + 1) y`
  What is happening here is that the whole body of `f` function is being 
  written inside the body of the function `g`

`g = λy. y + 1`
  then the body of `g` function is reduced again to `y + 1` which is the
  **normal form** of  `f y`
