Feature: Diseño informativo y atractivo

  Scenario: Visualización clara y completa de la landing page
    Given un visitante accede a la landing page
    When la página carga completamente
    Then se muestra una interfaz organizada con secciones de beneficios, ejemplos e imágenes
    And la información es presentada de manera sencilla y comprensible

  Scenario: Fallo en carga de contenido
    Given un visitante accede a la landing page
    When ocurre un error al cargar los elementos
    Then se muestra un mensaje de error de carga
    And se ofrece la opción de recargar la página
