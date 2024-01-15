USE ERP
GO

CREATE PROCEDURE PROC_PLAN_ORDEM (@COD_EMPRESA INT, @MES VARCHAR(2), @ANO VARCHAR(4))
AS
    BEGIN
        --MOSTRAR QUANTAS LINHAS FORAM AFETADAS
        SET NOCOUNT ON
        DECLARE @ERRO_INTERNO INT;
        BEGIN TRANSACTION;

        SELECT A.COD_EMPRESA, A.NUM_PEDIDO
        FROM PED_VENDAS A
        WHERE A.COD_EMPRESA = @COD_EMPRESA
		AND MONTH(A.DATA_ENTREGA) = @MES
		AND YEAR(A.DATA_ENTREGA) = @ANO
		AND A.SITUACAO = 'A'

		IF @@ROWCOUNT = 0
			BEGIN
				SET @ERRO_INTERNO = 1;
			END
		ELSE
			BEGIN
				INSERT INTO ORDEM_PRODUCAO 
				OUTPUT 'ORDEM PLANEJADA' MSG, inserted.COD_EMPRESA, inserted.ID_ORDEM, inserted.COD_MAT_PROD
				SELECT A.COD_EMPRESA, B.COD_MATERIAL,SUM(B.QTD) AS QTD_PLAN, 0 QTD_PROD,
				@ANO + '-' + @MES + '-01' AS DATA_INI,
				EOMONTH(@ANO + '-' + @MES + '-01') AS DATA_FIM, 'A'
				FROM PED_VENDAS A
				INNER JOIN PED_VENDAS_ITENS B
					ON A.NUM_PEDIDO = B.NUM_PEDIDO
					AND A.COD_EMPRESA = B.COD_EMPRESA
					WHERE A.SITUACAO = 'A'
					AND MONTH(A.DATA_ENTREGA) = @MES
					AND YEAR(A.DATA_ENTREGA) = @ANO
					GROUP BY A.COD_EMPRESA, B.COD_MATERIAL
				PRINT 'INSERT ONDEM PRODUÇÃO REALIZADO';

				UPDATE PED_VENDAS 
				SET SITUACAO = 'P'
				OUTPUT 'PEDIDO PLANEJADO' MSG, inserted.NUM_PEDIDO, deleted.SITUACAO DE, inserted.SITUACAO PARA
				WHERE COD_EMPRESA = @COD_EMPRESA
				AND SITUACAO = 'A'
				AND MONTH(DATA_ENTREGA) = @MES
				AND YEAR(DATA_ENTREGA) = @ANO;

				PRINT 'TABELA DE PEDIDOS ATUALIZADA';
			END

			IF @ERRO_INTERNO = 1
				BEGIN
					ROLLBACK
					RAISERROR ('NAO EXISTEM MATERIAIS PARA PLANEJAR A ORDEM!',
					10,
					1);
					PRINT 'OPERAÇÃO CANCELADA, ROLLBACK!';
				END
			ELSE IF @@ERROR <> 0
				BEGIN
					ROLLBACK
					PRINT 'OPERAÇÃO CANCELADA, ROLLBACK!';
					PRINT @@ERROR;
				END

			ELSE
				BEGIN
					COMMIT;
					PRINT 'OPERAÇÃO REALIZADA COM SUCESSO!';
				END
	END

EXEC PROC_PLAN_ORDEM 1, 1, 2018;

SELECT * FROM ORDEM_PRODUCAO