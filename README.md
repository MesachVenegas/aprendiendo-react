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

## JSX

Ahora si bien react te permite perfectamente trabajar directamente con archivos de extension .js, se recomienda usar .jsx que no es otra cosa que un lenguaje de marcado usado por react que nos permite trabajar con JavaScript y los elementos de HTML de forma mas dinámica y con mayor facilidad de lectura y ademas que facilita el desarrollo al permitir el auto completado de etiquetas y otras funciones en nuestro editor de código.

```jsx
export default function App() {
  const greeting = 'Hola Mundo';

  return (
    <main className="flex items-center justify-center w-full min-h-screen">
      <h1 className="text-3xl font-bold">{greeting}</h1>
    </main>
  )
}
```
como puedes observar si vamos a nuestro componente app podremos ver una estructura similar a esta, un componente de react no es otra cosa que una función de JavaScript que devuelve un elemento, con etiquetas html para que sea renderizado con la diferencia que a nosotros nos permite combinar javascript directamente con HTML. Como se ves tenemos una variable `greeting` con el valor de Hola mundo que es llamado dentro de nuestra etiqueta H1, esto nos permite realizar renderizado dinámico de información sin necesidad de recurrir a la forma básica de modificar elementos del DOM con javascript

```html
<main>
  <h1 id="title"></h1>
</main>
<script>
  let greeting = 'Hola Mundo';
  const title = document.getElementById('title');
  title.innerHTML = greeting;
</script>
```

En este tipo de ejemplo no se puede notar mucho la diferencia, pero se puede notar que es mas fácil de aplicar el cambio en react que en el caso anterior. ya que por lo general tendríamos que crear nuestro archivo index para el html y un script para nuestro javascript. Y para alguien que esta leyendo el código por primera vez tiene que ir a cada uno de estos para poder ver la funcionalidad en total de una sola parte, en cambio con JSX todo lo requerido para que mi componente funcione se encuentra en el mismo, permitiendo de esta forma una mayor modularidad y facilidad de lectura.

### Funcionalidad

Te preguntaras y en este caso como agregamos funcionalidad a nuestros elementos, es muy sencillo supongamos que tenemos un botón y queremos que este boto nos muestre una alerta con un contenido cuando lo presionamos. En la forma tradicional tendríamos que crear primero nuestra estructura html y luego mediante javascript acceder al elemento mediante su identificador y asignarle que hacer al detectar un evento de tipo click.

```html
<main>
  <button id="btn">Click Me!</button>
</main>
<script>
  const btn = document.getElementById('btn');
  btn.addEventListener('click', () => alert('Hola Mundo'));
</script>
```

Esto en react se vería de la siguiente forma:

```jsx
export default function App()[
  const handleClick = () => alert('Hola Mundo');

  return(
    <main>
      <button onClick={handleClick}>Click Me!</button>
    </main>
  )
]
```
o bien 

```jsx
export default function App() {
  return (
    <main>
      <button onClick={() => alert('Hola Mundo')}>Click Me!</button>
    </main>
  )
}
```

En esto hay que destacar que los elementos cuenta con diferente maneras de manejar los eventos, y dependen también del tipo de elemento, poco a poco los iremos descubriendo. Ademas también es importante mencionar que hay una gran diferencia en llamar a mi función `handleClick()` a llamarla `handleClick` en el primer caso le estamos indicando a react que la función deberá ejecutarse justo en el renderizado del componente y de la segunda forma es como decirle a react que ese botón tiene una acción por ejecutar y este lo recordara que debe activarla cuando se hace click sobre este. De igual manera si pasamos directamente la acción a nuestro onClick sin declarar una función sucederá los mismo que el ejemplo anterior. Usar ```onClick={alert('Hola mundo')}``` ejecutara directamente la alerta por lo que hay que declarar una función que activara a esta.

```jsx
export default function App() {

  const handleClick = () => {
    alert('Hola mundo!');
    }

  const handleMouseOver = () => {
    alert('Hola mundo!');
  }

  return (
    <main className="flex flex-col gap-6 items-center justify-center w-full min-h-screen">
      <h1 className="text-3xl font-bold">Hola Mundo</h1>
      <button onClick={handleClick} className="bg-blue-400 p-2">
        haz click aquí
      </button>
      <button onMouseOver={handleMouseOver} className="bg-slate-400 p-2">
        pasa el mouse sobre mi
      </button>
    </main>
  )
}
```

<div align='center'>
  <image src='https://firebasestorage.googleapis.com/v0/b/kazu-moda-nextjs-firebase.appspot.com/o/funcionalidad.gif?alt=media&token=893c5d00-6a53-4c52-8672-a1d5d999203f' height='400px'>
