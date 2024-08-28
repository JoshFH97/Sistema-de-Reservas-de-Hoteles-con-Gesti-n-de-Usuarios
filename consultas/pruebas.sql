use Booking;

/********************************************************************************************************/
--Consulta para obtener los hoteles con mayor número de reservas.
SELECT Hoteles.nombre, COUNT(Reservas.id) AS total_reservas
FROM Reservas
JOIN Habitaciones ON Reservas.HabitacionId = Habitaciones.id
JOIN Hoteles ON Habitaciones.hotel_id = Hoteles.id
GROUP BY Hoteles.id
ORDER BY total_reservas DESC;

-- -- Consulta para contar cuántas habitaciones disponibles hay en un hotel específico en una fecha dada.'
SELECT COUNT(Habitaciones.id) AS HabitacionesDisponibles
FROM Habitaciones
INNER JOIN Reservas 
ON Habitaciones.id = Reservas.HabitacionId 
AND '2024-10-31' > `Reservas`.fecha_de_fin
INNER JOIN Hoteles 
ON Habitaciones.hotel_id = Hoteles.id
AND (Reservas.HabitacionId IS NULL OR Habitaciones.estado = 'Disponible');



-- Consulta para buscar hoteles por nombre.
  SELECT nombre, ubicacion, descripcion
  FROM Hoteles
  WHERE nombre = 'Hotel Reforma';

-- Consulta para buscar hoteles cuya ubicación comienza con un texto específico.
   SELECT nombre, ubicacion, descripcion
   FROM Hoteles
   WHERE ubicacion LIKE 'gua%'

-- Consulta para buscar hoteles cuya ubicación termina con un texto específico.
   SELECT nombre, ubicacion, descripcion
   FROM Hoteles
   WHERE ubicacion LIKE '%jara'