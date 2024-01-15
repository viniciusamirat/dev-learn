DECLARE @cont int;
SET @cont = 10;
WHILE (SELECT Getdate()-@cont) <= Getdate()
    BEGIN
        PRINT Getdate() - @cont
        SET @cont = @cont - 1
    IF (Getdate() - @cont) >= Getdate()
        BREAK
    ELSE
        CONTINUE
    END;

--WHILE tabuada

DECLARE @cont INT,
        @tab INT;

SET @cont = 0;
SET tab = 7;

WHILE(@cont <= 10)
    BEGIN
        PRINT CAST(@cont as NVARCHAR) + N' x ' + cast(@tab as nvarchar) + N' = ' + CAST(@cont * @tab as NVARCHAR);
        SET @cont = @cont + 1
    END;

--impar ou par
DECLARE @INICIO INT,
		@FIM INT,
		@RESTO INT;

SET @INICIO = 1;
SET @FIM = 10;

WHILE(@INICIO <= @FIM)
	BEGIN
		IF (@INICIO % 2) > 0
			BEGIN
				PRINT CAST(@INICIO AS NVARCHAR) + ' É ÍMPAR';
				SET @INICIO = @INICIO + 1;
			END;
		ELSE 
			BEGIN
				PRINT CAST(@INICIO AS NVARCHAR) + ' É par';
				SET @INICIO = @INICIO + 1;
			END;
	END;