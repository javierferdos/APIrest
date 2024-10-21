Feature: Buscar un usuario
  Scenario: Buscar un usuario creado en PetStore
    Given I have the endpoint "https://petstore.swagger.io/v2/user/string"
    When I send a GET request
    Then the response code should be 200
    And the response body should contain the key "username" with value "javier"
