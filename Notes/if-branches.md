(λx.λy.x) => True
(λx.λy.y) => False


if T a b
(λa.a) T a b
T a b
a

```rs
((λa.a) (λx.λy.x) a b)
((λa.a) [a->(λx.λy.x)] b)
((λx.λy.x) b)
(x)
x
```

if F a b
(λa.a) F a b
F a b
b

```rs
((λa.a) F a b)
(((λa.a) (λx.λy.y) a) b)
(((λa.a) [a->(λx.λy.y)] a) b)
((λa.(λx.λy.y)) b)

```

# Church's Numerals

0 = λf.λx.x
  x
1 = λf.λx. f x
2 = λf.λx. f (f x)
3 = λf.λx. f (f (f x))
4 = λf.λx. f (f (f (f x)))

```rs
4 a b
(a (a (a (a b))))
```

# Successor Function
```rs
// succ 0
(λn. λf. λx. f (n f x)) 0
λf. λx. f (0 f x) [0->(λf.λx.x)]
λf. λx. f ((λf.λx.x) f x)
λf. λx. f x
f x

// succ 1
(λn. λf. λx. f (n f x)) 1
(λn. λf. λx. f (n f x)) [n->(λf.λx. f x)]
(λf. λx. f ((λf.λx. f x) f x))
(λf. λx. f (f x))
f (f x)
```

succ 1 = 2
succ n = n + 1

# Addition
add 0 1 = 1

```rs
(λx. ((λf.(λx. x)) (f x))) // edu ex

add = λn. λm. λf. λx. n f (m f x)
add = (λn. (λm. (λf. (λx. n f (m f x)))))
add 0 1

(λn. λm. λf. λx. n f (m f x) (λf.λx.x) (λf.λx. f x))
(λn. λm. λf. λx. n f (m f x) [n->0] 1)
(λm. λf. λx. 0 f (m f x) 1)
(λm. λf. λx. (λf.λx.x) f (m f x) 1)
(λn. λm. λf. λx. (λf.λx.x) f (m f x) [m->1])
(λf. λx. (λf.λx.x) f (1 f x))
(λf. λx. (λf.λx.x) f ((λf.λx. f x) f x))
(λx. (λf.λx.x) f ((λf.λx. f x) x))
(λx. (λx.x) ((λf.λx. f x) x))


(λf.λx. f x)
add 0 1
(λn. λm. λf. λx. n f (m f x) (λf.λx.x) (λf.λx. f x))
1
(λf.λx. f x)

add 2 2
(λn. λm. λf. λx. n f (m f x) λf.λx. f (f x) λf.λx. f (f x)) // add 2 2
λf.λx. f (f (f (f x))) // 4

λf.λx. f (f (f (f (f (f x))))) // 6

---
(λx. ((λf.(λx. x)) (f x))) // edu

1 = (λf.λx. f x)
0 = (λf.λx.x)
```

# add 0 1
```rs
(λn. (λm. (λf. (λx. n f (m f x)))))
(λn. (λm. (λf. (λx. n f (m f x))))) 0 1
(λn. (λm. (λf. (λx. n f (m f x))))) [0->n] 1
((λm. (λf. (λx. 0 f (m f x))))) 1
((λm. (λf. (λx. (λf.λx.x) f (m f x))))) [1->m]
((λm. (λf. (λx. (λf.λx.x) f (1 f x)))))
(λf. (λx. (λf.λx.x) f ((λf.λx. f x) f x)))
(λx. (λf.λx.x) ((λf.λx. f x) f x))
(λx. λf. ((λf.λx. f x) f x))
(λx. λf. (f x))
λx. λf. f x = 1
```

# add 1 1
```rs
add = (λn. (λm. (λf. (λx. n f (m f x)))))
1 = (λf.λx. f x)

(λn. (λm. (λf. (λx. n f (m f x))))) 1 1
(λn. (λm. (λf. (λx. n f (m f x))))) [n->(λf.λx. f x)] 1
(λm. (λf. (λx. (λf.λx. f x) f (m f x)))) [m->(λf.λx. f x)]
(λm. (λf. (λx. (λf. (λx. f x)) f ((λf. (λx. f x)) f x))))

(λf. (λx. (λf. (λx. f x)) f ((λf. (λx. f x)) f x)))

(λf. (λx. (λf. f)) f ((λf. (λx. f x)) f x))
(λf. λx. f ((λf. (λx. f x)) f x))
(λf. λx. f ((λf. f) f x))
(λf. λx. f (f x))
f (f x)

```

# Multiplication

```rs
mult 0 1 = 0
mult 1 2 = 2
mult 2 5 = 10
mult = λn. λm. m (add n) 0
```

# mult 0 1
```rs
(λn. λm. m (add n) 0) 0 1
(λm. m (add 0) 0) 1
1 (add 0) 0
add 0 0
0
```

# mult 1 2
```rs
(λn. λm. m (add n) 0) 1 2
(λm. m (add 1) 0) 2
2 (add 1) 0
(add 1) ((add 1) 0)
(add 1) (add 1 0)
(add 1) (1)
(add 1 1)
2

```



