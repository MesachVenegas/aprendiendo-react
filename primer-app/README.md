# Iniciado mi primer app con React

El proyecto ha sido creado con create-react-app y este pone a nuestra disposición una serio de scripts o comandos que explicare a continuación.


### `npm start`

Corre nuestra aplicación en el puerto 3000 en modo desarrollo.
Puedes abrir [http://localhost:3000](http://localhost:3000) para verlo en el navegador.

Esto permitirá a la pagina recargarse automáticamente cada que realicemos un cambio, e ira mostrando errores de vez en cuando.

### `npm test`

Inicializa nuestro servidor de pruebas que nosotros hayamos definido.
Para saber mas de esto puedes visitar la pagina [running tests](https://facebook.github.io/create-react-app/docs/running-tests)

### `npm run build`

Este script no genera un ```build``` que es una carpeta con nuestro proyecto optimizado para producción. Y que utilizaremos para hacer el deploy.

### `npm run eject`

> **Nota**: Este comando solo se puede ejecutar una vez. Una vez realizado un  `eject`, no se puede restaurar a su estado anterior.

Básicamente este script que copia todas las dependencias y archivos de configuración permitiéndonos limpiar nuestro proyecto de todo lo que no necesitamos manteniendo las mismas dependencias. Y la estructura del proyecto seria de esta manera.

```console
primer-app/
├── node_modules
├── package.json
├── package-lock.json
├── public
├── README.md
└── src
    ├── App.css
    ├── App.js
    ├── App.test.js
    ├── index.css
    ├── index.js
    ├── logo.svg
    ├── reportWebVitals.js
    └── setupTests.js
```
