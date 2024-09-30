Conteúdo Avançado

DATEPART é uma função, como toda função, tem seus parâmetros.
https://learn.microsoft.com/pt-br/sql/t-sql/functions/datepart-transact-sql?view=sql-server-ver16#syntax

* Precisaria explorar mais, porém ele é do SQL da microsoft

Exemplos

SELECT *
FROM person.Address 
WHERE StateProvinceId in (
SELECT StateProvinceID from Person.StateProvince 
Where name = 'Alberta'
)

SELECT SalesOrderID,DATEPART(month, OrderDate) Mês
FROM Sales.SalesOrderHeader;


SELECT AVG(TotalDue), DATEPART(month, OrderDate) Mês
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(month, OrderDate)
ORDER BY Mês;
-- Se quiser a informação por dia, por ano, só trocar o months

Treinando:

SELECT *
FROM Production.Product;

SELECT ProductID, Name, DATEPART(YEAR, SellStartDate)
FROM Production.Product;

SELECT AVG(ListPrice), DATEPART(YEAR, SellStartDate)
FROM Production.Product
GROUP BY DATEPART(YEAR, SellStartDate);