-- Definimos una lista con 10 elementos
lista :: [Int]
lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

-- 1. Concatenación (++): Une dos listas
concatenacion :: [Int] -> [Int] -> [Int]
concatenacion lista1 lista2 = lista1 ++ lista2

-- 2. head y last: Obtienen el primer y último elemento
primerElemento :: [Int] -> Int
primerElemento = head

ultimoElemento :: [Int] -> Int
ultimoElemento = last

-- 3. Filtrado (filter even): Extrae los números pares
filtrarPares :: [Int] -> [Int]
filtrarPares = filter even

-- 4. Mapeo (map (^2)): Eleva cada número al cuadrado
mapearCuadrados :: [Int] -> [Int]
mapearCuadrados = map (^2)

-- Función principal para mostrar los resultados
main :: IO ()
main = do
    let otraLista = [11, 12, 13, 14, 15]
    
    -- 1. Concatenación
    putStrLn $ "Concatenación: " ++ show (concatenacion lista otraLista)
    
    -- 2. Primer y último elemento
    putStrLn $ "Primer elemento: " ++ show (primerElemento lista)
    putStrLn $ "Último elemento: " ++ show (ultimoElemento lista)
    
    -- 3. Filtrado de números pares
    putStrLn $ "Números pares: " ++ show (filtrarPares lista)
    
    -- 4. Mapeo de cuadrados
    putStrLn $ "Cuadrados: " ++ show (mapearCuadrados lista)