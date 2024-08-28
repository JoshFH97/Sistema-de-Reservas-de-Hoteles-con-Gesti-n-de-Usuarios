USE Booking;

CREATE VIEW vista_reservas AS
SELECT reservas.id, usuarioId, habitacionId, Fecha_de_Inicio, Fecha_de_Fin
FROM reservas
WHERE fecha_de_inicio = CURRENT_DATE 

DROP VIEW vista_reservas

SELECT * FROM vista_reservas;