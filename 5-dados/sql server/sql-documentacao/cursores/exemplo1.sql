USE curso;

DECLARE @MinhaVariavel VARCHAR (100);

DECLARE meu_cursor;
CURSOR LOCAL FOR SELECT NOME FROM ALUNOS;

OPEN meu_cursor;

FETCH NEXT FROM meu_cursor INTO @MinhaVariavel;

WHILE (@@FETCH_STATUS = 0)
    BEGIN   
        PRINT @MinhaVariavel + ' FETCH _STATUS-> ' + CAST(@@FETCH_STATUS AS VARCHAR(20));
        FETCH NEXT FROM meu_cursor INTO @MinhaVariavel;
END

PRINT 'FETCH_STATUS-> ' + CAST(@@FETCH_STATUS AS VARCHAR(20));

CLOSE meu_cursor;

DEALLOCATE meu_cursor;
