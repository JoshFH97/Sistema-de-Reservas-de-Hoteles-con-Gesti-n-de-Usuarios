use Booking;

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
AND '2025-12-31' > `Reservas`.fecha_de_fin 
INNER JOIN Hoteles 
ON Habitaciones.hotel_id = Hoteles.id
AND Hoteles.nombre = 'Hotel Reforma'
AND (Reservas.HabitacionId IS NULL OR Habitaciones.estado = 'Disponible');

SELECT `Hoteles`.nombre, COUNT(Habitaciones.id) AS HabitacionesDisponibles 
FROM Habitaciones 
LEFT JOIN Reservas ON Habitaciones.id = Reservas.HabitacionId 
AND Reservas.fecha_de_inicio <= '2025-12-31'AND Reservas.fecha_de_fin > '2025-12-31'
INNER JOIN Hoteles ON Habitaciones.hotel_id = Hoteles.id 
WHERE Hoteles.nombre = 'Hotel Sol y Playa'AND (Reservas.HabitacionId IS NULL OR Habitaciones.estado = 'Disponible');

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

-- Consulta para obtener las reservas de un cliente (por email) realizadas en el mes anterior.
select * from reservas JOIN usuarios ON UsuarioId = usuarios.id WHERE `Fecha_de_Fin` < '2024-08-01' and email = 'luis.rodriguez@example.com'

-- Consulta para calcular el promedio de reservas diarias en un hotel.
SELECT 
    COUNT(*) / COUNT(DISTINCT Fecha_de_Inicio) 
FROM 
    Reservas
WHERE 
    Estado = 'Activa'
    AND HabitacionId IN (
        SELECT id FROM Habitaciones WHERE hotel_id = 1
    );

-- Consulta para identificar el hotel con la mayor ocupación en el mes anterior.
SELECT Hoteles.nombre, COUNT(Reservas.id) AS total_reservas
FROM Reservas
JOIN Habitaciones ON Reservas.HabitacionId = Habitaciones.id
JOIN Hoteles ON Habitaciones.hotel_id = Hoteles.id
where Reservas.Fecha_de_Inicio<'2024-08-01'
GROUP BY Hoteles.id
ORDER BY total_reservas DESC;

-- Consulta para listar los hoteles que tienen habitaciones disponibles pero no han sido reservadas en el último mes.
SELECT Hoteles.nombre 
from reservas
JOIN Habitaciones on Reservas.HabitacionId=Habitaciones.id
JOIN Hoteles on Habitaciones.hotel_id = Hoteles.id
where `Fecha_de_Inicio` is null or `Fecha_de_Inicio`<'2024-08-01'