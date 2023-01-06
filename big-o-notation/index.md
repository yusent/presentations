<style>
  section[id="1"],
  section[id="2"],
  section[id="113"] {
    align-items: center;
    justify-content: center;
  }

  section[id="49"],
  section[id="50"],
  section[id="51"],
  section[id="111"],
  section[id="112"] {
    align-items: center;
  }

  section {
    justify-content: flex-start;
  }
</style>

# Big O Notation

---

<div id="cover" style="display: flex;align-items: center">
  <div>
    <h2 style="white-space: nowrap; margin-right: 2rem">¡Hola! Yo soy Yus</h2>
  </div>
  <div style="border-left: 1px solid #ccc">
    <ul style="list-style-type: none">
      <li class="d-flex">
        <img height="32" style="margin-right: 0.5rem; vertical-align: middle" src="https://unpkg.com/simple-icons@v3/icons/github.svg" />
        @yusent
      </li>
      <li class="d-flex">
        <img height="32" style="margin-right: 0.5rem; vertical-align: middle" src="https://unpkg.com/simple-icons@v3/icons/linkedin.svg" />
        @yusent
      </li>
      <li class="d-flex">
        <img height="32" style="margin-right: 0.5rem; vertical-align: middle" src="https://unpkg.com/simple-icons@v3/icons/twitter.svg" />
        @yus3nt
      </li>
      <li class="d-flex">
        <img height="32" style="margin-right: 0.5rem; vertical-align: middle" src="https://unpkg.com/simple-icons@v3/icons/telegram.svg" />
        @yus3nt
      </li>
    </ul>
  </div>
</div>

---

# Hoy veremos...

- ¿De qué se trata la notación **Big-O**?
- ¿Cuál es su importancia?
- ¿Cómo se expresa?
- Ejemplos
- Recursos de apoyo

---

# Lo que necesitan saber previamente...

- Conceptos básicos de programación (variables, ciclos, funciones, etc.)
- Conceptos básicos de álgebra (e.g. n + n = 2n, n * n = n<sup>2</sup>)

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

¿Que sea más **rápida**? <b style="color: #00d">➡️ Complejidad de tiempo (Time Complexity)</b>

¿Que use menos **memoria**?

¿Que sea más **legible**?

¿Que sea más **corta**?

---

# Big O Notation - ¿De qué se trata?

Imaginen que tenemos varias implementaciones de la misma función...

¿Cómo saben cuál de ellas es mejor?

¿Qué significa **"mejor"**?

¿Que sea más **rápida**? <b style="color: #00d">➡️ Complejidad de tiempo (Time Complexity)</b>

¿Que use menos **memoria**? <b style="color: #00d">➡️ Complejidad de espacio (Space Complexity)</b>

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
- Si tenemos un programa lento nos ayuda a identificar las partes ineficientes que podemos mejorar

---

# Big O Notation - ¿Por qué nos importa?

- Es importante tener un vocabulario preciso para hablar del desempeño de nuestro código
- Es útil para analizar ventajas y desventajas entre distintos enfoques
- Si tenemos un programa lento nos ayuda a identificar las partes ineficientes que podemos mejorar
- **Es un tema común en entrevistas de trabajo** 😱

---

# ¿Por qué no usamos *timers* para medir rapidez?

---

# ¿Por qué no usamos *timers* para medir rapidez?

<img src="images/timers-1.png" />

---

# ¿Por qué no usamos *timers* para medir rapidez?

<img src="images/timers-2.png" />

---

# ¿Por qué no usamos *timers* para medir rapidez?

<img src="images/timers-3.png" />

---

# ¿Por qué no usamos *timers* para medir rapidez?

<img src="images/timers-4.png" />

---

# ¿Por qué no usamos *timers* para medir rapidez?

<img src="images/timers-4.png" />

¿Cuál es el problema? 🤷

---

# ¿Por qué no usamos *timers* para medir rapidez?

