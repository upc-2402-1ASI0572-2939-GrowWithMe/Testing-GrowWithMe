Feature: Ver lista de agricultores

  Scenario: Lista disponible
    Given tengo agricultores asignados
    When accedo a la vista "Agricultores"
    Then deben mostrarse con sus datos
    And poder seleccionarlos individualmente para ver más información

  Scenario: Lista vacía
    Given no hay agricultores disponibles
    When ingreso a la lista
    Then debe mostrarse un mensaje informativo
    And no debe presentarse ningún error de carga
