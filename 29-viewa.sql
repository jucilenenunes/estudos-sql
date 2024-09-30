São tabelas criadas para consulta onde é possível usar outras tabelas,
como base para criar uma nova tabela de pesquisa com apenas dados específicos
que são necessários.

 CREATE VIEW [Pessoas Simplificado] AS
 SELECT FirstName, LastName
 FROM Person.Person
 Where Title = 'Ms.';

 select *
 from [Pessoas Simplificado];