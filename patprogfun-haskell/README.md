<style>
section {
  justify-content: flex-start;
}

section[id="1"], section[id="2"] {
  justify-content: center;
}

ul {
  margin-bottom: 0;
}

table {
  display: table;
}

th {
  background-color: #333;
  color: #fff;
  text-align: left;
}

img {
  object-fit: contain;
  vertical-align: middle;
}

.red {
  color: #f00;
}

.transparent {
  opacity: 0;
}

.muted {
  color: #0005;
}

.note {
  color: #f00;
  font-weight: bold;
  position: absolute;
  bottom: 100px;
  right: 100px;
}
</style>

# Patrones de Programación Funcional en Haskell

[https://yusent.github.io/patprogfun-haskell.html](https://yusent.github.io/patprogfun-haskell.html)

---

| Patrón orientado a objetos | Patrón funcional |
| --- | --- |
| Single Responsability Principle | |
| Open/Closed Principle | |
| Liskov Substitution Principle | |
| Interface Segregation Principle | |
| Dependency Inversion Principle | |
| Factory Pattern | |
| Strategy Pattern | <span class="transparent">Seguro ya entendieron la idea</span> |
| Decorator Pattern | |
| Visitor Pattern | |

---

| Patrón orientado a objetos | Patrón funcional |
| --- | --- |
| Single Responsability Principle | Funciones |
| Open/Closed Principle | |
| Liskov Substitution Principle | |
| Interface Segregation Principle | |
| Dependency Inversion Principle | |
| Factory Pattern | |
| Strategy Pattern | <span class="transparent">Seguro ya entendieron la idea</span> |
| Decorator Pattern | |
| Visitor Pattern | |

---

| Patrón orientado a objetos | Patrón funcional |
| --- | --- |
| Single Responsability Principle | Funciones |
| Open/Closed Principle | Funciones |
| Liskov Substitution Principle | |
| Interface Segregation Principle | |
| Dependency Inversion Principle | |
| Factory Pattern | |
| Strategy Pattern | <span class="transparent">Seguro ya entendieron la idea</span> |
| Decorator Pattern | |
| Visitor Pattern | |

---

| Patrón orientado a objetos | Patrón funcional |
| --- | --- |
| Single Responsability Principle | Funciones |
| Open/Closed Principle | Funciones |
| Liskov Substitution Principle | También funciones |
| Interface Segregation Principle | |
| Dependency Inversion Principle | |
| Factory Pattern | |
| Strategy Pattern | <span class="transparent">Seguro ya entendieron la idea</span> |
| Decorator Pattern | |
| Visitor Pattern | |

---

| Patrón orientado a objetos | Patrón funcional |
| --- | --- |
| Single Responsability Principle | Funciones |
| Open/Closed Principle | Funciones |
| Liskov Substitution Principle | También funciones |
| Interface Segregation Principle | Funciones |
| Dependency Inversion Principle | |
| Factory Pattern | |
| Strategy Pattern | <span class="transparent">Seguro ya entendieron la idea</span> |
| Decorator Pattern | |
| Visitor Pattern | |

---

| Patrón orientado a objetos | Patrón funcional |
| --- | --- |
| Single Responsability Principle | Funciones |
| Open/Closed Principle | Funciones |
| Liskov Substitution Principle | También funciones |
| Interface Segregation Principle | Funciones |
| Dependency Inversion Principle | Funciones de nuevo |
| Factory Pattern | |
| Strategy Pattern | <span class="transparent">Seguro ya entendieron la idea</span> |
| Decorator Pattern | |
| Visitor Pattern | |

---

| Patrón orientado a objetos | Patrón funcional |
| --- | --- |
| Single Responsability Principle | Funciones |
| Open/Closed Principle | Funciones |
| Liskov Substitution Principle | También funciones |
| Interface Segregation Principle | Funciones |
| Dependency Inversion Principle | Funciones de nuevo |
| Factory Pattern | Funciones |
| Strategy Pattern | <span class="transparent">Seguro ya entendieron la idea</span> |
| Decorator Pattern | |
| Visitor Pattern | |

---

| Patrón orientado a objetos | Patrón funcional |
| --- | --- |
| Single Responsability Principle | Funciones |
| Open/Closed Principle | Funciones |
| Liskov Substitution Principle | También funciones |
| Interface Segregation Principle | Funciones |
| Dependency Inversion Principle | Funciones de nuevo |
| Factory Pattern | Funciones |
| Strategy Pattern | Seguro ya entendieron la idea |
| Decorator Pattern | |
| Visitor Pattern | |

---

| Patrón orientado a objetos | Patrón funcional |
| --- | --- |
| Single Responsability Principle | Funciones |
| Open/Closed Principle | Funciones |
| Liskov Substitution Principle | También funciones |
| Interface Segregation Principle | Funciones |
| Dependency Inversion Principle | Funciones de nuevo |
| Factory Pattern | Funciones |
| Strategy Pattern | Seguro ya entendieron la idea |
| Decorator Pattern | No esperen nada distinto |
| Visitor Pattern | |

---

| Patrón orientado a objetos | Patrón funcional |
| --- | --- |
| Single Responsability Principle | Funciones |
| Open/Closed Principle | Funciones |
| Liskov Substitution Principle | También funciones |
| Interface Segregation Principle | Funciones |
| Dependency Inversion Principle | Funciones de nuevo |
| Factory Pattern | Funciones |
| Strategy Pattern | Seguro ya entendieron la idea |
| Decorator Pattern | No esperen nada distinto |
| Visitor Pattern | Funciones |

---

# Lo que hoy les vengo manejando

- Principios Básicos de Programación Funcional
  - Funciones, Tipos y Composición

---

# Lo que hoy les vengo manejando

- Principios Básicos de Programación Funcional
  - Funciones, Tipos y Composición
- Funciones como entidades de primera clase
  - Funciones como interfaces
  - Aplicación parcial
  - Encadenamiento

---

# Lo que hoy les vengo manejando

- Principios Básicos de Programación Funcional
  - Funciones, Tipos y Composición
- Funciones como entidades de primera clase
  - Funciones como interfaces
  - Aplicación parcial
  - Encadenamiento
- Mónadas
  - Manejo de errores y Operaciones Asíncronas

---

# Lo que hoy les vengo manejando

- Principios Básicos de Programación Funcional
  - Funciones, Tipos y Composición
- Funciones como entidades de primera clase
  - Funciones como interfaces
  - Aplicación parcial
  - Encadenamiento
- Mónadas
  - Manejo de errores y Operaciones Asíncronas
- Monoides
  - Agregación de datos

---

# Lo que hoy les vengo manejando

- Principios Básicos de Programación Funcional
  - Funciones, Tipos y Composición
- Funciones como entidades de primera clase
  - Funciones como interfaces
  - Aplicación parcial
  - Encadenamiento
- Mónadas
  - Manejo de errores y Operaciones Asíncronas
- Monoides
  - Agregación de datos

<div class="note">
  Vista general (sin entrar a detalle)
</div>

---

## Las funciones son entidades de primera clase

---

## Las funciones son <s>entidades de primera clase</s> <span class="red">cosas</span>

---

## Las funciones son <s>entidades de primera clase</s> <span class="red">cosas</span>

- Se pueden almacenar en variables

---

## Las funciones son <s>entidades de primera clase</s> <span class="red">cosas</span>

- Se pueden almacenar en variables
- Se pueden pasar como argumento a una función

---

## Las funciones son <s>entidades de primera clase</s> <span class="red">cosas</span>

- Se pueden almacenar en variables
- Se pueden pasar como argumento a una función
- Se pueden regresar como resultado de una función

---

## Las funciones son <s>entidades de primera clase</s> <span class="red">cosas</span>

- Se pueden almacenar en variables
- Se pueden pasar como argumento a una función
- Se pueden regresar como resultado de una función
- Son independientes (No necesitan estar atadas a una clase u objeto)

---

## Las funciones son <s>entidades de primera clase</s> <span class="red">cosas</span>

- Se pueden almacenar en variables
- Se pueden pasar como argumento a una función
- Se pueden regresar como resultado de una función
- Son independientes (No necesitan estar atadas a una clase u objeto)

<center>
  <img src="patprogfun-haskell/images/function.png" style="height: 350px" />
</center>

<center style="margin-top: -30px">
  <small class="muted">Imagen tomada de https://mathinsight.org</small>
</center>

---

## Las funciones son <s>entidades de primera clase</s> <span class="red">cosas</span>

- Se pueden almacenar en variables
- Se pueden pasar como argumento a una función
- Se pueden regresar como resultado de una función
- Son independientes (No necesitan estar atadas a una clase u objeto)

<center>
  <img src="patprogfun-haskell/images/function.png" style="height: 350px" />
</center>

<center style="margin-top: -30px">
  <small class="muted">Imagen tomada de https://mathinsight.org</small>
</center>

<div class="note">
  Esfera -> Cubo
</div>

---

## Definición de funciones

```haskell
add a b = a + b
```

---

## Definición de funciones

```haskell
add a b = a + b
```

Opcionalmente podemos especificar una firma:
```haskell
add :: Int -> Int -> Int
add a b = a + b
```

---

## Definición de funciones

```haskell
add a b = a + b
```

Opcionalmente podemos especificar una firma:
```haskell
add :: Int -> Int -> Int
add a b = a + b
```

Usando notación lambda (función anónima):
```haskell
add = \a b -> a + b
```

---

## Definición de funciones

```haskell
add a b = a + b
```

Opcionalmente podemos especificar una firma:
```haskell
add :: Int -> Int -> Int
add a b = a + b
```

Usando notación lambda (función anónima):
```haskell
add = \a b -> a + b
```

Para aplicar una función separamos con espacio:
```haskell
add 10 2 -- Regresa 12
```

---

# Composición de funciones

<center>
  <img src="patprogfun-haskell/images/composed-functions.png" style="height: 500px" />
  <br>
  <small class="muted">Imagen tomada de https://mathinsight.org</small>
</center>

---

# Composición de funciones

<center>
  <img src="patprogfun-haskell/images/composed-functions-result.png" style="height: 500px" />
  <br>
  <small class="muted">Imagen tomada de https://mathinsight.org</small>
</center>

---

# Composición de funciones

<center>
  <img src="patprogfun-haskell/images/composed-functions-result.png" style="height: 500px" />
  <br>
  <small class="muted">Imagen tomada de https://mathinsight.org</small>
</center>

<div class="note" style="bottom: 200px">
  Esfera -> Icosidodecaedro
</div>

---

# Composición de funciones en Haskell

Utilizamos el punto para componer funciones:
```haskell
half x = x / 2

square x = x * x

halfSquare x = half (square x)

-- halfSquare puede ser definida como:
halfSquare = half . square
```
