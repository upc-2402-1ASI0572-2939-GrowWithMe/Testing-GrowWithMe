Feature: Ver calendario de actividades

  Scenario: Visualización con actividades
    Given tengo actividades registradas
    When accedo al calendario
    Then deberían mostrarse organizadas por fecha

  Scenario: Calendario vacío
    Given no hay actividades registradas
    When ingreso al calendario
    Then debe mostrarse un mensaje informativo
