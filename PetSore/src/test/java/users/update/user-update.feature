Feature: Actualizar un usuario
  Scenario: Actualizar el nombre y el correo del usuario en PetStore
    Given I have the endpoint "https://petstore.swagger.io/v2/user/prueba"
    And the request body is:
      """
      {
        "id": 0,
        "username": "nuevoUsuario",
        "firstName": "javier",
        "lastName": "Perez",
        "email": "javierpro.pre@gmail.com",
        "password": "password123",
        "phone": "1234567890",
        "userStatus": 300
      }
      """
    When I send a PUT request
    Then the response code should be 200
