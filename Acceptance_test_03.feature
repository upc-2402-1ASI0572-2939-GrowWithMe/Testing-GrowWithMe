Feature: Gestionar cultivos

  Scenario: Edición o eliminación exitosa
    Given estoy en la vista de mis cultivos
    When edito o elimino uno correctamente
    Then los cambios deberían reflejarse

  Scenario: Eliminación no confirmada
    Given intento eliminar un cultivo
    When no confirmo la acción
    Then no debería eliminarse
