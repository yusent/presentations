<style>
section {
  justify-content: flex-start;
}

section[id="1"], section[id="2"] {
  justify-content: center;
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
