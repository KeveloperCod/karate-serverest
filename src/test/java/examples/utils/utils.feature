Feature: Generador de datos de prueba

  Scenario: Crear usuario aleatorio
    * def uuid = java.util.UUID.randomUUID().toString()
    * def nombre = 'user_' + uuid
    * def email = nombre + '@test.com'
    * def user = { nombre: nombre, email: email }
    * match user contains { nombre: '#string', email: '#string' }
