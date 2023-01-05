# The addition function:
  `plus === λm. λn. λf. λx m f (n f x)`
  `plus === ` 
  `plus(m, n) = m + n`
  `plus(m, n) => m + n`

`λm. λn. λf. λx m f (n f x)` defines a function with four parameters
`m`, `n`, `f` and `x`.

`m f (n f x)` is the body of the function

`...f x)` the function is being applied to `x`.
    <--
`...(n f ...` the result of `x` is being applied to the function `n f`.
    <--
`m f (n f x)` then the result of `(n f x)` is applied to the 
function `m f` which returns the value of `m`. 
**i think its going backwards**

# 