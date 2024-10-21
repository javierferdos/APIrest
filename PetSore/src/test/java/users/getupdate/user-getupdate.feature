Feature: Buscar un usuario actualizado
  Scenario: Buscar el usuario actualizado en PetStore
    Given I have the endpoint "https://petstore.swagger.io/v2/user/string"
    When I send a GET request
    Then the response code should be 200
    And the response body should contain the key "firstName" with value "javierpro"
    And the response body should contain the key "email" with value "javierpre.pro@gmail.com"
