Feature: Eliminar un usuario
  Scenario: Eliminar un usuario en PetStore
    Given I have the endpoint "https://petstore.swagger.io/v2/user/javier"
    When I send a DELETE request
    Then the response code should be 200
