# Ex4-Spring
## Ejercicio para resolver una pregunta de examen en clase

### Introducción
Este proyecto parte de un ejercicio de examen planteado por [Paulino Huerta](https://github.com/paulinohuerta):
https://github.com/paulinohuerta/springmvcSimple

### Requisitos
Requiere de la previa ejecución de este otro programa https://github.com/paulinohuerta/springLoadDataRedis-MySQL, el cual carga en la base de datos (Redis por un lado, MySQL por otro) la información necesaria para que la aplicación funcione.

### Desarrollo
En este proyecto se desarrollan pues, los métodos y las vistas de tal forma que inicialmente (*/employee*) se muestren los ids de los contactos tomados de Redis, y los ofrece a elección del usuario. Tras esto, tomando esta elección, muestra los datos de contacto correspondientes a dicha id, tomados esta vez de MySQL.

### Posibles mejoras
* Añadir botones para facilitar la navegación.
* Añadir una vista para el listado de todos los contactos en detalle.
