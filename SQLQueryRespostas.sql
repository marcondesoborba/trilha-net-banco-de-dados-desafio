SELECT Nome, Ano FROM FILMES;

SELECT Nome, Ano FROM FILMES ORDER BY 2 ASC;

SELECT Nome, Ano, Duracao FROM FILMES WHERE Nome = 'De Volta para o Futuro';

SELECT Nome, Ano, Duracao FROM FILMES WHERE Ano = 1997;

SELECT Nome, Ano, Duracao FROM FILMES WHERE Ano > 2000;

SELECT Nome, Ano, Duracao FROM FILMES WHERE Duracao > 100 AND Duracao < 150 ORDER BY DURACAO ASC;

SELECT Ano, COUNT(*) AS Quantidade FROM FILMES GROUP BY Ano ORDER BY SUM(DURACAO) DESC ;

SELECT ID, PRIMEIRONOME, ULTIMONOME, GENERO FROM Atores WHERE GENERO = 'M';

SELECT ID, PRIMEIRONOME, ULTIMONOME, GENERO FROM Atores WHERE GENERO = 'F' ORDER BY PRIMEIRONOME;

SELECT FILMES.Nome, Generos.Genero FROM FILMES INNER JOIN FilmesGenero ON FILMES.ID = FilmesGenero.IdFilme
	INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

SELECT FILMES.Nome, Generos.Genero FROM FILMES INNER JOIN FilmesGenero ON FILMES.ID = FilmesGenero.IdFilme
	INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
	WHERE Generos.Genero = 'Mistério';


SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM Filmes 
	INNER JOIN ElencoFilme on Filmes.Id = ElencoFilme.IdFilme
	INNER JOIN Atores on ElencoFilme.IdAtor = Atores.Id;

