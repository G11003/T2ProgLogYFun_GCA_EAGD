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

-- Función para imprimir el grafo
main :: IO ()
main = mapM_ print grafoNoDirigido