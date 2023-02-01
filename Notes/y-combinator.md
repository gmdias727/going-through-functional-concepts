Y = (λx. λy. y (x x y)) (λx. λy. y (x x y))

# Y foo


```rs
(λx. λy. y (x x y)) (λx. λy. y (x x y)) foo
(λy. y ((λx. λy. y (x x y)) (λx. λy. y (x x y)) y)) foo
foo ((λx. λy. y (x x y)) (λx. λy. y (x x y)) foo)

foo (Y foo)
foo (foo (Y foo))
foo (foo (foo (Y foo)))

```


