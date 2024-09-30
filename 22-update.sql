Alterar o dado do banco de dado.
É possível alterar 1 registro de uma coluna ou a linha toda.

UPDATE nometabela
SET coluna1 = valor1
    coluna2 = valor2
WHERE condicao

select * from aula;

update aula
set nome = 'teste';
-- isso altera a coluna toda
-- Por isso importante a condição

update aula
set nome = 'mudar'
where id = 3 ;