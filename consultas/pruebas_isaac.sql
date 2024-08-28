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

