------------------------------------------------------- CONSULTAS -----------------------------------

-- 1. OBTENER LOS DATOS COMMPLETOS DE LOS EMPLEADOS
select * from empleados


-- 2. OBTENER LOS DATOS COMMPLETOS DE LOS EMPLEADOS
select * from departamentos


-- 3. OBTENER LOS DATOS COMPLETOS CON CARGO 'SECRETARIA' -- CON LOWER SI ESTA EN MINUSCULA O MAYUSCULA SERA LO MISMO MAS NO AL REVES
select * from empleados
where lower(cargoE)='secretaria';


-- 4. OBTERNER EL NOMBRE Y SALARIO DE LOS EMPLEADOS
select nomemp, salEmp from empleados


-- 5. OBTERNER LOS DATOS DE LOS EMPLEADOS VENDEDORES, ORDENADO POR NOMBRE
select * from empleados
where cargoE='Vendedor' order by nomEmp;


-- 6. LISTAR EL NOMBRE DE LOS DEPARTAMENTOS
select distinct nombreDpto from departamentos


-- 7. OBTENER EL NOMBRE Y CARGO DE TODOS LOS EMPLEADOS, ORDENADOS POR SALARIO
select nomEmp, cargoE, salEmp from empleados order by salEmp


-- 8. LISTAR LOS SALARIOS Y COMISIONES DE LOS EMPLEADOS DEL DEPARTAMENTO 2000, ORDENAD POR COMISION
select salEmp, comisionE, codDepto from empleados where codDepto='2000' order by comisionE;


-- 9. lISTAR LAS COMISIONES
select comisionE from empleados


-- 10. OBTENER EL VALOR TOTAL A PAGAR QUE RESULTA DE SUMAR A LOS EMPELEADOSDEL DEPTO 3000 UNA BONIFICcion de 500000, EN ORDEN ALFABETICO EMPLEADOS
select nomEmp, comisionE, salEmp, 500000 as 'Adicional', (salEmp + 500000) as 'Paso general' 
from empleados 
where codDepto='3000' 
order by nomEmp


-- 11. OBTENER LA LISTA DE LOS EMPLEADOS QUE GANAN UNA COMISION SUPERIOR A SU SUELDO
select * from empleados where (comisionE>salEmp);


-- 12. LISTAR LOS EMPLEADOS CUYA COMISION ES MENOS O IGUAL QUE EL 30% DE SU SUELDO
select * from empleados where (comisionE<=salEmp*0.3);


-- 13. ELABORE UN LISTADO DONDE PARA CADA FILA, FIGURE �NOMBRE� Y �CARGO� ANTES DEL VALOR RESPECTIVO PARA CADA EMPLEADO. 
select nomEmp as 'Nombre', cargoE as 'Cargo' from empleados;


-- 14. HALLAR EL SALARIO Y LA COMISI�N DE AQUELLOS EMPLEADOS CUYO N�MERO DE DOCUMENTO DE IDENTIDAD ES SUPERIOR AL '19.709.802' 
select nDIEmp, nomEmp, salEmp, comisionE from empleados
where nDIEmp > '19.709.802';

-- 15. MUESTRA LOS EMPLEADOS CUYO NOMBRE EMPIECE ENTRE LAS LETRAS J Y Z (RANGO). LISTE ESTOS EMPLEADOS Y SU CARGO POR ORDEN ALFAB�TICO. 
select nomEmp, cargoE from empleados
where lower(nomEmp) >= 'j' and lower(nomEmp) <= 'z'
order by nomEmp;


-- 16. LISTAR EL SALARIO, LA COMISI�N, EL SALARIO TOTAL (SALARIO + COMISI�N), DOCUMENTO DE IDENTIDAD DEL EMPLEADO Y NOMBRE, DE AQUELLOS EMPLEADOS QUE TIENEN COMISI�N SUPERIOR A 1.000.000, ORDENAR EL INFORME POR EL N�MERO DEL DOCUMENTO DE IDENTIDAD.
Select nomEmp, nDIEmp, salEmp, comisionE, (salEmp + comisionE) as 'Salario Total' from empleados
where comisionE > 1000000
order by nDIEmp;


-- 17. OBTENER UN LISTADO SIMILAR AL ANTERIOR, PERO DE AQUELLOS EMPLEADOS QUE NO TIENEN COMISI�N 
Select nomEmp, nDIEmp, salEmp, comisionE, (salEmp + comisionE) as 'Salario Total' from empleados
where comisionE= ''
order by nDIEmp;


-- 18 HALLAR LOS EMPLEADOS CUYO NOMBRE NO CONTIENE LA CADENA "MA" 
select nomEmp from empleados
WHERE lower(nomEmp) like '%ma%'

