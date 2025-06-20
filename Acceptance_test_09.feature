# Escenario 1: Registro exitoso
Scenario: Registro de nuevo agricultor
  Given Que el sistema no tiene un agricultor con email "juan@agro.com"
  When Se envía POST a "/api/farmers" con:
    | nombre | email           | password |
    | Juan   | juan@agro.com   | 123456   |
  Then Respuesta HTTP 201 Created
  And El cuerpo contiene el ID del agricultor
  And La base de datos persiste los datos

# Escenario 2: Actualización exitosa
Scenario: Actualización de perfil
  Given Existe un agricultor con ID 123
  When Se envía PUT a "/api/farmers/123" con:
    | telefono | direccion       |
    | 999888777 | Calle Primavera 123 |
  Then Respuesta HTTP 200 OK
  And La base de datos refleja los cambios
