<style>
section {
  justify-content: flex-start;
}

section[id="1"], section[id="2"] {
  justify-content: center;
}

img {
  object-fit: contain;
  vertical-align: middle;
}
</style>

# Cálculo Lambda

[https://github.com/yusent/presentations/calculo-lambda](https://github.com/yusent/presentations/calculo-lambda)

---

# Definición

El cálculo-λ es un sistema formal en lógica matemática para expresar
computaciones, el cual se basa en abstracción con funciones.

Fue inventado en 1930 por el matemático Alonzo Church como parte de su
investigación sobre la fundación de las matemáticas.

<center>
  <img src="calculo-lambda/images/church_alonzo.jpg" />
</center>

---

# Sintaxis de Cálculo-λ

<span style="font-size:3rem">
  expression
</span>

---

# Sintaxis de Cálculo-λ

<span style="font-size:3rem">
  expression <span style="color:red">::=</span> variable &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b style="color:red">identificador</b>
</span>

---

# Sintaxis de Cálculo-λ

<span style="font-size:3rem">
  expression <span style="color:red">::=</span> variable &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b style="color:red">identificador</b>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red">|</span> expression expression &nbsp; <b style="color:red">aplicación</b>
</span>

---

# Sintaxis de Cálculo-λ

<span style="font-size:3rem">
  expression <span style="color:red">::=</span> variable &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b style="color:red">identificador</b>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red">|</span> expression expression &nbsp; <b style="color:red">aplicación</b>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red">|</span> <b>λ</b> variable . expression &nbsp; <b style="color:red">abstracción</b>
</span>

---

# Sintaxis de Cálculo-λ

<span style="font-size:3rem">
  expression <span style="color:red">::=</span> variable &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b style="color:red">identificador</b>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red">|</span> expression expression &nbsp; <b style="color:red">aplicación</b>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red">|</span> <b>λ</b> variable . expression &nbsp; <b style="color:red">abstracción</b>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red">|</span> ( expression ) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b style="color:red">grupo</b>
</span>

---

# Identidad

<span style="font-size:3rem">
I := λx.x

I a = **?**

I 42 = **?**

I "hola mundo" = **?**

I I = **?**
</span>

---

# Identidad

<span style="font-size:3rem">
I := λx.x

I a = <b style="color:red">a</b>

I 42 = **?**

I "hola mundo" = **?**

I I = **?**
</span>

---

# Identidad

<span style="font-size:3rem">
I := λx.x

I a = <b style="color:red">a</b>

I 42 = <b style="color:red">42</b>

I "hola mundo" = **?**

I I = **?**
</span>

---

# Identidad

<span style="font-size:3rem">
I := λx.x

I a = <b style="color:red">a</b>

I 42 = <b style="color:red">42</b>

I "hola mundo" = <b style="color:red">"hola mundo"</b>

I I = **?**
</span>

---

# Identidad

<span style="font-size:3rem">
I := λx.x

I a = <b style="color:red">a</b>

I 42 = <b style="color:red">42</b>

I "hola mundo" = <b style="color:red">"hola mundo"</b>

I I = <b style="color:red">I</b>
</span>

---

# Identidad en Elixir

```elixir
i = fn(x) -> x end

i = &(&1)

Function.identity
```

---

# Aplicación de múltiples parámetros

<center>
  <span style="font-size: 4rem">
    λ<span style="color:red">x</span>.λ<span style="color:red">y</span>.z
  </span>
</center>

Teniendo en cuenta que: `f a b = (f a) b != f (a b)`

---

# Aplicación de múltiples parámetros

<center>
  <span style="font-size: 4rem">
    λ<span style="color:red">x</span>.λ<span style="color:red">y</span>.z
  </span>
</center>

Teniendo en cuenta que: `f a b = (f a) b != f (a b)`

e.g.
```text
(λa.λb.a+b) 10 2
= ((λa.λb.a+b) 10) 2
= (λb.10+b) 2
= 10 + 2
= 12
```

---

# Aplicación de múltiples parámetros

<center>
  <span style="font-size: 4rem">
    λ<span style="color:red">x</span>.λ<span style="color:red">y</span>.z
  </span>
</center>

Teniendo en cuenta que: `f a b = (f a) b != f (a b)`

e.g.
```text
(λa.λb.a+b) 10 2
= ((λa.λb.a+b) 10) 2
= (λb.10+b) 2
= 10 + 2
= 12
```

Elixir
```elixir
add = fn(a) -> fn(b) -> a + b end end
```

---

# Abstracciones

```elixir
# λa.b
fn(a) -> b end
```

---

# Abstracciones

```elixir
# λa.b
fn(a) -> b end

# λa.b x (que es lo mismo que λa.(b x))
fn(a) -> b.(x) end
```

---

# Abstracciones

```elixir
# λa.b
fn(a) -> b end

# λa.b x (que es lo mismo que λa.(b x))
fn(a) -> b.(x) end

# (λa.b) x
(fn(a) -> b end).(x)
```

---

# Abstracciones

```elixir
# λa.b
fn(a) -> b end

# λa.b x (que es lo mismo que λa.(b x))
fn(a) -> b.(x) end

# (λa.b) x
(fn(a) -> b end).(x)

# λa.λb.x
fn(a) -> fn(b) -> x end end
```

---

# Reducción-β

<center>
  <span style="font-size: 4rem">
    ((λa.a)λb.λc.b)(x)λe.f
  </span>
</center>

---

# Reducción-β

<center>
  <span style="font-size: 4rem">
    (<span style="color:red">(λa.a)</span>λb.λc.b)<span style="color:#0003">(x)λe.f</span>
  </span>
</center>

---

# Reducción-β

<center>
  <span style="font-size: 4rem">
    (<span style="color:red">(λa.a)</span><span style="text-decoration:underline">λb.λc.b</span>)<span style="color:#0003">(x)λe.f</span>
  </span>
</center>

---

# Reducción-β

<center>
  <span style="font-size: 4rem">
    (<span style="color:red">(λa.a)</span><span style="text-decoration:underline">λb.λc.b</span>)<span style="color:#0003">(x)λe.f</span>
  </span>
</center>

<center>
  <span style="font-size: 4rem">
    = (<span style="color:red">λb.λc.b</span>)<span style="color:#0003">(x)λe.f</span>
  </span>
</center>

---

# Reducción-β

<center>
  <span style="font-size: 4rem">
    (<span style="color:red">(λa.a)</span><span style="text-decoration:underline">λb.λc.b</span>)<span style="color:#0003">(x)λe.f</span>
  </span>
</center>

<center>
  <span style="font-size: 4rem">
    = (<span style="color:red">λb.λc.b</span>)(<span style="text-decoration:underline">x</span>)<span style="color:#0003">λe.f</span>
  </span>
</center>

---

# Reducción-β

<center>
  <span style="font-size: 4rem">
    (<span style="color:red">(λa.a)</span><span style="text-decoration:underline">λb.λc.b</span>)<span style="color:#0003">(x)λe.f</span>
  </span>
</center>

<center>
  <span style="font-size: 4rem">
    = (<span style="color:red">λb.λc.b</span>)(<span style="text-decoration:underline">x</span>)<span style="color:#0003">λe.f</span>
  </span>
</center>

<center>
  <span style="font-size: 4rem">
    = (<span style="color:red">λc.x</span>)<span style="color:#0003">λe.f</span>
  </span>
</center>

---

# Reducción-β

<center>
  <span style="font-size: 4rem">
    (<span style="color:red">(λa.a)</span><span style="text-decoration:underline">λb.λc.b</span>)<span style="color:#0003">(x)λe.f</span>
  </span>
</center>

<center>
  <span style="font-size: 4rem">
    = (<span style="color:red">λb.λc.b</span>)(<span style="text-decoration:underline">x</span>)<span style="color:#0003">λe.f</span>
  </span>
</center>

<center>
  <span style="font-size: 4rem">
    = (<span style="color:red">λc.x</span>)<span style="text-decoration:underline">λe.f</span>
  </span>
</center>

---

# Reducción-β

<center>
  <span style="font-size: 4rem">
    (<span style="color:red">(λa.a)</span><span style="text-decoration:underline">λb.λc.b</span>)<span style="color:#0003">(x)λe.f</span>
  </span>
</center>

<center>
  <span style="font-size: 4rem">
    = (<span style="color:red">λb.λc.b</span>)(<span style="text-decoration:underline">x</span>)<span style="color:#0003">λe.f</span>
  </span>
</center>

<center>
  <span style="font-size: 4rem">
    = (<span style="color:red">λc.x</span>)<span style="text-decoration:underline">λe.f</span>
  </span>
</center>

<center>
  <span style="font-size: 4rem">
    = <span style="color:red">x</span>
  </span>
</center>

---

# Reducción-β

<center>
  <span style="font-size: 4rem">
    (<span style="color:red">(λa.a)</span><span style="text-decoration:underline">λb.λc.b</span>)<span style="color:#0003">(x)λe.f</span>
  </span>
</center>

<center>
  <span style="font-size: 4rem">
    = (<span style="color:red">λb.λc.b</span>)(<span style="text-decoration:underline">x</span>)<span style="color:#0003">λe.f</span>
  </span>
</center>

<center>
  <span style="font-size: 4rem">
    = (<span style="color:red">λc.x</span>)<span style="text-decoration:underline">λe.f</span>
  </span>
</center>

<center>
  <span style="font-size: 4rem">
    = <span style="color:red">x</span>
  </span>
</center>

# Forma normal β

---

# Combinador Zenzontle (Mockingbird)

<span style="font-size: 4rem">
  M := λf.f f
</span>

---

# Combinador Zenzontle (Mockingbird)

<span style="font-size: 4rem">
  M := λf.f f
</span>

<br>
<span style="font-size: 4rem">
  M I = ?
</span>

---

# Combinador Zenzontle (Mockingbird)

<span style="font-size: 4rem">
  M := λf.f f
</span>

<br>
<span style="font-size: 4rem">
  M I = <span style="color:red">I</span>
</span>

---

# Combinador Zenzontle (Mockingbird)

<span style="font-size: 4rem">
  M := λf.f f
</span>

<br>
<span style="font-size: 4rem">
  M I = <span style="color:red">I</span>
</span>

<br>
<span style="font-size: 4rem">
  M M = ?
</span>

---

# Combinador Zenzontle (Mockingbird)

<span style="font-size: 4rem">
  M := λf.f f
</span>

<br>
<span style="font-size: 4rem">
  M I = <span style="color:red">I</span>
</span>

<br>
<span style="font-size: 4rem">
  M M = M M
</span>

---

# Combinador Zenzontle (Mockingbird)

<span style="font-size: 4rem">
  M := λf.f f
</span>

<br>
<span style="font-size: 4rem">
  M I = <span style="color:red">I</span>
</span>

<br>
<span style="font-size: 4rem">
  M M = M M = M M
</span>

---

# Combinador Zenzontle (Mockingbird)

<span style="font-size: 4rem">
  M := λf.f f
</span>

<br>
<span style="font-size: 4rem">
  M I = <span style="color:red">I</span>
</span>

<br>
<span style="font-size: 4rem">
  M M = M M = M M = M M
</span>

---

# Combinador Zenzontle (Mockingbird)

<span style="font-size: 4rem">
  M := λf.f f
</span>

<br>
<span style="font-size: 4rem">
  M I = <span style="color:red">I</span>
</span>

<br>
<span style="font-size: 4rem">
  M M = M M = M M = M M = M M
</span>

---

# Combinador Zenzontle (Mockingbird)

<span style="font-size: 4rem">
  M := λf.f f
</span>

<br>
<span style="font-size: 4rem">
  M I = <span style="color:red">I</span>
</span>

<br>
<span style="font-size: 4rem">
  M M = M M = M M = M M = M M = M M = M M = M M = M M = M M = M M = M M = M M = M M = M M = M M = M M = M M = M M = M M = M M = ... 😢
</span>

---

# Combinador Zenzontle (Mockingbird)

<span style="font-size: 4rem">
  M := λf.f f
</span>

<br>
<span style="font-size: 4rem">
  M I = <span style="color:red">I</span>
</span>

<br>
<span style="font-size: 4rem">
  M M = <span style="color:red">Ω</span>
</span>

---

# Combinador Zenzontle (Mockingbird)

<span style="font-size: 4rem">
  ω := λf.f f
</span>

<br>
<span style="font-size: 4rem">
  ω I = <span style="color:red">I</span>
</span>

<br>
<span style="font-size: 4rem">
  ω ω = <span style="color:red">Ω</span>
</span>

---

# Combinador Cernícalo (Kestrel)

<span style="font-size: 4rem">
  K := λa.λb.a
</span>

---

# Combinador Cernícalo (Kestrel)

<span style="font-size: 4rem">
  K := λa.λb.a
</span>

<br>
<span style="font-size: 4rem">
  K 42 "hola"  = ?
</span>

---

# Combinador Cernícalo (Kestrel)

<span style="font-size: 4rem">
  K := λa.λb.a
</span>

<br>
<span style="font-size: 4rem">
  K 42 "hola"  = <span style="color:red">42</span>
</span>

---

# Combinador Cernícalo (Kestrel)

<span style="font-size: 4rem">
  K := λa.λb.a
</span>

<br>
<span style="font-size: 4rem">
  K 42 "hola"  = <span style="color:red">42</span>
</span>

<br>
<span style="font-size: 4rem">
  K I 12  = <span style="color:red">I</span>
</span>

---

# Combinador Cernícalo (Kestrel)

<span style="font-size: 4rem">
  K := λa.λb.a
</span>

<br>
<span style="font-size: 4rem">
  K 42 "hola"  = <span style="color:red">42</span>
</span>

<br>
<span style="font-size: 4rem">
  K I 12  = <span style="color:red">I</span>
</span>

<br>
<span style="font-size: 4rem">
  K I x y  = ?
</span>

---

# Combinador Cernícalo (Kestrel)

<span style="font-size: 4rem">
  K := λa.λb.a
</span>

<br>
<span style="font-size: 4rem">
  K 42 "hola"  = <span style="color:red">42</span>
</span>

<br>
<span style="font-size: 4rem">
  K I 12  = <span style="color:red">I</span>
</span>

<br>
<span style="font-size: 4rem">
  K I x y  = <span style="color:red">y</span>
</span>

---

# Combinador Milano Real (Kite)

<span style="font-size: 4rem">
  KI := λa.λb.b
</span>

---

# Combinador Milano Real (Kite)

<span style="font-size: 4rem">
  KI := λa.λb.b
</span>

<span style="font-size: 4rem">
  KI := K I
</span>

---

# ¿Por qué nombres de pájaros?

<div style="display:flex;justify-content:space-around">
  <img src="calculo-lambda/images/to-mock-a-mockingbird.jpg" height="400" width="auto" />
  <img src="calculo-lambda/images/smullyan.jpg" height="300" width="auto" />
</div>

---

# Combinadores

Son funciones sin variables libres

<span style="font-size: 3rem">
  λa.a
</span>

<span style="font-size: 3rem">
  λa.b
</span>

<span style="font-size: 3rem">
  λa.λb.a
</span>

<span style="font-size: 3rem">
  λa.a b
</span>

<span style="font-size: 3rem">
  λa.λb.λc (λd.b)
</span>

---

# Combinadores

Son funciones sin variables libres

<span style="font-size: 3rem">
  λa.a <span style="color:red">es un combinador</span>
</span>

<span style="font-size: 3rem">
  λa.b
</span>

<span style="font-size: 3rem">
  λa.λb.a
</span>

<span style="font-size: 3rem">
  λa.a b
</span>

<span style="font-size: 3rem">
  λa.λb.λc (λd.b)
</span>

---

# Combinadores

Son funciones sin variables libres

<span style="font-size: 3rem">
  λa.a <span style="color:red">es un combinador</span>
</span>

<span style="font-size: 3rem">
  λa.b <span style="color:red">no es un combinador</span>
</span>

<span style="font-size: 3rem">
  λa.λb.a
</span>

<span style="font-size: 3rem">
  λa.a b
</span>

<span style="font-size: 3rem">
  λa.λb.λc (λd.b)
</span>

---

# Combinadores

Son funciones sin variables libres

<span style="font-size: 3rem">
  λa.a <span style="color:red">es un combinador</span>
</span>

<span style="font-size: 3rem">
  λa.b <span style="color:red">no es un combinador</span>
</span>

<span style="font-size: 3rem">
  λa.λb.a <span style="color:red">es un combinador</span>
</span>

<span style="font-size: 3rem">
  λa.a b
</span>

<span style="font-size: 3rem">
  λa.λb.λc (λd.b)
</span>

---

# Combinadores

Son funciones sin variables libres

<span style="font-size: 3rem">
  λa.a <span style="color:red">es un combinador</span>
</span>

<span style="font-size: 3rem">
  λa.b <span style="color:red">no es un combinador</span>
</span>

<span style="font-size: 3rem">
  λa.λb.a <span style="color:red">es un combinador</span>
</span>

<span style="font-size: 3rem">
  λa.a b <span style="color:red">no es un combinador</span>
</span>

<span style="font-size: 3rem">
  λa.λb.λc (λd.b)
</span>

---

# Combinadores

Son funciones sin variables libres

<span style="font-size: 3rem">
  λa.a <span style="color:red">es un combinador</span>
</span>

<span style="font-size: 3rem">
  λa.b <span style="color:red">no es un combinador</span>
</span>

<span style="font-size: 3rem">
  λa.λb.a <span style="color:red">es un combinador</span>
</span>

<span style="font-size: 3rem">
  λa.a b <span style="color:red">no es un combinador</span>
</span>

<span style="font-size: 3rem">
  λa.λb.λc (λd.b) <span style="color:red">es un combinador</span>
</span>

---

# Combinadores en Elixir

| Símbolo | Pájaro | Cálculo-λ | Elixir |
| --- | --- | --- | --- |
| I | Idiot (Galah) | λa.a | `Function.identity` |
| M | Mockingbird (Zenzontle) | λf.f f | `fn(f) -> f.(f) end` |
| K | Kestrel (Cernícalo) | λa.λb.a | `fn(a) -> fn(_) -> a end end` |
| KI | Kite (Milano Real) | λa.λb.b | `fn(_) -> fn(b) -> b end end` |
