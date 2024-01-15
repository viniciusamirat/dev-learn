use curso;

CREATE TABLE #minhatemporaria
(
    campo1 VARCHAR(80) NOT NULL,
    campo2 MONEY NOT NULL
)

INSERT INTO #minhatemporaria VALUES ('Real' 1000);
INSERT INTO #minhatemporaria VALUES ('Dolar', 3000);

SELECT * FROM #minhatemporaria;

SELECT campo1, campo2 FROM #minhatemporaria;

--criando tabela temporária por meio de um SELECT
SELECT * INTO #minhatemporaria2 FROM #minhatemporaria;

UPDATE #minhatemporaria SET campo1 = 'Libra';

SELECT * FROM #minhatemporaria;

SELECT * FROM #minhatemporaria2;

DELETE FROM #minhatemporaria2;

DROP TABLE #minhatemporaria2;

USE curso;
SELECT nome_mun INTO #cidadeTemp FROM senso;

SELECT * FROM #cidadeTemp;

