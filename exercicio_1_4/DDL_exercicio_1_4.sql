--A Optus � uma empresa no ramo musical que deseja realizar o gerenciamento dos lan�amentos de novos cds de seus artistas. Cada �lbum lan�ado poder� conter mais de um estilo vinculado (ex.: Indie e Folk).
--� importante que voc� crie tamb�m uma estrat�gia para que os usu�rios possuam acesso � plataforma.
--Os usu�rios dever�o conter nome, email, senha e o tipo de permiss�o (eles podem ser do tipo administrador ou comum).

--Observa��es:
--Os Artistas dever�o possuir somente nome.
--Estilos: nome.
--Albuns: titulo, data de lan�amento, localizacao, quantidade de minutos, se o �lbum est� ativo para visualiza��o, a quem pertence (somente um artista por �lbum) e quais os estilos vinculados.

--DQL

-- listar todos os usu�rios administradores, sem exibir suas senhas
-- listar todos os �lbuns lan�ados ap�s o um determinado ano de lan�amento
-- listar os dados de um usu�rio atrav�s do e-mail e senha
-- listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum 

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