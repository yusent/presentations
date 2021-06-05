<style>
  section[id="1"],
  section[id="97"] {
    align-items: center;
    justify-content: center;
  }

  section[id="47"],
  section[id="48"],
  section[id="49"],
  section[id="95"],
  section[id="96"] {
    align-items: center;
  }

  section {
    justify-content: flex-start;
  }
</style>

# Big O Notation

---

# Big O Notation - ¿De qué se trata?

---

# Big O Notation - ¿De qué se trata?

Imaginen que tenemos varias implementaciones de la misma función...

---

# Big O Notation - ¿De qué se trata?

Imaginen que tenemos varias implementaciones de la misma función...

¿Cómo saben cuál de ellas es mejor?

---

# Big O Notation - ¿De qué se trata?

Imaginen que tenemos varias implementaciones de la misma función...

¿Cómo saben cuál de ellas es mejor?

¿Qué significa **"mejor"**?

---

# Big O Notation - ¿De qué se trata?

Imaginen que tenemos varias implementaciones de la misma función...

¿Cómo saben cuál de ellas es mejor?

¿Qué significa **"mejor"**?

¿Que sea más **rápida**?

---

# Big O Notation - ¿De qué se trata?

Imaginen que tenemos varias implementaciones de la misma función...

¿Cómo saben cuál de ellas es mejor?

¿Qué significa **"mejor"**?

¿Que sea más **rápida**?

¿Que use menos **memoria**?

---

# Big O Notation - ¿De qué se trata?

Imaginen que tenemos varias implementaciones de la misma función...

¿Cómo saben cuál de ellas es mejor?

¿Qué significa **"mejor"**?

¿Que sea más **rápida**?

¿Que use menos **memoria**?

¿Que sea más **legible**?

---

# Big O Notation - ¿De qué se trata?

Imaginen que tenemos varias implementaciones de la misma función...

¿Cómo saben cuál de ellas es mejor?

¿Qué significa **"mejor"**?

¿Que sea más **rápida**?

¿Que use menos **memoria**?

¿Que sea más **legible**?

¿Que sea más **corta**?

---

# Big O Notation - ¿De qué se trata?

Imaginen que tenemos varias implementaciones de la misma función...

¿Cómo saben cuál de ellas es mejor?

¿Qué significa **"mejor"**?

¿Que sea más **rápida**? <b style="color: #00d">← Complejidad de tiempo (Time Complexity)</b>

¿Que use menos **memoria**?

¿Que sea más **legible**?

¿Que sea más **corta**?

---

# Big O Notation - ¿De qué se trata?

Imaginen que tenemos varias implementaciones de la misma función...

¿Cómo saben cuál de ellas es mejor?

¿Qué significa **"mejor"**?

¿Que sea más **rápida**? <b style="color: #00d">← Complejidad de tiempo (Time Complexity)</b>

¿Que use menos **memoria**? <b style="color: #00d">← Complejidad de espacio (Space Complexity)</b>

¿Que sea más **legible**?

¿Que sea más **corta**?

---

# Big O Notation - ¿Por qué nos importa?

---

# Big O Notation - ¿Por qué nos importa?

- Es importante tener un vocabulario preciso para hablar del desempeño de nuestro código

---

# Big O Notation - ¿Por qué nos importa?

- Es importante tener un vocabulario preciso para hablar del desempeño de nuestro código
- Es útil para analizar ventajas y desventajas entre distintos enfoques

---

# Big O Notation - ¿Por qué nos importa?

- Es importante tener un vocabulario preciso para hablar del desempeño de nuestro código
- Es útil para analizar ventajas y desventajas entre distintos enfoques
- Si tenemos un programa lento nos ayuda a identificar las partes ineficiente que podemos mejorar

---

# Big O Notation - ¿Por qué nos importa?

- Es importante tener un vocabulario preciso para hablar del desempeño de nuestro código
- Es útil para analizar ventajas y desventajas entre distintos enfoques
- Si tenemos un programa lento nos ayuda a identificar las partes ineficiente que podemos mejorar
- **Es un tema común en entrevistas de trabajo** 😱

---

