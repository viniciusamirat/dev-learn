--FAZENDO BK EM TABELA TEMPORARIA
SELECT * INTO #BK_SENSO2 FROM SENSO;
--VERIFCANDO REGISTRO TABELA TEMPORARIA
SELECT * FROM #BK_SENSO2;

--ANALISE DE REGISTROS ANTES DO TRUNCATE
SELECT Count(*) AS AntesTruncateCount
FROM #BK_SENSO2;

--DDL TRUNCATE APAGAR DADOS DA TABELA
TRUNCATE TABLE SENSO;

--VERIFICANDO TABELAS APOS TRUNCATE
SELECT Count(*) AS DepoisTruncateCount
FROM SENSO; 

--POPULANDO A TABELA COM DADOS DA TABELA TEMPORARIA
 insert into SENSO
 select * from #BK_SENSO2
--verifanco registro 
 select * from SENSO;