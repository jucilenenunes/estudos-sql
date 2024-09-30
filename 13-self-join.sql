Quando se combina uma tabela com ela mesmo. Geralmente para comparar linhas.
É necessário usar o alias para isso ser possível.c
Exs.:

SELECT a.contactname, a.region, b.contactname, b.region
FROM Customers a, Customers b
WHERE a.Region = b.Region;

SELECT a.firstname, a.hiredate, b.firstname, b.hiredate
FROM EMPLOYEES a, EMPLOYEES b
WHERE DATEPART(YEAR, a.hiredate) = DATEPART(YEAR, b.hiredate);

Desafio:
Quero saber na tabela detalhe do pedido ORDER  DETAILS, quais produtos tem o mesmo percentual de desconto
SELECT a.productId, a.discount, b.productId, b.discount
FROM [Order Details] a, [Order Details] b
WHERE a.Discount = b.Discount;

Pelo que entendo é um modo de analisar os dados comparandos.