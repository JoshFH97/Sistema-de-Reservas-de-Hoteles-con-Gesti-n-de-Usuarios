CREATE INDEX idx_reservas
ON Reservas (habitacionId);
-- La Razon es que es la tabla a la que mas consultas se hace y si casi todas relacionadas con la columna habitacionId\