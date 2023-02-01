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

---

# The Successor function
  `succ(n) = n + 1` is β-equivalent to (plus 1)
  `succ === λn. λf. λx. f (n f x)`
  `λn. (λf. (λx. f ((n f) x)))`

`λn. λf. λx.` defines a function with three parameters: `n`, `f` and `x`.
`f (n f x)` is the body of the function
`f x)` the function `f` is being applied to `x`
`(n f` then the result of applying `f` to `x` is applied to `n f`.
`f (n f x)` And again the result of applying `f` to `n` is applied to the last `f`

# The Multiplication Function
  `mult === λm. λn. λf. λx. m (n f) x`
  `mult === λm. (λn. (λf. (λx. (m (n f)) x)))`

`λm. (λn. (λf. (λx.` defines a function with 4 parameters
`(m (n f)) x)))` defines the body of our function
`... f)) x)))` The result of function `x` will be applied to function `f`
`... (n f)) ...` The result of function `f` will be applied to function `n`
`(m (n...` Then the result of function `n` will be applied to function `m`

```rs
let succ = 
succ(1) = succ(succ(x + 1))


2 = (λf. λx. f (f x))
succ = (λn. λf. λx. f (n f x))

(λn. λf. λx. f (n f x)) (λf. λx. f (f x))
(λn. (λf. (λx. (f ((n f) x))))) (λf. (λx. (f (f x))))

((λn. M) E) -> (M [n := E])

E = (λf. (λx. (f (f x))))
M = (λf. (λx. (f ((n f) x))))

(M [n := E]) M aonde n foi substituido por E
(λf. (λx. (f ((E f) x))))

(λf. (λx. (f (((λf. (λx. (f (f x)))) f) x))))

(λf. (λx. (f ((M N) x))))

M = (λf. (λx. (f (f x))))
N = f
Substui succ pela expressão
((λx. M) E) -> (M [x := E])
E 
```
