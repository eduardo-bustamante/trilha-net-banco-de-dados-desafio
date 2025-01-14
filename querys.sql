﻿-- 1 --
Select Nome, Ano From Filmes;

-- 2 -- 
Select nome, Ano, Duracao from Filmes order by (Ano);

-- 3 --
Select nome, Ano, Duracao from Filmes where Nome =  'De Volta para o Futuro';

-- 4 --
Select nome, Ano, Duracao from Filmes where Ano =  1997

-- 5 --
Select nome, Ano, Duracao from Filmes where Ano >  2000

-- 6 --
Select nome, Ano, Duracao from Filmes where Duracao between 101 and 149 order by Duracao asc

-- 7 --
select Ano, count(*) as quantidade From Filmes Group by(Ano) order by quantidade desc

-- 8 --
SELECT * FROM Atores where Genero = 'M'

-- 9 --
SELECT * FROM Atores where Genero = 'F' order by PrimeiroNome asc

-- 10 --
SELECT  
	Filmes.Nome, 
	Generos.Genero
FROM Filmes 
INNER JOIN FilmesGenero  
	on Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos
	ON Generos.id = FilmesGenero.IdGenero

-- 11 --
SELECT  
	Filmes.Nome, 
	Generos.Genero
FROM Filmes 
INNER JOIN FilmesGenero  
	on Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos
	ON Generos.id = FilmesGenero.IdGenero
WHERE 
	Generos.Genero = 'Mistério'

-- 12 --
SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM Filmes
INNER JOIN ElencoFilme
	ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores
	ON Atores.Id = ElencoFilme.IdAtor
