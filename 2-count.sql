SELECT count(*)
FROM Person.Person; --(Retorna 19972)


SELECT COUNT(title)
FROM Person.Person; --(Retorna 1009)

SELECT COUNT(DISTINCT title)
FROM Person.Person; --(Retorna 6)

--Desafio 4
--a) Quero saber quantos produtos temos cadastrados em nossa tabela de produtos (production.product)

SELECT COUNT(*)
FROM Production.Product; -- (Retornou 504 rows)

--b) Quantos tamananhos de produtos temos cadastrados em nossa tabela
SELECT COUNT(Size)
FROM Production.Product; (Retornou 211 itens)

