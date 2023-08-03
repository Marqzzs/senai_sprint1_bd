--A Optus é uma empresa no ramo musical que deseja realizar o gerenciamento dos lançamentos de novos cds de seus artistas. Cada álbum lançado poderá conter mais de um estilo vinculado (ex.: Indie e Folk).
--É importante que você crie também uma estratégia para que os usuários possuam acesso à plataforma.
--Os usuários deverão conter nome, email, senha e o tipo de permissão (eles podem ser do tipo administrador ou comum).

--Observações:
--Os Artistas deverão possuir somente nome.
--Estilos: nome.
--Albuns: titulo, data de lançamento, localizacao, quantidade de minutos, se o álbum está ativo para visualização, a quem pertence (somente um artista por álbum) e quais os estilos vinculados.

--DQL

-- listar todos os usuários administradores, sem exibir suas senhas
-- listar todos os álbuns lançados após o um determinado ano de lançamento
-- listar os dados de um usuário através do e-mail e senha
-- listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum 

CREATE DATABASE Exercicio_1_4;

USE Exercicio_1_4;

CREATE TABLE Artistas
(
	IdArtista INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(20)
)

CREATE TABLE Usuarios
(
	IdUsuario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50),
	Email VARCHAR(50),
	Senha VARCHAR(10),
	Permissao VARCHAR(10)
)

CREATE TABLE Estilos
(
	IdEstilo INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(20)
)

CREATE TABLE Albuns
(
	IdAlbum INT PRIMARY KEY IDENTITY,
	IdArtista INT FOREIGN KEY REFERENCES Artistas(IdArtista),
	Titulo VARCHAR(50),
	DataLancamento VARCHAR(20),
	Localizacao VARCHAR(100),
	QtdMinutos VARCHAR(8),
	Ativo VARCHAR(10)
)

CREATE TABLE AlbunsEstilos
(
	IdAlbum INT FOREIGN KEY REFERENCES Albuns(IdAlbum) NOT NULL,
	IdEstilo INT FOREIGN KEY REFERENCES Estilos(IdEstilo) NOT NULL
)