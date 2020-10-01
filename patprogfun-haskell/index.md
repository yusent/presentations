<style>
section {
  justify-content: flex-start;
}

section[id="1"] {
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

.blue {
  color: #44f;
}

.transparent {
  opacity: 0;
}

.muted {
  color: #0005;
}

.chain {
  align-self: center;
  display: flex;
  align-items: center;
  justify-content: center;
}

.block {
  background-color: #ccc;
  font-weight: bold;
  padding: 2px 10px;
}

.service-block {
  background-color: #aaf;
}

.use-case-block {
  background-color: #afa;
}

.application-block {
  color: #fff;
  background-color: #9e111b;
  padding: 10px 20px;
}

.arrow {
  align-self: center;
  font-size: 100px;
  margin-top: 16px;
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

[https://yusent.github.io/slides/patprogfun-haskell](https://yusent.github.io/slides/patprogfun-haskell)

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
- Se pueden pasar como argumento a otra función

---

## Las funciones son <s>entidades de primera clase</s> <span class="red">cosas</span>

- Se pueden almacenar en variables
- Se pueden pasar como argumento a otra función
- Se pueden regresar como resultado de otra función

---

## Las funciones son <s>entidades de primera clase</s> <span class="red">cosas</span>

- Se pueden almacenar en variables
- Se pueden pasar como argumento a otra función
- Se pueden regresar como resultado de otra función
- Son independientes (No necesitan estar atadas a una clase u objeto)

---

## Las funciones son <s>entidades de primera clase</s> <span class="red">cosas</span>

- Se pueden almacenar en variables
- Se pueden pasar como argumento a otra función
- Se pueden regresar como resultado de otra función
- Son independientes (No necesitan estar atadas a una clase u objeto)

<center>
  <img src="images/function.png" style="height: 350px" />
</center>

<center style="margin-top: -30px">
  <small class="muted">Imagen tomada de https://mathinsight.org</small>
</center>

---

## Las funciones son <s>entidades de primera clase</s> <span class="red">cosas</span>

- Se pueden almacenar en variables
- Se pueden pasar como argumento a otra función
- Se pueden regresar como resultado de otra función
- Son independientes (No necesitan estar atadas a una clase u objeto)

<center>
  <img src="images/function.png" style="height: 350px" />
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
  <img src="images/composed-functions.png" style="height: 500px" />
  <br>
  <small class="muted">Imagen tomada de https://mathinsight.org</small>
</center>

---

# Composición de funciones

<center>
  <img src="images/composed-functions-result.png" style="height: 500px" />
  <br>
  <small class="muted">Imagen tomada de https://mathinsight.org</small>
</center>

---

# Composición de funciones

<center>
  <img src="images/composed-functions-result.png" style="height: 500px" />
  <br>
  <small class="muted">Imagen tomada de https://mathinsight.org</small>
</center>

<div class="note" style="bottom: 200px">
  Esfera -> Icosidodecaedro
</div>

---

# Composición de funciones

Utilizamos el punto para componer funciones:
```haskell
half x = x / 2

square x = x * x

halfSquare x = half (square x)

-- halfSquare puede ser definida como:
halfSquare = half . square
```

---

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block">Función</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">y</span>
</div>

---

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block">Función</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">y</span>
</div>

<center>
  <b class="blue">Operación de bajo nivel</b>
</center>

---

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block">Función</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">y</span>
</div>

<center>
  <b class="blue">Operación de bajo nivel</b>
</center>

<div class="chain" style="margin-right: 18px">
  <span class="blue">10</span>
  <span class="arrow">&rarr;</span>
  <div class="block">half</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">5</span>
</div>

---

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block">Función</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">y</span>
</div>

<center>
  <b class="blue">Operación de bajo nivel</b>
</center>

<div class="chain" style="margin-right: 18px">
  <span class="blue">10</span>
  <span class="arrow">&rarr;</span>
  <div class="block">half</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">5</span>
</div>

<div class="chain" style="margin: -90px 0 0 18px">
  <span class="blue">12</span>
  <span class="arrow">&rarr;</span>
  <div class="block">square</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">144</span>
</div>

---

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block">Función</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">y</span>
</div>

<center>
  <b class="blue">Operación de bajo nivel</b>
</center>

<div class="chain" style="margin-right: 18px">
  <span class="blue">10</span>
  <span class="arrow">&rarr;</span>
  <div class="block">half</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">5</span>
</div>

<div class="chain" style="margin: -90px 0 0 18px">
  <span class="blue">12</span>
  <span class="arrow">&rarr;</span>
  <div class="block">square</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">144</span>
</div>

<div class="chain" style="margin: -90px 0 0 48px">
  <span class="blue">"hola mundo"</span>
  <span class="arrow">&rarr;</span>
  <div class="block">toUpper</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">"HOLA MUNDO"</span>
</div>

---

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block">Función 1</div>
  <span class="arrow transparent">&rarr;</span>
  <div class="block transparent">Función 2</div>
  <span class="arrow transparent">&rarr;</span>
  <div class="block transparent">Función 3</div>
  <span class="arrow transparent">&rarr;</span>
  <span class="transparent">y</span>
</div>

---

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block">Función 1</div>
  <span class="arrow">&rarr;</span>
  <div class="block">Función 2</div>
  <span class="arrow transparent">&rarr;</span>
  <div class="block transparent">Función 3</div>
  <span class="arrow transparent">&rarr;</span>
  <span class="transparent">y</span>
</div>

---

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block">Función 1</div>
  <span class="arrow">&rarr;</span>
  <div class="block">Función 2</div>
  <span class="arrow">&rarr;</span>
  <div class="block">Función 3</div>
  <span class="arrow transparent">&rarr;</span>
  <span class="blue transparent">y</span>
</div>

---

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block">Función 1</div>
  <span class="arrow">&rarr;</span>
  <div class="block">Función 2</div>
  <span class="arrow">&rarr;</span>
  <div class="block">Función 3</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">y</span>
</div>

---

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block">Función 1</div>
  <span class="arrow">&rarr;</span>
  <div class="block">Función 2</div>
  <span class="arrow">&rarr;</span>
  <div class="block">Función 3</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">y</span>
</div>

<p class="arrow">&darr;</p>

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block service-block">Servicio</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">y</span>
</div>

---

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block">Función 1</div>
  <span class="arrow">&rarr;</span>
  <div class="block">Función 2</div>
  <span class="arrow">&rarr;</span>
  <div class="block">Función 3</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">y</span>
</div>

<p class="arrow">&darr;</p>

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block service-block">Servicio</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">y</span>
</div>

<div class="note">
  Como <i>"microservicio"</i> pero sin el <i>"micro"</i>
</div>

---

<div class="chain">
  <span class="blue">Person</span>
  <span class="arrow transparent">&rarr;</span>
  <div class="block transparent">getEmployer</div>
  <span class="arrow transparent">&rarr;</span>
  <div class="block transparent">getPayDay</div>
  <span class="arrow transparent">&rarr;</span>
  <div class="block transparent">isToday</div>
  <span class="arrow transparent">&rarr;</span>
  <span class="transparent">Boolean</span>
</div>

---

<div class="chain">
  <span class="blue">Person</span>
  <span class="arrow">&rarr;</span>
  <div class="block">getEmployer</div>
  <span class="arrow transparent">&rarr;</span>
  <div class="block transparent">getPayDay</div>
  <span class="arrow transparent">&rarr;</span>
  <div class="block transparent">isToday</div>
  <span class="arrow transparent">&rarr;</span>
  <span class="transparent">Boolean</span>
</div>

---

<div class="chain">
  <span class="blue">Person</span>
  <span class="arrow">&rarr;</span>
  <div class="block">getEmployer</div>
  <span class="arrow">&rarr;</span>
  <div class="block">getPayDay</div>
  <span class="arrow transparent">&rarr;</span>
  <div class="block transparent">isToday</div>
  <span class="arrow transparent">&rarr;</span>
  <span class="transparent">Boolean</span>
</div>

---

<div class="chain">
  <span class="blue">Person</span>
  <span class="arrow">&rarr;</span>
  <div class="block">getEmployer</div>
  <span class="arrow">&rarr;</span>
  <div class="block">getPayDay</div>
  <span class="arrow">&rarr;</span>
  <div class="block">isToday</div>
  <span class="arrow transparent">&rarr;</span>
  <span class="transparent">Boolean</span>
</div>

---

<div class="chain">
  <span class="blue">Person</span>
  <span class="arrow">&rarr;</span>
  <div class="block">getEmployer</div>
  <span class="arrow">&rarr;</span>
  <div class="block">getPayDay</div>
  <span class="arrow">&rarr;</span>
  <div class="block">isToday</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">Boolean</span>
</div>

---

<div class="chain">
  <span class="blue">Person</span>
  <span class="arrow">&rarr;</span>
  <div class="block">getEmployer</div>
  <span class="arrow">&rarr;</span>
  <div class="block">getPayDay</div>
  <span class="arrow">&rarr;</span>
  <div class="block">isToday</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">Boolean</span>
</div>

<p class="arrow">&darr;</p>

<div class="chain">
  <span class="blue transparent">Yus</span>
  <span class="arrow transparent">&rarr;</span>
  <div class="block service-block">shouldTransferMoney</div>
  <span class="arrow transparent">&rarr;</span>
  <span class="transparent">False</span>
</div>

---

<div class="chain">
  <span class="blue">Person</span>
  <span class="arrow">&rarr;</span>
  <div class="block">getEmployer</div>
  <span class="arrow">&rarr;</span>
  <div class="block">getPayDay</div>
  <span class="arrow">&rarr;</span>
  <div class="block">isToday</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">Boolean</span>
</div>

<p class="arrow">&darr;</p>

<div class="chain">
  <span class="blue">Yus</span>
  <span class="arrow">&rarr;</span>
  <div class="block service-block">shouldTransferMoney</div>
  <span class="arrow transparent">&rarr;</span>
  <span class="transparent">False</span>
</div>

---

<div class="chain">
  <span class="blue">Person</span>
  <span class="arrow">&rarr;</span>
  <div class="block">getEmployer</div>
  <span class="arrow">&rarr;</span>
  <div class="block">getPayDay</div>
  <span class="arrow">&rarr;</span>
  <div class="block">isToday</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">Boolean</span>
</div>

<p class="arrow">&darr;</p>

<div class="chain">
  <span class="blue">Yus</span>
  <span class="arrow">&rarr;</span>
  <div class="block service-block">shouldTransferMoney</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">False</span>
</div>

<div class="note" style="font-size: 50px">
  &#9785;
</div>

---

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block service-block">Servicio 1</div>
  <span class="arrow transparent">&rarr;</span>
  <div class="block service-block transparent">Servicio 2</div>
  <span class="arrow transparent">&rarr;</span>
  <div class="block service-block transparent">Servicio 3</div>
  <span class="arrow transparent">&rarr;</span>
  <span class="transparent">y</span>
</div>

---

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block service-block">Servicio 1</div>
  <span class="arrow">&rarr;</span>
  <div class="block service-block">Servicio 2</div>
  <span class="arrow transparent">&rarr;</span>
  <div class="block service-block transparent">Servicio 3</div>
  <span class="arrow transparent">&rarr;</span>
  <span class="transparent">y</span>
</div>

---

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block service-block">Servicio 1</div>
  <span class="arrow">&rarr;</span>
  <div class="block service-block">Servicio 2</div>
  <span class="arrow">&rarr;</span>
  <div class="block service-block">Servicio 3</div>
  <span class="arrow transparent">&rarr;</span>
  <span class="transparent">y</span>
</div>

---

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block service-block">Servicio 1</div>
  <span class="arrow">&rarr;</span>
  <div class="block service-block">Servicio 2</div>
  <span class="arrow">&rarr;</span>
  <div class="block service-block">Servicio 3</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">y</span>
</div>

---

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block service-block">Servicio 1</div>
  <span class="arrow">&rarr;</span>
  <div class="block service-block">Servicio 2</div>
  <span class="arrow">&rarr;</span>
  <div class="block service-block">Servicio 3</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">y</span>
</div>

<p class="arrow">&darr;</p>

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block use-case-block">Caso de uso</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">y</span>
</div>

---

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block use-case-block">Caso de uso 1</div>
  <span class="arrow transparent">&rarr;</span>
  <div class="block use-case-block transparent">Caso de uso 2</div>
  <span class="arrow transparent">&rarr;</span>
  <div class="block use-case-block transparent">Caso de uso 3</div>
  <span class="arrow transparent">&rarr;</span>
  <span class="transparent">y</span>
</div>

---

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block use-case-block">Caso de uso 1</div>
  <span class="arrow">&rarr;</span>
  <div class="block use-case-block">Caso de uso 2</div>
  <span class="arrow transparent">&rarr;</span>
  <div class="block use-case-block transparent">Caso de uso 3</div>
  <span class="arrow transparent">&rarr;</span>
  <span class="transparent">y</span>
</div>

---

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block use-case-block">Caso de uso 1</div>
  <span class="arrow">&rarr;</span>
  <div class="block use-case-block">Caso de uso 2</div>
  <span class="arrow">&rarr;</span>
  <div class="block use-case-block">Caso de uso 3</div>
  <span class="arrow transparent">&rarr;</span>
  <span class="transparent">y</span>
</div>

---

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block use-case-block">Caso de uso 1</div>
  <span class="arrow">&rarr;</span>
  <div class="block use-case-block">Caso de uso 2</div>
  <span class="arrow">&rarr;</span>
  <div class="block use-case-block">Caso de uso 3</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">y</span>
</div>

---

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block use-case-block">Caso de uso 1</div>
  <span class="arrow">&rarr;</span>
  <div class="block use-case-block">Caso de uso 2</div>
  <span class="arrow">&rarr;</span>
  <div class="block use-case-block">Caso de uso 3</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">y</span>
</div>

<p class="arrow">&darr;</p>

<div class="chain">
  <span class="blue">x</span>
  <span class="arrow">&rarr;</span>
  <div class="block application-block"><span>Aplicación</span></div>
  <span class="arrow">&rarr;</span>
  <span class="blue">y</span>
</div>

---

<div class="chain">
  <span class="blue">HTTP Request</span>
  <span class="arrow">&rarr;</span>
  <div class="block use-case-block">Autenticación</div>
  <span class="arrow">&rarr;</span>
  <div class="block use-case-block">...</div>
  <span class="arrow">&rarr;</span>
  <div class="block use-case-block">Formato</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">HTTP Response</span>
</div>

<p class="arrow">&darr;</p>

<div class="chain">
  <span class="blue">HTTP Request</span>
  <span class="arrow">&rarr;</span>
  <div class="block application-block">Aplicación WEB</div>
  <span class="arrow">&rarr;</span>
  <span class="blue">HTTP Response</span>
</div>
