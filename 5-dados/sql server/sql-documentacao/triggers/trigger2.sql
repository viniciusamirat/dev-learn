CREATE TABLE CONTA_CORRENTE (
    CONTA_C VARCHAR(20) NOT NULL,
    SALDO DECIMAL(10.2) NOT NULL,
    OPERACAO CHAR(1) NOT NULL
);

CREATE TABLE SALDO_CONTA (
    CONTA_C VARCHAR(20) NOT NULL,
    SALDO DECIMAL(10.2) NOT NULL
);

CREATE TRIGGER TG_CONTA_CC
ON CONTA_CORRENTE 
FOR INSERT
AS 
    BEGIN
        DECLARE @CONTA_C VARCHAR(20);
        DECLARE @SALDO DECIMAL(10.2);
        DECLARE @OPERACAO CHAR(1);

        SELECT 
            @CONTA_C = I.CONTA_C,
            @SALDO = i.SALDO,
            @OPERACAO = i.OPERACAO
        FROM INSERTED I

        IF @OPERACAO NOT INT ('D', 'C')
            BEGIN
                PRINT('OPERAÇÃO NÃO PERMITIDA!');
                ROLLBACK TRANSACTION;
            END
        ELSE IF (SELECT COUNT(*)
                FROM SALDO_CONTA
                WHERE CONTA_C = @CONTA_C) = 0
                AND @OPERACAO = 'D'

            BEGIN
                INSERT INTO SALDO_CONTA (
                    CONTA_C,
                    SALDO
                ) VALUES (
                    @CONTA_C,
                    @SALDO *- 1 --PRA FICAR NEGATIVO
                )
            END
        ELSE IF(SELECT COUNT(*)
                FROM SALDO_CONTA
                WHERE CONTA_C = @CONTA_C) = 0
                AND @OPERACAO = 'C'

            BEGIN
                INSERT INTO SALDO_CONTA
                VALUES (
                    @CONTA_C,
                    @SALDO
                )
            END

        ELSE IF @OPERACAO = 'D'
            BEGIN
                UPDATE SALDO_CONTA SET
                SALDO = SALDO - @SALDO
                WHERE CONTA_c = @CONTA_C
            END
        ELSE IF @OPERACAO = 'C'
            BEGIN
                UPDATE SALDO_CONTA SET
                SALDO = SALDO + @SALDO
                WHERE CONTA_C = @CONTA_C

            END
        
    end


