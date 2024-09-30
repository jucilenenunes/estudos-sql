O perador union combina dois ou mais resultados de um select em um resultado apenas.

SELECT coluna1, coluna2
FROM tabela1
UNION
SELECT colunas1, coluna2
FROM tabela2

UNION ALL (Opção)

Geralmente usa-se em tabelas que não estão normalizadas.

Exemplo usando union:

SELECT FirstName, Title, MiddleName
FROM Person.Person
WHERE Title = 'Mr.'
UNION
SELECT FirstName, Title, MiddleName
FROM Person.Person
WHERE MiddleName = 'A'