USE Exercicio_1_4

SELECT * FROM Artistas
SELECT * FROM Albuns
SELECT * FROM GenerosMSC
SELECT * FROM EstilosMSC
SELECT * FROM Usuarios

--DQL

-- listar todos os usu�rios administradores, sem exibir suas senhas

SELECT Usuarios.Nome, Usuarios.Email
FROM Usuarios 
WHERE Usuarios.Permissao = 1
 
-- listar todos os �lbuns lan�ados ap�s o um determinado ano de lan�amento

SELECT * 
FROM Albuns
WHERE Albuns.DataLancamento >= '29-05-1990'

-- listar os dados de um usu�rio atrav�s do e-mail e senha

SELECT *
FROM Usuarios
WHERE Usuarios.Email = 'rebeca@rebeca.com' AND Senha = 'senai@134'

-- listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum 

SELECT *
FROM Albuns
WHERE Albuns.Ativo = 1

