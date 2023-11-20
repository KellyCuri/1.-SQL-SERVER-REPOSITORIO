create database Escuela         -- Primero crear la data base

use Escuela

create table Alumnos(
Id int primary key identity (1,1) not null,     -- 1 en 1 para que sea consecuente  si fuera codigo, seria Id varchar(10) not null 
Nombre varchar(40) not null,           -- hasta 40 de largo
Apellido varchar (40) not null,
Domicilio text,
Fecha_Nacimiento datetime              ---datatime es para fechas
);


