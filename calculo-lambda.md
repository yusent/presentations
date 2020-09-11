---
title: Cálculo Lambda
author: Yusent Chig
patat:
  wrap: true
  margins:
    left: 4
    right: 4
  theme:
    code: [dullRed]
    header: [bold, vividBlue]
...

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
