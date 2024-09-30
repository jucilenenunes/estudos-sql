
--LIKE
--Serve para encontrar algo com parte da palavra.

SELECT *
FROM Person.Person
WHERE FirstName LIKE 'ovi%'; -- % No final da palavra, busca palavras que iniciam com as letras buscadas


SELECT *
FROM Person.Person
WHERE FirstName LIKE '%ca'; --Dessa forma vai buscar essas letras no final da palavrar ex: Rebecca


SELECT *
FROM Person.Person
WHERE FirstName LIKE '%essa%'; -- Busca essas letras independente da posição na palavra

SELECT *
FROM Person.Person
WHERE FirstName LIKE '%ro_%'; -- O _ substitui uma palavra na busca.

