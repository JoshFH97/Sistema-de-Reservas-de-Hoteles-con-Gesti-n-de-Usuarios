
-- Consulta para obtener las reservas de un cliente (por email) realizadas en el mes anterior.
select * from reservas JOIN usuarios ON UsuarioId = usuarios.id WHERE `Fecha_de_Fin` < '2024-08-01' and email = 'david080900@gmail.com'

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

