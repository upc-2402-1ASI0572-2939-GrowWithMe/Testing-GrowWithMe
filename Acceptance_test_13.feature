# Escenario 1: Consulta de notificaciones
Scenario: Obtener notificaciones no leídas
  Given El usuario ID 101 tiene 5 notificaciones (3 no leídas)
  When Se envía GET a "/api/users/101/notifications?status=unread"
  Then Respuesta HTTP 200 OK
  And El cuerpo contiene array con 3 elementos
  And Cada notificación tiene: id, mensaje, fecha

# Escenario 2: Marcado como leído
Scenario: Actualizar estado de notificación
  Given Existe notificación ID 202 no leída
  When Se envía PUT a "/api/notifications/202" con:
    { "status": "read" }
  Then Respuesta HTTP 200 OK
  And La base de datos actualiza el campo "leido" a true
