

--DDL CRIACAO DE INDEX
 CREATE INDEX ix_func1 ON colaborador(data_nasc);
 CREATE INDEX ix_func2 ON colaborador(cidade,pais);



--DDL CRIACAO DE DATABASE
CREATE DATABASE TESTE;

--Excluindo database

DROP DATABASE TESTE; 

--Excluindo table
DROP TABLE SALARIO;



--CRIACAO DE VIEW
CREATE VIEW v_colaborador
	AS
	SELECT * FROM colaborador;

--ALTER VIEW
	ALTER VIEW v_colaborador
	AS 
	SELECT matricula,NOME FROM colaborador

--Excluindo VIEW
DROP VIEW v_colaborador; 
--Excluindo index
DROP index ix_func1 ON colaborador;
--CRIANDO INDEX
CREATE INDEX IX_FUNC1 ON colaborador (NOME)
--Excluindo procedure
DROP PROCEDURE proc_salario; 
--Excluindo Função
DROP function func_salario;
--Excluindo Trigger
DROP trigger trig_func_salario;