# ¿Por qué no usamos *timers* para medir rapidez?

---

# ¿Por qué no usamos *timers* para medir rapidez?

```javascript
const t0 = new Date();
```

---

# ¿Por qué no usamos *timers* para medir rapidez?

```javascript
const t0 = new Date();
myFunc();
```

---

# ¿Por qué no usamos *timers* para medir rapidez?

```javascript
const t0 = new Date();
myFunc();
const t1 = new Date();
```

---

# ¿Por qué no usamos *timers* para medir rapidez?

```javascript
const t0 = new Date();
myFunc();
const t1 = new Date();
console.log(`Tardó ${(t1 - t0) / 1000} segundos`);
```

---

# ¿Por qué no usamos *timers* para medir rapidez?

```javascript
const t0 = new Date();
myFunc();
const t1 = new Date();
console.log(`Tardó ${(t1 - t0) / 1000} segundos`);
```

¿Cuál es el problema? 🤷

---

# ¿Por qué no usamos *timers* para medir rapidez?

```javascript
const t0 = new Date();
myFunc();
const t1 = new Date();
console.log(`Tardó ${(t1 - t0) / 1000} segundos`);
```

¿Cuál es el problema? 🤷

Diferentes computadoras registrarán diferentes tiempos

---

# ¿Por qué no usamos *timers* para medir rapidez?

```javascript
const t0 = new Date();
myFunc();
const t1 = new Date();
console.log(`Tardó ${(t1 - t0) / 1000} segundos`);
```

¿Cuál es el problema? 🤷

~~Diferentes computadoras registrarán diferentes tiempos~~

**La misma computadora registrará distintos tiempos** 😩

---

# ¿Por qué no usamos *timers* para medir rapidez?

```javascript
const t0 = new Date();
myFunc();
const t1 = new Date();
console.log(`Tardó ${(t1 - t0) / 1000} segundos`);
```

¿Cuál es el problema? 🤷

~~Diferentes computadoras registrarán diferentes tiempos~~

**La misma computadora registrará distintos tiempos** 😩

Esto sin contar que que para algoritmos muy rápidos tendremos un problema de precisión

---

# ¿Entonces qué medimos?

---

# ¿Entonces qué medimos?

El número de operaciones que realiza la computadora al ejecutar nuestro algoritmo

---

# ¿Entonces qué medimos?

El número de operaciones que realiza la computadora al ejecutar nuestro algoritmo

e.g. una función que sume todos los números enteros de 1 a *n*

---

# ¿Entonces qué medimos?

El número de operaciones que realiza la computadora al ejecutar nuestro algoritmo

e.g. una función que sume todos los números enteros de 1 a *n*

```javascript
function addUpTo(n) {
  let total = 0;
  for (let i = 1; i <= n; i++)
    total += i;
  return total;
}
```

---

# ¿Entonces qué medimos?

El número de operaciones que realiza la computadora al ejecutar nuestro algoritmo

e.g. una función que sume todos los números enteros de 1 a *n*

```javascript
function addUpTo(n) {
  let total = 0; // 1 asignación
  for (let i = 1; i <= n; i++)
    total += i;
  return total;
}
```

---

# ¿Entonces qué medimos?

El número de operaciones que realiza la computadora al ejecutar nuestro algoritmo

e.g. una función que sume todos los números enteros de 1 a *n*

```javascript
function addUpTo(n) {
  let total = 0; // 1 asignación
  for (let i = 1; i <= n; i++) // 1 asignación
    total += i;
  return total;
}
```

---

# ¿Entonces qué medimos?

El número de operaciones que realiza la computadora al ejecutar nuestro algoritmo

e.g. una función que sume todos los números enteros de 1 a *n*

```javascript
function addUpTo(n) {
  let total = 0; // 1 asignación
  for (let i = 1; i <= n; i++) // 1 asignación, n comparaciones
    total += i;
  return total;
}
```

---

# ¿Entonces qué medimos?

El número de operaciones que realiza la computadora al ejecutar nuestro algoritmo

e.g. una función que sume todos los números enteros de 1 a *n*

