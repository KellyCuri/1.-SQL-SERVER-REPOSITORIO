-- Examen de SQl de cobranza
-- se subio data de examen 

select * from alumnos
select * from carreras

-- 1.	Mostrar el top 5 de colegiaturas más alta.
select top (5) colegiatura, count (id) as 'total de alum'  from alumnos
group by colegiatura
order by 'total de alum' desc

-- 2. Cuál es la carrera que tiene la mayor cantidad de alumnos con colegiatura mayor a 2000.
select top (1) b.carrera, count (*) as 'total de alum'
from carreras b
left join alumnos a on a.carrera_id=b.id 
where colegiatura > 2000
group by b.carrera
order by 'total de alum' desc

-- o --

select top (1) b.carrera, count (*) as 'total de alum'
from carreras b, alumnos a
where a.carrera_id=b.id 
and a.colegiatura > 2000
group by b.carrera
order by 'total de alum' desc


-- 3. Cuantos alumnos están inscritos en carreras con vigencia activa (1 “Activo” y 0 “Inactivo”)
--    agrupados por año de incorporación.
select year(a.fecha_incorporacion) AS 'Año Iincorporacion' , count(*) as 'Total de alumnos' from alumnos a
left join carreras b on a.carrera_id=b.id
where b.vigente=1
group by year(a.fecha_incorporacion)


-- 4. Mostrar la segunda colegiatura más alta
WITH CTE AS (
    SELECT colegiatura, count (id) AS 'total_alumnos'
    FROM alumnos
    GROUP BY colegiatura
)
SELECT top (1) colegiatura, total_alumnos
FROM (
    SELECT colegiatura, total_alumnos , DENSE_RANK() OVER (ORDER BY total_alumnos DESC) AS ranking
    FROM CTE
) AS ranked
WHERE ranking = 2





-- base de datos de ALUMNOS Y CARRERAS