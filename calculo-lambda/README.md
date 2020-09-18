<style>
section[id="14"],
section[id="15"],
section[id="16"],
section[id="17"],
section[id="18"],
section[id="19"],
section[id="20"],
section[id="21"],
section[id="22"],
section[id="23"],
section[id="24"],
section[id="25"],
section[id="26"],
section[id="27"],
section[id="28"],
section[id="29"],
section[id="30"],
section[id="31"],
section[id="32"],
section[id="33"],
section[id="34"],
section[id="35"],
section[id="36"],
section[id="37"],
section[id="38"]
{
  justify-content: flex-start;
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

---

# Sintaxis de Cálculo-λ

expression
&nbsp;
&nbsp;
&nbsp;

---

# Sintaxis de Cálculo-λ

expression <span style="color:red">::=</span> variable &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b style="color:red">identificador</b>
&nbsp;
&nbsp;
&nbsp;

---

# Sintaxis de Cálculo-λ

expression <span style="color:red">::=</span> variable &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b style="color:red">identificador</b>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red">|</span> expression expression &nbsp;&nbsp;&nbsp; <b style="color:red">aplicación</b>
&nbsp;
&nbsp;

---

# Sintaxis de Cálculo-λ

expression <span style="color:red">::=</span> variable &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b style="color:red">identificador</b>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red">|</span> expression expression &nbsp;&nbsp;&nbsp; <b style="color:red">aplicación</b>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red">|</span> <b>λ</b> variable . expression &nbsp;&nbsp;&nbsp; <b style="color:red">abstracción</b>
&nbsp;

---

# Sintaxis de Cálculo-λ

expression <span style="color:red">::=</span> variable &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b style="color:red">identificador</b>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red">|</span> expression expression &nbsp;&nbsp;&nbsp; <b style="color:red">aplicación</b>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red">|</span> <b>λ</b> variable . expression &nbsp;&nbsp;&nbsp; <b style="color:red">abstracción</b>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red">|</span> ( expression ) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b style="color:red">agrupamiento</b>

---

# Identidad

I := λx.x

I a = **?**

I 42 = **?**

I "hola mundo" = **?**

I I = **?**

---

# Identidad

I := λx.x

I a = **a**

I 42 = **?**

I "hola mundo" = **?**

I I = **?**

---

# Identidad

I := λx.x

I a = **a**

I 42 = **42**

I "hola mundo" = **?**

I I = **?**

---

# Identidad

I := λx.x

I a = **a**

I 42 = **42**

I "hola mundo" = **"hola mundo"**

I I = **?**

---

# Identidad

I := λx.x

I a = **a**

I 42 = **42**

I "hola mundo" = **"hola mundo"**

I I = **I**

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

# Combinador mockingbird

<span style="font-size: 4rem">
  M := λf.f f
</span>

---

# Combinador mockingbird

<span style="font-size: 4rem">
  M := λf.f f
</span>

<br>
<span style="font-size: 4rem">
  M I = ?
</span>

---

# Combinador mockingbird

<span style="font-size: 4rem">
  M := λf.f f
</span>

<br>
<span style="font-size: 4rem">
  M I = <span style="color:red">I</span>
</span>

---

# Combinador mockingbird

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

# Combinador mockingbird

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

# Combinador mockingbird

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

# Combinador mockingbird

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

# Combinador mockingbird

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

# Combinador mockingbird

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
