/*
--DQL

-- listar todos os veterin�rios (nome e CRMV) de uma cl�nica (raz�o social)
-- listar todas as ra�as que come�am com a letra S
--- listar todos os tipos de pet que terminam com a letra O
-- listar todos os pets mostrando os nomes dos seus donos
-- listar todos os atendimentos mostrando o nome do veterin�rio que atendeu, o nome, a ra�a e o tipo do pet que foi atendido, o nome do dono do pet e o nome da cl�nica
*/
SELECT
Veterinario.NomeVeterinario AS Nome,
Veterinario.CRMV AS CRMV,
Clinica.NomeClinica AS Clinica
FROM
Veterinario
Left JOIN
Clinica ON Veterinario.IdClinica = Clinica.IdClinica

SELECT 
Raca.Descricao AS Raca
FROM
Raca
WHERE Descricao LIKE 'S%'

SELECT 
TipoPet.Descricao AS Tipo
FROM
TipoPet
WHERE Descricao LIKE '%O'

SELECT
Pet.NomePet AS Nome,
Dono.NomeDono AS Dono
FROM
Pet
LEFT JOIN
Dono ON Pet.IdDono = Dono.IdDono

SELECT
Atendimento.IdAtendimento,
Veterinario.NomeVeterinario AS Veterinario,
Pet.NomePet AS Pet,
Raca.Descricao AS Raca,
TipoPet.Descricao AS TipoPet,
Dono.NomeDono AS Nome,
Clinica.NomeClinica AS Clinica
FROM
Atendimento
LEFT JOIN
Veterinario ON Atendimento.IdVeterinario = Veterinario.IdVeterinario
LEFT JOIN
Pet ON Atendimento.IdPet = Pet.IdPet
LEFT JOIN
Raca ON Pet.IdRaca = Raca.IdRaca
LEFT JOIN
TipoPet ON Pet.IdTipoPet = TipoPet.IdTipoPet
LEFT JOIN
Dono ON Pet.IdDono = Dono.IdDono
LEFT JOIN
Clinica ON Veterinario.IdClinica = Clinica.IdClinica
/*
SELECT * FROM Endereco;
SELECT * FROM TipoPet;
SELECT * FROM Raca;
SELECT * FROM Dono;
SELECT * FROM Clinica;
SELECT * FROM Veterinario;
SELECT * FROM Pet;
SELECT * FROM Atendimento;
*/