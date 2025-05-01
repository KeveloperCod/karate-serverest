Proyecto Karate DSL - Pruebas ServeRest API

Este proyecto contiene pruebas automatizadas usando Karate DSL para la API de ServeRest. Cubre operaciones CRUD del recurso usuarios, incluyendo validaciones positivas y negativas.


-----------------

🚀 Requisitos Previos

    Java 11 o superior

    Maven 3.6+

    IntelliJ IDEA (recomendado) o cualquier IDE compatible con Maven


-----------------

📂 Estructura del Proyecto

src/test/java/examples

    🔹 examples/
    🔹🔹 users/         # Archivos .feature (GET, POST, PUT, DELETE)
    🔹🔹 runners/       # Archivos Java para ejecutar los .feature
    🔹🔹 utils/         # Generador de datos aleatorios (helpers)
    🔹🔹 schema/        # Esquemas JSON para validaciones

-----------------

🔧 Instalación

    git clone https://github.com/KeveloperCod/karate-serverest.git
    cd karate-serverest


-----------------

🔪 Ejecutar pruebas

Ejecutar todo

    mvn test

Ejecutar test puntual

    mvn test -Dtest=examples.runners.CreateUserRunner


-----------------

🔒 Helpers

El archivo utils.feature genera usuarios aleatorios para pruebas:

    * def uuid = java.util.UUID.randomUUID().toString()
    * def nombre = 'user_' + uuid
    * def email = nombre + '@test.com'

-----------------


🔄 Validaciones de esquema JSON

Ubicadas en schema/usuarios-schema.json, se integran a las pruebas con:

    * def schema = read('classpath:examples/schema/usuarios-schema.json')
    * match response == schema

-----------------

🚜 Escenarios Cubiertos

Casos positivos:

    - Crear usuario válido

    - Obtener todos los usuarios

    - Buscar usuario por ID

    - Actualizar usuario

    - Eliminar usuario


Casos negativos:

    - Crear usuario sin email

    - Buscar usuario con ID inexistente

    - Actualizar usuario sin datos requeridos

    - Eliminar usuario con ID inválido

-----------------

💾 Reportes

Se generan automáticamente al ejecutar las pruebas:

    target/karate-reports/karate-summary.html

-----------------

📃 Licencia

    MIT

-----------------

-----------------  usuarios-schema.json ---------------------------------

{
"quantidade": "#number",
"usuarios": [
{
"nome": "#string",
"email": "#string",
"password": "#string",
"administrador": "#string",
"_id": "#string"
}
]
}

Ubica este archivo dentro de src/test/java/examples/schema/usuarios-schema.json

