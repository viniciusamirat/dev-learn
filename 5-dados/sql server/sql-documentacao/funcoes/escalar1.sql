--Criando uma função do tipo escalar TRIM
USE curso;
go

DROP FUNCTION FN_Trim;

CREATE FUNCTION FN_Trim(@ST VARCHAR(1000))
    RETURNS VARCHAR(1000)
    AS
    BEGIN
        RETURN(Ltrim(Rtrim(@ST)))
    END;



--Invocando função escalar TRIM
SELECT '>' + ('     SILVA TELLES     ') + '<'
UNION
SELECT '>' + DBO.FN_Trim('     SILVA TELLES     ') + '<'


--ALTERANDO A FUNÇÃO
ALTER FUNCTION FN_Trim(@ST VARCAHR(1000))
    RETURNS VARCHAR(500)
    BEGIN
        RETURN(Ltrim(Rtrim(@ST)))
    END;

