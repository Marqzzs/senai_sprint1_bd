--DML (Data Manipulation Language)

USE Exercicio_1_3;

INSERT INTO Endereco(Logradouro, Numero, CEP)
Values
(
	'Rua dos Anjos', '30', '09272530'
)

INSERT INTO TipoPet(Descricao)
Values
(
	'Cachorro'
)

INSERT INTO Raca(Descricao)
Values
(
	'Shitzu'
)

INSERT INTO Dono(NomeDono)
Values
(
	'Jose'
)

INSERT INTO Clinica(IdEndereco, NomeClinica)
Values
(
	1, 'Saude Animal'
)

INSERT INTO Veterinario(IdClinica, NomeVeterinario, CRMV)
Values
(
	1, 'Maria', '2649889'
)

INSERT INTO Pet(IdTipoPet, IdRaca, IdDono, NomePet, DataNascimento)
Values
(
	1, 1, 1, 'Princesa', '27/05/2019'
)

INSERT INTO Atendimento(IdVeterinario, IdPet, DescricaoAtendimento, [Data])
Values
(
	1, 1, 'Banho e tosa', '15/08/2023'
)

SELECT * FROM Endereco;
SELECT * FROM TipoPet;
SELECT * FROM Raca;
SELECT * FROM Dono;
SELECT * FROM Clinica;
SELECT * FROM Veterinario;
SELECT * FROM Pet;
SELECT * FROM Atendimento;
