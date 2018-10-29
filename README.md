# PlAssignment2

Assign2 Due 11:59PM September 28

Pick three languages for this assignment. At least one of the languages you pick has to be statically typed and at least one has to be dynamically typed. At least one of the languages you pick should not be the one you have already used in assignment 1. All the languages you pick have to support tail call optimization natively, that is not through extensions. 

Start with a build file and a canary test—a silly test that asserts that true is true. This helps us to know that the environment, tools, and build files are setup properly.

Now to the problem at hand.

Fibonacci series is the number sequence

1, 1, 2, 3, 5, 8, 13, 21, ...

Given a number n, the series is defined as

F(n) = F(n-1) + F(n-2) where

F(0) is 1 and F(1) is 1.

Assume that n is >= 0.

Given a number n, write functions to return the Fibonacci series until that position n, using:

1. an iterative procedure and process

2. a recursive procedure and process

3. a recursive procedure with an iterative process