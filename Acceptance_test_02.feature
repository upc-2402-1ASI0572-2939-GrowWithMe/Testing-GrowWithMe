Feature: Funcionalidad de botones Call-to-Action

  Scenario: Funcionamiento correcto de los botones
    Given un visitante visualiza la landing page
    When hace clic en un botón del header
    Then es redirigido correctamente
    And la navegación ocurre sin errores

  Scenario: Enlace roto
    Given un visitante hace clic en un botón
    When el enlace no está correctamente configurado
    Then se muestra un mensaje de error 404
    And el visitante permanece en la misma página
