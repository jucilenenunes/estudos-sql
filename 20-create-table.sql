Ao criar uma tabela é importante que ela contenha aluns pontos de restrições.
NOT NULL - Não permite nulos
UNIQUE - Força que todos os valores em uma coluna sejam diferentes
PRIMARY KEY - Junção de NOT NULL e UNIQUE
FOREIGN KEY - Identifica únicamente uma linha em outra tabela
CHECK - Força uma condição específica em uma coluna
DEFAULT - Força um valor padrão quando nenhum valor é passado

Criando tabelas

CREATE TABLE canal (
CanalId int Primary Key,
Nome varchar(150) NOT NULL,
ContagemInscritos int DEFAULT 0,
DataCriacao DATETIME NOT NULL
);

select * from canal;

create table Video (
videoId int primary key,
nome varchar(150) not null,
visualizacao int default 0,
dislikes int not null,
CanalId int foreign key references Canal(CanalID)
);

select * from video;