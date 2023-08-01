--DML (Data Manipulation Language)

USE Pessoas;

INSERT INTO Pessoa (NomePessoa, CNH)
VALUES
(
	'Jose', '15057791720'
)

INSERT INTO Pessoa (NomePessoa, CNH)
VALUES
(
	'Maria', '45010003884'
)

INSERT INTO Telefone (IdPessoa, Numero)
VALUES
(
	1, '11921521468'
)

INSERT INTO Telefone (IdPessoa, Numero)
VALUES
(
	1, '17938255340'
)

INSERT INTO Telefone (IdPessoa, Numero)
VALUES
(
	2, '11923025623'
)

INSERT INTO Email(IdPessoa, Email)
VALUES
(
	1, 'salut5708@uorak.com'
)

INSERT INTO Email(IdPessoa, Email)
VALUES
(
	2, 'lilabad647@inkiny.com'
)

INSERT INTO Email(IdPessoa, Email)
VALUES
(
	2, 'emanoil2665@uorak.com'
)


SELECT * FROM Pessoa;
SELECT * FROM Telefone;
SELECT * FROM Email;