SELECT * FROM Categories
SELECT * FROM CustomerCustomerDemo
SELECT * FROM CustomerDemographics
SELECT * FROM Customers
SELECT * FROM Employees
SELECT * FROM EmployeeTerritories
SELECT * FROM [Order Details]
SELECT * FROM [Orders]
SELECT * FROM Products
SELECT * FROM Region
SELECT * FROM Shippers
SELECT * FROM Suppliers
SELECT * FROM Territories

---------------------------------------- CREACIONES DE VISTAS --------------------------------------------
-- EJERCICIO 1
-- A) MOSTRAR COD, NOMBRE Y PRECIO POR UNIDAD DEL PRODUCTO
create view Datos_productos
as
SELECT ProductID as PRODUCTO, 
ProductName as NOMBRE,
UnitPrice as PRECIO_UNIDAD
from Products
go 

select * from Datos_productos

-- BORRAR VISTA
DROP VIEW Datos_productos

-- B) MOSTRAR TODOS LOS PRODUCTOS CUYA CATEGORIA SEA BEVERAGES
CREATE VIEW CATEGORIA_BEVERAGES
AS
SELECT *
FROM Products
where CategoryID=1
GO

SELECT * FROM CATEGORIA_BEVERAGES

-- C) MOSTRAR LOS DATOS DEL CLIENTE Y LAS FECHAS DE LAS ORDENES QUE ESTOS HAN REALIZADO
Create view Datos_cliente
as 
Select a.*, b.OrderDate as 'Fecha_orden'
from Customers a
join Orders b on a.CustomerID=b.CustomerID
go

select * from Datos_cliente

drop view Datos_cliente

-- D) CUANTOS PRODUCTOS EXISTEN POR CATEGORIA
create view Productos_por_categoria
as
SELECT a.categoryID, b.CategoryName, count(a.CategoryID) as 'Cantidad de producto'
FROM Products a
join Categories b on a.CategoryID=b.CategoryID
GROUP BY a.categoryID, b.CategoryName
go

select * from Productos_por_categoria

drop view Productos_por_categoria -- para borrar VISTAS

-- E) MOSTRAR EL PROMEDIO DE LOS PRECIOS UNITARIOS DE LAS CATEGORIAS: Produce y Confecctions

select a.CategoryID, b.CategoryName, avg (a.UnitPrice) as Precio
from Products a
join Categories b on a.CategoryID = b.CategoryID
where a.CategoryID in (3,7)
group by b.CategoryName, a.CategoryID

-- O --

create view Promedio_uni_cat
as
select a.categoryID, avg(a.unitprice) as 'Promedio_precio_unitario', b.CategoryName as 'Categoria'
from products a
join Categories b on a.CategoryID=b.CategoryID
where a.CategoryID in
	(select CategoryID from Categories where CategoryName='Produce' or CategoryName='Confections')
group by b.CategoryName, a.CategoryID
go

Select * from Promedio_uni_cat


---------------------------------------- PROCEDIMIENTOS ALMACENADOS --------------------------------------------
-- EJERCICIO 2
-- A) CREAR UN PROCEDIMIENTO ALMACENADO QUE CALCULE Y MUESTRE LA EDAD DE UN EMPLEADO (TABLA EMPLOYEES, CAMPO BIRTHDATE),
-- PUEDE UTILIZAR LA SIGUIEENTE INSTRUUCION PARA CALCULAR LA EDAD:
-- (CAST(DATEDIFF(dd,BirthDate,GETDATE())/365.25 AS INT))
-- POR MEDIO DE UNA SENTENCIA "CASE" DEBERA CALCULAR Y MOSTRAR SI EL EMPLEADO ESTA POR RETIRARSE (MAYORES DE 60 Y MENORES
-- O IGUAL A 70 AÑOS), SI YA ESTA JUBILADO (MAYORES A 70 AÑOS) O LE FALTA OTROS AÑOS PARA TRABAJAR (MENORES O IGUALES A 60 AÑOS)
-- EL PRODECIMIENTO RECIBE COMO PARAMETRO EL CODIGO DEL EMPLEADO (EmployeeID) SI EL EMPLEADO NO EXISTE DEBERA 
-- MOSTRAR UN MENSAJE INDICANDOLO.

drop procedure edad_empleado  -- Para eliminar el procedimiento creado

create procedure edad_empleado
@idEmployee int
as

declare @total int -- Contador de resultados

select @total=count(employeedid) from Employees where EmployeeID=@idEmpleado	
	if (