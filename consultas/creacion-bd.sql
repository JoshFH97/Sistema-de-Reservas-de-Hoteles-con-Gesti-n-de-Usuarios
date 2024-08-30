
CREATE DATABASE Booking;
 
#1
DROP DATABASE booking;

use Booking;
 
 # Crear 1

CREATE Table Usuarios(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    email VARCHAR(50) UNIQUE,
    contraseña VARCHAR(50),
    tipo ENUM('Cliente','Administrador')
    ); 

# Crear 2
CREATE TABLE Hoteles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero_habitaciones INT,
    ubicacion VARCHAR(100),
    nombre VARCHAR(100),
    descripcion TEXT
);

# Crear 3
CREATE TABLE Habitaciones (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    hotel_id INT,
    tipo_habitacion VARCHAR(50),
    precio_noche INT,
    estado ENUM('Disponible', 'Ocupada'),
    FOREIGN KEY (hotel_id) REFERENCES Hoteles(id)
);
# Crear 4
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
