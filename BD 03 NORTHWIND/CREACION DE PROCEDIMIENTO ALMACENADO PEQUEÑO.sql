-- Crear una tabla de ejemplo
CREATE TABLE MiTabla (
    ID INT PRIMARY KEY,
    Nombre NVARCHAR(50),
    Edad INT
);
select * from MiTabla

-- Insertar algunos datos de ejemplo
INSERT INTO MiTabla (ID, Nombre, Edad)
VALUES
    (1, 'Juan', 25),
    (2, 'Ana', 30),
    (3, 'Carlos', 22);

-- Crear el procedimiento almacenado
CREATE PROCEDURE ObtenerDatosDeMiTabla
AS
BEGIN
    -- Cuerpo del procedimiento
    SELECT * FROM MiTabla;
END;

-- Llamar al procedimiento almacenado
EXEC ObtenerDatosDeMiTabla;

EXEC Northwind.dbo.ObtenerDatosDeMiTabla;

DROP PROCEDURE ObtenerDatosDeMiTabla