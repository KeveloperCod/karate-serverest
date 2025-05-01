Feature: Crear usuario

  Background:
    * url 'https://serverest.dev'

  Scenario: Crear usuario válido
    * def randomEmail = 'karate_' + java.util.UUID.randomUUID() + '@mail.com'
    * def usuario =
    """
    {
      "nome": "Tester Karate",
      "email": "#(randomEmail)",
      "password": "123456",
      "administrador": "true"
    }
    """
    Given path 'usuarios'
    And request usuario
    When method post
    Then status 201
    And match response.message == 'Cadastro realizado com sucesso'

  Scenario: Error al crear usuario sin email
    * def usuario =
    """
    {
      "nome": "Sin Email",
      "password": "123456",
      "administrador": "true"
    }
    """
    Given path 'usuarios'
    And request usuario
    When method post
    Then status 400
    And match response.message contains 'email'
