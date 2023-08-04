--Construa a modelagem que represente pessoas e seus dados, observando que:

-- uma pessoa pode ter v�rios telefones e v�rios emails, por�m, pode possuir somente uma CNH.

--DQL

--- listar as pessoas em ordem alfab�tica reversa, mostrando seus telefones, seus e-mails e suas CNHs

--DDL (Data Definition Language)

CREATE DATABASE Exercicio_1_1;

USE Exercicio_1_1;

CREATE TABLE Pessoa
(
	IdPessoa INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(100) NOT NULL,
	CNH VARCHAR(11) NOT NULL
)

CREATE TABLE Telefone
(
	IdTelefone INT PRIMARY KEY IDENTITY,
	IdPessoa INT FOREIGN KEY REFERENCES Pessoa(IdPessoa) NOT NULL,
	Numero VARCHAR(11) NOT NULL
)

CREATE TABLE Email
(
	IdEmail INT PRIMARY KEY IDENTITY,
	IdPessoa INT FOREIGN KEY REFERENCES Pessoa(IdPessoa) NOT NULL,
	Endereco VARCHAR(100) NOT NULL
)