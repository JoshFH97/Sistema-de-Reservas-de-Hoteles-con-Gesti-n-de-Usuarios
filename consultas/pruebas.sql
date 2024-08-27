use Booking;

/********************************************************************************************************/
--Consulta para obtener los hoteles con mayor número de reservas.
SELECT Hoteles.nombre, COUNT(Reservas.id) AS total_reservas
FROM Reservas
JOIN Habitaciones ON Reservas.HabitacionId = Habitaciones.id
JOIN Hoteles ON Habitaciones.hotel_id = Hoteles.id
GROUP BY Hoteles.id
ORDER BY total_reservas DESC;

-- Consulta para contar cuántas habitaciones disponibles hay en un hotel específico en una fecha dada.
-- Consulta para buscar hoteles por nombre.

-- Consulta para buscar hoteles cuya ubicación comienza con un texto específico.
-- Consulta para buscar hoteles cuya ubicación termina con un texto específico.
