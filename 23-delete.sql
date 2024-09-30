Apagar, deleter, remover linhas do banco.
Sempre colocar a condição para não deletar tudo.


update aula
set nome = 'teste';
-- isso altera a coluna toda
-- Por isso importante a condição

update aula
set nome = 'mudar'
where id = 3 ;

delete from aula
where nome = 'mudar';