Feature: Crear un usuario
  Scenario: Crear un nuevo usuario en PetStore
    Given I have the endpoint "https://petstore.swagger.io/v2/user"
    And the request body is:
      """
      {
        "id": 5,
        "username": "nuevoUsuario",
        "firstName": "Juan",
        "lastName": "Perez",
        "email": "juan.perez@example.com",
        "password": "password123",
        "phone": "1234567890",
        "userStatus": 0
      }
      """
    When I send a POST request
    Then the response code should be 200
    And the response body should contain the key "id"
