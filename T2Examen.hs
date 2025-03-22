type Nodo = Int 
 
type Grafo = [(Nodo, [Nodo])] 
 -- Definición del grafo no dirigido 
grafoNoDirigido :: Grafo 
grafoNoDirigido = [ 
    (1, [2, 3]),  -- 1 está conectado con 2 y 3 
    (2, [1, 4, 5]),  -- 2 está conectado con 1, 4 y 5 
    (3, [1, 5]),  -- 3 está conectado con 1 y 5 
    (4, [2, 5]),  -- 4 está conectado con 2 y 5 
    (5, [2, 3, 4])  -- 5 está conectado con 2, 3 y 4 
    ] 
 -- Función para obtener los vecinos de un nodo en el grafo 
vecinos :: Grafo -> Nodo -> [Nodo] 
vecinos [] _ = [] 
vecinos ((n, ady):xs) nodo 
    | n == nodo = ady 
    | otherwise = vecinos xs nodo 
 -- Implementación de BFS 
bfs :: Grafo -> Nodo -> [Nodo] 
bfs grafo start = bfsAux [start] [] 
  where 
    bfsAux [] visitados = visitados 
    bfsAux (x:xs) visitados 
        | x `elem` visitados = bfsAux xs visitados 
        | otherwise = bfsAux (xs ++ vecinos grafo x) (visitados ++ [x]) 
 -- Función para imprimir el grafo y el recorrido BFS 
main :: IO () 
main = do 
    mapM_ print grafoNoDirigido 
    putStrLn "Recorrido BFS desde el nodo 1:" 
    print (bfs grafoNoDirigido 1)

