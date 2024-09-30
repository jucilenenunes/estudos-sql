INNER JOIN,     OUTER JOIN E SELF JOIN
Juntar informações de tabelas diferentes
Ex. de colunas:
Cliente
Clienteid
Nome
EnderecoId

Endereco
EnderecoId
Rua
Cidade

-- Buscar tabela por nome da coluna
SELECT TABLE_NAME, COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME LIKE '%subCategory%';

--Preço, nome do produto e nome da subcategoria

SELECT TOP 10 pp.name, pp.ListPrice, ps.Name Subcategoria
FROM Production.Product pp
INNER JOIN Production.ProductSubcategory ps on pp.ProductSubcategoryID = ps.ProductSubcategoryID ;

--Junção de 2 tabelas por etapas, identifiquei de ambas o id e trouxe as duas tabelas juntas
SELECT TOP 10 *
FROM Person.BusinessEntityAddress;

SELECT TOP 10 *
FROM Person.Address;

SELECT TOP 10 *
FROM Person.BusinessEntityAddress ba
INNER JOIN  Person.Address a on a.AddressID = ba.AddressID;

Desafios
1- Realizar a junção das tabelas phoneNumberType e PersonPhone da base Person.
SELECT TOP 10 *
FROM Person.PhoneNumberType;

SELECT TOP 10 *
FROM Person.PersonPhone;

SELECT TOP 10 *
FROM Person.PhoneNumberType ph
INNER JOIN  Person.PersonPhone pp on ph.PhoneNumberTypeID = pp.PhoneNumberTypeID;
-- Específicando as colunas
SELECT TOP 10 pp.BusinessEntityID, ph.Name, ph.PhoneNumberTypeID, pp.PhoneNumber
FROM Person.PhoneNumberType ph
INNER JOIN  Person.PersonPhone pp on ph.PhoneNumberTypeID = pp.PhoneNumberTypeID;

2- Realizar a junção das tabelas SttateProvince e Address da base Perso.
trazendo as colunas AddressId, City, StateProvinceID, Nome do Estado
SELECT TOP 10 *
FROM Person.StateProvince;

SELECT TOP 10 *
FROM Person.Address;

SELECT TOP 10 pa.AddressID, pa.City, pa.StateProvinceID, sp.name "Nome do Estado"
FROM Person.StateProvince sp
INNER JOIN  Person.Address pa on sp.StateProvinceID = pa.StateProvinceID;