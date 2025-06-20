# Escenario 1: Registro exitoso
Scenario: Vincular dispositivo IoT
  Given El cultivo ID 456 existe
  When Se envía POST a "/api/crops/456/devices" con:
    | deviceId | tipo          |
    | DHT-001  | SensorHumedad |
  Then Respuesta HTTP 201 Created
  And La respuesta incluye "fechaActivacion"

# Escenario 2: Consulta de dispositivos
Scenario: Listar dispositivos de cultivo
  Given El cultivo ID 456 tiene 2 dispositivos
  When Se envía GET a "/api/crops/456/devices"
  Then Respuesta HTTP 200 OK
  And El cuerpo es un array con longitud 2
  And Cada item tiene: id, tipo, ultimaLectura
