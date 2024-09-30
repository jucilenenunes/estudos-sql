CREATE TABLE carteiraMotorista (
id int not null,
nome varchar(255) not null,
idade int check (idade >= 18)
 )

 CREATE TABLE carteiraMotorista (
id int not null,
nome varchar(255) not null,
idade int check (idade >= 18)
 )

 select * from carteiraMotorista;

 insert into carteiraMotorista (id, nome, idade)
 Values (2, 'Pietra', 10);