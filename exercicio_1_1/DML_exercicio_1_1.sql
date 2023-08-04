--DML (Data Manipulation Language)

USE Exercicio_1_1;

INSERT INTO Pessoa (Nome, CNH)
VALUES
(
	'Jose', '15057791720'
)

INSERT INTO Telefone (IdPessoa, Numero)
VALUES
(
	1, '11921521468'
)

INSERT INTO Email(IdPessoa, Email)
VALUES
(
	1, 'salut5708@uorak.com'
)

INSERT INTO Email(IdPessoa, Email)
VALUES
(
	2, 'emanoil2665@uorak.com'
)