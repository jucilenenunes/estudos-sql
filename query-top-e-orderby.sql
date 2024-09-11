-- TOP
-- 10 (A quantidade que desejar buscar)
SELECT TOP 10 * FROM Person.Person;



--ORDER BY ASC e DESC

SELECT *
FROM Person.Person
ORDER BY FirstName asc;
--DESAFIO 05
--a)Obter o ProductId dos 10 produtos mais caros cadastrdos nos sistema, listando do mais caro para o mais barato

SELECT TOP 10 ProductID
FROM Production.Product
ORDER BY ListPrice DESC;
--Resultado
1  749
2  750
3  751
4  752
5  753
6  771
7  772
8  773
9  774
10 775

--b) Obter o nome e número do produto dos produtos que tem o id entre 1~4
SELECT TOP 4 Name, ProductNumber
FROM Production.Product
ORDER BY ProductID ASC;

--Resultado
1 Adjustable Race	    AR-5381
2 Bearing Ball	        BA-8327
3 BB Ball Bearing	    BE-2349
4 Headset Ball Bearings	BE-2908