```javascript
function addUpTo(n) {
  let total = 0; // 1 asignación
  for (let i = 1; i <= n; i++) // 1 asignación, n comparaciones, n sumas
    total += i;
  return total;
}
```

---

# ¿Entonces qué medimos?

El número de operaciones que realiza la computadora al ejecutar nuestro algoritmo

e.g. una función que sume todos los números enteros de 1 a *n*

```javascript
function addUpTo(n) {
  let total = 0; // 1 asignación
  for (let i = 1; i <= n; i++) // 1 asignación, n comparaciones, n sumas, n asignaciones
    total += i;
  return total;
}
```

---

# ¿Entonces qué medimos?

El número de operaciones que realiza la computadora al ejecutar nuestro algoritmo

e.g. una función que sume todos los números enteros de 1 a *n*

```javascript
function addUpTo(n) {
  let total = 0; // 1 asignación
  for (let i = 1; i <= n; i++) // 1 asignación, n comparaciones, n sumas, n asignaciones
    total += i; // n sumas, n asignaciones
  return total;
}
```

---

# ¿Entonces qué medimos?

El número de operaciones que realiza la computadora al ejecutar nuestro algoritmo

e.g. una función que sume todos los números enteros de 1 a *n*

```javascript
function addUpTo(n) {
  let total = 0; // 1 asignación
  for (let i = 1; i <= n; i++) // 1 asignación, n comparaciones, n sumas, n asignaciones
    total += i; // n sumas, n asignaciones
  return total;
} // En total (5n + 2) operaciones
```

---

# ¿Entonces qué medimos?

El número de operaciones que realiza la computadora al ejecutar nuestro algoritmo

e.g. una función que sume todos los números enteros de 1 a *n*

```javascript
function addUpTo(n) {
  let total = 0; // 1 asignación
  for (let i = 1; i <= n; i++) // 1 asignación, n comparaciones, n sumas, n asignaciones
    total += i; // n sumas, n asignaciones
  return total;
} // En total (5n + 2) operaciones
```

algoritmo alternativo:

```javascript
function addUpTo(n) {
  return n * (n + 1) / 2;
}
```

---

# ¿Entonces qué medimos?

El número de operaciones que realiza la computadora al ejecutar nuestro algoritmo

e.g. una función que sume todos los números enteros de 1 a *n*

```javascript
function addUpTo(n) {
  let total = 0; // 1 asignación
  for (let i = 1; i <= n; i++) // 1 asignación, n comparaciones, n sumas, n asignaciones
    total += i; // n sumas, n asignaciones
  return total;
} // En total (5n + 2) operaciones
```

algoritmo alternativo:

```javascript
function addUpTo(n) {
  return n * (n + 1) / 2; // 1 suma, 1 multiplicación, 1 división
}
```

---

# ¿Entonces qué medimos?

El número de operaciones que realiza la computadora al ejecutar nuestro algoritmo

e.g. una función que sume todos los números enteros de 1 a *n*

```javascript
function addUpTo(n) {
  let total = 0; // 1 asignación
  for (let i = 1; i <= n; i++) // 1 asignación, n comparaciones, n sumas, n asignaciones
    total += i; // n sumas, n asignaciones
  return total;
} // En total (5n + 2) operaciones
```

algoritmo alternativo:

```javascript
function addUpTo(n) {
  return n * (n + 1) / 2; // 1 suma, 1 multiplicación, 1 división
} // En total 3 operaciones
```

---

# Contar operaciones es difícil

---

# Contar operaciones es difícil

Dependiendo del criterio podríamos sólo querer contar cierto tipo de operaciones

---

# Contar operaciones es difícil

Dependiendo del criterio podríamos sólo querer contar cierto tipo de operaciones
- ¿Deberíamos contar el `return`?

---

# Contar operaciones es difícil

Dependiendo del criterio podríamos sólo querer contar cierto tipo de operaciones
- ¿Deberíamos contar el `return`?
- ¿Por qué no contamos el hecho de usar un *for loop* como una operación?

---

# Contar operaciones es difícil

