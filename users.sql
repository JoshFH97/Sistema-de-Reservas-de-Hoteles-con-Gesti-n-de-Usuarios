CREATE Table Usuarios(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    email VARCHAR(50) UNIQUE,
    contraseña VARCHAR(50),
    tipo ENUM('Cliente','Administrador')
    ); 

    - **Reservas**
  - ID (PK)
  - UsuarioID (FK)
  - HabitacionID (FK)
  - Fecha de inicio
  - Fecha de fin
  - Estado (Activa/Cancelada)
  CREATE Table Hoteles(
    id PRIMARY KEY auto_increment not NULL INT,
    numero_habitaciones INT,
    ubicacion VARCHAR(100),
    nombre VARCHAR(100),
    descripcion TEXT
);

CREATE TABLE Habitaciones(
    id PRIMARY key auto_increment not null,
    hotel_id int,
    tipo_habitacion varchar(50),
    precio_noche int,
    estado ENUM('Disponible', 'Ocupada'),
    FOREIGN KEY (hotel_id) REFERENCES Hoteles(id)
    
)

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
