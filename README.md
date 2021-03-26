# Assignments, Schemes and Homotopy

The spectrum of a Ring, allows one to build a topological structure on the Ideals of the Ring. Affine scheme is a structure that is isomorphic to the spectrum of some ring and a general scheme is a structure that is locally isomorphic to an affine scheme.

The aim of the project is to build algebraic functionality to work on the ring part of a scheme, and topological functionality to work on the topological part of a scheme. 

The ring aspect of a scheme can be used to model questions, the least one can do is implement polynomial rings. The ring operations on the questions describe how questions can be put together to form bigger question. A simple example could be to use logical AND and logical OR. One can put together boolean expressions using AND and OR, to form more complex boolean expressions. This is the algebraic perspective.

The topological aspect of a scheme can be used to model answers, the least one can do is euclidean space. The topological structure around an answer can be used to find other answers in the neighborhood. A simple example could be to change the radius of a circle with a fixed center on a two dimensional plane, to see how many points with a certain property lie inside the circle. This is the topological (or geometric) perspective.

The motivation for putting together the algebraic and the topological perspectives is the intuition that we build questions in an algebraic way by assembling anything we have and enforcing certain constraints, and we find answers by searching for similar things near something we know.

So, we can put these together to build a basis for representing data from this perspective. We can take some questions, some answers and use various assignment functions to assign answers to the questions. Different assignment functions may assign different answers to the questions, but we only select from the pool of answers and questions we have in a structure that is called "Scheme" in the project (which is not exactly but inspired from the mathematical notion of a scheme). In the mathematical terminology one could say that assignment behaves liek something of a closed nature, or that the scheme is closed under choosing.

However, we can transform questions in a scheme using functions that transform questions; and likewise we can transform the answers in a scheme using functions that transform the answers. We can implement functions that check whether new assignments are valid or acceptable. If the assignments are acceptable, we will have constructed new question and new answers with the transformations of questions and answers preserving the assignment. 

If we have a collection of transformations on the questions and a collection of transformations the answers, we have a series of question answer pairs of assigned states. We might call this collection a homotopy of the original scheme, with motivation from the idea of homotopy. 

And this allows us to work with the notion of homotopy of schemes as a way of representing data.
