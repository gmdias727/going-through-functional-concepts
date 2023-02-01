# Church numerals
```rs
ZERO = lambda s. lambda z. => z
ONE = lambda s. lambda z. => s(z)
TWO = lambda s. lambda z. => s(s(z))
THREE = lambda s. lambda z. => s(s(s(z)))

ADD = lambda x. lambda y. lambda s. lambda z. => x s (y s z)

```

# PLUS or ADD Function
```rs
ADD = lambda x. lambda y. lambda s. lambda z. => 
  x => s (y => s z)

SUCC = lambda x. lambda s. lambda z. s(x s z)

```
