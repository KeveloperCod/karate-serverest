Feature: Eliminar usuario

  Background:
    * url 'https://serverest.dev'

  Scenario: Eliminar usuario existente
    * def email = 'karate_' + java.util.UUID.randomUUID() + '@mail.com'
    * def usuario =
    """
    {
      "nome": "UsuarioDlt",
      "email": "#(email)",
      "password": "123456",
      "administrador": "true"
    }
    """
    Given path 'usuarios'
    And request usuario
    When method post
    Then status 201
    * def id = response._id

    Given path 'usuarios', id
    When method delete
    Then status 200
    And match response.message == 'Registro excluído com sucesso'
