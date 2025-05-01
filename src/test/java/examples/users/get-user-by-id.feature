Feature: Obtener usuario por ID

  Background:
    * url 'https://serverest.dev'

  Scenario: Buscar usuario existente
  # Primero creamos un usuario
    * def email = 'karate_' + java.util.UUID.randomUUID() + '@mail.com'
    * def usuario =
    """
    {
      "nome": "DevTum",
      "email": "testprueba@hotmail.com",
      "password": "123456",
      "administrador": "false"
    }
    """
    Given path 'usuarios'
    And request usuario
    When method post
    Then status 201
    * def id = response._id

  # Luego lo buscamos por ID
    Given path 'usuarios', id
    When method get
    Then status 200
    And match response._id == id

  Scenario: Buscar usuario inexistente
    Given path 'usuarios', 'id_no_existente'
    When method get
    Then status 400
