Feature: Añadir actividad al calendario

  Scenario: Actividad añadida exitosamente
    Given accedo a 'Mis Cultivos' y luego a 'Calendario de actividades'
    When ingreso una nueva actividad con todos los datos requeridos
    Then debe añadirse correctamente

  Scenario: Datos incompletos
    Given dejo campos vacíos
    When intento guardar la actividad
    Then debe mostrarse un mensaje de error
