En este documento se explica de forma sencilla para qué sirve cada método HTTP usando la API de prueba https://jsonplaceholder.typicode.com/posts.

GET
¿Para qué sirve?
Sirve para pedir o leer información del servidor sin cambiar nada.

    Ejemplo:
    URL: https://jsonplaceholder.typicode.com/posts/1
    Método: GET
    Body: Ninguno
    Código de respuesta: 200 OK

POST
¿Para qué sirve?
Sirve para crear o guardar un nuevo dato en el servidor.

    Ejemplo:
    URL: https://jsonplaceholder.typicode.com/posts
    Método: POST
    Body (JSON):
    {
    "title": "Mi primer post",
    "body": "Hola mundo",
    "userId": 1
    }
    Código de respuesta: 201 Created

PUT
¿Para qué sirve?
Sirve para reemplazar por completo un dato que ya existe. Cambia todo el contenido.

    Ejemplo:
    URL: https://jsonplaceholder.typicode.com/posts/1
    Método: PUT
    Body (JSON):
    {
    "id": 1,
    "title": "Título cambiado completo",
    "body": "Contenido cambiado completo",
    "userId": 1
    }
    Código de respuesta: 200 OK

PATCH
¿Para qué sirve?
Sirve para modificar solo una parte de un dato, sin tocar el resto.

    Ejemplo:
    URL: https://jsonplaceholder.typicode.com/posts/1
    Método: PATCH
    Body (JSON):
    {
    "title": "Solo cambio este título"
    }
    Código de respuesta: 200 OK

DELETE
¿Para qué sirve?
Sirve para borrar un dato del servidor.

    Ejemplo:
    URL: https://jsonplaceholder.typicode.com/posts/1
    Método: DELETE
    Body: Ninguno
    Código de respuesta: 200 OK

Diferencia entre PUT y PATCH
PUT: Reemplaza todo el registro por completo. Si no mandas un dato, se sobreescribe o se borra.
PATCH: Solo actualiza el campo específico que envías en la petición y deja todo lo demás intacto.