--DQL

SELECT
	Pessoa.NomePessoa,
	Pessoa.CNH,
	Email.Email as Email,
	Telefone.Numero as Telefone
FROM
	Pessoa,
	Email,
	Telefone
WHERE
	Pessoa.IdPessoa = Email.IdPessoa
	AND Pessoa.IdPessoa = Telefone.IdPessoa
ORDER BY NomePessoa DESC

	
SELECT *
FROM
	Pessoa LEFT JOIN Email ON Pessoa.IdPessoa = Email.IdPessoa
		LEFT JOIN Telefone ON Pessoa.IdPessoa = Telefone.IdPessoa