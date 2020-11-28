<style>
  .d-flex {
    display: flex;
    align-items: center;
  }

  .flex-column {
    flex-direction: column;
  }

  .flex-1 {
    flex: 1;
  }

  .justify-around {
    justify-content: space-around;
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

  section {
    justify-content: flex-start;
  }

  .title-section {
    flex: 1;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
  }

  section[id="1"], section[id="2"], section[id="3"] {
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

  .hljs-keyword {
    color: #6f42c1 !important;
  }

  .hljs-type {
    color: #660
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

  .bold {
    font-weight: bold;
  }

  .chain {
    font-family: SFMono-Regular,Consolas,Liberation Mono,Menlo,monospace;
    align-self: center;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 80px;
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
    border: solid black;
    border-width: 0 6px 6px 0;
    display: inline-block;
    padding: 9px;
  }

  .arrow.right {
    margin: 0 20px;
    transform: rotate(-45deg);
    -webkit-transform: rotate(-45deg);
  }

  .arrow.down {
    transform: rotate(45deg);
    -webkit-transform: rotate(45deg);
  }

  .note {
    color: #f00;
    font-weight: bold;
    position: absolute;
    bottom: 100px;
    right: 100px;
  }

  .life-cell {
    background-color: black;
    height: 30px;
    width: 30px;
  }

  .alive {
    background-color: green;
  }
</style>

<div class="title-section">
  <h1>La Programación como un Arte</h1>
</div>

---

<div id="cover" class="d-flex">
  <div>
    <h2>¡Hola! Yo soy Yusent</h2>
  </div>

  <div>
    <ul>
      <li class="d-flex">
        <img height="32" src="https://unpkg.com/simple-icons@v3/icons/github.svg" />
        @yusent
      </li>
      <li class="d-flex">
        <img height="32" src="https://unpkg.com/simple-icons@v3/icons/linkedin.svg" />
        @yusent
      </li>
      <li class="d-flex">
        <img height="32" src="https://unpkg.com/simple-icons@v3/icons/twitter.svg" />
        @yus3nt
      </li>
      <li class="d-flex">
        <img height="32" src="https://unpkg.com/simple-icons@v3/icons/telegram.svg" />
        @yus3nt
      </li>
    </ul>
  </div>
</div>

---

<div id="cover" class="d-flex">
  <div>
    <h2>¡Hola! Yo soy <span class="red">Yus</span><s>ent</s></h2>
  </div>
  <div>
    <ul>
      <li class="d-flex">
        <img height="32" src="https://unpkg.com/simple-icons@v3/icons/github.svg" />
        @yusent
      </li>
      <li class="d-flex">
        <img height="32" src="https://unpkg.com/simple-icons@v3/icons/linkedin.svg" />
        @yusent
      </li>
      <li class="d-flex">
        <img height="32" src="https://unpkg.com/simple-icons@v3/icons/twitter.svg" />
        @yus3nt
      </li>
      <li class="d-flex">
        <img height="32" src="https://unpkg.com/simple-icons@v3/icons/telegram.svg" />
        @yus3nt
      </li>
    </ul>
  </div>
</div>

---

<center>
  <video
    width="1000"
    onclick="this.paused ? this.play() : this.pause(); this.blur()"
  >
    <source src="media/alley-cat.webm" type="video/webm">
  </video>
</center>

---

<div class="title-section">
  <h1>Conway's Game of Life</h1>
</div>

---

# Conway's Game of Life

<div class="d-flex">
  <div class="d-flex flex-column">
    <img src="media/conway.jpg" />
    <small class="bold">John Horton Conway (1937 – 2020)</small>
  </div>
</div>

---

# Conway's Game of Life

<div class="d-flex">
  <div class="d-flex flex-column">
    <img src="media/conway.jpg" />
    <small class="bold">John Horton Conway (1937 – 2020)</small>
  </div>

  <div class="flex-1">
    <ul>
      <li>Creado en <b>1970</b></li>
      <li><b>0 jugadores</b> (Su evolución está determinada por su estado inicial)</li>
      <li>Consiste en una cuadrícula bidimensional de tamaño infinito cuyas celdas pueden estar en dos posibles estados:</li>
    </ul>
    <br>
    <div class="d-flex justify-around">
      <div class="d-flex flex-column">
        <div class="life-cell alive"></div>
        <small class="bold">Viva</small>
      </div>
      <div class="d-flex flex-column">
        <div class="life-cell"></div>
        <small class="bold">Muerta</small>
      </div>
    </div>
  </div>
</div>

---

<div class="flex-1 d-flex flex-column">
  <h1>¿Qué es esto?</h1>

  <div class="flex-1">
    <video onclick="this.paused ? this.play() : this.pause(); this.blur()">
      <source src="media/life-in-life.webm" type="video/webm">
    </video>
  </div>
</div>
