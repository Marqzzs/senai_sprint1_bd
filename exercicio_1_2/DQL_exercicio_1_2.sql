--DQL
-- listar todos os alugueis mostrando as datas de início e fim, o nome do cliente que alugou e nome do modelo do carro
-- listar os alugueis de um determinado cliente mostrando seu nome, as datas de início e fim e o nome do modelo do carro

SELECT * FROM Cliente;
SELECT * FROM Empresa;
SELECT * FROM Marca;
SELECT * FROM Modelo;
SELECT * FROM Veiculo;
SELECT * FROM Aluguel;

SELECT
Aluguel.IdAluguel AS IDAluguel,
Aluguel.DataRetirada AS Inicio,
Aluguel.DataDevolucao AS Termino,
Cliente.Nome AS Cliente,
Modelo.Nome
FROM Aluguel
LEFT JOIN
Cliente ON Aluguel.IdCliente = Cliente.IdCliente
LEFT JOIN
Veiculo On Veiculo.IdVeiculo = Veiculo.IdModelo
LEFT JOIN
Modelo ON Modelo.IdModelo = Veiculo.IdModelo
WHERE Cliente.IdCliente = 1;