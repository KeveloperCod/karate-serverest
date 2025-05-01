Feature: Actualizar usuario

  Background:
    * url 'https://serverest.dev'

  Scenario: Editar nombre del usuario
  # Crear usuario
    * def email = 'karate_' + java.util.UUID.randomUUID() + '@mail.com'
    * def user =
    """
    {
      "nome": "UsrNoUpdate",
      "email": "#(email)",
      "password": "123456",
      "administrador": "true"
    }
    """
    Given path 'usuarios'
    And request user
    When method post
    Then status 201
    * def id = response._id

  # Actualizar usuario
    * def actualizado =
    """
    {
      "nome": "UsrUpdate",
      "email": "#(email)",
      "password": "123456",
      "administrador": "true"
    }
    """
    Given path 'usuarios', id
    And request actualizado
    When method put
    Then status 200
    And match response.message == 'Registro alterado com sucesso'
