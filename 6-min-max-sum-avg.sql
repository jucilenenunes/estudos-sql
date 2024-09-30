-- Funções de agregações 

--SUM
SELECT TOP 10 sum(LineTotal)
FROM Sales.SalesOrderDetail;
-- Vai trazer a soma total da coluna selecionada.

-- MIN
SELECT TOP 10 min(LineTotal)
FROM Sales.SalesOrderDetail;
-- Traz o menor valor cadastrado

--MAX
SELECT TOP 10 max(LineTotal)
FROM Sales.SalesOrderDetail;
-- Traz o maior valor cadastrado

--AVG
SELECT TOP 10 avg(LineTotal)
FROM Sales.SalesOrderDetail;
-- Traz a média 