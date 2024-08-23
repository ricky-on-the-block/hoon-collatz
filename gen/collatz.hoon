:: Perform the Collatz Sequence (3n + 1 Problem)
:: Given any positive integer n,
::   - If n is even, divide it by 2 (n = n/2)
::   - If n is odd, multiply it by 3 and add 1 (n = 3n + 1)
::   - Continue until n is 1

:: Hint for Jet (C Code)
~/  %collatz

:: Define a gate (function) that takes an unsigned integer as input
|=  n=@ud

:: Specify that this gate will return a list of unsigned integers
^-  (list @ud)

:: Initialize an empty list to store the sequence
=/  sequence  *(list @ud)

:: Start a trap (loop) for recursion
|-

:: Print the current state of the sequence (for debugging)
:: ~&  "sequence {<sequence>}"

:: Check if we've reached the end condition (n = 1)
?:  =(n 1)
  :: If so, add 1 to the sequence and reverse it
  :: (We reverse because we've been adding to the front)
  (flop [1 sequence])

:: If n is not 1, continue the sequence
%=  $
:: Add the current n to the front of the sequence
sequence  [n sequence]

:: Calculate the next value of n
n  ?:  =(0 (mod n 2))
    :: If n is even (divisible by 2 with no remainder)
    (div n 2)
    :: If n is odd
    +((mul n 3))  :: Equivalent to 3n + 1
==