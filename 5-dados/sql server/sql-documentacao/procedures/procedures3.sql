USE CURSO;
GO

CREATE PROCEDURE proc_msg_boas_vindas
AS 
BEGIN
    PRINT 'OlÁ, bem-vindo ' + SYSTEM_USER;

    IF ((DATEPART(hour, getdate()) >= 8) and (datepart(hour, getdate()) < 12))
        BEGIN
            PRINT 'BOM DIA!';
        END
    ELSE IF ((DATEPART(HOUR, GETDATE()) >= 12) AND (DATEPART(HOUR, GETDATE()) < 18))
        BEGIN
            PRINT 'BOA TARDE';
        END
    ELSE
        BEGIN
            PRINT 'BOA NOITE!';
        END
    
END;

EXEC proc_msg_boas_vindas;

