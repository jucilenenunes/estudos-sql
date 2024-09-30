Quando estamos atuando com Join. Temos os dois lados direita(Right) e esquerda(Left).
https://www.edrawmax.com/templates/1010782/

Tabela A e B
A = Left
B = Right

-- Imagem em anexo
INNER JOIN retorna apenas os resultados que existem tanto na tabela A como na tabela B.

FULL OUTER JOIN retorna um conjunto de todos os registros correspondentes da Tabela A 
e Tabela B quando são iguais. E além disso se não houver valores correspondentes, 
ele simplesmente irá preencher esse lado com null.

LEFT OUTER JOIN retorna um conjunto de todos os registros da Tabela A, e além disso, 
os registros correspondentes (quando disponível) na Tabela B. Se não houver registros
correspondentes ele simplesmente vai preencher com null

LEFT JOIN é a forma mais utilizada.

Exemplo
Quero descobrir quais pessoas tem um cartão de crédito registrado.

SELECT *
FROM Person.Person pp
INNER JOIN Sales.PersonCreditCard pc
on pp.BusinessEntityID = pc.BusinessEntityID;
-- 19118 linhas

SELECT *
FROM Person.Person pp
LEFT JOIN Sales.PersonCreditCard pc
on pp.BusinessEntityID = pc.BusinessEntityID;
-- 19972

tomar cuidado ao usar o join