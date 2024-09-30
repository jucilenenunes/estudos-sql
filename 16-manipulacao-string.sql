Manioulação de String
https://learn.microsoft.com/pt-br/sql/t-sql/functions/string-functions-transact-sql?view=sql-server-ver16

Exemplos: --CONCAT, LEN, UPPER, SUBSTRING E REPLACE
SELECT CONCAT(FirstName, LastName)  "Nome completo"
FROM Person.Person;

SELECT UPPER(FirstName)  "Nome"
FROM Person.Person;

SELECT Lower(FirstName)  "Nome"
FROM Person.Person;

SELECT Len(FirstName)  "Nome"
FROM Person.Person;

SELECT FirstName, SUBSTRING(FirstName,1,3) "Nome"
FROM Person.Person;

SELECT productNumber, replace(ProductNumber, '-', '#')
FROM Production.Product;