--PARTE 2 REVOGA-REVOKE

select  CURRENT_USER

--REVOGANDO Acesso DE ATUALIZACAO UsrTeste.
REVOKE UPDATE ON FUNCIONARIOS to UsrTeste;

-- REVOGANDO Acesso DE inser o UsrTeste.
REVOKE INSERT ON FUNCIONARIOS TO UsrTeste;

-- REVOGANDO Acesso DE Leitura UsrTeste.
REVOKE SELECT ON FUNCIONARIOS TO UsrTeste;

--REVOGA DIREITO DE EXECUCAO DA PROC TESTE_PROC PARA UsrTeste.
REVOKE EXECUTE ON testproc TO UsrTeste;

--VERIFICANDO USUARIO LOGADO
select CURRENT_USER

--EXEC sp_grantdbaccess 'UsrTeste','UsrTeste'

--EXEC sp_revokedbaccess 'UsrTeste'

--ALTERANDO USUARIO LOGADO
SETUSER 'UsrTeste'

--VERIFICANDO USUARIO LOGADO
select CURRENT_USER

--EXECUTANDO PROCEDURE COM USUARIO UsrTeste
EXEC testproc;

--TESTANDO SELECT
SELECT  * from FUNCIONARIOS

--TESTANDO INSERT
INSERT into FUNCIONARIOS values ('Maria','1000','TI')

--TESTANDO UPDATE
UPDATE FUNCIONARIOS set nome='Marilia'
where id='8';

--TESTANDO DELETE
DELETE FROM FUNCIONARIOS
WHERE ID='8'


setuser;

select CURRENT_USER