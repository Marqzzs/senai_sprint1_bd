--DML (Data Manipulation Language)
USE Exercicio_1_2;

INSERT INTO Cliente(Nome, CPF)
VALUES
(
	'Jose', '80224840088'
)

INSERT INTO Empresa(Nome)
VALUES
(
	'Unidas'
)

INSERT INTO Marca(Nome)
VALUES
(
	'Ferrari'
)

INSERT INTO Modelo(Nome)
VALUES
(
	'Spider'
)

INSERT INTO Veiculo(IdEmpresa, IdModelo, IdMarca, Placa)
VALUES
(
	1, 1, 1, 'BOP9818'
)

INSERT INTO Aluguel(IdVeiculo, IdCliente, DataRetirada, DataDevolucao)
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