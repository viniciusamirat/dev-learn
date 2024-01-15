use curso;


DECLARE @id_aluno int not null,
        @nome varchar(30),
        @nome_disc varchar(30),
        @periodo varchar(40)

DECLARE c_alunos CURSOR FOR
    SELECT id_aluno,
            nome
    from alunos

OPEN c_alunos

FETCH NEXT FROM c_alunos into @id_aluno, @nome

WHILE @@FETCH_STATUS = 0
    BEGIN
        PRINT 'Nome do aluno: ' + @nome;

        PRINT 'Disciplinas: ';

        DECLARE c_disc CURSOR FOR
            SELECT b.nome_disc,
                    a.periodo
            FROM matricula a
            INNER JOIN disciplina b
            ON a.id_disciplina = b.id_disciplina
            WHERE a.id_aluno = @id_aluno;

        OPEN c_disc;

        FETCH NEXT FROM c_disc INTO @nome_disc, @periodo

        WHILE @@FETCH_STATUS = 0
            BEGIN
                PRINT @nome_disc;


                FETCH NEXT FROM c_disc INTO @nome_disc, @periodo

            END

        CLOSE c_disc;

        DEALLOCATE c_disc;

        PRINT '--------------------';

        FETCH NEXT FROM c_alunos INTO @id_aluno, @nome;

    END

CLOSE c_alunos;

DEALLOCATE c_alunos;



