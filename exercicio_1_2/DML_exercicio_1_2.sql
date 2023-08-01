--DML (Data Manipulation Language)
USE Locadora;

INSERT INTO Cliente(Nome, CPF)
VALUES
(
	'Jose', '80224840088'
)

INSERT INTO Empresa(NomeEmpresa)
VALUES
(
	'Unidas'
)

INSERT INTO Marca(NomeMarca)
VALUES
(
	'Ferrari'
)

INSERT INTO Modelo(NomeModelo)
VALUES
(
	'Spider'
)

INSERT INTO Veiculo(IdEmpresa, IdModelo, IdMarca, Placa)
VALUES
(
	1, 1, 1, 'BOP9818'
)

INSERT INTO ALUGUEL(IdVeiculo, IdCliente, Protocolo)
VALUES
(
	1, 1, 'BOP9818'
)

SELECT * FROM Cliente;
SELECT * FROM Empresa;
SELECT * FROM Marca;
SELECT * FROM Modelo;
SELECT * FROM Veiculo;
SELECT * FROM ALUGUEL;