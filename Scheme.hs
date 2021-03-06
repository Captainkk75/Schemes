
-- A scheme consists of 
    --questions:    a list of tuples of 2 integers representing the coefficients of a linear equation in 1 variable
    --answers :     a list of tuples of 1 integer representing the solution to linear equation in 1 variable
data Pool = Pool [(Int,Int)] [(Floating)]

assign :: Pool a => a -> [((Int,Int),Floating)]
-- assigns questions to answers
-- input:   a pool containing questions and answers 
-- output:  a list describing the assignment of answers to questions

transformQuestions :: Pool a => a -> ([(Int,Int)] -> [(Int, Int)]) -> a
-- transforms the questions -- for example by matrix multiplication
-- input:   a pool containing questions and answers
--          a function that transforms the questions to new questions
-- output:  a pool containing new questions and old answers

transformAnswers :: Pool a => a -> ([(Floating)] -> [(Floating)]) -> a
-- transforms the answers -- for example by matrix multiplication
-- input:   a pool containing questions and answers
--          a function that transforms the answers to new answers
-- output:  a pool containing old questions and new answers

checkAssignment :: Pool a => a -> ([(Int,Int)] -> [(Int, Int)]) -> ([(Floating)] -> [(Floating)]) -> (a -> [((Int,Int),Floating)]) -> [Bool]
-- transforms the questions and asnwers and checks which assignments are valid 
-- input:   a pool containing questions and answers
--          a function that transforms questions
--          a function that transforms answers
--          a function that assigns new answers to new questions
-- output:  a list of booleans representing which assignments are still valid.

-- Comments
{-
What I have in mind is:
1. Implementing the notion of Schemes from Algebraic Geometry; which loosely speaking can be viewed as
a way of assigning solutions to problems (example: solutions of polynomial equations)
in a way that one has a topological structure on the answers; which is sort of like saying that one is
able to use one answer to understand another (they are relatable)

2. Implementing the notion of Homotopy from Algebraic Topology (or just Topology) ; which I am
interested in using as a way to transform the questions and the answers

3. Combining the two ideas; I am thinking of a way to transform questions and answers that I have
(which may be polynomials and their solutions, or something else) obtain new questions and answers,
and check if the new assignment is homotopic to the old assignment; (which questions and answers are
still assigned to each other). If something like this can be implemented, one could discover new
questions to new answers (for example extrapolate with the data one has).
-}

-- Questions
{-
1. Can something like this be implemented in a useful way or am I just being silly? It is really cool 
that at least one can describe the idea in terms of type signature in Haskell.

2. Has anybody worked on something like this?
-}

-- More comments
{-
I am interested in using ideas from Algebraic Geometry, Algebraic Topology, and ideas of the likes
in computation. I feel that ideas in pure mathematics have great power of representation, and might
be ineteresting to use in computation (other than just checking proofs).
-}