</div>

Otro ejemplo de funcionalidad como ves hay un botón que se activa cuando hacemos click sobre el, y el segundo botón se activa cuando hacemos hover sobre el. De igual manera puedes observar que declaramos nuestras funciones usando la palabra `handle` este es una buena practica. Ya sea un click u cualquier otro tipo de evento, `handleSubmit` para manejar un formulario por ejemplo.

### Propiedades

Hay que tomar en cuneta lo siguiente, React recomienda mantener nuestros complementos lo más puros posibles, pero que quiere decir con esto. Al decir puro se refiere a que el componente solo debe encargarse de un solo calculo o función, esto permitirá a nuestros componentes evitar errores desconcertantes o comportamientos no deseados. Por lo que nuestros componentes deben:

  - **Encargarse de sus propios asuntos**. Es decir nuestros complementos no deben modificar ningún objeto o variable que existiera antes de ser llamado.
  - **La misma entrada, la misma salida**. Sin importar el dato que se le entrega a nuestro componente, siempre deberá regresar el mismo resultado.

Para poder hablar de esto es necesario, hablar de las propiedades, como ya indicamos con anterioridad, los componentes de react son funciones, por lo tanto pueden recibir propiedades, estas se utilizan para pasar la información de un elemento de orden superior a uno inferior, hay que tener en cuenta que react es unidireccional por lo que solo permite el paso de información en un solo sentido. Por lo que un componente padre puede pasar información a los componentes hijos pero no a la inversa.

Veamos un ejemplo de esto en acción. Supongamos que en nuestra App llamamos un componente llamado Greetings que se encarga de saludar a los usuarios. Pero debemos indicarle el nombre del usuario desde el elemento padre, por lo que debemos pasar la información del nombre al componente hijo.

```jsx
// Nuestro componente recibirá una propiedad llamada userName.
export function Greetings({ userName })[

  return (
    <>
      <p>Hola {userName}</p>
      <p>¿Cómo estas?</p>
    </>
  )
]

export default function App()[

  return (
    <main>
      {* Le pasamos el nombre del usuario como prop a nuestro componente *}
      <Greetings userName={'Jonathan'}/>
    </main>
  )
]
```

En el ejemplo se puede observar a nuestros dos componentes tanto padre como hijo, donde se declara que recibiremos una propiedad, llamada `userName`, hay que tomar en cuenta que estamos indicando que cuando usemos este componente en el componente padre debemos pasarle el nombre del usuario como prop con el nombre que hemos indicado, en este caso userName. Ahora a que nos referimos con la pureza como ves en este componente tan sencillo sin importar que nombre le pasemos como propiedad, este siempre nos devolverá una etiqueta de tipo p con un texto dentro que contiene el nombre del usuario. Viendo este ejemplo te preguntaras que son estos elementos `<></>` a esto se le conoce como fragments, veras en React solo se puede regresar un elemento para renderizar es decir, que todos los elementos deben estar dentro de un solo elemento padre. Y Hay casos en los que se quiere devolver mas de un elemento, que ya sera recibido por otro contenedor por lo que se usan los fragments en estos casos.

Una forma errónea de cumplir con esta norma podría ser este ejemplo:

```jsx
let guest = 0;

function Cup() {
  // Mal: ¡Cambiar una variable preexistente!
  guest = guest + 1;
  return <h2>Taza de té para invitado #{guest}</h2>;
}

export default function TeaSet() {
  return (
    <>
      <Cup />
      <Cup />
      <Cup />
    </>
  );
}
```
Como puedes ver en este caso estamos modificando una variable preexistente, que no pertenece a nuestro componente, react tiene una forma de hacernos saber que esta ocurriendo un error, si revisamos nuestro archivo `main.jsx` podremos ver lo siguiente:

```jsx
ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
)
```

Como puedes ver en nuestra función render estamos usando React y ademas le indicamos que use un Modo Estricto, esto hace que al momento de ejecutarse react ejecute 2 veces nuestro código, por lo que este código nos daría como resultado algo similar a esto:

  - Taza para invitado #2
  - Taza para invitado #4
  - Taza para invitado #6

Dándonos un resultado no deseado:

```jsx
export default function TeaSet() {
  return (
    <>
      <Cup /> -> Se ejecuta 2 veces por lo que al final el valor de guest es 2
      <Cup /> -> Se ejecuta 2 veces por lo que al final el valor de guest es 4
      <Cup /> -> Se ejecuta 2 veces por lo que al final el valor de guest es 6
    </>
  );
}
```
Esto modifica nuestra variable guest original y al ejecutarse 2 veces cada componente el resultado final de cada uno es diferente del esperado.

## Hooks
