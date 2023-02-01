```rs
(λx.y) ((λz.zz) (λw.w))
(λx.y) (zz) [z->((λw.w))]
(λx.y) ((λw.w) (λw.w))
(λx.y) ((w) (w)) [w->()] // infinite loop | Wrong

(λx.y) ((λz.zz) (λw.w))
(λx.y) (zz) [z->(λw.w)]
(λx.y) ((λw.w) (λw.w))
(λx.y) (w) [w->(λw.w)]
(λx.y) (λw.w)
(λx.y) (w) 
λx.y [x->λw.w]
y

```
(λx.y) ((λz.zz) (λw.w)) 
It try to apply itself

```rs
(λx.xx) (λx.xx)
(λx.xx) (xx[x->λx.xx])
(λx.xx) (λx.xx)
// inf loop

```

# Boolean Logic
```rs
True  = (λx.λy.x)
False = (λx.λy.y)

(λx.λy.x) a b
(((λx.λy.x) a) b)
((λx.λy.x) a) [x->a] b
((λy.a) b) [y->b]
(a b)
a

```

# AND
True  True  => True
True  False => False
False True  => False
False False => False

```rs

(λx.λy.x) => True
(λx.λy.y) => False

and = (λx.λy.xy) False
and TT = (λa.λb.ab(λx.λy.y))

My Test
(λa.λb.ab(λx.λy.y)) (λx.λy.x) (λx.λy.x)
(λa.λb.ab(λx.λy.y)) [a->(λx.λy.x)] (λx.λy.x)
(λa.λb.b (λx.λy.x) (λx.λy.y)) [b->(λx.λy.x)]
((λx.λy.x) (λx.λy.x) (λx.λy.y))
(((λx.λy.x) x) y)
(((λx.λy.x) x) y)
(x)


Answer
(λa.λb.ab(λx.λy.y)) (λx.λy.x) (λx.λy.x)
(λa.λb.ab(λx.λy.y)) [a->(λx.λy.x)] (λx.λy.x)
(λb.(λx.λy.x) b (λx.λy.y)) (λx.λy.x) [b->(λx.λy.x)]
(λx.λy.x) (λx.λy.x) (λx.λy.y)
(λy.x) [x->(λx.λy.x)] (λx.λy.y)
(λy.(λx.λy.x)(λx.λy.y))
(λx.λy.x) [y->(λx.λy.y)]
(λx.λy.x)
λx.λy.x
// True because returns x which is the first parameter


```

# AND F T
(λx.λy.x) => True
(λx.λy.y) => False

```rs
(λa.λb.ab F) F T
(λa.λb.ab (λx.λy.y)) (λx.λy.y) (λx.λy.x)
(λa.λb.ab (λx.λy.y)) [a->(λx.λy.y)] (λx.λy.x)
(λb.(λx.λy.y) b (λx.λy.y)) [b->(λx.λy.x)]
((λx.λy.y) (λx.λy.x) (λx.λy.y))
(λx.λy.y) (λx.λy.x) (λx.λy.y)
(λy.y) (λx.x) (λy.y)
(y) (x) (y)
y x y
F T F

((λx.λy.y) (λx.λy.x) (λx.λy.y))
(λx.λy.y)


```

# AND F F
(λx.λy.x) => True
(λx.λy.y) => False

```rs
(λa.λb.ab F) F F
(λa.λb.ab (λx.λy.y)) (λx.λy.y) (λx.λy.y)
(λa.λb.ab (λx.λy.y)) [a->(λx.λy.y)] (λx.λy.y)
(λb.(λx.λy.y) b (λx.λy.y)) [b->(λx.λy.y)] (λx.λy.y)
(λb.(λx.λy.y) (λx.λy.y) (λx.λy.y))
(λx.λy.y) (λx.λy.y) (λx.λy.y)
(λy.y) (λy.y) (λy.y)
(y) (y) (y)
y y => y 
F F => F

```

# NOT
(λx.λy.x) => True
(λx.λy.y) => False
T => F
F => T

```rs
(λx.x) F T
((λx.x) (λx.λy.y) (λx.λy.x))
((λx.x) [x->(λx.λy.y)] (λx.λy.x))
(λx.λy.y) (λx.λy.x)
(λy.y) (λx.x)

y x
F T

```
