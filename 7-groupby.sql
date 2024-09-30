-- Divide o resultado da pesquisa em grupos
-- Para cada grupo pode aplicar uma função de agregação 
-- Ex.: calcular a soma dee itens e contar o número de itens naquele grupo

Exemplos passados pelo prof
-- Agrupar pelo id do produto em oferta e a soma de todos os mesmo produtos por id
SELECT SpecialOfferID, sum(UniPrice) AS "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID;

Quanto de cada produto foi vendido até hoje?
select ProductID, count(ProductID) AS "CONTAGEM"
from Sales.SalesOrderDetail
group by ProductID;

Quantos nomes temos cadastrados no banco de dados?
SELECT FirstName, COUNT(FirstName)
FROM Person.Person
GROUP BY FirstName; --(Fiz certo, entendi melhor o group by)

Qual a média de preço para oss produtos que são pratas(silver)
SELECT color, AVG(ListPrice) "PREÇO"
FROM Production.Product
WHERE color = 'silver'
GROUP BY Color;

Desafios
1 - Eu preciso saber quantas pessoas tem o mesmo MiddleName agrupadas por o MiddleName
SELECT MiddleName, count(MiddleName)
FROM Person.Person
GROUP BY MiddleName;

2- Em média, qual é a quantidade(quantity) que cada produto é vendido na loja.
SELECT ProductID, count(ProductID) Quantity
FROM sales.SalesOrderDetail
Group By ProductID;

--Solução do Professor
SELECT ProductID, AVG(OrderQty) Média
FROM sales.SalesOrderDetail
Group By ProductID;

3- Quais foram as 10 vendas que no total tiveram os maiores valores de venda(line total) 
por produto do maior valor para o menor valor

SELECT TOP 10 ProductID, MAX(OrderQty) AS Quantidade
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY Quantidade DESC;

--Solução do Professor
SELECT TOP 10 ProductID, SUM(LineTotal) 
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) DESC;

4- Quantos produtos e qual a quantidade média de produtos temos cadastrados nas nossas 
ordem de serviço (WorkOrder), agrupados por ProductID 

SELECT count(OrderQty), AVG(OrderQty)
FROM Production.WorkOrder
group by OrderQty;

--Solução do Professor
SELECT productid, count(productid)  "Contagem", 
AVG(OrderQty) "Média"
FROM Production.WorkOrder
group by ProductID;

