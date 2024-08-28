DELIMITER //
DELIMITER //

CREATE PROCEDURE agregar_reserva(
    IN p_UsuarioId INT,
    IN p_HabitacionId INT,
    IN p_Fecha_de_Inicio DATE,
    IN p_Fecha_de_Fin DATE,
    IN p_Estado ENUM('Activa', 'Cancelada')
)
BEGIN
    INSERT INTO reservas(UsuarioId, HabitacionId, Fecha_de_Inicio, Fecha_de_Fin, Estado)
    VALUES(p_UsuarioId, p_HabitacionId, p_Fecha_de_Inicio, p_Fecha_de_Fin, p_Estado);
END //

DELIMITER ;

SELECT * FROM usuarios;
SELECT * FROM habitaciones;
CALL agregar_reserva(16, 12,'9998-12-12', '9999-12-12', 'Activa');


SELECT * FROM reservas

DROP Procedure agregar_reserva



DELIMITER //

CREATE PROCEDURE cancelar_reserva(
    IN p_id_reserva INT
)
BEGIN
    DECLARE v_id_habitacion INT;
    
    -- Obtener el ID de la habitación asociada con la reserva
    SELECT habitacionId INTO v_id_habitacion
    FROM reservas
    WHERE id = p_id_reserva;
    
    -- Cambiar el estado de la reserva a 'Cancelada'
    UPDATE reservas
    SET estado = 'Cancelada'
    WHERE id = p_id_reserva;
    

    
END //
DELIMITER ;

CALL cancelar_reserva(5)

SELECT * FROM reservas

DROP Procedure cancelar_reserva