-- Implementar un trigger que actualice automáticamente la disponibilidad de habitaciones 
-- cuando se realice una reserva o se cancele una existente.

DELIMITER //
CREATE TRIGGER REPORTE_RESERVAS
after INSERT on reservas
for each row
BEGIN
UPDATE Habitaciones
SET estado = 'Activa'
WHERE NEW.HabitacionId = Habitaciones.id;

END;
 DELIMITER ;

 DELIMITER //
CREATE TRIGGER REPORTE_RESERVAS_UPDATE
AFTER UPDATE ON Reservas
FOR EACH ROW
BEGIN
    -- Verifica si el estado de la reserva ha cambiado a 'Cancelada'
    IF NEW.Estado = 'Cancelada' AND OLD.Estado != 'Cancelada' THEN
        UPDATE Habitaciones
        SET estado = 'Disponible'
        WHERE id = NEW.HabitacionId;
    ELSEIF NEW.Estado = 'Activa' AND OLD.Estado != 'Activa' THEN
        UPDATE Habitaciones
        SET estado = 'Ocupada'
        WHERE id = NEW.HabitacionId;
    END IF;
END//
DELIMITER ;

SHOW TRIGGERS