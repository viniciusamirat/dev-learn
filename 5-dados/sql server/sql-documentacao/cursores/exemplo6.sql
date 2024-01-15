use curso;

--tabela temporária global
create table ##dados (
    numero int null,
    nome varchar(100)
);

insert into ##dados values (1, 'vini');
insert into ##dados values (2, 'julia');
insert into ##dados values (3, 'marcilene');
insert into ##dados values (4, 'juliano');
insert into ##dados values (5, 'marcos');
insert into ##dados values (6, 'jose');
insert into ##dados values (7, 'sergio');
insert into ##dados values (8, 'alex');
insert into ##dados values (9, 'daniel');


declare cDados scroll cursor for
    select numero, nome from ##dados

open cDados;

--quantidade de linhas do cursor
select @@CURSOR_ROWS;

--seleciona a primeira linha do cursor
FETCH ABSOLUTE 1 FROM #dados;

--seleciona a próxima linha do cursor
FETCH NEXT FROM #dados;

--seleciona a última linha do cursor
FETCH LAST FROM #dados;

--seleciona o registro anterior do registro atual do cursor
FETCH PRIOR FROM #dados;

--volta para a linha 2 do cursor
FETCH ABSOLUTE 2 FROM #dados;

--avança 3 registros em relação ao rgistro atual
FETCH RELATIVE 3 FROM #dados;

--retroceder 2 registros em relação ao registro atual
FETCH RELATIVE -2 FROM #dados


CLOSE cDados;

DEALLOCATE cDados






















