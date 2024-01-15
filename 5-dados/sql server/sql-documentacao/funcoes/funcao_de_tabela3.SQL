USE CURSO;
GO

CREATE FUNCTION FN_ESTADO_POP(@regiao varchar(20))
RETURNS TABLE
AS
RETURN (
    SELECT a.uf, b.estado, b.regiao, SUM(a.populacao) AS total
    from senso a
    INNER JOIN regiao b
    ON a.cod_uf = b.cod_uf
    WHERE b.regiao = @regiao
    GROUP BY a.uf, b.estado, b.regiao
);

SELECT * FROM DBO.FN_ESTADO_POP('Norte');

