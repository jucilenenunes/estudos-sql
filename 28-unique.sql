 CREATE TABLE carteiraMotorista (
id int not null,
nome varchar(255) not null,
idade int check (idade >= 18),
cdCNH int NOT NULL UNIQUE
 ); 

 UNIQUE não permite registros repetidos na tabela.
 insert into carteiraMotoristaar (id, nome, idade, cdCNH)
 values (1, 'Ju', 39, 123456)
 Se tentar inserior o mesmo dado, retornará erro e não gravará.