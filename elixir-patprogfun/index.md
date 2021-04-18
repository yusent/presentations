<style>
  section[id="1"] {
    justify-content: center;
  }

  section {
    justify-content: flex-start;
  }
</style>

# Patrones de Elixir Parte I: Pattern matching

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

---

# Pattern matching

Consiste en utilizar literales de tipos de datos complejos a la izquierda del operador `=`, lo cual tiene el efecto de desconstruir el valor de la derecha para realizar *matches* de sus partes.

---

# Pattern matching

Consiste en utilizar literales de tipos de datos complejos a la izquierda del operador `=`, lo cual tiene el efecto de desconstruir el valor de la derecha para realizar *matches* de sus partes.

```elixir
tuple = {"hola", "mundo", 42}
{hello, world, forty_two} = tuple
IO.inspect(hello) # "hola"
IO.inspect(world) # "mundo"
IO.inspect(forty_two) # 42
```

---

# Pattern matching

Consiste en utilizar literales de tipos de datos complejos a la izquierda del operador `=`, lo cual tiene el efecto de desconstruir el valor de la derecha para realizar *matches* de sus partes.

```elixir
tuple = {"hola", "mundo", 42}
{hello, world, forty_two} = tuple
IO.inspect(hello) # "hola"
IO.inspect(world) # "mundo"
IO.inspect(forty_two) # 42
```

Podemos entonces decir que a la izquierda del `=` se usan las literales para **desconstruir** y a la derecha para **construir**.

---

# Pattern matching

Normalmente necesitamos escribir la estructura completa del valor al que hacemos *match*.

---

# Pattern matching

Normalmente necesitamos escribir la estructura completa del valor al que hacemos *match*.

```elixir
{a, b} = {1, 2, 3} # MatchError
```

---

# Pattern matching

Normalmente necesitamos escribir la estructura completa del valor al que hacemos *match*.

```elixir
{a, b} = {1, 2, 3} # MatchError
[x, y, z] = [:a, :b] # MatchError
```

---

# Pattern matching

Normalmente necesitamos escribir la estructura completa del valor al que hacemos *match*.

```elixir
{a, b} = {1, 2, 3} # MatchError
[x, y, z] = [:a, :b] # MatchError
[val: val] = [val: 2, other_val: 3] # MatchError
```

---

# Pattern matching

Normalmente necesitamos escribir la estructura completa del valor al que hacemos *match*.

```elixir
{a, b} = {1, 2, 3} # MatchError
[x, y, z] = [:a, :b] # MatchError
[val: val] = [val: 2, other_val: 3] # MatchError
```

La excepción son los **mapas**.

---

# Pattern matching

Normalmente necesitamos escribir la estructura completa del valor al que hacemos *match*.

```elixir
{a, b} = {1, 2, 3} # MatchError
[x, y, z] = [:a, :b] # MatchError
[val: val] = [val: 2, other_val: 3] # MatchError
```

La excepción son los **mapas**.

```elixir
%{a: value} = %{a: 1, b: 2, c: 3} # value ahora vale 1
```

---

# Pattern matching

En el caso de las listas contamos con el operador `|`, el cual nos permite hacer *match* con los primeros `n` elementos de una lista individualmente y el resto como otra lista.

---

# Pattern matching

En el caso de las listas contamos con el operador `|`, el cual nos permite hacer *match* con los primeros `n` elementos de una lista individualmente y el resto como otra lista.

```elixir
[a, b, c | rest] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
IO.inspect(a) # 1
IO.inspect(b) # 2
IO.inspect(c) # 3
IO.inspect(rest) # [4, 5, 6, 7, 8, 9, 10]
```

---

# Pattern matching

La limitación de tener que escribir la estructura completa de muchos valores nos obliga a realizar asignaciones que no nos interesan.

---

# Pattern matching

La limitación de tener que escribir la estructura completa de muchos valores nos obliga a realizar asignaciones que no nos interesan.

e.g. Si quiero el segundo valor de una lista:

```elixir
[a, b | rest] = [12, 24, 36, 48, 60] # a y rest no nos interesan
```

---

# Pattern matching

La limitación de tener que escribir la estructura completa de muchos valores nos obliga a realizar asignaciones que no nos interesan.

e.g. Si quiero el segundo valor de una lista:

```elixir
[a, b | rest] = [12, 24, 36, 48, 60] # a y rest no nos interesan
```

Usamos `_` para especificar que un valor no nos interesa:

```elixir
[_, b | _] = [12, 24, 36, 48, 60]
```

---

# Pattern matching

La limitación de tener que escribir la estructura completa de muchos valores nos obliga a realizar asignaciones que no nos interesan.

e.g. Si quiero el segundo valor de una lista:

```elixir
[a, b | rest] = [12, 24, 36, 48, 60] # a y rest no nos interesan
```

