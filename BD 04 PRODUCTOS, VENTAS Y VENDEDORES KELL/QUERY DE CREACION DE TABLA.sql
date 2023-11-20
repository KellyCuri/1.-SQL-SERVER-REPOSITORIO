--- LA TABLA VENTAS Y PRODUCTOS SE SUBIERON CON EXCEL 

CREATE TABLE VENDEDORES
(ID_VENDEDOR INT NOT NULL PRIMARY KEY,
NOMBRE_VENDEDOR VARCHAR(50),
EDAD INT,
DISTRITO NVARCHAR(50),
ACTIVO INT);


INSERT INTO dbo.vendedores
values
(3, 'JOSE CURI', 54, 'SURQUILLO', 1),
(4, 'KASSANDRA LISSET', 24, 'SURQUILLO', 1),
(5, 'KATHERIN JHOANY', 35, 'SURQUILLO', 1),
(6, 'KELLY MILAGROS', 29, 'CERCADO DE LIMA', 1),
(7, 'MARIA LAURA', 53, 'SURQUILLO', 1),
(8, 'SIRI CURI', 12, 'SURQUILLO', 0),
(9, 'STEVEN CORNEJO ', 27, 'CERCADO DE LIMA', 1),
(10, 'STONE CURI', 70, 'CERCADO DE LIMA', 0),
(11, 'ZIA CURI', 1, 'SURQUILLO', 0),
(12, 'ZOE HUILCA',  10, 'SURQUILLO', 1);


SELECT top(3) * FROM VENDEDORES
SELECT top(3) * FROM VENTAS
select top(3) * from [PRODUCTOS.V]


SELECT * FROM VENDEDORES
SELECT * FROM VENTAS
select * from [PRODUCTOS.V]

-- SOLO CAMBIAR UN VALOR EN ESPECIFICO (CELDA)
UPDATE [PRODUCTOS.V]
SET TIPO_PRODUCTO = 'PROPIO'
WHERE ID = 101 

--- SE MODIFICARON CODIGOS EN TABLA VENTAS PARA CRUZAR CON TABLA VENDEDORES Y TABLAPRODUCTO.V
-- CAMBIAR VARIOS VALORES
UPDATE VENTAS                    -- EJEMPLO TABLA PRODUCTO.V BD_VENDEDORES
SET ID_VENDEDORES = 
CASE 
WHEN ID = 1 THEN 10003
WHEN ID = 2 THEN 10007
WHEN ID = 3 THEN 10005
WHEN ID = 4 THEN 10004
WHEN ID = 5 THEN 10012
WHEN ID = 6 THEN 10009
WHEN ID = 7 THEN 10006
WHEN ID = 8 THEN 10001
WHEN ID = 9 THEN 10010
WHEN ID = 10 THEN 10002
WHEN ID = 11 THEN 10011
WHEN ID = 12 THEN 10008
WHEN ID = 13 THEN 10003
WHEN ID = 14 THEN 10007
WHEN ID = 15 THEN 10005
WHEN ID = 16 THEN 10004
WHEN ID = 17 THEN 10012
WHEN ID = 18 THEN 10009
WHEN ID = 19 THEN 10006
WHEN ID = 20 THEN 10001
WHEN ID = 21 THEN 10010
WHEN ID = 22 THEN 10002
WHEN ID = 23 THEN 10011
WHEN ID = 24 THEN 10008
WHEN ID = 25 THEN 10003
WHEN ID = 26 THEN 10007
WHEN ID = 27 THEN 10005
WHEN ID = 28 THEN 10004
WHEN ID = 29 THEN 10012
WHEN ID = 30 THEN 10009
WHEN ID = 31 THEN 10006
WHEN ID = 32 THEN 10001
WHEN ID = 33 THEN 10010
WHEN ID = 34 THEN 10002
WHEN ID = 35 THEN 10011
WHEN ID = 36 THEN 10008
WHEN ID = 37 THEN 10003
WHEN ID = 38 THEN 10007
WHEN ID = 39 THEN 10005
WHEN ID = 40 THEN 10004
WHEN ID = 41 THEN 10012
WHEN ID = 42 THEN 10009
WHEN ID = 43 THEN 10006
WHEN ID = 44 THEN 10001
WHEN ID = 45 THEN 10010
WHEN ID = 46 THEN 10002
WHEN ID = 47 THEN 10011
WHEN ID = 48 THEN 10008
WHEN ID = 49 THEN 10003
WHEN ID = 50 THEN 10007
WHEN ID = 51 THEN 10005
WHEN ID = 52 THEN 10004
WHEN ID = 53 THEN 10012
WHEN ID = 54 THEN 10009
WHEN ID = 55 THEN 10006
WHEN ID = 56 THEN 10001
WHEN ID = 57 THEN 10010
WHEN ID = 58 THEN 10002
WHEN ID = 59 THEN 10011
WHEN ID = 60 THEN 10008
WHEN ID = 61 THEN 10003
WHEN ID = 62 THEN 10007
WHEN ID = 63 THEN 10005
WHEN ID = 64 THEN 10004
WHEN ID = 65 THEN 10012
WHEN ID = 66 THEN 10009
WHEN ID = 67 THEN 10006
WHEN ID = 68 THEN 10001
WHEN ID = 69 THEN 10010
WHEN ID = 70 THEN 10002
WHEN ID = 71 THEN 10011
WHEN ID = 72 THEN 10008
WHEN ID = 73 THEN 10003
WHEN ID = 74 THEN 10007
WHEN ID = 75 THEN 10005
WHEN ID = 76 THEN 10004
WHEN ID = 77 THEN 10012
WHEN ID = 78 THEN 10009
WHEN ID = 79 THEN 10006
WHEN ID = 80 THEN 10001
WHEN ID = 81 THEN 10010
WHEN ID = 82 THEN 10002
WHEN ID = 83 THEN 10011
WHEN ID = 84 THEN 10008
WHEN ID = 85 THEN 10003
WHEN ID = 86 THEN 10007
WHEN ID = 87 THEN 10005
WHEN ID = 88 THEN 10004
WHEN ID = 89 THEN 10012
WHEN ID = 90 THEN 10009
WHEN ID = 91 THEN 10006
WHEN ID = 92 THEN 10001
WHEN ID = 93 THEN 10010
WHEN ID = 94 THEN 10002
WHEN ID = 95 THEN 10011
WHEN ID = 96 THEN 10008
ELSE ID_VENDEDORES  -- Mantener valores existentes para otros IDs
    END;

