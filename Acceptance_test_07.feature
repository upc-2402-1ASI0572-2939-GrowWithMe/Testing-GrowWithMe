Feature: Ver notificaciones

  Scenario: Visualización de notificaciones
    Given tengo notificaciones pendientes
    When ingreso a la sección de notificaciones
    Then deben mostrarse ordenadas por fecha
    And resaltar las que están sin leer

  Scenario: Sin notificaciones
    Given no hay notificaciones
    When ingreso a la sección
    Then debe mostrarse un mensaje indicando que no hay contenido
    And ofrecer sugerencias para mantenerse actualizado
