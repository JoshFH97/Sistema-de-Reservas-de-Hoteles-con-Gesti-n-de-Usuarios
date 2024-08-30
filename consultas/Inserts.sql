INSERT INTO Usuarios (nombre, email, contraseña, tipo) VALUES
('Juan Perez', 'juan.perez@example.com', 'password123', 'Cliente'),
('Maria Lopez', 'maria.lopez@example.com', 'password456', 'Cliente'),
('Carlos Ramirez', 'carlos.ramirez@example.com', 'password789', 'Cliente'),
('Laura Gomez', 'laura.gomez@example.com', 'password101', 'Cliente'),
('Ana Martinez', 'ana.martinez@example.com', 'password202', 'Cliente'),
('Luis Rodriguez', 'luis.rodriguez@example.com', 'password303', 'Cliente'),
('Marta Sanchez', 'marta.sanchez@example.com', 'password404', 'Cliente'),
('Jose Torres', 'jose.torres@example.com', 'password505', 'Cliente'),
('Sofia Morales', 'sofia.morales@example.com', 'password606', 'Cliente'),
('Pablo Fernandez', 'pablo.fernandez@example.com', 'password707', 'Cliente'),
('Gloria Diaz', 'gloria.diaz@example.com', 'password808', 'Cliente'),
('Raul Jimenez', 'raul.jimenez@example.com', 'password909', 'Cliente');

INSERT INTO Usuarios (nombre, email, contraseña, tipo) VALUES
('Admin 1', 'admin1@example.com', 'adminpassword1', 'Administrador'),
('Admin 2', 'admin2@example.com', 'adminpassword2', 'Administrador'),
('Admin 3', 'admin3@example.com', 'adminpassword3', 'Administrador'),
('isaac','david080900@gmail.com','hola','Administrador');

INSERT INTO Hoteles (numero_habitaciones, ubicacion, nombre, descripcion) VALUES
(50, 'Ciudad de México', 'Hotel Reforma', 'Un hotel de lujo en el corazón de la Ciudad de México.'),
(30, 'Cancún', 'Hotel Sol y Playa', 'Un hotel con vistas al mar en Cancún, perfecto para vacacionar.'),
(40, 'Guadalajara', 'Hotel Zapopan', 'Hotel de negocios con todas las comodidades en Guadalajara.'),
(20, 'Monterrey', 'Hotel Regio', 'Un hotel acogedor en la ciudad de Monterrey.'),
(60, 'Puebla', 'Hotel Angelópolis', 'Un hotel boutique en el centro histórico de Puebla.'),
(100, 'Madrid, España', 'Hotel Madrid Central', 'Un hotel céntrico con todas las comodidades.'),
(50, 'Barcelona, España', 'Hotel Barcelona Beach', 'A solo unos pasos de la playa.');

INSERT INTO Habitaciones (hotel_id, tipo_habitacion, precio_noche, estado) VALUES
(1, 'Sencilla', 1000, 'Disponible'),
(1, 'Doble', 1500, 'Ocupada'),
(2, 'Sencilla', 1200, 'Disponible'),
(2, 'Suite', 2000, 'Ocupada'),
(3, 'Sencilla', 900, 'Disponible'),
(3, 'Doble', 1400, 'Ocupada'),
(4, 'Suite', 2500, 'Disponible'),
(4, 'Doble', 1600, 'Ocupada'),
(5, 'Sencilla', 1100, 'Disponible'),
(5, 'Suite', 2200, 'Ocupada'),
(1, 'Individual', 75, 'Disponible'),
(1, 'Doble', 120, 'Ocupada'),
(2, 'Suite', 250, 'Disponible');

INSERT INTO Reservas (UsuarioId, HabitacionId, Fecha_de_Inicio, Fecha_de_Fin, Estado) VALUES
(1, 2, '2024-08-01', '2024-08-05', 'Activa'),  -- Juan Perez en una Doble del Hotel Reforma
(2, 4, '2024-08-10', '2024-08-15', 'Activa'),  -- Maria Lopez en una Suite del Hotel Sol y Playa
(3, 6, '2024-09-01', '2024-09-07', 'Activa'),  -- Carlos Ramirez en una Doble del Hotel Zapopan
(4, 8, '2024-09-05', '2024-09-12', 'Activa'),  -- Laura Gomez en una Doble del Hotel Regio
(5, 10, '2024-08-20', '2024-08-25', 'Activa'),  -- Ana Martinez en una Suite del Hotel Angelópolis
(6, 2, '2024-07-15', '2024-07-20', 'Cancelada'),  -- Luis Rodriguez en una Doble del Hotel Reforma (Cancelada)
(7, 4, '2024-08-05', '2024-08-10', 'Cancelada'),  -- Marta Sanchez en una Suite del Hotel Sol y Playa (Cancelada)
(8, 6, '2024-09-10', '2024-09-15', 'Activa'),  -- Jose Torres en una Doble del Hotel Zapopan
(9, 8, '2024-09-20', '2024-09-25', 'Activa'),  -- Sofia Morales en una Doble del Hotel Regio
(10, 10, '2024-08-25', '2024-08-30', 'Activa'); -- Pablo Fernandez en una Suite del Hotel Angelópolis