-- MARTIN FERIA VAZQUEZ N.C. 21200594
-- GAMERO SERRANO RODRIGO N.C. 21200597

main :: IO ()
main = do
    -- Lista inicial con 10 elementos
    let lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    -- Duplicar la lista
    let listaDuplicada = lista ++ lista
    putStrLn $ "Lista duplicada: " ++ show listaDuplicada

    -- head y last: Obtienen el primer y último elemento
    let primerElemento = head listaDuplicada
    let ultimoElemento = last listaDuplicada
    putStrLn $ "Primer elemento: " ++ show primerElemento
    putStrLn $ "Último elemento: " ++ show ultimoElemento

    -- Filtrado (filter even): Extrae los números pares
    let pares = filter even listaDuplicada
    putStrLn $ "Números pares: " ++ show pares

    -- Mapeo (map (^2)): Eleva cada número al cuadrado
    let cuadrados = map (^2) listaDuplicada
    putStrLn $ "Números elevados al cuadrado: " ++ show cuadrados