<img src="images/timers-4.png" />

¿Cuál es el problema? 🤷

Diferentes computadoras registrarán diferentes tiempos

---

# ¿Por qué no usamos *timers* para medir rapidez?

<img src="images/timers-4.png" />

¿Cuál es el problema? 🤷

~~Diferentes computadoras registrarán diferentes tiempos~~

**La misma computadora registrará distintos tiempos** 😩

---

# ¿Por qué no usamos *timers* para medir rapidez?

<img src="images/timers-4.png" />

¿Cuál es el problema? 🤷

~~Diferentes computadoras registrarán diferentes tiempos~~

**La misma computadora registrará distintos tiempos** 😩

Esto sin contar que para algoritmos muy rápidos tendremos un problema de precisión

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

<img src="images/add-up-to-4.png" />

---

# ¿Entonces qué medimos?

El número de operaciones que realiza la computadora al ejecutar nuestro algoritmo

e.g. una función que sume todos los números enteros de 1 a *n*

<img src="images/add-up-to-5.png" />

---

# ¿Entonces qué medimos?

El número de operaciones que realiza la computadora al ejecutar nuestro algoritmo

e.g. una función que sume todos los números enteros de 1 a *n*

<img src="images/add-up-to-6.png" />

---

# ¿Entonces qué medimos?

El número de operaciones que realiza la computadora al ejecutar nuestro algoritmo

e.g. una función que sume todos los números enteros de 1 a *n*

<img src="images/add-up-to-7.png" />

---

# ¿Entonces qué medimos?

El número de operaciones que realiza la computadora al ejecutar nuestro algoritmo

e.g. una función que sume todos los números enteros de 1 a *n*

<img src="images/add-up-to-8.png" />

---

# ¿Entonces qué medimos?

El número de operaciones que realiza la computadora al ejecutar nuestro algoritmo

e.g. una función que sume todos los números enteros de 1 a *n*

<img src="images/add-up-to-9.png" />

---

# ¿Entonces qué medimos?

El número de operaciones que realiza la computadora al ejecutar nuestro algoritmo

e.g. una función que sume todos los números enteros de 1 a *n*

<img src="images/add-up-to-10.png" />

---

# ¿Entonces qué medimos?

El número de operaciones que realiza la computadora al ejecutar nuestro algoritmo

e.g. una función que sume todos los números enteros de 1 a *n*

<img src="images/add-up-to-11.png" />

---

# ¿Entonces qué medimos?

El número de operaciones que realiza la computadora al ejecutar nuestro algoritmo

e.g. una función que sume todos los números enteros de 1 a *n*

<img src="images/add-up-to-12.png" />

---

# ¿Entonces qué medimos?

El número de operaciones que realiza la computadora al ejecutar nuestro algoritmo

e.g. una función que sume todos los números enteros de 1 a *n*

<img src="images/add-up-to-13.png" />

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

El resultado de analizar el primer ejemplo podría variar desde `2n + 1` hasta `4n + 1`

---

# Contar operaciones es difícil

Dependiendo del criterio podríamos sólo querer contar cierto tipo de operaciones
- ¿Deberíamos contar el `return`?
- ¿Por qué no contamos el hecho de usar un *for loop* como una operación?
- Si la asignación y la suma se hacen en la misma instrucción ¿no deberían contar como 1 sóla operación?

El resultado de analizar el primer ejemplo podría variar desde `2n + 1` hasta `4n + 1`

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

<img style="object-fit: contain;height: 300px" src="images/feel-like-a-sir.jpg" />

---

# Complejidades comunes

---

# Complejidades comunes: Constante

---

# Complejidades comunes: Constante

No depende del tamaño del input

---

# Complejidades comunes: Constante

No depende del tamaño del input:

![](images/add-up-to-n.png)

---

# Complejidades comunes: Constante

No depende del tamaño del input:

![](images/add-up-to-and-is-even.png)

---

# Complejidades comunes: Constante