Dependiendo del criterio podríamos sólo querer contar cierto tipo de operaciones
- ¿Deberíamos contar el `return`?
- ¿Por qué no contamos el hecho de usar un *for loop* como una operación?
- Si la asignación y la suma se hacen en la misma instrucción ¿no deberían contar como 1 sóla operación?

---

# Contar operaciones es difícil

Dependiendo del criterio podríamos sólo querer contar cierto tipo de operaciones
- ¿Deberíamos contar el `return`?
- ¿Por qué no contamos el hecho de usar un *for loop* como una operación?
- Si la asignación y la suma se hacen en la misma instrucción ¿no deberían contar como 1 sóla operación?
- El resultado de analizar el primer ejemplo podría variar desde `2n` hasta `5n + 3`

---

# Contar operaciones es difícil

Dependiendo del criterio podríamos sólo querer contar cierto tipo de operaciones
- ¿Deberíamos contar el `return`?
- ¿Por qué no contamos el hecho de usar un *for loop* como una operación?
- Si la asignación y la suma se hacen en la misma instrucción ¿no deberían contar como 1 sóla operación?
- El resultado de analizar el primer ejemplo podría variar desde `2n` hasta `5n + 3`

**Lo que sí sabemos es que el resultado crece en proporción a `n` para el primer ejemplo y que es constante para el segundo**

---

# Introducing... Big O

