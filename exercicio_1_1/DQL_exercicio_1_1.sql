--DQL

USE Exercicio_1_1;

SELECT
	Pessoa.Nome,
	Pessoa.CNH,
	Email.Endereco as Email,
	Telefone.Numero as Telefone
FROM
	Pessoa,
	Email,
	Telefone
WHERE
	Pessoa.IdPessoa = Email.IdPessoa
	AND Pessoa.IdPessoa = Telefone.IdPessoa
ORDER BY Nome DESC
	
SELECT *
FROM
	Pessoa 
	LEFT JOIN 
	Email ON Pessoa.IdPessoa = Email.IdPessoa
	LEFT JOIN 
	Telefone ON Pessoa.IdPessoa = Telefone.IdPessoa
	
SELECT
Pessoa.IdPessoa AS ID,
Pessoa.Nome AS Cliente,
Pessoa.CNH,
Telefone.Numero as Compra,
Email.Endereco as Email
From
Pessoa
LEFT JOIN
Telefone on Pessoa.IdPessoa = Telefone.IdPessoa
LEFT JOIN
Email on Pessoa.IdPessoa = Email.IdEmail

WHERE Telefone.Numero IS Null
