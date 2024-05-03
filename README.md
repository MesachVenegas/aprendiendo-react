# Aprendiendo React

<br/>
<div align="center">
    <image src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/1200px-React-icon.svg.png" width="300" />
</div>
<br/>

## Que es React?

React es una biblioteca de JavaScript de código abierto para crear interfaces de usuario interactivas. React no se debe confundir con un FrameWork, y fue creada por Facebook en el 2013 y sigue siendo mantenida por la misma hasta el día de hoy.

Lo interesante de esta es que como bien indica es una librería de código abierto, lo que significa que existen numerosas comunidades por la red que aportan información y ayuda, en el día a día.

## Que nos ofrece react?

Ademas de ser de código abierto React es famoso por sus características:

  - Velocidad
  - Componentes
  - Desarrollo declarativo
  - Anidación de componentes
  - Isomorfismo
  - Agilidad de desarrollo

### Velocidad

Uno de los aspectos que mas destacan de react es su velocidad de renderizado. Este lo consigue trabajando sobre un DOM Virtual sobre el que aplica los cambios que sufrirá la aplicación y luego actualiza unicamente los elementos que se hayan modificado.

### Componentes

Citando las palabras de la guía oficial *"Los componentes permiten separar a interfaz de usuario en piezas independientes, reutilizables y pensar en cada pieza de forma aislada"* . Al trabajar con componentes forzamos de algún modo a nuestro desarrollo a se mas manejable.

React nos proporciona varios tipos de componentes(Puros, de contenedor, de clase, de función, etc..) con los que facilitar su reutilización en todos nuestros proyectos tanto dentro como entre ellos.

### Desarrollo Declarativo

React sigue el paradigma de desarrollo declarativo. Las aplicaciones que se crean están formadas por componentes. Tanto la aplicación global como cada componente tiene un estado propio.

React trabaja sobre el estado global de la aplicación y responde a los cambios de cada componente en su estado por separado actualizando unicamente lo necesario.

### Anidación de componentes

Los componentes pueden ser anidados, de forma que los componentes de orden superior propagan datos a los de orden inferior. La comunicación entre ellos es unidireccional y se usan ls eventos para que los componentes inferiores sean reconocidos por los orden superior.

<br />

![DOM Tree](https://es.react.dev/_next/image?url=%2Fimages%2Fdocs%2Fdiagrams%2Fpreserving_state_dom_tree.dark.png&w=1080&q=75)

En consecuencia estos se van agrupando en un orden,  en ejemplo podemos ver que tenemos 3 componentes los cuales se ordenan en componentes de orden superior y los componentes de orden inferior, el primer caso se puede decir que determinan lo que cada componente renderiza y los subcomponentes que lo conforman:

<br/>

<div align='center'>
  <image src='https://es.react.dev/_next/image?url=%2Fimages%2Fdocs%2Fdiagrams%2Fconditional_render_tree.dark.png&w=640&q=75' alt='Rendering Tree'>
</div>

<br/>

Como se puede ver en la imagen react establece un componente raíz que es donde se renderiza toda nuestra aplicación y en orden establece los componentes subyacentes a este, ademas esto nos permite determinar que se debe ver y cuando, en la imagen puedes observar que en el componente `InspirationGenerator` tiene 2 hijos y un signo de interrogación, indica que cualquiera de esos dos componentes puede ser mostrado al usuario en base a si se cumple determinada condición, a esto se le conoce como renderizado condicional. Esto nos permite tener comportamientos para ciertas acciones dentro de nuestra vista

### Isomorfismo

React permite el isomorfismo, ya que nos permite no solo trabajar con el renderizado del lado del cliente si no también desde el servidor.

### Agilidad de desarrollo

Con React disponemos de todas la funcionalidades de JQuery. Ambas tecnologías pueden convivir juntas pero no sera necesario usar JQuery en cada proyecto.

## Como trabajar con React?

Al ser una librería de JavaScript es necesario NodeJs, el entorno mas utilizado de JavaScript. Podemos descargar desde su pagina oficial en windows [NodeJs Download](https://nodejs.org/es/download/) o en Linux dependerá de el sistema pero lo puedes encontrar en el instalador de aplicaciones o bien con un administrador de versiones como [NVM](https://github.com/nvm-sh/nvm) es recomendable usar la version LTS. Y su controlador de paquetes, NPM que viene ya incluido en la instalación de NodeJs.

Instalación de la herramienta para la creación de proyectos de React

```bash
npm i -g create-react-app
# o bien sin instalarlo
npx create-react-app@latest nombre_proyecto
```

> 💡 **Nota:** El comando npm i le indica a npm que se realizara una instalación y con la -g se indica que se instalara de manera global en el sistema.

Actualmente la documentación de [React Doc](https://react.dev/learn) recomienda trabajar con un Frame work de React, como lo son [NextJs](https://nextjs.org/), [Remix](https://remix.run/) o [Gatsby](https://www.gatsbyjs.com/) por mencionar algunos. Alternativamente existe [Vite](https://vitejs.dev/guide/) que cuenta con plantillas para trabar con react y otras librerías y frameworks como lo son VueJs, Svelte, Preact, etc. Para usar vite podemos usar el siguiente comando

```bash
npm create vite@latest nombre-proyecto
```
Te preguntara con que quieres trabajar, seleccionamos react y posteriormente preguntara con que lenguaje deseas crear el proyecto. Veras que hay dos opciones para el mismo lenguaje y te preguntaras que es SWC, este es un compilador de momento lo podemos descarta y usar JavaScript Vanilla.

![Vite React](/images/language.png)

Al finalizar nos dará unas breves instrucciones para nuestro proyecto que básicamente es, moverse a la carpeta donde se creo el proyecto, instalar las dependencias del mismo y ejecutar nuestro proyecto en modo desarrollo.

![Installed](/images/completed.png)

[MI Primer Proyecto ->](/primer-app/README.md)
