CREATE DATABASE 
;
use Hoteles

CREATE Table Usuarios(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    email VARCHAR(50) UNIQUE,
    contraseña VARCHAR(50),
    tipo ENUM('Cliente','Administrador')
    ); 
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
('Admin 3', 'admin3@example.com', 'adminpassword3', 'Administrador');


CREATE TABLE Hoteles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero_habitaciones INT,
    ubicacion VARCHAR(100),
    nombre VARCHAR(100),
    descripcion TEXT
);

CREATE TABLE Habitaciones (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    hotel_id INT,
    tipo_habitacion VARCHAR(50),
    precio_noche INT,
    estado ENUM('Disponible', 'Ocupada'),
    FOREIGN KEY (hotel_id) REFERENCES Hoteles(id)
);


CREATE TABLE Reservas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    UsuarioId INT,
    HabitacionId INT,
    Fecha_de_Inicio DATE,
    Fecha_de_Fin DATE,
    Estado ENUM('Activa', 'Cancelada'),
    FOREIGN KEY (UsuarioId) REFERENCES Usuarios(id),
    FOREIGN KEY (HabitacionId) REFERENCES Habitaciones(id)
);
