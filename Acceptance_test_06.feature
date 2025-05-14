Feature: Visualizar dashboard por cultivo

  Scenario: Dashboard cargado exitosamente
    Given selecciono un cultivo en "Mis Cultivos"
    When accedo a su dashboard
    Then deben mostrarse sus datos de sensores actualizados
    And debe incluir gráficos y alertas relevantes

  Scenario: Error al cargar datos
    Given ocurre un error de conexión
    When intento ver el dashboard
    Then debe mostrarse un mensaje de error
    And ofrecer la opción de reintentar
