USE curso;

CREATE TABLE SALDOS (
    NUM_CONTA INT NOT NULL PRIMARY KEY,
    VALOR_INICIAL DECIMAL(10,2),
    VALOR_FINAL DECIMAL(10,2)
);

INSERT INTO SALDOS VALUES ('123-1', 1000, 1000), ('123-2', 2000, 1500), ('123-3', 50, 5000);

CREATE FUNCTION SALDO(@CONTA VARCHAR(10))
    RETURNS DECIMAL
    AS
        BEGIN
            DECLARE @SALDO DECIMAL;
            SELECT @SALDO = VALOR_INICIAL - @VALOR_FINAL
            FROM SALDOS
            WHERE num_conta = @conta;

            if(@saldo is null)
                begin
                    set @saldo = 0;
                end;
            
            RETURN @SALDO;

        END;


SELECT NUM_CONTA, VALOR_INICIAL, VALOR_FINAL, DBO.SALDO(NUM_CONTA) AS SALDO
FROM SALDOS
                