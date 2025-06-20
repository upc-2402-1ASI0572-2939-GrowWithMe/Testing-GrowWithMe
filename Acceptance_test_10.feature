# Escenario 1: Listado de agricultores
Scenario: Obtener agricultores asignados
  Given El consultor ID 456 tiene 3 agricultores asignados
  When Se envía GET a "/api/advisors/456/farmers"
  Then Respuesta HTTP 200 OK
  And El cuerpo contiene array con 3 elementos
  And Cada elemento tiene campos: id, nombre, email

# Escenario 2: Consulta enviada
Scenario: Envío de notificación a agricultor
  Given Existe el agricultor ID 789
  When Se envía POST a "/api/advisors/notifications" con:
    | farmerId | mensaje                     |
    | 789      | "Revisar riego en cultivo X" |
  Then Respuesta HTTP 202 Accepted
  And El sistema registra la notificación
  And El agricultor 789 recibe alerta en su dashboard
