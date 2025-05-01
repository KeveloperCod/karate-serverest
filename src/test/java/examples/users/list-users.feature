Feature: Listar todos los usuarios

  Background:
    * url 'https://serverest.dev'

  Scenario: Obtener lista de usuarios
    Given path 'usuarios'
    When method get
    Then status 200
    And match response.usuarios == '#[]'
