USE CURSO;
GO

CREATE PROCEDURE PROC_RET_MSG(@MEU_TEXTO VARCHAR(100))
AS
BEGIN
    SELECT 'TEXTO INFORMADO: ' + @MEU_TEXTO;
END

EXEC PROC_RET_MSG 'ESTE É MEU TEXTO!';