-- 19 OBTENER LOS NOMBRES DE LOS DEPARTAMENTOS QUE NO SEAN �VENTAS� NI �INVESTIGACI�N� NI 'MANTENIMIENTO'
		-------- USANDO "<>"
select distinct nombreDpto from departamentos
where lower(nombreDpto) <> 'ventas'
AND LOWER(nombreDpto) <> 'mantenimiento'
AND LOWER(nombreDpto) <> 'investigaci�n';

		-------- USANDO NOT IN
select distinct nombreDpto from departamentos
where lower(nombreDpto) not in ('ventas','mantenimiento','investigaci�n');

-- 20. OBTENER EL NOMBRE Y EL DEPARTAMENTO DE LOS EMPLEADOS CON CARGO 'Secretaria' O 'Vendedor', 
	-- QUE NO TRABAJAN EN EL DEPARTAMENTO DE �PRODUCCION�, CUYO SALARIO ES SUPERIOR A $1.000.000,
		-- ORDENADOS POR FECHA DE INCORPORACI�N.

		------ USANDO LEFT JOIN
select a.nomEmp, a. salEmp, b.nombreDpto 
from Empleados a
left join departamentos b on a.codDepto=b.codDepto
where lower(a.cargoE) in ('secretaria','vendedor')
and lower(b.nombreDpto) not in ('producci�n')
and a.salEmp > 1000000 
order by a.fecIncorporacion;

		------ USANDO WHERE COMO ENLACE DE LLAVES
select a.nomEmp, a. salEmp, b.nombreDpto 
from Empleados a, departamentos b
where a.codDepto=b.codDepto
and lower(a.cargoE) in ('secretaria','vendedor')
and lower(b.nombreDpto) not in ('producci�n')
and a.salEmp > 1000000 
order by a.fecIncorporacion;

-- 21. OBTENER INFORMACI�N DE LOS EMPLEADOS CUYO NOMBRE TIENE EXACTAMENTE 11 CARACTERES
select nomEmp from empleados
where len(nomEmp) =11;


-- 22. OBTENER INFORMACI�N DE LOS EMPLEADOS CUYO NOMBRE TIENE AL MENOS 11 CARACTERES
select * from empleados
where len(nomEmp) < 11;


-- 23. LISTAR LOS DATOS DE LOS EMPLEADOS CUYO NOMBRE INICIA POR LA LETRA 'M', SU SALARIO ES MAYOR A $800.000
	-- O RECIBEN COMISI�N Y TRABAJAN PARA EL DEPARTAMENTO DE 'VENTAS'.
select a.nomEmp, b.nombreDpto, a.salEmp, a.comisionE 
from Empleados a, departamentos b
where a.codDepto=b.codDepto
and lower(a.nomEmp) like 'm%'
and (a.salEmp > 800000 or a.comisionE > 0)
and lower(b.nombreDpto) = 'ventas';


-- 24. OBTENER LOS NOMBRES, SALARIOS Y COMISIONES DE LOS EMPLEADOS QUE RECIBEN UN SALARIO SITUADO ENTRE LA
	-- MITAD DE LA COMISI�N LA PROPIA COMISI�N
select nomEmp,salEmp, comisionE from empleados
where salEmp between (0.5*comisionE) and comisionE;

-- 25. MOSTRAR EL SALARIO M�S ALTO DE LA EMPRESA.
select max(salEmp)from empleados


-- 26. MOSTRAR CADA UNA DE LAS COMISIONES Y EL N�MERO DE EMPLEADOS QUE LAS RECIBEN. SOLO SI TIENE COMISION.    NOTA: * CONTEO POR CUALQUIER VARIABLE 
select count(*) as 'CANTIDAD POR COMISIONES', comisionE from empleados
where comisionE > 0
group by comisionE;


-- 27. MOSTRAR EL NOMBRE DEL �LTIMO EMPLEADO DE LA LISTA POR ORDEN ALFAB�TICO.
SELECT MAX(nomEmp) AS 'Ultimo_valor' FROM empleados;


-- 28. HALLAR EL SALARIO M�S ALTO, EL M�S BAJO Y LA DIFERENCIA ENTRE ELLOS.
select max(salEmp) as 'Salario Maximo', min(salEmp) as 'Salario Min', (max(salEmp)-min(salEmp)) as 'Dif de Sal' from empleados;


