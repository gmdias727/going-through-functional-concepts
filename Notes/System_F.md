# System F
# Symbols
τ = Tau
λ = Lambda
Ʌ = Capital Lambda

## Syntax 
```rust
τ ::= a
    | (all a τ)
    | (-> τ τ) 

e ::= x
    | (λ x τ e)
    | (ap e e)
    | (Ʌ a e)
    | (Ap e τ)
```

## Natural numbers
The natural numbers can be defined as functions that iterate a function. In particular
define type **Nat** to (all a (-> (-> a a) (-> a a)))

```rs
(all a (-> (-> a a) (-> a a)))
C0 = (Ʌa (λf (-> a a) (λx a x)))
C1 = (Ʌa (λf (-> a a) (λx a (ap f x))))
C2 = (Ʌa (λf (-> a a) (λx a (ap f (ap f x)))))
```

## Booleans
The Booleans can be defined as their own elimination rule. In particular...

```rs
True  = (Ʌa. (λx. a (λy. a x)))
False = (Ʌa. (λx. a (λy. a y)))
```

