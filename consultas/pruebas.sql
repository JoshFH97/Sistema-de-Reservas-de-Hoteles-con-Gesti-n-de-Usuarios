use Booking;

INSERT INTO Usuarios (nombre, email, contraseña, tipo)
VALUES 
('Juan Pérez', 'juan.perez@example.com', 'password123', 'Cliente'),
('María Gómez', 'maria.gomez@example.com', 'securepass', 'Administrador');

INSERT INTO Hoteles (numero_habitaciones, ubicacion, nombre, descripcion)
VALUES 
(100, 'Madrid, España', 'Hotel Madrid Central', 'Un hotel céntrico con todas las comodidades.'),
(50, 'Barcelona, España', 'Hotel Barcelona Beach', 'A solo unos pasos de la playa.');

INSERT INTO Habitaciones (hotel_id, tipo_habitacion, precio_noche, estado)
VALUES 
(1, 'Individual', 75, 'Disponible'),
(1, 'Doble', 120, 'Ocupada'),
(2, 'Suite', 250, 'Disponible');

INSERT INTO Reservas (UsuarioId, HabitacionId, Fecha_de_Inicio, Fecha_de_Fin, Estado)
VALUES 
(1, 1, '2024-09-01', '2024-09-05', 'Activa'),
(2, 3, '2024-09-10', '2024-09-15', 'Activa');


/**********************************************************************************************/
INSERT INTO Usuarios (nombre, email, contraseña, tipo)
VALUES ('isaac','david080900@gmail.com','hola','Administrador')


INSERT INTO Reservas (UsuarioId, HabitacionId, Fecha_de_Inicio, Fecha_de_Fin, Estado)
VALUES (3, 3, '2024-07-10', '2024-07-15', 'Activa');


/**********************************************************************************************/
-- Consulta para obtener las reservas de un cliente (por email) realizadas en el mes anterior.
select * from reservas JOIN usuarios ON UsuarioId = usuarios.id WHERE `Fecha_de_Fin` < '2024-08-01' and email = 'david080900@gmail.com'

-- Consulta para calcular el promedio de reservas diarias en un hotel.

SELECT COUNT(*) AS total_reservas,
       AVG(DATEDIFF(Fecha_de_Fin, Fecha_de_Inicio)) AS promedio_duracion
FROM reservas



SELECT g.nombre AS gimnasio, 
       SUM(r.dias_entrenados) AS total_dias_entrenados
FROM reservas r
JOIN entrenador e ON r.entrenadorId = e.id
JOIN gimnasion g ON e.gimnasionId = g.id
GROUP BY g.nombre;