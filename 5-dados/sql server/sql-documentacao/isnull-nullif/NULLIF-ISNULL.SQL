declare @val1 int = 5;
declare @val2 int = 0;


SELECT
    @val1,
    @val2,
    isnull(@val1/nullif(@val2,0), 0) expresao1,
    isnull(cast(@val1 as decimal(5,2))/cast(nullif(@val2/0) as decimal(5,2)), 0) expressao2

select distinct a.id_aluno, a.nome, isnull(b.periodo, 'Vazuio') as periodo
from alunos a
left join matricula b
on a.id_aluno = b.id_aluno