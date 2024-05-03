# React + Vite

<br>

<div style="display:flex;  justify-content: center; align-items: center;" align="center">
  <img src="https://vitejs.dev/logo.svg" alt="Vite logo" width="200" height="200" />
  <img width='36px'>
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/1200px-React-icon.svg.png" alt="React logo" width="210" height="190" />
</div>

<br>

Para nuestro primer proyecto estaremos usando Vite, vite es un Framework Ligero y Rápido que nos permite crear un proyecto, a diferencia de `RCA`(react-create-app), vite nos proporciona de una forma mas rápida de crear un proyecto de react y establece configuraciones mínimas para este mismo.

## Estructura del Proyecto

Una vez creamos nuestro proyecto con vite nos creara la siguiente estructura procedamos a explicar su razón de ser.


<details>
  <summary>node_modules</summary>
  <p>
    Este directorio aparece una vez hemos ejecutado el <code>npm i</code> en este se almacenan todas las dependencias de nuestro proyecto, es decir todo lo necesario para que nuestra aplicación funcione.
  </p>
</details>

<details>
  <summary>public</summary>
  <p>
    En esta carpeta se guarda todo nuestro contenido que puede ser accesible por toda la app, de ahí el public, por lo general se suele guardar aquí images e iconos, que se usan en la app de manera global, aunque perfectamente se pueden guardar otro tipo de contenido.
  </p>
</details>

<details>
  <summary>src</summary>
  <p>
    Es nuestra carpeta principal, aquí es donde esta todo lo relacionado a la app. Las vistas que se usan, las hojas de estilo, las rutas, etc. Dentro de esta podemos encontrar los siguientes archivos:
    <ul>
      <li>
        <strong>assets/:</strong>
        Esta es nuestra carpeta contenedora de nuestro contenido multimedia, como imágenes, iconos, etc. Que se importaran en nuestros componentes.
      </li>
      <li>
        <strong>App.jsx:</strong>
        Aquí es donde esta nuestra aplicación en si, aquí llamaremos al resto de los componentes que conformaran nuestra aplicación.
      </li>
      <li>
        <strong>index.css:</strong>
        Como toda Web App nuestra aplicación necesita el uso de estilos, aquí es donde guardaremos estos mismos.
      </li>
      <li>
        <strong>main.jsx:</strong>
        Ahora bien el main es un archivo necesario donde le informamos a react que debe iniciar nuestro DOM Virtual, y donde se va a renderizar nuestra aplicación.
      </li>
    </ul>
  </p>
</details>

<details>
  <summary>.eslint.cjs</summary>
  <p>
    Este es un archivo de configuración para el linter del proyecto, si usas VS Code notaras que al ir escribiendo tu código en el editor aparecen, ciertas indicaciones ya sea remarcado de texto, o indicaciones con colores que no indican que debemos hacer algo o que algo nos puede causar problemas. En este caso se usa para seguir un marco de trabajado definido para React.
  </p>
</details>

<details>
  <summary>.gitignore</summary>
  <p>
    Nos permite indicarle a nuestro controlador de versiones que archivos no se deben tomar en cuenta para este mismo, es decir que no les dará seguimiento y no tendrá ninguna inferencia sobre ellos, en este archivo se suele incluir archivos de configuraciones del editor, el node_modules, etc.
  </p>
</details>

<details>
  <summary>index.html</summary>
  <p>
    Nuestro index de toda la vida de html, donde se definen los metadatos del app, el lenguaje, etc.
  </p>
</details>

<details>
  <summary>package's</summary>
  <p>
    Hay dos de estos archivos el package.json y package-lock.json, en el primero es nuestro archivo que crea node donde se guarda la información de nuestro proyecto, el nombre del mismo, los scripts que se pueden usar en el mismo, las dependencias que se debe usar en el app y en su desarrollo, es en este archivo en donde se le indica a  <code>npm</code> que debe instalar cuando corremos nuestro comando <code>npm i</code>, esto nos creara nuestro package-lock.json y node_modules. En el package-lock.json se guarda la información de nuestras dependencias instaladas cuando suelen ocurrir errores es común borrar estos dos elementos, y volver a hacer una instalación de las dependencias.
  </p>
</details>

<details>
  <summary>README</summary>
  <p>
    Nuestro readme es un archivo que suele acompañar a todos los repositorios, donde suele ir información del mismo, algunos con alguna breve documentación sobre como ejecutar el proyecto entre otras. Me estas leyendo ahora mismo 😎.
  </p>
</details>

<details>
  <summary>vite.config.js</summary>
  <p>
    Que no es otra cosa que nuestro archivo de configuración de vite, suele contener lo que vite llama plugins que determina con que librería se trabajara en nuestro caso react.
  </p>
</details>

<br/>

Ahora podrás ver que aparte de los ya mencionados hay dos mas que no aparecen en lo explicado, esto se debe a que son una configuración que he añadido, y no es otra que para poder trabar con [TailwindCss](https://tailwindcss.com). Tailwind es una librería de CSS con clases predefinidas que nos permite dar estilos a nuestra app sin necesidad de escribir nuestras propias reglas CSS. Esto no nos impide hacerlas. Para poder trabajar con tailwind solo sigue su documentación para su instalación con Vite en el siguiente enlace [TailwindCss + Vite](https://tailwindcss.com/docs/guides/vite).

## Scripts

Vite nos proporciona los siguientes scripts funcionales para nuestro proyecto.

<details>
  <summary>
    <strong>dev</strong>
  </summary>
  <p>
    Este sera el comando que mas usaremos ya que nos permite levantar nuestro servidor para desarrollo. Donde podemos ver nuestra app y los cambios que vamos realizando.
    <br />
    <pre><code>npm run dev</code></pre>
  </p>
</details>

<details>
  <summary>
    <strong>build</strong>
  </summary>
  <p>
    Nos creara una carpeta llamada dist con nuestra app, lista para producción, y que usaremos para publicar nuestra aplicación. 
    <br />
    <pre><code>npm run build</code></pre>
  </p>
</details>

<details>
  <summary>
    <strong>lint</strong>
  </summary>
  <p>
    Nos ejecuta nuestro linter para comprobar nuestro código en busca de posibles errores o problemas de estilo. Este nos ayuda garantizar que el código sigue las mejores practicas y es consistente en todo el proyecto.
    <br />
    <pre><code>npm run lint</code></pre>
  </pre>
</details>

<details>
  <summary>
    <strong>preview</strong>
  </summary>
  <p>
    Es una herramienta útil que nos permite ver cómo se verá y funcionará la aplicación en un entorno real, sin necesidad de desplegar en un servidor remoto.
    <br />
    <pre><code>npm run preview</code></pre>
  </pre>
</details>

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

Otro ejemplo de funcionalidad como ves hay un botón que se activa cuando hacemos click sobre el, y el segundo botón se activa cuando hacemos hover sobre el. De igual manera puedes observar que declaramos nuestras funciones usando la palabra `handle` este es una buena practica empezar con esto para indicar que esa función maneja eventos. Ya se un click u cualquier otro tipo de evento, `handleSubmit` para manejar un formulario por ejemplo.