O nome é bem intuitivo. Uma query dentro  de outra

Exemplos:

Monte um relatório de todos os produtos cadastrados que tem preço acima da média.

SELECT AVG(ListPrice)
FROM Production.Product;

SELECT *
FROM Production.Product
WHERE ListPrice > 438.66
-- seria esse código aninhado

E a sintaxe correta é essa:
SELECT *
FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM  Production.Product);

Quero saber o nome dos meus funcionários que tem cargp de "Design Engineer"
SELECT FirstName
FROM Person.Person
WHERE BusinessEntityID IN (
 SELECT BusinessEntityID FROM HumanResources.Employee
 WHERE JobTitle = 'Design Engineer'
)
-- Também é possível realizar a mesma busca usando o JOIN

SELECT p.FirstName
FROM Person.Person p
INNER JOIN HumanResources.Employee e on p.BusinessEntityID = e.BusinessEntityID
AND e.JobTitle = 'Design Engineer'

-- É importante se atentar em relação ao desempenho, pois tem uma questão de afinidade 
-- de realizar a query, porém deve-se considerar o desempenho, clicando 'Include Live Query Statistcs'
SELECT *
FROM person.Address a,
Person.StateProvince  b
WHERE a.StateProvinceid = b.StateProvinceID
and a.StateProvinceID = 1;

-- Solução do professor
SELECT *
FROM person.Address 
WHERE StateProvinceId in (
SELECT StateProvinceID from Person.StateProvince 
Where name = 'Alberta'
) 