Orientação do instrutor para testar se o Banco de está conectado

SELECT TOP (10) [DepartmentID], [Name], [GroupName] FROM [AdventureWorks2017].[HumanResources].[Department];

SELECT * FROM Person.Person;


###Exercícios### 
-- Desafio 01 - SELECT
--A Equipe de Marketing precisa de fazer uma pesquisa sobre nomes mais comuns de seus clientes 
--e precisa do nome e sobrenome de todos os clientes que estão cadastrados no sistema.

SELECT DISTINCT FirstName FROM Person.Person; (Retornou 1.218 valores)

SELECT FirstName, LastName FROM Person.Person; (Retornou 19.972 registros)

-- Desafio 02 - DISTINCT
-- Quantas linhas sobrenomes únicos temos em nossa base person.person?
SELECT DISTINCT LastName FROM Person.Person; (Retornou 1.206 valores)


--SELECT TOP (10) [DepartmentID], [Name], [GroupName] FROM [AdventureWorks2017].[HumanResources].[Department];

--SELECT * FROM Person.Person;

--A Equipe de Marketing precisa de fazer uma pesquisa sobre nomes mais comuns de seus clientes e precisa do nome e sobrenome de todos os clientes que estão cadastrados no sistema.

SELECT DISTINCT FirstName FROM Person.Person;

SELECT FirstName, LastName FROM Person.Person;

-- WHERE
/* OPERADORES LÓGICOS - DESCRIÇÃO
=                       IGUAL
>						MAIOR QUE
<						MENOR QUE
>=						MAIOR E IGUAL QUE
<=						MENOR IGUAL QUE
<>						DIFERENTE DE
AND						E
OR						OU
*/

SELECT *
FROM	 Person.Person
WHERE LastName = 'miller' and FirstName = 'anna';

SELECT *
FROM Production.Product
WHERE color = 'blue' or color = 'black';

SELECT *
FROM Production.Product
WHERE ListPrice > 1500 and ListPrice < 5000;

SELECT *
FROM Production.Product
WHERE color <> 'red';

--DESAFIO 03 WHERE
--a) A Equipe de Produção de produtos precisa do nome de todas as peças que pesam mais que 500 kg, mas não mais que 700 kg para a insperção.

SELECT Name, Weight
FROM Production.Product
WHERE Weight > 500 and Weight <= 700;
--b) Foi pedido pelo Marketing uma relação de todos os empregados(employees) que são casados (single=solteiro e married=casado) e são assalariados(salaried)
SELECT * 
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' 
AND SalariedFlag = 1; --(Retornou 28 registros)
--c) Um usuário chamado Peter Krebs está devendo um pagamento, consiga o email dela que possamos enviar uma cobrança.
--(Você vai ter que usar a tabela person.person e depois a tabela person.emailaddress)
SELECT * 
FROM Person.Person
WHERE FirstName = 'Peter' 
AND LastName = 'Krebs';

SELECT *
FROM Person.EmailAddress
WHERE BusinessEntityID = 26;
--peter0@adventure-works.com