NOT NULL

Usa-lo quando o campo a ser preenchido não aceitar inserção de dados em vazio.
Conteúdo tranquilo.

 CREATE TABLE carteiraMotorista (
id int not null,
nome varchar(255) not null,
idade int check (idade >= 18)
 )

 
  insert into carteiraMotorista (id, nome, idade)
 Values (2, , 10);
 -- Dessa forma, retornará erro.