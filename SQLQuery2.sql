-- 1
SELECT Nome, Ano FROM Filmes

-- 2
SELECT Nome, Ano FROM Filmes
ORDER BY Ano

-- 3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De volta para o Futuro'

--4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997
--5
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000
-- 6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7
SELECT ANO,  COUNT(*) Quantidade FROM Filmes
GROUP BY ANO
ORDER BY Quantidade DESC

--8
SELECT Id, PrimeiroNome, UltimoNome,Genero FROM ATORES
WHERE Genero = 'M'

--9 
SELECT Id, PrimeiroNome, UltimoNome,Genero FROM ATORES
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT f.Nome, g.Genero FROM Filmes f
INNER JOIN FilmesGenero fg ON f.id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id

--11
SELECT f.Nome, g.Genero FROM Filmes f
INNER JOIN FilmesGenero fg ON f.id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério'

--12
SELECT f.Nome , a.PrimeiroNome, a.UltimoNome, ef.Papel FROM Filmes f
INNER JOIN ElencoFilme ef on f.id = ef.IdFilme
INNER JOIN Atores a on ef.Id = a.Id

