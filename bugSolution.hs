The solution is to use a more flexible type signature that accommodates different numeric types using type classes such as `Fractional` or `Floating` if fractional operations are required, or potentially using `Num` with appropriate type inference.   Here's corrected code:

```haskell
apply :: (Num a) => a -> a -> a
apply x y = x + y

main :: IO ()
main = do
  print (apply 5 10) -- Works fine
  print (apply 5.2 10.5) -- Now works!
```

Alternatively, if you specifically need floating-point operations, you could use `Fractional`:

```haskell
apply :: (Fractional a) => a -> a -> a
apply x y = x + y

main :: IO ()
main = do
  print (apply 5 10) -- still works fine, using type inference
  print (apply 5.2 10.5) -- works perfectly
```

Choosing the right type class ensures that the functions are used correctly based on the operations needed for each type.  The `Num` class is suitable for many cases, but using more specific classes such as `Fractional` can be appropriate when dealing with floating point types.