UPDATE VENTAS                    -- EJEMPLO TABLA PRODUCTO.V BD_VENDEDORES
SET ID_PRODUCTOS = 
CASE
WHEN ID = 1 THEN 105
WHEN ID = 2 THEN 108
WHEN ID = 3 THEN 103
WHEN ID = 4 THEN 110
WHEN ID = 5 THEN 101
WHEN ID = 6 THEN 108
WHEN ID = 7 THEN 110
WHEN ID = 8 THEN 102
WHEN ID = 9 THEN 103
WHEN ID = 10 THEN 104
WHEN ID = 11 THEN 102
WHEN ID = 12 THEN 106
WHEN ID = 13 THEN 104
WHEN ID = 14 THEN 104
WHEN ID = 15 THEN 108
WHEN ID = 16 THEN 106
WHEN ID = 17 THEN 106
WHEN ID = 18 THEN 103
WHEN ID = 19 THEN 108
WHEN ID = 20 THEN 101
WHEN ID = 21 THEN 102
WHEN ID = 22 THEN 104
WHEN ID = 23 THEN 108
WHEN ID = 24 THEN 106
WHEN ID = 25 THEN 104
WHEN ID = 26 THEN 109
WHEN ID = 27 THEN 104
WHEN ID = 28 THEN 105
WHEN ID = 29 THEN 102
WHEN ID = 30 THEN 103
WHEN ID = 31 THEN 107
WHEN ID = 32 THEN 101
WHEN ID = 33 THEN 101
WHEN ID = 34 THEN 106
WHEN ID = 35 THEN 101
WHEN ID = 36 THEN 105
WHEN ID = 37 THEN 103
WHEN ID = 38 THEN 104
WHEN ID = 39 THEN 109
WHEN ID = 40 THEN 107
WHEN ID = 41 THEN 106
WHEN ID = 42 THEN 110
WHEN ID = 43 THEN 107
WHEN ID = 44 THEN 101
WHEN ID = 45 THEN 101
WHEN ID = 46 THEN 107
WHEN ID = 47 THEN 105
WHEN ID = 48 THEN 108
WHEN ID = 49 THEN 108
WHEN ID = 50 THEN 108
WHEN ID = 51 THEN 108
WHEN ID = 52 THEN 110
WHEN ID = 53 THEN 110
WHEN ID = 54 THEN 104
WHEN ID = 55 THEN 110
WHEN ID = 56 THEN 103
WHEN ID = 57 THEN 104
WHEN ID = 58 THEN 101
WHEN ID = 59 THEN 101
WHEN ID = 60 THEN 104
WHEN ID = 61 THEN 105
WHEN ID = 62 THEN 108
WHEN ID = 63 THEN 108
WHEN ID = 64 THEN 106
WHEN ID = 65 THEN 101
WHEN ID = 66 THEN 106
WHEN ID = 67 THEN 109
WHEN ID = 68 THEN 104
WHEN ID = 69 THEN 107
WHEN ID = 70 THEN 101
WHEN ID = 71 THEN 110
WHEN ID = 72 THEN 106
WHEN ID = 73 THEN 105
WHEN ID = 74 THEN 110
WHEN ID = 75 THEN 108
WHEN ID = 76 THEN 104
WHEN ID = 77 THEN 102
WHEN ID = 78 THEN 102
WHEN ID = 79 THEN 103
WHEN ID = 80 THEN 109
WHEN ID = 81 THEN 103
WHEN ID = 82 THEN 106
WHEN ID = 83 THEN 107
WHEN ID = 84 THEN 101
WHEN ID = 85 THEN 104
WHEN ID = 86 THEN 105
WHEN ID = 87 THEN 108
WHEN ID = 88 THEN 107
WHEN ID = 89 THEN 110
WHEN ID = 90 THEN 108
WHEN ID = 91 THEN 103
WHEN ID = 92 THEN 108
WHEN ID = 93 THEN 110
WHEN ID = 94 THEN 104
WHEN ID = 95 THEN 108
WHEN ID = 96 THEN 102
ELSE ID_PRODUCTOS  -- Mantener valores existentes para otros IDs
    END;



