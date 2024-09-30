Como alterar tabela
ALTER TABLE nomedatabelaOriginal
AÇÃO


Alter table Youtube_curso
add ativo bit;
-- Acrescentar nova tabela

-- Alterar nome da coluna 
EXEC sp_RENAME 'nomeTabela.nomeColunaAtual', 'nomoeColunaNova', 'COLUMN'

EXEC sp_RENAME 'youtube_curso.nome', 'nomeCanal', 'COLUMN'


-- Trocar o nome da tabela
EXEC sp_rename 'Youtube_curso', 'Youtube'