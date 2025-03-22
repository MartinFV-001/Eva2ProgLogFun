# **Evaluación Práctica**

## **Ejercicio 1: Análisis de Grafo No Dirigido**

Este ejercicio trata sobre un grafo no dirigido, lo que significa que las conexiones entre los nodos son bidireccionales. Si el nodo A está conectado con el nodo B, entonces B también está conectado con A.

### **Grafo:**

```
   1
  / \
 2 - 5 - 3
  \ /
   4
```

### **Descripción del Grafo:**

#### **Explicación de los Nodos:**

- **Nodo 1:** [2, 3] → El nodo 1 está conectado con los nodos 2 y 3.
- **Nodo 2:** [1, 4, 5] → El nodo 2 está conectado con los nodos 1, 4 y 5.
- **Nodo 3:** [1, 5] → El nodo 3 está conectado con los nodos 1 y 5.
- **Nodo 4:** [2, 5] → El nodo 4 está conectado con los nodos 2 y 5.
- **Nodo 5:** [2, 3, 4] → El nodo 5 está conectado con los nodos 2, 3 y 4.

### **Ejecución en Terminal:**

- ![Imagen del Grafo](https://github.com/tu-usuario/tu-repositorio/img/E1.png)

---

## **Ejercicio 2: Operaciones con Listas**

Se tiene una lista de 10 elementos, y se deben realizar diversas operaciones sobre ella.

### **Lista Inicial:**

```python
lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```

### **Operaciones a Realizar:**

#### 1. **Concatenación (++):**

La concatenación de dos listas une sus elementos.

```python
lista1 = [1, 2, 3]
lista2 = [4, 5, 6]
concatenada = lista1 + lista2
# Resultado: [1, 2, 3, 4, 5, 6]
```

#### 2. **Head y Last:**

- **Head:** Obtiene el primer elemento de la lista.

```python
head = lista[0]
# Resultado: 1
```

- **Last:** Obtiene el último elemento de la lista.

```python
last = lista[-1]
# Resultado: 10
```

#### 3. **Filtrado (filter even):**

Se extraen los números pares de la lista.

```python
pares = list(filter(lambda x: x % 2 == 0, lista))
# Resultado: [2, 4, 6, 8, 10]
```

#### 4. **Mapeo (map (^2)):**

Cada número de la lista se eleva al cuadrado.

```python
cuadrados = list(map(lambda x: x ** 2, lista))
# Resultado: [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
```

### **Ejecución en Terminal:**

- ![Imagen de las Operaciones](https://github.com/tu-usuario/tu-repositorio/img/E2.png)

---

## **Conclusión:**

- En el ejercicio 1, se presentó un grafo no dirigido con ciclos específicos que fueron analizados a partir de sus conexiones.
- En el ejercicio 2, se realizaron varias operaciones básicas con listas en Python, como concatenación, obtener el primer y último elemento, filtrar elementos pares y elevar los elementos al cuadrado.

---
