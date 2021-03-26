data Pool = Pool [q] [a]

class Pool p => Scheme p where
    assign :: p -> [(a,q)]
    transformQ :: p -> ([q] -> [q])
    transformA :: p -> ([a] -> [a])
    checkAssignment :: p -> ([q] -> [q]) -> ([a] -> [a])

--for functions that follow use
--example
f :: String -> String
type TypeofF = String -> String
g :: String -> TypeofF -> String