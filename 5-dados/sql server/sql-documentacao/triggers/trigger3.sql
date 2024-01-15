USE CURSO
GO;

CREATE TRIGGER tri_controla_ddl_db
on DATABSE
FOR create_procedure, drop_procedure, alter_procedure, CREATE_TABLE, ALTER_TABLE,DROP_TABLE
AS
    BEGIN
        IF(DATEPART(hh, GETDATE()) < 08
            AND DATEPART(hh, GETDATE()) > 18)
            
            BEGIN
                DECLARE @MSG VARCHAR(100);
                @MSG = 'COMPLETE A OPERAÇÃO EM HORÁRIO DE EXPEDIENTE!';
                PRINT(@MSG);
                ROLLBACK;
            END
    END


CREATE TRIGGER tri_controla_ddl_db
ON ALL SERVER
FOR create_procedure, drop_procedure, alter_procedure, CREATE_TABLE, ALTER_TABLE,DROP_TABLE
AS
    BEGIN
        IF(DATEPART(hh, GETDATE()) < 08
            AND DATEPART(hh, GETDATE()) > 18)
            
            BEGIN
                DECLARE @MSG VARCHAR(100);
                @MSG = 'COMPLETE A OPERAÇÃO EM HORÁRIO DE EXPEDIENTE!';
                PRINT(@MSG);
                ROLLBACK;
            END
    END


