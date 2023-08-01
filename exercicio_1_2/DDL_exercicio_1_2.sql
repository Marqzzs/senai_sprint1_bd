--Construa o Modelo Entidade Relacionamento considerando o seguinte cenário:

-- uma empresa possui vários veículos
-- um veículo possui marca(gm, ford, fiat), modelo(onix, fiesta, argo) e placa
-- um cliente (cpf, nome) aluga um ou mais veículos

--DML

-- um registro de aluguel deve conter qual cliente alugou, o veículo alugado, data de retirada e data de devolução


--DQL

-- listar todos os alugueis mostrando as datas de início e fim, o nome do cliente que alugou e nome do modelo do carro
-- listar os alugueis de um determinado cliente mostrando seu nome, as datas de início e fim e o nome do modelo do carro

--DDL (Data Definition Language)

CREATE DATABASE Locadora;

USE Locadora;

CREATE TABLE Cliente
(
	IdCliente INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) NOT NULL,
	CPF VARCHAR(11) NOT NULL
)

CREATE TABLE Empresa
(
	IdEmpresa INT PRIMARY KEY IDENTITY,
	NomeEmpresa VARCHAR(50) NOT NULL
)

CREATE TABLE Marca
(
	IdMarca INT PRIMARY KEY IDENTITY,
	NomeMarca VARCHAR(50) NOT NULL
)

CREATE TABLE Modelo
(
	IdModelo INT PRIMARY KEY IDENTITY,
	NomeModelo VARCHAR(50) NOT NULL
)

CREATE TABLE Veiculo
(
	IdVeiculo INT PRIMARY KEY IDENTITY,
	IdEmpresa INT FOREIGN KEY REFERENCES Empresa(IdEmpresa) NOT NULL,
	IdModelo INT FOREIGN KEY REFERENCES Modelo(IdModelo) NOT NULL,
	IdMarca	INT FOREIGN KEY REFERENCES Marca(IdMarca) NOT NULL,
	Placa VARCHAR(7)
)

CREATE TABLE ALUGUEL
(
	IdAluguel INT PRIMARY KEY IDENTITY,
	IdVeiculo INT FOREIGN KEY REFERENCES Veiculo(IdVeiculo) NOT NULL,
	IdCliente INT FOREIGN KEY REFERENCES Cliente(IdCliente) NOT NULL,
	Protocolo VARCHAR(50) NOT NULL
)
