-- MARTIN FERIA VAZQUEZ N.C. 21200594
-- GAMERO SERRANO RODRIGO N.C. 21200597


import qualified Data.Map as Map
import qualified Data.Set as Set

-- Definimos un tipo para representar un nodo
type Nodo = Int

-- Definimos un tipo para representar un grafo no dirigido como un mapa de nodos y sus vecinos
type Grafo = Map.Map Nodo [Nodo]

-- Definimos el grafo no dirigido basado en el ejercicio
grafo :: Grafo
grafo = Map.fromList
    [ (1, [2, 3])  -- Nodo 1 está conectado con 2 y 3
    , (2, [1, 4, 5])  -- Nodo 2 está conectado con 1, 4 y 5
    , (3, [1, 4, 5])  -- Nodo 3 está conectado con 1, 4 y 5
    , (4, [2, 3])  -- Nodo 4 está conectado con 2 y 3
    , (5, [2, 3])  -- Nodo 5 está conectado con 2 y 3
    ]

-- Función para realizar un recorrido en profundidad (DFS) desde un nodo
dfs :: Grafo -> Nodo -> Nodo -> Set.Set Nodo -> IO [Nodo]
dfs g nodo padre visitados
    | Set.member nodo visitados = return []  -- Si el nodo ya fue visitado, no lo procesamos
    | otherwise = do
        putStrLn $ "Desde el nodo " ++ show padre ++ " visitando nodo " ++ show nodo
        let vecinos = Map.findWithDefault [] nodo g  -- Obtenemos los vecinos del nodo
            nuevosVisitados = Set.insert nodo visitados  -- Marcamos el nodo como visitado
            vecinosNoVisitados = filter (`Set.notMember` visitados) vecinos  -- Filtramos vecinos ya visitados
        recorridos <- mapM (\vecino -> dfs g vecino nodo nuevosVisitados) vecinosNoVisitados
        return (nodo : concat recorridos)

-- Función para recorrer el grafo desde cada nodo
recorrerDesdeCadaNodo :: Grafo -> IO [(Nodo, [Nodo])]
recorrerDesdeCadaNodo g = do
    let nodos = Map.keys g  -- Obtenemos todos los nodos del grafo
    mapM (\nodo -> do
        putStrLn $ "\nIniciando recorrido desde el nodo " ++ show nodo ++ "..."
        recorrido <- dfs g nodo (-1) Set.empty  -- El nodo inicial no tiene un "padre", usamos -1
        return (nodo, recorrido)
        ) nodos

-- Función para detectar ciclos en el grafo
detectarCiclos :: Grafo -> Bool
detectarCiclos g = any (\nodo -> dfsDetectarCiclo g nodo (-1) Set.empty) (Map.keys g)

-- DFS para detectar ciclos
dfsDetectarCiclo :: Grafo -> Nodo -> Nodo -> Set.Set Nodo -> Bool
dfsDetectarCiclo g nodo padre visitados
    | Set.member nodo visitados = True  -- Si el nodo ya fue visitado y no es el padre, hay un ciclo
    | otherwise =
        let vecinos = Map.findWithDefault [] nodo g  -- Obtenemos los vecinos del nodo
            nuevosVisitados = Set.insert nodo visitados  -- Marcamos el nodo como visitado
        in any (\vecino -> vecino /= padre && dfsDetectarCiclo g vecino nodo nuevosVisitados) vecinos

-- Función principal
main :: IO ()
main = do
    putStrLn "Recorridos del grafo desde cada nodo:"
    _ <- recorrerDesdeCadaNodo grafo  -- Realizamos los recorridos pero no imprimimos los resultados finales
    return ()  -- Agregamos una expresión válida al final del bloque
