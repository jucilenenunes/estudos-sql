
O HAVING é basicamente muito usado em junção com o GROUP BY para filtrar
resultados de agrupamento ele é basicamente um WHERE para dados agrupados.

Diferença entre eles é que o GROUP BY é aplicado depois que os dados já foram agrupados,
enquanto o WHERE é aplicado antes doss dados serem agrupados.

Exemplo de sintaxe
-- Busca a quantidade de nomes por cada nome com o filtro que seja acima de 10
SELECT Firstname, count(FirstName) as "Quantidade"
FROM Person.Person
GROUP BY FirstName 
HAVING count(firstName) > 10

-- Aqui filtrando pelo Mr (Nomes masculinos)
SELECT Firstname, count(FirstName) as "Quantidade"
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName 
HAVING count(firstName) > 10

-- Buscando os produtos e o total referente a quantidade desse produto, limitando entre
--os valores do BETWEEN
SELECT ProductID, sum(LineTotal) "Total"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 162000 and 500000;

Desafios

1- Estamos querendo identificar as provincias(stateProvinceId) com o maior número
de cadastros no nosso sistema, então é preciso encontrar quais províncias
(stateProvinceId) estão registradas no banco de dados mais que 1000 vezes
SELECT city, count(city) Quantidade
FROM Person.Address
GROUP BY city;

--Solução do Professor
SELECT StateProvinceID, count(StateProvinceID) Quantidade
FROM Person.Address
GROUP BY StateProvinceID
HAVING count(StateProvinceID) > 1000;

2- Sendo que se trata de uma multinacional os gerentes querem saber quais produtos(ProductID)
não estão trazendo em média no mínimo 1 milhão em total de vendas(lineTotal)
SELECT ProductID, AVG(linetotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) < 1000000;

