AS serve para renomear, dar apelido para uma coluna, ou tabela ou agregação
se usar palavra única não precisa colocar entre "" se for palavras compostas é necessário 
ficar entre "".
Exemplo:
SELECT TOP 10 AVG(ListPrice) as "Preço Médio"
FROM Production.Product;

Desafios
1- Encontrar o FirstName e LastName na tabela person.person e renomear a coluna com os nomes em português.
SELECT FirstName Nome, LastName Sobrenome
FROM Person.Person;

2- ProductNumber da tabela production.Product "Número do Produto"
SELECT ProductNumber "Número do Produto"
FROM Production.Product;

3- sales.SalesOrderDetail unitPrice "Preço unitário"
SELECT UnitPrice "Preço unitário"
FROM Sales.SalesOrderDetail;