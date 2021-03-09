
-- A scheme consists of 
    --questions:    a list of tuples of 2 integers representing the coefficients of a linear equation in 1 variable
    --answers :     a list of tuples of 1 floating point numbers representing the solution to linear equation in 1 variable
    
data Scheme = Scheme [(Int,Int)] [(Floating)]

assign :: Scheme -> [((Int,Int),Floating)]
-- assigns questions to answers
-- input:   a scheme containing questions and answers 
-- output:  a list describing the assignment of answers to questions

transformQuestions :: Scheme -> ([(Int,Int)] -> [(Int, Int)]) -> Scheme
-- transforms the questions -- for example by matrix multiplication
-- input:   a scheme containing questions and answers
--          a function that transforms the questions to new questions
-- output:  a scheme containing new questions and old answers

transformAnswers :: Scheme -> ([(Floating)] -> [(Floating)]) -> Scheme
-- transforms the answers -- for example by matrix multiplication
-- input:   a scheme containing questions and answers
--          a function that transforms the answers to new answers
-- output:  a scheme containing old questions and new answers

checkAssignment :: Scheme 
-> ([(Int,Int)] -> [(Int, Int)]) -- a function that transforms questions
-> ([(Floating)] -> [(Floating)]) -- a function that transforms answers
-> (Scheme -> [((Int,Int),Floating)]) -- a function that assigns answers to questions
-> [Bool] -- a list of booleans representing which assignments are still valid 
-- according to the function the same function that compares the assignments before the transformations and the assignments after the transformations

-- transforms the questions and answers and checks which assignments are still valid 
-- input:   a scheme containing questions and answers
--          a function that transforms questions
--          a function that transforms answers
--          a function that assigns new answers to new questions
-- output:  a list of booleans representing which assignments are still valid.


-- UNDER CONSTRUCTION AND NOT YET WELL THOUGHT OF

checkLocalIsomorphism :: Scheme -> Scheme -- two schemes
-> [Bool]

-- checks if the questions common to both the schemes are assigned to the same answer
-- if a question is in only one of the schemes, a true value is returned for that question
-- input :: two schemes
-- output :: a list of booleans representing if the same answer is assigned to the same question in both the schemes

areHomotopic :: Scheme -> Scheme -- two schemes whose "homotopy" is in question
-> (Scheme -> ([(Int,Int)] -> [(Int, Int)]) -> Scheme) -- a function that transform the questions, with type signature that of transformQuestions
-> (Scheme -> ([(Floating)] -> [(Floating)]) -> Scheme) ->  -- a function that transform the answers, with type signature that of transformAnswers
-> (Scheme -> [((Int,Int),Floating)]) -- a function that assigns answers to questions, with type signature that of assign
-- the transformQuestions function transforms oen of the collections of questions to get two new collection of questions
-- and the transformAnswers function transforms one of the collections of answers to get two new collection of answers
-- obtaining two new schemes -- almost but not assigned yet
-- the assign function assigns the new answers to the new questions

-> [Bool]


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

4. I have used polynomial equations in 1 variable with integer coefficients as an example, but more 
general constructions could be used.
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

