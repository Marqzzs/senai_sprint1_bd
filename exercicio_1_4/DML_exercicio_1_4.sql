--DML (Data Manipulation Language)

USE Exercicio_1_4;

INSERT INTO Artistas(Nome)
VALUES
(
	 'Veigh'
)

INSERT INTO Usuarios(Nome, Email, Senha, Permissao)
VALUES
(
	'Jose', 'jose@gmail.com', 'jose134', 'sim'
)

INSERT INTO Estilos(Nome)
VALUES
(
	'trap'
)

INSERT INTO Albuns(idArtista, Titulo, DataLancamento, Localizacao, QtdMinutos, Ativo)
VALUES
(
	1, 'Dos Predios Deluxe', '20/04/2023', 'Sao Paulo', '01:24h', 'sim'
)

INSERT INTO AlbunsEstilos(IdAlbum, IdEstilo)
VALUES
(
	1, 1
)


SELECT * FROM Artistas;