-- CREANDO ID PARA QUE CRUCEN
-- PARA CAMBIAR VARIOS VALORES DE UNA COLUMNA
UPDATE [PRODUCTOS.V]
SET ID =
CASE 
WHEN ID = 1 THEN 101
WHEN ID = 2 THEN 102
WHEN ID = 3 THEN 103
WHEN ID = 4 THEN 104
WHEN ID = 5 THEN 105
WHEN ID = 6 THEN 106
WHEN ID = 7 THEN 107
WHEN ID = 8 THEN 108
WHEN ID = 9 THEN 109
WHEN ID = 10 THEN 110
END;

UPDATE VENDEDORES
SET ID_VENDEDOR =
CASE 
WHEN ID_VENDEDOR = 1 THEN 10001
WHEN ID_VENDEDOR = 2 THEN 10002
WHEN ID_VENDEDOR = 3 THEN 10003
WHEN ID_VENDEDOR = 4 THEN 10004
WHEN ID_VENDEDOR = 5 THEN 10005
WHEN ID_VENDEDOR = 6 THEN 10006
WHEN ID_VENDEDOR = 7 THEN 10007
WHEN ID_VENDEDOR = 8 THEN 10008
WHEN ID_VENDEDOR = 9 THEN 10009
WHEN ID_VENDEDOR = 10 THEN 10010
WHEN ID_VENDEDOR = 11 THEN 10011
WHEN ID_VENDEDOR = 12 THEN 10012
END;
--- 0. PARA AGREGAR NUEVAS COLUMNAS 
ALTER TABLE mi_tabla
ADD nueva_columna INT; -- Por ejemplo, una nueva columna de tipo entero (INT)


--- 1. PARA CAMBIAR SOLO EL VALOR DE UNA CELDA
UPDATE [PRODUCTOS.V]
SET TIPO_PRODUCTO = 'PROPIO'
WHERE ID = 1;


-- 2. PARA CAMBIAR VARIOS VALORES DE UNA COLUMNA
UPDATE [PRODUCTOS.V]
SET TIPO_PRODUCTO = 
CASE 
WHEN ID = 1 THEN 'PROPIOS'
WHEN ID = 2 THEN 'TERCEROS'
WHEN ID = 3 THEN 'TERCEROS'
WHEN ID = 4 THEN 'PROPIO'
WHEN ID = 5 THEN 'PROPIO'
WHEN ID = 6 THEN 'TERCEROS'
WHEN ID = 7 THEN 'TERCEROS'
WHEN ID = 8 THEN 'PROPIO'
WHEN ID = 9 THEN 'PROPIO'
WHEN ID = 10 THEN 'PROPIO'
ELSE TIPO_PRODUCTO  -- Mantener valores existentes para otros IDs
END;


--------------- EJERCICIOS DE KELLY--------------------
---- 3. SELECCIONAR 3 TABLAS 
SELECT A.VENDEDORES, A.PRODUCTOS, A.FECHA 
FROM VENTAS A
JOIN VENDEDORES B ON A.ID_VENDEDORES=B.ID_VENDEDOR
JOIN [PRODUCTOS.V] C ON A.ID_PRODUCTOS=C.ID
WHERE C.TIPO_PRODUCTO='PROPIO'
AND B.ACTIVO=1