No depende del tamaño del input:

![](images/add-up-to-and-is-even-simplified.png)

Todas las complejidades constantes (`O(3)`, `O(12)`, `O(1000)`, etc.) se simplifican como <b style="color: #333">O(1)</b>

---

# Complejidades comunes: Lineal

---

# Complejidades comunes: Lineal

Crece en la misma proporción que el input

---

# Complejidades comunes: Lineal

Crece en la misma proporción que el input:

![](images/print-elems.png)

---

# Complejidades comunes: Lineal

Crece en la misma proporción que el input:

![](images/print-elems-and-average.png)

---

# Complejidades comunes: Lineal

Crece en la misma proporción que el input:

![](images/print-elems-and-average-simplified.png)

Todas las complejidades lineales (`O(n + 1)`, `O(3n)`, ...) se simplifican como <b style="color: #333">O(n)</b>

---

# Complejidades comunes: Logarítmica

---

# Complejidades comunes: Logarítmica

Crece en proporción al logaritmo del tamaño del input

---

# Complejidades comunes: Logarítmica

Crece en proporción al logaritmo del tamaño del input (cada vez crece menos)

---

# Complejidades comunes: Logarítmica

Crece en proporción al logaritmo del tamaño del input (cada vez crece menos):

<b>log<sub>10</sub>(10) = 1</b>

---

# Complejidades comunes: Logarítmica

Crece en proporción al logaritmo del tamaño del input (cada vez crece menos):

<b>log<sub>10</sub>(10) = 1</b>
<b>log<sub>10</sub>(100) = 2</b>

---

# Complejidades comunes: Logarítmica

Crece en proporción al logaritmo del tamaño del input (cada vez crece menos):

<b>log<sub>10</sub>(10) = 1</b>
<b>log<sub>10</sub>(100) = 2</b>
<b>log<sub>10</sub>(1000) = 3</b>

---

# Complejidades comunes: Logarítmica

Crece en proporción al logaritmo del tamaño del input (cada vez crece menos):

<b>log<sub>10</sub>(10) = 1</b>
<b>log<sub>10</sub>(100) = 2</b>
<b>log<sub>10</sub>(1000) = 3</b>
<b>log<sub>10</sub>(1000000000000000000) = 18</b>

---

# Complejidades comunes: Logarítmica

Crece en proporción al logaritmo del tamaño del input (cada vez crece menos):

![](images/binary-search.png)

---

# Complejidades comunes: Logarítmica

Crece en proporción al logaritmo del tamaño del input (cada vez crece menos):

![](images/binary-search-simplified.png)

Todas las complejidades logarítmicas se simplifican como <b style="color: #333">O(log(n))</b>

---

# Complejidades comunes: Cuadrática

---

# Complejidades comunes: Cuadrática

Crece en proporción al cuadrado del tamaño del input

---

# Complejidades comunes: Cuadrática

Crece en proporción al cuadrado del tamaño del input:

![](images/has-duplicates-1.png)

---

# Complejidades comunes: Cuadrática

Crece en proporción al cuadrado del tamaño del input:

![](images/has-duplicates-2.png)

---

# Complejidades comunes: Cuadrática

Crece en proporción al cuadrado del tamaño del input:

![](images/has-duplicates-2.png)

<span style="color: red;position: absolute; top: 250px;right: 200px;font-size: 2rem">¿De dónde salió una n<sup>2</sup>? 🤔</span>

---

# Complejidades comunes: Cuadrática

Crece en proporción al cuadrado del tamaño del input:

![](images/has-duplicates-3.png)

---

# Complejidades comunes: Cuadrática

Crece en proporción al cuadrado del tamaño del input:

![](images/has-duplicates-4.png)

---

# Complejidades comunes: Cuadrática

Crece en proporción al cuadrado del tamaño del input:

![](images/has-duplicates-5.png)

---

# Complejidades comunes: Cuadrática

Crece en proporción al cuadrado del tamaño del input:

