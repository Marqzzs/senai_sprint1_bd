--Voc� dever� criar a modelagem para o cat�logo de filmes, observando a seguinte situa��o:

-- um filme possui apenas um �nico g�nero.
-- um g�nero pode definir mais de um filme.

--DDL (Data Definition Language)

create database Catalogo;

use Catalogo

create table Genero
(
	IdGenero int primary key identity,
	NomeGenero varchar(20)
)

create table Filme
(
	IdFilme int primary key identity,
	IdGenero int foreign key references Genero(IdGenero),
	NomeFilme varchar(50)
)

--DML (Data Manipulation Language)

use Catalogo

insert into Genero (NomeGenero) values ('Terror');

insert into Filme (IdGenero, NomeFilme) values (1, 'Invoca��o do Mal')

insert into Genero (NomeGenero) values ('Comedia');

insert into Filme (IdGenero, NomeFilme) values (2, 'As Branquelas')

--DQL (Data Query Language)
select * from Genero;
select * from Filme;