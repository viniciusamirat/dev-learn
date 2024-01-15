 --Adicionando novo campo na tabela
 ALTER TABLE colaborador ADD genero CHAR(1);

 --Alterando tipo da coluna
ALTER TABLE colaborador ALTER COLUMN ender VARCHAR(30);

--Excluindo campo da coluna
ALTER TABLE colaborador DROP COLUMN enero; 

--Excluindo chave estrangeira
ALTER TABLE salario
DROP CONSTRAINT FK__salario__salario__0E6E26BF; 