IF 1 = 1
    BEGIN 
        PRINT 'correto é true'
    END
    ELSE
        PRINT 'errado é false'

IF 1 = 1 AND 2 <> 2
    BEGIN 
        PRINT 'correto é true'
    END
    ELSE
        PRINT  'errado é false'

IF 1 = 1 AND 2 = 17 
    BEGIN
        PRINT 'correto é true'
    END 
    ELSE 
        PRINT 'errado é false'


--TESTE COM IF E ELSE
DECLARE @id_aluno int;
SET @id_aluno = '1';
IF (
    SELECT COUNT(*)
    FROM matricula 
    WHERE id_aluno = @id_aluno) = 0
        BEGIN 
            PRINT 'Aluno sem maticula'
        END 
        ELSE
            BEGIN 
                PRINT 'Materias MATRICULADAS';
                SELECT b.nome_disc, a.periodo
                FROM matricula a
                INNER JOIN disciplina b
                ON a.id_disciplina = b.id_disciplina
                AND a.id_aluno = @idaluno
            END;

DECLARE @idade INT;
SET @idade = 65;
IF @idade < 18
    PRINT 'menor de 18 anos';
ELSE IF @idade >= 18 AND @idade < 65
    PRINT 'maior de 18 mas manor que 65';
ELSE 
    PRINT 'Maior que 65';






