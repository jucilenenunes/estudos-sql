Funções Matemáticas

SELECT *
FROM Sales.SalesOrderDetail;

SELECT UnitPrice + LineTotal -- podendo usar todas as operações
FROM Sales.SalesOrderDetail;

SELECT ROUND(LineTotal, 2), LineTotal -- Arredondamento
FROM Sales.SalesOrderDetail;

SELECT SQRT(LineTotal) -- Raiz quadrada dos valores
FROM Sales.SalesOrderDetail;
-- Existem outras operações, buscar na documentação