# Escenario 1: Registro de cultivo
Scenario: Crear nuevo cultivo
  Given El agricultor ID 123 está autenticado
  When Se envía POST a "/api/farmers/123/crops" con:
    | nombre      | area_hectareas | tipo      |
    | Maíz 2024  | 5.2            | Cereal    |
  Then Respuesta HTTP 201 Created
  And La respuesta incluye campo "fechaSiembra"

# Escenario 2: Consulta individual
Scenario: Obtener detalle de cultivo
  Given Existe cultivo ID 789
  When Se envía GET a "/api/crops/789"
  Then Respuesta HTTP 200 OK
  And El cuerpo contiene:
    | id | nombre      | estado    |
    | 789 | Maíz 2024  | Activo    |
