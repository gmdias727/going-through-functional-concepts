# Church encoding

# Church Numerals
Church numerals are the representations of *natural numbers* under Church encoding
```rs
Number = (Number x) => x

0 = ( Function f . Function x ) => Function x
1 = ( Function f . Function x ) => 

fold = (f, acc, l) =>
  l
  | [] => []
  | el :: tl => ()

Church a (a -> a) => (a -> a)

// Church numerals
0
let nat = (fn x) => x

1
let nat = (fn x) => nat(x)

2
let nat = (fn x) => nat(nat(x))

3
let nat = (fn x) => nat(nat(nat(x)))

4
let nat = (fn x) => nat(nat(nat(nat(x))))

n
let nat = (fn x) => nat(...nat(x))
```

# Successor

# 0
```rs
let succ = (n f x) => f(n f x)

let succ = (n f x) => f(f(n f x))

let succ(0) =>
  let succ (n f x) => n + 1
  
  let succ (fn succ x) => acc + x
  let succ (0 fn 1) => (succ(0 + 1)) => 1
```
# 1
```rs
let succ(1) => (n f x) =>   
let succ(1) => (fn acc x) => 1 + 1

let succ(1) => succ(1 + 1)
```

C4 is f(f(f(fx)))
ding ding ding dong

# Addition
We can easily perform *addition* using *Church numerals* if we realize that they do everything relative
to the value they consider zero.

```rs
// C3+4 = λf . λx . C3 f (C4 f x)
let add = (f x) => add(succ(3) + succ(4))
add = (f x) => (succ(succ(succ(x))) + succ(succ(succ(succ(x))))) 
add = (f x) => (3 + 4) 
add = (f x) => (7) 
add = (f x) => 7

succ(3) = succ(succ(succ(x))) = 3
succ(4) = succ(succ(succ(succ(x)))) = 4
```
---

# Add
We can perform addition using Church numerals
if we realize that they do everything relative to the value they consider zero

C1 is one more than C0
C4 is one more than C3

C1 represents 1 relative to C0
C4 represents 1 relative to C3

If we want to add 3 to 4 using Church numerals, we simply create a new Church numeral and use one of the summands as zero for the other:


```rs
// C3+4 
let succ = (x) => succ(x + 1)

C3 -> succ(succ(succ(x)))
C4 -> succ(succ(succ(succ(x))))

let add = (m, n) => C3 + succ(x)
let add = (m, n) => succ(succ(succ(x))) + succ(succ(succ(succ(x))))

let add = (m, n) => add(succ(succ(succ(x))), succ(succ(succ(succ(x))))) 
let add = (m, n) => add(3, 4);

---

// Example 2
// add(C4, C7)
let succ = (x) => x + 1

let succ = succ(succ(succ(x)))
let succ = (3) => 3 + 1
let succ = (3) => 4

let succ = succ(succ(succ(succ(succ(succ(x))))))
let succ = (6) => 6 + 1
let succ = (6) => 7

let add = (m, n) => 
  m -> succ(3) -> 4
  n -> succ(6) -> 7

let zero = (f, x) => x;
let number = (x) => x;
let add = (m, n) => (f, x) => n(f, m(f, x))



```

---

# Multiplication
The Church multiplication function is a function that takes two *Church numerals* as inputs and returns the *product* of the two numbers they represent.

```rs
// Without currying
let add := map x, y to (x + y)
let add = (map x y) => 
```

```rs
C2:
  let succ(2) = succ(succ(x))
  
C3:
  let succ(3) = succ(succ(succ(x)))

C6: ???
succ(3) * succ(2) ???

((λm. λn. λf. m (n f)) (λf. λx. f (f (f x))) (λf. λx. f (f (f (f x)))))

// (λm. λn. λf. m (n f))
let multiply = (λm , λn) =>

m -> C2 -> x1
n -> C3 -> x2
let multiply = (m, n) => m*n
```
<!-- Basicamente -->

```rs
succ(3) = succ(succ(succ(x)))
succ(4) = succ(succ(succ(succ(x))))

multiply(m, n) = succ(3) * succ(4) => 12

```




  