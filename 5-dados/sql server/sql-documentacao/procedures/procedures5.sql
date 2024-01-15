USE CURSO;
GO

CREATE TABLE CAD_PESSOA(
    ID_PESSOA INT NOT NULL PRIMARY KEY,
    NOME VARCHAR(100),
    EMAIL VARCHAR(100),
    SITUACAO CHAR(1),
    CONSTRAINT CK_SITUA CHECK(SITUACAO IN ('A', 'B'))
);

CREATE PROCEDURE SP_CRUD    @V_OPERACAO CHAR(1),
                            @V_ID_PESSOA INTEGER,
                            @V_NOME VARCHAR(100),
                            @V_EMAIL VARCHAR(100),
                            V_SITUACAO CHAR(1)

AS 
BEGIN 
    DECLARE @V_SID_PESSOA INTEGER,
            @V_SNOME VARCHAR(100),
            @V_SEMAIL VARCHAR(100),
            @V _SSITUACAO CHAR(1)

    BEGIN TRANSACTION

        IF(@V_OPERACAO = 'I')
            BEGIN 
                IF(@V_NOME IS NULL OR @V_NOME = '' OR @V_ID_PESSOA IS NULL OR @V_ID_PESSOA = ''
                OR @V_EMAIL IS NULL OU @V_EMAIL = '')
                    BEGIN 
                        ROLLBACK;
                        PRINT 'CAMPOS IMCOMPLETOS, IMPOSSÍVEL INSERIR DADOS!';
                        GOTO FIM_ERRO
                    END
                ELSE 
                    BEGIN
                        INSERT INTO CAD_PESSOA (ID_PESSOA, NOME, EMAIL, SITUACAO)VALUES (
                            @V_ID_PESSOA,
                            @V_NOME,
                            @V_EMAIL,
                            'A'
                        )
                        GOTO FIM_CERTO;
                    END
                
            END
        
        IF (@V_OPERACAO = 'A')
            BEGIN
                IF(@V_ID_PESSOA IS NULL OR @V_ID_PESSOA = '')
                    BEGIN
                        ROLLBACK;
                        PRINT 'CAMPOS INCOMPLETOS, IMPSSÍVEL ATUALIZAR DADOS!';
                        GOTO FIM_ERRO;
                    END
                ELSE
                    BEGIN
                        UPDATE CAD_PESSOA SET 
                            NOME = ISNULL(@V_NOME, NOME), 
                            EMAIL = ISNULL(@V_EMAIL, EMAIL),
                            SITUACAO = ISNULL(@V_SITUACAO, SIUACAO)
                        WHERE ID_PESSOA = @V_ID_PESSOA;
                        GOTO FIM_CERTO;
                    END
            END
        
        IF(@V_OPERACAO = 'D')
            BEGIN 
                IF(@V_ID_PESSOA IS NULL OR @V_ID_PESSOA = '')
                    BEGIN
                        ROLLBACK;
                        PRINT 'IMPOSSÍVEL DELETAR!';
                        GOTO FIM_ERRO;
                    END
                ELSE
                    BEGIN
                        DELETE FROM CAD_PESSOA WHERE ID_PESSOA = @V_ID_PESSOA;
                        GOTO FIM_CERTO;
                    END
            END

        IF(@V_OPERACAO = 'S')
            BEGIN
                SELECT @V_SID_PESSOA = CAD.ID_PESSOA,
                        @V_SNOME = CAD.NOME,
                        @V_SEMAIL, CAD.EMAIL,
                        @V_SSITUACAO = CAD.SITUACAO
                FROM CAD_PESSOA CAD
                WHERE ID_PESSOA = @V_ID_PESSOA;

                PRINT CONCAT('ID: ', @V_SID_PESSOA);
                PRINT 'NOME: ' + @V_SNOME;
                PRINT 'EMAIL: ' + @V_SEMAIL;
                PRINT 'SITUAÇÃO: ' + @V_SSITUACAO;

                GOTO FIM_CERTO;
            END

    FIM_CERTO:
        COMMIT;
        PRINT 'DADOS INSERIDOS, ATUALIZADOS, DELETADOS OU SELECIONADO COM SUCESSO!';
        GOTO FIM;

    FIM_ERRO:
        PRINT 'ALGO DEU ERRADO!';

    FIM:
        PRINT 'FINALIZADO!';
END;

--INSERT
EXEC SP_CRUD 'I', 1, 'JHONY', 'JHONY@GMAIL.COM', 'A';
EXEC SP_CRUD 'I', 2, 'PETER', 'PETER@GMAIL.COM', 'A';
EXEC SP_CRUD 'I', 3, 'HARRY', 'HARRY@GMAIL.COM', 'A';

--ESTÁ ATRIBUINDO OS VALORES AS VARIÁVEIS AQUI TAMBÉM POIS ASSIM É POSSÍVEL INFORMAR OS ARGUMENTOS
--NA ORDER DIFERENTE DOS PARAMETROS, CASO NÃO USASSE TERIA QUE IR NA ORDEM CORRETA

--SELECT 
EXEC SP_CRUD @V_OPERACAO = 'S',
            @V_ID_PESSOA = 1,
            @V_NOME = NULL;
            @V_EMAIL = NULL,
            @V_SITUACAO = NULL

--UPDATE
EXEC SP_CRUD @V_OPERACAO = 'A',
            @V_ID_PESSOA = 2,
            @V_NOME = 'JORGINHO';
            @V_EMAIL = 'JORGINHO@GMAIL.COM',
            @V_SITUACAO = 'A'

--SELECT
EXEC SP_CRUD @V_OPERACAO = 'S',
            @V_ID_PESSOA = 2,
            @V_NOME = NULL;
            @V_EMAIL = NULL,
            @V_SITUACAO = NULL

--DELETE
EXEC SP_CRUD @V_OPERACAO = 'D',
            @V_ID_PESSOA = 2,
            @V_NOME = NULL;
            @V_EMAIL = NULL,
            @V_SITUACAO = NULL

--SELECT
EXEC SP_CRUD @V_OPERACAO = 'S',
            @V_ID_PESSOA = 2,
            @V_NOME = NULL;
            @V_EMAIL = NULL,
            @V_SITUACAO = NULL