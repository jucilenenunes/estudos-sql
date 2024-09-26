-- BETWEEN
É usado para encontrar valor entre o valor mínimo e o valor máximo

valor BETWEEN mínimo AND máximo;

É a mesma coisa que dizer:
valor >= mínimo AND valor <=máximo;

SELECT *
FROM Production.Product
WHERE ListPrice BETWEEN 1000 and 1500;

-- Usando o NOT
SELECT *
FROM Production.Product
WHERE ListPrice NOT BETWEEN 1000 and 1500;

SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' and '2010/01/01'
ORDER BY HireDate;


--IN  vai reduzir o código e ter uma performace maior é o mesmo que usar OR e repetir a busca como no segundo exemplo
-- Também é possível usar o NOT antes do IN
Valor IN (valor1,valor)
Valor IN (SELECT valor FROM nome_tabela) -- Indica uma subquery

SELECT *
FROM Person.Person
WHERE BusinessEntityID NOT IN (2,7,13);

SELECT *
FROM Person.Person
WHERE BusinessEntityID = 2
OR BusinessEntityID = 7
OR BusinessEntityID = 13
