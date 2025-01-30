# Haskell Type Error: Polymorphic Function with Restrictive Type Signature

This repository demonstrates a common Haskell type error related to polymorphic functions and numeric types.  The `bug.hs` file contains code that attempts to use a polymorphic function with a type signature that is too restrictive. This prevents the function from working with different numeric types like `Int` and `Double` simultaneously.

The `bugSolution.hs` file provides a corrected version of the code, which addresses this type error and allows for flexible handling of numeric types.

This example highlights the importance of carefully considering type signatures when working with polymorphic functions in Haskell.  Overly restrictive signatures can lead to unexpected type errors and limit the versatility of your code.