-- 29. MOSTRAR EL N�MERO DE EMPLEADOS DE SEXO FEMENINO Y DE SEXO MASCULINO, POR DEPARTAMENTO.
select count(a.nDIEmp) as 'CANTIDAD POR DEPARTAMENTO' , a.sexEmp, b.nombreDpto
from empleados a, departamentos b
where a.codDepto=b.codDepto
group by a.sexEmp, b.nombreDpto;


-- 30. HALLAR EL SALARIO PROMEDIO POR DEPARTAMENTO.  NOTA: EL COMANDO DE PROMEDIO ES IGUAL A "AVG"
select avg(a.salEmp) as 'Salario Promedio', b.nombreDpto
from empleados a, departamentos b
where a.codDepto=b.codDepto
group by b.nombreDpto;


-- 31. MOSTRAR LA LISTA DE LOS EMPLEADOS CUYO SALARIO ES MAYOR O IGUAL QUE EL PROMEDIO DE LA EMPRESA. ORDENARLO POR DEPARTAMENTO.
select nDIEmp, nomEmp, salEmp from empleados
where salEmp >= (select avg(salEmp) from empleados);   -- Tiene que estar en parentesis la segunda consulta (select avg(salEmp) from empleados)


-- 32. HALLAR LOS DEPARTAMENTOS QUE TIENEN M�S DE TRES EMPLEADOS. MOSTRAR EL N�MERO DE EMPLEADOS DE ESOS DEPARTAMENTOS.
select b.codDepto, b.nombreDpto, count(*) as 'Num empleados' 
from departamentos b, empleados a 
where b.codDepto=a.codDepto 
group by b.codDepto, b.nombreDpto
having count(*) >= 3;
		--- o ---
SELECT b.codDepto, b.nombreDpto, COUNT(*) as 'Num Empleados'
FROM departamentos b
INNER JOIN empleados a ON b.codDepto = a.codDepto
GROUP BY b.codDepto, b.nombreDpto
HAVING COUNT(*) >= 3; 


-- 33. MOSTRAR EL C�DIGO Y NOMBRE DE CADA JEFE, JUNTO AL N�MERO DE EMPLEADOS QUE DIRIGE. SOLO LOS QUE TENGAN MAS DE DOS EMPLEADOS (2 INCLUIDO)
select j.nDIEmp, j.nomEmp, count(*) as 'Num Empleados' 
from empleados e, empleados j 
where e.jefeID=j.nDIEmp 
group by j.nomEmp 
having count(*)>=2 
order by count(*) desc;


-- 34. HALLAR LOS DEPARTAMENTOS QUE NO TIENEN EMPLEADOS
select codDepto from empleados
where codDepto = 0;
        --- o ---
select d.codDepto, d.codDepto, count(*) as 'Num empleados'
from departamentos d, empleados e
where d.codDepto=e.codDepto
group by d.codDepto
having count(*) =0

-- 35. MOSTRAR EL NOMBRE DEL DEPARTAMENTO CUYA SUMA DE SALARIOS SEA LA M�S ALTA, INDICANDO EL VALOR DE LA SUMA.
select top (1) d.nombreDpto, sum(e.salEmp) as 'Suma de salarios'
from empleados e, departamentos d
where d.codDepto=e.codDepto
group by d.nombreDpto
order by sum(e.salEmp) desc















----------------------- NOTAS -------------------------

-- 1) EXPORTAR A EXCEL
	-- DATA BASE -- TAKS A EXPORTAR

-- 2) ABRIR LA INFORMACION POR EXCEL CON QUERY
 -- OBTENER DATOS 
  -- PONER WINDOWS, USAR MIS CREDENCIALES ACTUALES, SI ME CONECTO A UNA BASE DE DATOS PONER USUARIO Y CONTRASE�A


-- 3) SELECT TOP (10) columna from 



-- 4) CREACION DE TABLAS A PARTIR DE OTRAS TABLAS
-- Select (La columna)
-- into (nombre de la nueva tabla)
-- from (tabla base)
-- where (si hay condicion )
  
-- 5) AGREGAR UNA COLUMNA CON EL A�O SEGUN UNA FECHA
ALTER TABLE mi_tabla
ADD ano AS YEAR(fecha_original);

 -- 6) ELIMINAR COLUMNA CREADA            NOTA: SI LA FECHA NO ESTA EN FORMATO DATETIME NO SE ACT LA TABLA
ALTER TABLE pruebita
DROP COLUMN ano

-- 7) PARA VER LOS TIPOS DE VALORES DE UNA TABLA Y CAMBIAR
exec sp_help 'dbo.PRUEBATABLA'         

-- 8) CAMBIAR CON ES SGT COMANDO
ALTER TABLE dbo.PRUEBATABLA
ALTER COLUMN COD_PRODUCTO INT