--Uma cl�nica veterin�ria deseja cadastrar os pets que sao atendidos em seu local.

-- a cl�nica cont�m um endere�o;
-- os pets dever�o ter nome, data de nascimento, tipo de pet;
-- os pets dever�o ter ra�a;
-- os pets dever�o ter donos;
-- a cl�nica deseja cadastrar seus veterin�rios e todo atendimento de pet ser� feito por um veterin�rio;

--DML

-- cada atendimento deve registrar qual veterin�rio atendeu, qual pet foi atendido, descri��o da consulta e data da consulta

--DQL

-- listar todos os veterin�rios (nome e CRMV) de uma cl�nica (raz�o social)
-- listar todas as ra�as que come�am com a letra S
--- listar todos os tipos de pet que terminam com a letra O
-- listar todos os pets mostrando os nomes dos seus donos
-- listar todos os atendimentos mostrando o nome do veterin�rio que atendeu, o nome, a ra�a e o tipo do pet que foi atendido, o nome do dono do pet e o nome da cl�nica onde o pet foi atendido

--DML (Data Definition language)

CREATE DATABASE Clinica;
USE Clinica;

CREATE TABLE Endereco
(
	IdEndereco INT PRIMARY KEY IDENTITY,
	Logradouro VARCHAR(50) NOT NULL,
	Numero VARCHAR(5) NOT NULL,
	Complemento VARCHAR(20),
	CEP VARCHAR(8) NOT NULL,
)

CREATE TABLE TipoPet
(
	IdTipoPet INT PRIMARY KEY IDENTITY,
	Descricao VARCHAR(50) NOT NULL
)

CREATE TABLE Raca
(
	IdRaca INT PRIMARY KEY IDENTITY,
	Descricao VARCHAR(50) NOT NULL
)

CREATE TABLE Dono
(
	IdDono INT PRIMARY KEY IDENTITY,
	NomeDono VARCHAR(50) NOT NULL
)

CREATE TABLE Clinica
(
	IdClinica INT PRIMARY KEY IDENTITY,
	IdEndereco INT FOREIGN KEY REFERENCES Endereco(IdEndereco) NOT NULL,
	NomeClinica VARCHAR(50) NOT NULL,
)

CREATE TABLE Veterinario
(
	IdVeterinario INT PRIMARY KEY IDENTITY,
	IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica) NOT NULL,
	NomeVeterinario VARCHAR(100) NOT NULL,
	CRMV VARCHAR(10) NOT NULL
)

CREATE TABLE Pet
(
	IdPet INT PRIMARY KEY IDENTITY,
	IdTipoPet INT FOREIGN KEY REFERENCES TipoPet(IdTipoPet) NOT NULL,
	IdRaca INT FOREIGN KEY REFERENCES Raca(IdRaca) NOT NULL,
	IdDono INT FOREIGN KEY REFERENCES Dono(IdDono) NOT NULL,
	NomePet VARCHAR(50) NOT NULL,
	DataNascimento VARCHAR(50) NOT NULL
)

CREATE TABLE Atendimento
(
	IdAtendimento INT PRIMARY KEY IDENTITY,
	IdVeterinario INT FOREIGN KEY REFERENCES Veterinario(IdVeterinario) NOT NULL,
	IdPet INT FOREIGN KEY REFERENCES Pet(IdPet) NOT NULL,
	DescricaoAtendimento VARCHAR(100) NOT NULL,
	[Data] VARCHAR(10)
)