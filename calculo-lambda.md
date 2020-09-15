<style>
  .d-flex {
    display: flex;
    align-items: center;
  }

  #cover div {
    flex: 1;
  }

  #cover div:last-child {
    border-left: 1px solid #ccc;
  }

  #cover ul {
    list-style-type: none;
  }

  #cover ul li img {
    margin-right: 0.5rem;
  }

  img {
    vertical-align: middle;
  }
</style>

<div id="cover" class="d-flex">
  <div>
    <h3>Yusent Chig</h3>
    <b style="font-size:1rem">
      https://github.com/yusent/presentations/calculo-lambda
    </b>
  </div>
  <div>
    <ul>
      <li class="d-flex">
        <img height="32" src="https://unpkg.com/simple-icons@v3/icons/github.svg" />
        yusent
      </li>
      <li class="d-flex">
        <img height="32" src="https://unpkg.com/simple-icons@v3/icons/linkedin.svg" />
        yusent
      </li>
      <li class="d-flex">
        <img height="32" src="https://unpkg.com/simple-icons@v3/icons/hackerrank.svg" />
        yusent
      </li>
      <li class="d-flex">
        <img height="32" src="https://unpkg.com/simple-icons@v3/icons/protonmail.svg" />
        yusent
      </li>
      <li class="d-flex">
        <img height="32" src="https://unpkg.com/simple-icons@v3/icons/twitter.svg" />
        yus3nt
      </li>
      <li class="d-flex">
        <img height="32" src="https://unpkg.com/simple-icons@v3/icons/telegram.svg" />
        yus3nt
      </li>
    </ul>
  </div>
</div>

---

# Definición

El cálculo-λ es un sistema formal en lógica matemática para expresar
computaciones, el cual se basa en abstracción con funciones.

Fue inventado en 1930 por el matemático Alonzo Church como parte de su
investigación sobre la fundación de las matemáticas.

---

# Reglas

El cálculo-λ consiste en construir "términos λ" y realizar reducciones sobre
ellos.

| Sintáxis | Nombre | Descripción |
| --- | --- | --- |
| *x* | Variable | Un carácter ó cadena de caracteres que representa un valor lógico |
| *λx.M* | Abstracción | Definición de función (M es un término λ) |
| *M N* | Aplicación | Aplicar función a un argumento (M y N son términos λ |

Para agrupar y desambiguar expresiones se utilizan los paréntesis
(e.g. `(λx.x) 3`).