Usamos `_` para especificar que un valor no nos interesa:

```elixir
[_, b | _] = [12, 24, 36, 48, 60]
```

Podemos dar nombres claros a los valores que decidimos ignorar:

```elixir
[_head, b | _rest_of_list] = [12, 24, 36, 48, 60]
```

---

# Pattern matching

La diferencia entre usar sólo `_` y prefijar un nombre con `_` es que el primero produce un error de compilación si intentamos hacer uso de la variable, mientras que en el segundo caso sólo tendremos un warning.

---

# Pattern matching

La diferencia entre usar sólo `_` y prefijar un nombre con `_` es que el primero produce un error de compilación si intentamos hacer uso de la variable, mientras que en el segundo caso sólo tendremos un warning.

```elixir
iex> _ = 12
12
iex> _
** (CompileError) iex:12: invalid use of _. "_" represents a value to be ignored
in a pattern and cannot be used in expressions
```

```elixir
iex> _twelve = 12
12
iex> _twelve
warning: the underscored variable "_twelve" is used after being set. A leading
underscore indicates that the value of the variable should be ignored. If this
is intended please rename the variable to remove the underscore
```

---

# Pattern matching

Cuando una variable se usa más de una vez en un patrón todas las referencias deben tener el mismo valor.

---

# Pattern matching

Cuando una variable se usa más de una vez en un patrón todas las referencias deben tener el mismo valor.

```elixir
iex> {x, x} = {12, 12}
{12, 12}
iex> {x, x} = {12, 13}
** (MatchError) no match of right hand side value: {12, 13}
```

---

# Operador `^`

Lo utilizamos para prefijar una variable que queremos evitar que se re-asigne.

---

# Operador `^`

Lo utilizamos para prefijar una variable que queremos evitar que se re-asigne.

```elixir
x = 12 # Se asigna a x el valor de 12
```

---

# Operador `^`

Lo utilizamos para prefijar una variable que queremos evitar que se re-asigne.

```elixir
x = 12 # Se asigna a x el valor de 12
x = 144 # Se reasigna x a 144 para cumplir la igualdad
```

---

# Operador `^`

Lo utilizamos para prefijar una variable que queremos evitar que se re-asigne.

```elixir
x = 12 # Se asigna a x el valor de 12
x = 144 # Se reasigna x a 144 para cumplir la igualdad
^x = 144 # La igualdad se cumple
```

---

# Operador `^`

Lo utilizamos para prefijar una variable que queremos evitar que se re-asigne.

```elixir
x = 12 # Se asigna a x el valor de 12
x = 144 # Se reasigna x a 144 para cumplir la igualdad
^x = 144 # La igualdad se cumple
^x = 13 # MatchError: 144 no es igual a 13 y x no se puede reasignar
```

---

# ¿Dónde más podemos usar *pattern matching*?

---

# ¿Dónde más podemos usar *pattern matching*?

Declaración de funciones:

```elixir
def my_head([head | _]), do: head
```

---

# ¿Dónde más podemos usar *pattern matching*?

Declaración de funciones:

```elixir
def my_head([head | _]), do: head

def my_tail([_ | tail]), do: tail
```

---

# ¿Dónde más podemos usar *pattern matching*?

Declaración de funciones:

```elixir
def my_head([head | _]), do: head

def my_tail([_ | tail]), do: tail

def is_adult?(%{age: age}), do: age > 18
```

---

# ¿Dónde más podemos usar *pattern matching*?

Bloques `case`:

```elixir
case x do
  %{a: 2}     -> IO.puts("x es un mapa cuya propiedad a vale 2")
  [_, 42 | _] -> IO.puts("x es una lista cuyo segundo valor es 42")
  [_, _]      -> IO.puts("x es una lista de exactamente dos elementos")
  13          -> IO.puts("x es 13")
  ^a          -> IO.puts("x vale lo mismo que la variable a")
  _           -> IO.puts("Ninguna de las anteriores")
end
```

---

# ¿Dónde más podemos usar *pattern matching*?

Bloques `with` (caso especial de `case` para evitar anidaciones):

```elixir
with {:ok, val0} <- func_that_might_fail()
     {:ok, %{a: a}} <- func_that_might_err(val0)
     {:ok, [head | _]} <- func_that_might_explode(a) do
  # Haz algo si todo tuvo éxito
end
```

---

# ¿Dónde más podemos usar *pattern matching*?

Bloques `with` (caso especial de `case` para evitar anidaciones):

```elixir
with {:ok, val0} <- func_that_might_fail()
     {:ok, %{a: a}} <- func_that_might_err(val0)
     {:ok, [head | _]} <- func_that_might_explode(a) do
  # Haz algo si todo tuvo éxito
end
```

## Continuará...
