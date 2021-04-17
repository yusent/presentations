<style>
  section[id="1"] {
    justify-content: center;
  }

  section {
    justify-content: flex-start;
  }
</style>

# Patrones de programación funcional en Elixir

---

# Operador `=`

En lenguajes como JavaScript, Python, Ruby, etc. es utilizado para **asignar** ó **re-asignar** un valor a una variable

---

# Operador `=`

En lenguajes como JavaScript, Python, Ruby, etc. es utilizado para **asignar** ó **re-asignar** un valor a una variable

```javascript
var a = 1;
a = 2; // El valor de "a" ahora es 2
```

---

# Operador `=`

En lenguajes como JavaScript, Python, Ruby, etc. es utilizado para **asignar** ó **re-asignar** un valor a una variable

```javascript
var a = 1;
a = 2; // El valor de "a" ahora es 2
```

En **Elixir** se usa para hacer **match**

---

# Operador `=`

En lenguajes como JavaScript, Python, Ruby, etc. es utilizado para **asignar** ó **re-asignar** un valor a una variable

```javascript
var a = 1;
a = 2; // El valor de "a" ahora es 2
```

En **Elixir** se usa para hacer **match**

```elixir
a = 1
a = 2 # El valor de "a" ahora es 2
```

---

# Operador `=`

En lenguajes como JavaScript, Python, Ruby, etc. es utilizado para **asignar** ó **re-asignar** un valor a una variable

```javascript
var a = 1;
a = 2; // El valor de "a" ahora es 2
```

En **Elixir** se usa para hacer **match**

```elixir
a = 1
a = 2 # El valor de "a" ahora es 2
```

¿A poco no ven la diferencia?

---

# Operador `=`

En Elixir estamos diciendo *"Quiero que lo de la izquierda sea igual a lo de la derecha"*, lo cual permite que tengamos expresiones como:

---

# Operador `=`

En Elixir estamos diciendo *"Quiero que lo de la izquierda sea igual a lo de la derecha"*, lo cual permite que tengamos expresiones como:

- `a = 1`

---

# Operador `=`

En Elixir estamos diciendo *"Quiero que lo de la izquierda sea igual a lo de la derecha"*, lo cual permite que tengamos expresiones como:

- `a = 1`: En este caso puede satisfacer la igualdad realizando una asignación

---

# Operador `=`

En Elixir estamos diciendo *"Quiero que lo de la izquierda sea igual a lo de la derecha"*, lo cual permite que tengamos expresiones como:

- `a = 1`: En este caso puede satisfacer la igualdad realizando una asignación
- `1 = a`

---

# Operador `=`

En Elixir estamos diciendo *"Quiero que lo de la izquierda sea igual a lo de la derecha"*, lo cual permite que tengamos expresiones como:

- `a = 1`: En este caso puede satisfacer la igualdad realizando una asignación
- `1 = a`
  - En este caso hay 3 posibilidades:

---

# Operador `=`

En Elixir estamos diciendo *"Quiero que lo de la izquierda sea igual a lo de la derecha"*, lo cual permite que tengamos expresiones como:

- `a = 1`: En este caso puede satisfacer la igualdad realizando una asignación
- `1 = a`
  - En este caso hay 3 posibilidades:
    - `a` no ha sido declarada previamente: Se lanza una excepción en tiempo de compilación

---

# Operador `=`

En Elixir estamos diciendo *"Quiero que lo de la izquierda sea igual a lo de la derecha"*, lo cual permite que tengamos expresiones como:

- `a = 1`: En este caso puede satisfacer la igualdad realizando una asignación
- `1 = a`
  - En este caso hay 3 posibilidades:
    - `a` no ha sido declarada previamente: Se lanza una excepción en tiempo de compilación
    - `a` vale `1`: No se tiene que hacer nada dado que la igualdad es correcta

---

# Operador `=`

En Elixir estamos diciendo *"Quiero que lo de la izquierda sea igual a lo de la derecha"*, lo cual permite que tengamos expresiones como:

- `a = 1`: En este caso puede satisfacer la igualdad realizando una asignación
- `1 = a`
  - En este caso hay 3 posibilidades:
    - `a` no ha sido declarada previamente: Se lanza una excepción en tiempo de compilación
    - `a` vale `1`: No se tiene que hacer nada dado que la igualdad es correcta
    - `a` no vale `1`: Se lanza una excepción en tiempo de ejecución dado que no se puede satisfacer la igualdad

---

# Operador `=`

Cuando se realiza una asignación esta sólo afecta al scope actual

---

# Operador `=`

Cuando se realiza una asignación esta sólo afecta al scope actual

```elixir
a = 1

(fn ->
  a = 2
  IO.inspect(a) # Imprime "2"
end).()

IO.inspect(a) # Imprime 1
```

---

# Operador `=`

En JavaScript podemos calcular la suma de los elementos de una lista así:

```javascript
const list = [1, 2, 3, 4];
let sum = 0;

for (const num of list) {
  sum = sum + num;
}

console.log(sum) // Imprime 10
```

---

# Operador `=`

En Elixir podemos usar la misma estructura:

```elixir
list = [1, 2, 3, 4]
sum = 0

for num <- list do
  sum = sum + num # Esta asignación sólo afecta el scope dentro del for loop
end

IO.inspect(sum) # Imprime 0
```

---

# Operador `=`

Tenemos que recurrir al concepto de recursión para resolver este problema:

```elixir
defmodule Adder do
  def sum(list), do: _sum(0, list)

  defp _sum(acc, [num | rest]), do: _sum(acc + num, rest)

  defp _sum(acc, []), do: acc
end

list = [1, 2, 3, 4]
sum = Adder.sum(list)
IO.inspect(sum) # Imprime 10
```

---

# Operador `=`

Otra opción es utilizar los módulos de la librería estándar que ya resuelven gran parte de los problemas comunes:

```elixir
list = [1, 2, 3, 4]
sum = Enum.reduce(list, 0, fn num, acc -> num + acc end)
IO.inspect(sum) # Imprime 10
```
