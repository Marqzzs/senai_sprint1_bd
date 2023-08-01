--Construa a modelagem que represente pessoas e seus dados, observando que:

-- uma pessoa pode ter vários telefones e vários emails, porém, pode possuir somente uma CNH.

--DQL

--- listar as pessoas em ordem alfabética reversa, mostrando seus telefones, seus e-mails e suas CNHs

--DDL (Data Definition Language)

CREATE DATABASE Pessoas;

USE Pessoas;

CREATE TABLE Pessoa
(
	IdPessoa INT PRIMARY KEY IDENTITY,
	NomePessoa VARCHAR(100) NOT NULL,
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
	Email VARCHAR(100) NOT NULL
)