![](images/has-duplicates-6.png)

---

# Complejidades comunes: Cuadrática

Crece en proporción al cuadrado del tamaño del input:

![](images/has-duplicates-7.png)

---

# Complejidades comunes: Cuadrática

Crece en proporción al cuadrado del tamaño del input:

![](images/has-duplicates-simplified.png)

Todas las complejidades cuadráticas (<code>O(n<sup>2</sup> + 1)</code>, <code>O(3n<sup>2</sup> + 2n)</code>, <code>O(n<sup>2</sup> - n + 144)</code>, ...) se simplifican como <b style="color: #333">O(n<sup>2</sup>)</b>

---

# Complejidades comunes: Exponencial

---

# Complejidades comunes: Exponencial

El tamaño del input se usa como exponente para expresar la complejidad

---

# Complejidades comunes: Exponencial

El tamaño del input se usa como exponente para expresar la complejidad:

![](images/crack-pin.png)

---

# Complejidades comunes: Exponencial

El tamaño del input se usa como exponente para expresar la complejidad:

![](images/crack-pin.png)

Todas las complejidades exponenciales (<code>O(2<sup>n</sup> + 12)</code>, <code>O(3<sup>n</sup> + 2n)</code>, <code>O(3*10<sup>n</sup> - n + 144)</code>, ...) se simplifican como <b style="color: #333">O(b<sup>n</sup>)</b>

---

<h4 style="align-self: center">Comparación de complejidades</h4>

<img src="images/complexity-comparison.svg" height="100%" />

---

# Ejemplos

---

# Ejemplos

![](images/add-up-to.png)

---

# Ejemplos

![](images/ex-add-up-to-1.png)

---

# Ejemplos

![](images/ex-add-up-to-2.png)

---

# Ejemplos

![](images/ex-add-up-to-3.png)

---

# Ejemplos

![](images/ex-add-up-to-4.png)

---

# Ejemplos

![](images/ex-add-up-to-5.png)

---

# Ejemplos

![](images/ex-add-up-to-6.png)

---

# Ejemplos

![](images/ex-add-up-to-7.png)

---

# Ejemplos

![](images/bubble-sort.png)

---

# Ejemplos

![](images/bubble-sort-1.png)

---

# Ejemplos

![](images/bubble-sort-2.png)

---

# Ejemplos

![](images/bubble-sort-3.png)

---

# Ejemplos

![](images/bubble-sort-4.png)

---

# Ejemplos

![](images/ex-binary-search.png)

---

# Ejemplos

![](images/ex-binary-search-1.png)

---

# Ejemplos

![](images/ex-binary-search-2.png)

<span style="color: red;position: absolute; bottom: 200px;right: 200px;font-size: 2rem">¿Cuántas veces se repite el ciclo? 🤔</span>

---

# Ejemplos

![](images/ex-binary-search-2.png)

<span style="color: red;position: absolute; bottom: 200px;right: 90px;font-size: 2rem">💡 Cada iteración descartamos la mitad del arreglo</span>

---

# Ejemplos

![](images/ex-binary-search-2.png)

<span style="color: red;position: absolute; bottom: 200px;right: 200px;font-size: 2rem">¿Cuántas veces podemos dividir n entre 2?</span>

---

# Ejemplos

![](images/ex-binary-search-3.png)

<span style="color: red;position: absolute; top: 255px;right: 200px;font-size: 2rem">log<sub>2</sub>(n)</span>

---

# Ejemplos

![](images/ex-binary-search-4.png)

---

# Ejemplos

![](images/ex-binary-search-5.png)

---

# Cheatsheet: [https://www.bigocheatsheet.com/](https://www.bigocheatsheet.com/)

![](images/sorting-cheatsheet.png)

---

# Cheatsheet: [https://www.bigocheatsheet.com/](https://www.bigocheatsheet.com/)

![](images/data-structures-cheatsheet.png)

---

# ¿Preguntas?