![](https://media.giphy.com/media/l2Jed5EgWFfsKOaQM/giphy.gif)

---

# Introducing... Big O

![](https://media.giphy.com/media/l2Jed5EgWFfsKOaQM/giphy.gif)

**Una manera formal de contar al tanteo** 🙃

---

# Introducing... Big O

![](https://media.giphy.com/media/l2Jed5EgWFfsKOaQM/giphy.gif)

**Una manera formal de contar al tanteo** 🙃

Expresa cómo el tiempo de ejecución crece en función del crecimiento del *input*

---

# Definición semi-formal

Decimos que un algoritmo es `O(f(n))` si el número de operaciones que la computadora tiene que realizar es eventualmente menos que `f(n)` multiplicado por una constante, conforme `n` incrementa

---

# Definición semi-formal

Decimos que un algoritmo es `O(f(n))` si el número de operaciones que la computadora tiene que realizar es eventualmente menos que `f(n)` multiplicado por una constante, conforme `n` incrementa

- **f(n)** puede ser:
  - Lineal: **f(n) = n**

---

# Definición semi-formal

Decimos que un algoritmo es `O(f(n))` si el número de operaciones que la computadora tiene que realizar es eventualmente menos que `f(n)` multiplicado por una constante, conforme `n` incrementa

- **f(n)** puede ser:
  - Lineal: **f(n) = n**
  - Cuadrática: <b>f(n) = n<sup>2</sup></b>

---

# Definición semi-formal

Decimos que un algoritmo es `O(f(n))` si el número de operaciones que la computadora tiene que realizar es eventualmente menos que `f(n)` multiplicado por una constante, conforme `n` incrementa

- **f(n)** puede ser:
  - Lineal: **f(n) = n**
  - Cuadrática: <b>f(n) = n<sup>2</sup></b>
  - Constante: **f(n) = 1**

---

# Definición semi-formal

Decimos que un algoritmo es `O(f(n))` si el número de operaciones que la computadora tiene que realizar es eventualmente menos que `f(n)` multiplicado por una constante, conforme `n` incrementa

- **f(n)** puede ser:
  - Lineal: **f(n) = n**
  - Cuadrática: <b>f(n) = n<sup>2</sup></b>
  - Constante: **f(n) = 1**
  - Logarítmica: **f(n) = log n**

---

# Definición semi-formal

Decimos que un algoritmo es `O(f(n))` si el número de operaciones que la computadora tiene que realizar es eventualmente menos que `f(n)` multiplicado por una constante, conforme `n` incrementa

- **f(n)** puede ser:
  - Lineal: **f(n) = n**
  - Cuadrática: <b>f(n) = n<sup>2</sup></b>
  - Constante: **f(n) = 1**
  - Logarítmica: **f(n) = log n**
  - Combinaciones:
    - **f(n) = n log n**

---

# Reglas de simplificación

---

# Reglas de simplificación

- Las contantes multiplicando ó sumando se eliminan

---

# Reglas de simplificación

- Las contantes multiplicando ó sumando se eliminan
  - **O(3n)**, **O(n + 12)**, **O(n / 2)**, **O(2n + 5)** se simplifican como **O(n)**

---

# Reglas de simplificación

- Las contantes multiplicando ó sumando se eliminan
  - **O(3n)**, **O(n + 12)**, **O(n / 2)**, **O(2n + 5)** se simplifican como **O(n)**
  - **O(144)** y **O(12)** se simplifican como **O(1)**

---

# Reglas de simplificación

- Las contantes multiplicando ó sumando se eliminan
  - **O(3n)**, **O(n + 12)**, **O(n / 2)**, **O(2n + 5)** se simplifican como **O(n)**
  - **O(144)** y **O(12)** se simplifican como **O(1)**
- En funciones polinomiales sólo cuenta el término del exponente mayor

---

# Reglas de simplificación

- Las contantes multiplicando ó sumando se eliminan
  - **O(3n)**, **O(n + 12)**, **O(n / 2)**, **O(2n + 5)** se simplifican como **O(n)**
  - **O(144)** y **O(12)** se simplifican como **O(1)**
- En funciones polinomiales sólo cuenta el término del exponente mayor
  - **O(n<sup>2</sup> + n)** y **O(n<sup>2</sup> + 1)** se simplifican como **O(n<sup>2</sup>)**

---

# Reglas de simplificación

- Las contantes multiplicando ó sumando se eliminan
  - **O(3n)**, **O(n + 12)**, **O(n / 2)**, **O(2n + 5)** se simplifican como **O(n)**
  - **O(144)** y **O(12)** se simplifican como **O(1)**
- En funciones polinomiales sólo cuenta el término del exponente mayor
  - **O(n<sup>2</sup> + n)** y **O(n<sup>2</sup> + 1)** se simplifican como **O(n<sup>2</sup>)**

**Podemos hacer esto porque sólo nos importa el cómo escala el tiempo de ejecución**

---

# Reglas de simplificación

- Las contantes multiplicando ó sumando se eliminan
  - **O(3n)**, **O(n + 12)**, **O(n / 2)**, **O(2n + 5)** se simplifican como **O(n)**
  - **O(144)** y **O(12)** se simplifican como **O(1)**
- En funciones polinomiales sólo cuenta el término del exponente mayor
  - **O(n<sup>2</sup> + n)** y **O(n<sup>2</sup> + 1)** se simplifican como **O(n<sup>2</sup>)**

**Podemos hacer esto porque sólo nos importa el cómo escala el tiempo de ejecución:**

**O(13)** se desempeña peor que **O(n)** para **n < 13**, sin embargo para toda **n > 13** nos conviene mucho más la complejidad constante que la lineal.

---

<h4 style="align-self: center">Comparación de complejidades</h4>

<img src="images/complexity-comparison.svg" />

---

# Ejemplos

---

# Ejemplos

```javascript
function addUpTo(n) {
  let total = 0;
  for (let i = 1; i <= n; i++)
    total += i;
  return total;
}
```

---

# Ejemplos

```javascript
function addUpTo(n) {
  let total = 0; // Tiempo constante
  for (let i = 1; i <= n; i++) // Tiempo constante n veces
    total += i; // Tiempo constante n veces
  return total; // Tiempo constante
}
```

---

# Ejemplos

```javascript
function addUpTo(n) {
  let total = 0; // Tiempo constante
  for (let i = 1; i <= n; i++) // Tiempo constante n veces
    total += i; // Tiempo constante n veces
  return total; // Tiempo constante
} // O(constante * n + otra_constante)
```

---

# Ejemplos

```javascript
function addUpTo(n) {
  let total = 0;
  for (let i = 1; i <= n; i++)
    total += i;
  return total;
} // O(n)
```

---

# Ejemplos

```javascript
function addUpTo(n) {
  let total = 0;
  for (let i = 1; i <= n; i++)
    total += i;
  return total;
} // O(n)
```

```javascript
function addUpTo(n) {
  return n * (n + 1) / 2;
}
```

---

# Ejemplos

```javascript
function addUpTo(n) {
  let total = 0;
  for (let i = 1; i <= n; i++)
    total += i;
  return total;
} // O(n)
```

```javascript
function addUpTo(n) {
  return n * (n + 1) / 2; // Tiempo constante
}
```

---

# Ejemplos

```javascript
function addUpTo(n) {
  let total = 0;
  for (let i = 1; i <= n; i++)
    total += i;
  return total;
} // O(n)
```

```javascript
function addUpTo(n) {
  return n * (n + 1) / 2; // Tiempo constante
} // O(constante)
```

---

# Ejemplos

```javascript
function addUpTo(n) {
  let total = 0;
  for (let i = 1; i <= n; i++)
    total += i;
  return total;
} // O(n)
```

```javascript
function addUpTo(n) {
  return n * (n + 1) / 2;
} // O(1)
```

---

# Ejemplos

```javascript
function bubbleSort(arr) {
  let isSwapped = false;

  for (let i = 0; i < arr.length; i++) {
    isSwapped = false;
    
    for(let j = 0; j < arr.length; j++) {
      if (arr[j] > arr[j + 1]) {
        [arr[j], arr[j + 1]] = [arr[j + 1], arr[j]];
        isSwapped = true;
      }
    }
    
    if (!isSwapped) break;
  }
}
```

---

# Ejemplos

```javascript
function bubbleSort(arr) { // n se refiere a la longitud de arr
  let isSwapped = false; // Tiempo constante

  for (let i = 0; i < arr.length; i++) { // Tiempo constante n veces
    isSwapped = false; // Tiempo constante
    
    for(let j = 0; j < arr.length; j++) { // Tiempo constante n veces
      if (arr[j] > arr[j + 1]) { // Tiempo constante
        [arr[j], arr[j + 1]] = [arr[j + 1], arr[j]]; // Tiempo constante
        isSwapped = true; // Tiempo constante
      }
    } // El ciclo se repite por cada iteración del ciclo que engloba
    
    if (!isSwapped) break; // Tiempo constante
  }
}
```

---

# Ejemplos

```javascript
function bubbleSort(arr) { // n se refiere a la longitud de arr
  let isSwapped = false; // Tiempo constante

  for (let i = 0; i < arr.length; i++) { // Tiempo constante n veces
    isSwapped = false; // Tiempo constante
    
    for(let j = 0; j < arr.length; j++) { // Tiempo constante n veces
      if (arr[j] > arr[j + 1]) { // Tiempo constante
        [arr[j], arr[j + 1]] = [arr[j + 1], arr[j]]; // Tiempo constante
        isSwapped = true; // Tiempo constante
      }
    } // El ciclo se repite por cada iteración del ciclo que engloba
    
    if (!isSwapped) break; // Tiempo constante
  }
} // O(a + b * n + ((c * n) + d) * n + e)
```

---

# Ejemplos

```javascript
function bubbleSort(arr) {
  let isSwapped = false;

  for (let i = 0; i < arr.length; i++) {
    isSwapped = false;
    
    for(let j = 0; j < arr.length; j++) {
      if (arr[j] > arr[j + 1]) {
        [arr[j], arr[j + 1]] = [arr[j + 1], arr[j]];
        isSwapped = true;
      }
    }
    
    if (!isSwapped) break;
  }
} // O(n + n * n)
```

---

# Ejemplos

```javascript
function bubbleSort(arr) {
  let isSwapped = false;

  for (let i = 0; i < arr.length; i++) {
    isSwapped = false;
    
    for(let j = 0; j < arr.length; j++) {
      if (arr[j] > arr[j + 1]) {
        [arr[j], arr[j + 1]] = [arr[j + 1], arr[j]];
        isSwapped = true;
      }
    }
    
    if (!isSwapped) break;
  }
} // O(n^2 + n)
```

---

# Ejemplos

```javascript
function bubbleSort(arr) {
  let isSwapped = false;

  for (let i = 0; i < arr.length; i++) {
    isSwapped = false;
    
    for(let j = 0; j < arr.length; j++) {
      if (arr[j] > arr[j + 1]) {
        [arr[j], arr[j + 1]] = [arr[j + 1], arr[j]];
        isSwapped = true;
      }
    }
    
    if (!isSwapped) break;
  }
} // O(n^2)
```

---

# Ejemplos

```javascript
function countingSort(arr, min, max) {
  const [count, sortedArr] = [{}, []];

  for (let i = min; i <= max; i++)
    count[i] = 0;

  for (let i = 0; i < arr.length; i++)
    count[arr[i]]++;

  for (let i = min; i <= max; i++)
    while (count[i] > 0) {
      sortedArr.push(i);
      count[i]--;
    }

  return sortedArr;
}
```

---

# Ejemplos

```javascript
function countingSort(arr, min, max) {
  const [count, sortedArr] = [{}, []];

  for (let i = min; i <= max; i++) // O(k) => k es (max - min)
    count[i] = 0;

  for (let i = 0; i < arr.length; i++)
    count[arr[i]]++;

  for (let i = min; i <= max; i++)
    while (count[i] > 0) {
      sortedArr.push(i);
      count[i]--;
    }

  return sortedArr;
}
```

---

# Ejemplos

```javascript
function countingSort(arr, min, max) {
  const [count, sortedArr] = [{}, []];

  for (let i = min; i <= max; i++) // O(k) => k es (max - min)
    count[i] = 0;

  for (let i = 0; i < arr.length; i++) // O(n) => n es la longitud de arr
    count[arr[i]]++;

  for (let i = min; i <= max; i++)
    while (count[i] > 0) {
      sortedArr.push(i);
      count[i]--;
    }

  return sortedArr;
}
```

---

# Ejemplos

```javascript
function countingSort(arr, min, max) {
  const [count, sortedArr] = [{}, []];

  for (let i = min; i <= max; i++) // O(k) => k es (max - min)
    count[i] = 0;

  for (let i = 0; i < arr.length; i++) // O(n) => n es la longitud de arr
    count[arr[i]]++;

  for (let i = min; i <= max; i++) // O(k)
    while (count[i] > 0) {
      sortedArr.push(i);
      count[i]--;
    }

  return sortedArr;
}
```

---

# Ejemplos

```javascript
function countingSort(arr, min, max) {
  const [count, sortedArr] = [{}, []];

  for (let i = min; i <= max; i++) // O(k) => k es (max - min)
    count[i] = 0;

  for (let i = 0; i < arr.length; i++) // O(n) => n es la longitud de arr
    count[arr[i]]++;

  for (let i = min; i <= max; i++) // O(k)
    while (count[i] > 0) { // O(xi) => xi es # de veces que i está en arr
      sortedArr.push(i);
      count[i]--;
    }

  return sortedArr;
}
```

---

# Ejemplos

```javascript
function countingSort(arr, min, max) {
  const [count, sortedArr] = [{}, []];

  for (let i = min; i <= max; i++) // O(k) => k es (max - min)
    count[i] = 0;

  for (let i = 0; i < arr.length; i++) // O(n) => n es la longitud de arr
    count[arr[i]]++;

  for (let i = min; i <= max; i++) // O(k)
    while (count[i] > 0) { // O(xi) => xi es # de veces que i está en arr
      sortedArr.push(i);
      count[i]--;
    } // Sabemos que la suma de todos los xi debe dar n

  return sortedArr;
}
```

---

# Ejemplos

```javascript
function countingSort(arr, min, max) {
  const [count, sortedArr] = [{}, []];

  for (let i = min; i <= max; i++) // O(k) => k es (max - min)
    count[i] = 0;

  for (let i = 0; i < arr.length; i++) // O(n) => n es la longitud de arr
    count[arr[i]]++;

  for (let i = min; i <= max; i++) // O(n)
    while (count[i] > 0) {
      sortedArr.push(i);
      count[i]--;
    }

  return sortedArr;
}
```

---

# Ejemplos

```javascript
function countingSort(arr, min, max) {
  const [count, sortedArr] = [{}, []];

  for (let i = min; i <= max; i++) // O(k) => k es (max - min)
    count[i] = 0;

  for (let i = 0; i < arr.length; i++) // O(n) => n es la longitud de arr
    count[arr[i]]++;

  for (let i = min; i <= max; i++) // O(n)
    while (count[i] > 0) {
      sortedArr.push(i);
      count[i]--;
    }

  return sortedArr;
} // O(n + k)
```

---

# Ejemplos

```javascript
function binarySearch(arr, num) {
  let startIndex = 0;
  let endIndex = arr.length - 1;

  while (startIndex <= endIndex) {
    let pivot = Math.floor((startIndex + endIndex) / 2);

    if (arr[pivot] === num)
      return pivot;
    else if (arr[pivot] < num)
      startIndex = pivot + 1;
    else
      endIndex = pivot - 1;
  }

  return -1;
}
```

---

# Ejemplos

```javascript
function binarySearch(arr, num) {
  let startIndex = 0;
  let endIndex = arr.length - 1;

  while (startIndex <= endIndex) {
    let pivot = Math.floor((startIndex + endIndex) / 2);

    if (arr[pivot] === num)
      return pivot;
    else if (arr[pivot] < num)
      startIndex = pivot + 1;
    else
      endIndex = pivot - 1;
  } // En cada iteración partimos a la mitad las posibilidades

  return -1;
}
```

---

# Ejemplos

```javascript
function binarySearch(arr, num) {
  let startIndex = 0;
  let endIndex = arr.length - 1;

  while (startIndex <= endIndex) {
    let pivot = Math.floor((startIndex + endIndex) / 2);

    if (arr[pivot] === num)
      return pivot;
    else if (arr[pivot] < num)
      startIndex = pivot + 1;
    else
      endIndex = pivot - 1;
  } // En cada iteración partimos a la mitad las posibilidades
    // ¿Cuántas veces podemos dividir entre 2 a n?
  return -1;
}
```

---

# Ejemplos

```javascript
function binarySearch(arr, num) {
  let startIndex = 0;
  let endIndex = arr.length - 1;

  while (startIndex <= endIndex) {
    let pivot = Math.floor((startIndex + endIndex) / 2);

    if (arr[pivot] === num)
      return pivot;
    else if (arr[pivot] < num)
      startIndex = pivot + 1;
    else
      endIndex = pivot - 1;
  } // O(x) => n es 2 ^ x

  return -1;
}
```

---

# Ejemplos

```javascript
function binarySearch(arr, num) {
  let startIndex = 0;
  let endIndex = arr.length - 1;

  while (startIndex <= endIndex) {
    let pivot = Math.floor((startIndex + endIndex) / 2);

    if (arr[pivot] === num)
      return pivot;
    else if (arr[pivot] < num)
      startIndex = pivot + 1;
    else
      endIndex = pivot - 1;
  } // O(x) => n es 2 ^ x (usamos logaritmo para obtener el exponente)

  return -1;
}
```

---

# Ejemplos

```javascript
function binarySearch(arr, num) {
  let startIndex = 0;
  let endIndex = arr.length - 1;

  while (startIndex <= endIndex) {
    let pivot = Math.floor((startIndex + endIndex) / 2);

    if (arr[pivot] === num)
      return pivot;
    else if (arr[pivot] < num)
      startIndex = pivot + 1;
    else
      endIndex = pivot - 1;
  } // O(log2 n)

  return -1;
}
```

---

# Ejemplos

```javascript
function binarySearch(arr, num) {
  let startIndex = 0;
  let endIndex = arr.length - 1;

  while (startIndex <= endIndex) {
    let pivot = Math.floor((startIndex + endIndex) / 2);

    if (arr[pivot] === num)
      return pivot;
    else if (arr[pivot] < num)
      startIndex = pivot + 1;
    else
      endIndex = pivot - 1;
  }

  return -1;
} // O(log2 n)
```

---

# Cheatsheet: [https://www.bigocheatsheet.com/](https://www.bigocheatsheet.com/)

![](images/sorting-cheatsheet.png)

---

# Cheatsheet: [https://www.bigocheatsheet.com/](https://www.bigocheatsheet.com/)

![](images/data-structures-cheatsheet.png)

---

# ¿Preguntas?