--- 4. MOSTRAR LOS 5 PRIMEROS QUE VENDIERON LAS MAYORES CANTIDADES EN ORDEN
SELECT TOP(5) VENDEDORES, SUM(CANTIDAD) AS TOTAL
FROM VENTAS
GROUP BY VENDEDORES
ORDER BY TOTAL DESC;


--- 5. MOSTRAR EL 3ER PUESTO EN CANTIDADES DE VENTAS
--- CORRECTO
SELECT VENDEDORES, TOTAL, 
FROM (
SELECT VENDEDORES, SUM(CANTIDAD) AS TOTAL,
ROW_NUMBER() OVER (ORDER BY SUM(CANTIDAD) DESC) AS Rank
FROM VENTAS
GROUP BY VENDEDORES ) AS RankedSales
WHERE Rank = 3;

------ MAS FACIL AGREGANDO OFFSET N Y FETCH NEXT

SELECT VENDEDORES, SUM(CANTIDAD) AS TOTAL
FROM VENTAS
GROUP BY VENDEDORES
ORDER BY SUM(CANTIDAD) DESC
OFFSET 2 ROWS   ---- si es 3 se resta 1
FETCH NEXT 1 ROWS ONLY;   ----  fetch next 2 rows only (3ero y 4to)


--- SELECCIONAR A LOS VENDEDORES QUE GASTARON MENOS
SELECT VENDEDORES, SUM(COSTOS_TOTAL) AS TOTAL_COSTOS
FROM VENTAS
GROUP BY VENDEDORES
ORDER BY TOTAL_COSTOS ASC


--- 6. SELECCIONAR AL 5TO VENDEDOR QUE GASTO MENOS  
SELECT VENDEDORES, SUM(COSTOS_TOTAL) AS TOTAL_COSTOS
FROM VENTAS
GROUP BY VENDEDORES
ORDER BY TOTAL_COSTOS ASC
OFFSET 4 ROWS
FETCH NEXT 1 ROWS ONLY

--- 7. SELECCIONAR AL 5TO, 6TO Y 7MO VENDEDOR QUE GASTO MENOS  
SELECT VENDEDORES, SUM(COSTOS_TOTAL) AS TOTAL_COSTOS
FROM VENTAS
GROUP BY VENDEDORES
ORDER BY TOTAL_COSTOS ASC
OFFSET 4 ROWS
FETCH NEXT 3 ROWS ONLY

--- O ---
SELECT VENDEDORES, SUM(COSTOS_TOTAL) AS TOTAL_COSTOS
FROM VENTAS
GROUP BY VENDEDORES
ORDER BY TOTAL_COSTOS ASC
OFFSET 4 ROWS
FETCH NEXT 3 ROWS ONLY


--- TAMBIEN SERIA ASI
SELECT * FROM movies
ORDER BY Title ASC
LIMIT 5 OFFSET 5;  -- CONTAR 5 A PARTIR DEL 5TO DATO

CREATE TABLE Database 
(Name TEXT,
Version FLOAT,
Download_count INTEGER, 
);


--- 8. SELECCIONAR LAS VENTAS MAYORES A 01/07/2023 Y MENORES A 30/08/2023
SELECT * FROM VENTAS
WHERE FECHA >= '2023-07-01'
AND FECHA <= '2023-08-30'

-- O --
SELECT * FROM VENTAS
WHERE FECHA BETWEEN '2023-07-01' AND '2023-08-30'

--- 9. SELECCIONAR LAS VENTAS QUE NO SE ENCUENTREN ENTRE 01/07/2023 Y 30/08/2023
SELECT * FROM VENTAS
WHERE FECHA < '2023-07-01'
or FECHA > '2023-08-30'

-- o --
SELECT * FROM VENTAS
WHERE FECHA NOT BETWEEN '2023-07-01' AND '2023-08-30'

--- 10. SELECCIONAR LAS PRIMERAS 5 VENTAS POR FECHA
SELECT PRODUCTOS, FECHA
FROM VENTAS
LIMIT 5 

SELECT TOP(5) PRODUCTOS, FECHA
FROM VENTAS

--11. Enumere todas vendedores y las ventas que atendieron en fechas pares.
SELECT VENDEDORES, PRODUCTOS, FECHA
FROM VENTAS
WHERE MONTH(FECHA) % 2 = 0;   --- SI ES A�O PONER YEAR