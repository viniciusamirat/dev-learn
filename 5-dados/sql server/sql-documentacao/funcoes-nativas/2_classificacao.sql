--RANK EXEMPLO 2 1
/*As fun es de classifica o retornam um valor de classifica o 
para cada linha em uma parti o. Dependendo da fun o usada, 
algumas linhas podem receber o mesmo valor que outras. 
As fun es de classifica o s o n o determin sticas
*/
use curso
select rank() OVER (ORDER BY estado ASC) AS rank_uf ,
       estado 
from uf

--RANK EXEMPLO 2
select rank() OVER (ORDER BY estado ASC) AS rank_uf ,
	   regiao,
	   estado  
from regiao;

--RANK EXEMPLO 3
select rank() OVER (ORDER BY regiao ASC) AS rank_uf ,
       regiao,
	   estado
from regiao;

--NTILE
/*Distribui as linhas de uma parti o ordenada em um n mero de grupos especificado. 
Os grupos s o numerados, iniciando em um. Para cada linha, 
NTILE retorna o n mero do grupo ao qual a linha pertence.
*/
select NTILE(4) OVER (ORDER BY regiao ASC) AS NTILE_uf ,
regiao,estado  
from regiao

--DENSE_RANK
/*Retorna a classifica o de linhas dentro da parti o de um conjunto de resultados, 
sem qualquer lacuna na classifica o. A classifica o de uma linha   um mais 
o n mero de classifica es distintas que v m antes da linha em quest o.
*/
select DENSE_RANK() OVER (ORDER BY regiao ASC) AS DENSE_RANK_uf ,
	  regiao,
	  estado
from regiao

select DENSE_RANK() OVER (ORDER BY estado ASC) AS DENSE_RANK_uf ,
regiao,estado
regiao_uf  from regiao

--ROW_NUMBER
/*Retorna o n mero sequencial de uma linha em uma parti o de um conjunto de resultados, 
iniciando em 1 para a primeira linha de cada parti o.
*/
select ROW_NUMBER() OVER (ORDER BY estado ASC) AS ROW_NUMBER_uf ,
	  regiao,
	  estado
from regiao;

--combinando valores 1
select ROW_NUMBER() OVER (ORDER BY regiao ASC) AS ROW_NUMBER_uf ,
       DENSE_RANK() OVER (ORDER BY regiao ASC) AS DENSE_RANK_uf ,
	   NTILE(6) OVER (ORDER BY regiao ASC) AS NTILE_uf ,
	   rank() OVER (ORDER BY regiao ASC) AS rank_uf ,
       regiao,
	   estado
regiao_uf 
from regiao
order by 5,6

--combinando valores 1
select ROW_NUMBER() OVER (ORDER BY estado ASC) AS ROW_NUMBER_uf ,
       DENSE_RANK() OVER (ORDER BY estado ASC) AS DENSE_RANK_uf ,
	   NTILE(5) OVER (ORDER BY estado ASC) AS NTILE_uf ,
	   rank() OVER (ORDER BY estado ASC) AS rank_uf ,
regiao,estado
regiao_uf 
from regiao
order by 4,6

--simulando classificacao de campeonato
--drop table campeonato
create table campeonato
(
 nometime varchar(30)not null,
 pontos int not null
 );
 --populando tabela
insert into campeonato values ('Atl tico-GO','22');
insert into campeonato values ('Chapecoense','28');
insert into campeonato values ('Ponte Preta','28');
insert into campeonato values ('Gr mio','43');
insert into campeonato values ('Cruzeiro','37');
insert into campeonato values ('Santos','41');
insert into campeonato values ('Palmeiras','40');
insert into campeonato values ('Corinthians','53');
insert into campeonato values ('Flamengo','38');
insert into campeonato values ('Botafogo','37');
insert into campeonato values ('Atl tico-PR','34');
insert into campeonato values ('Vasco','31');
insert into campeonato values ('Atl tico-MG','31');
insert into campeonato values ('Sport','29');
insert into campeonato values ('Ava ','29');
insert into campeonato values ('Bahia','27');
insert into campeonato values ('Fluminense','31');
insert into campeonato values ('S o Paulo','27');
insert into campeonato values ('Coritiba','27');
insert into campeonato values ('Vit ria','26');


--select * from campeonato

--Classificacao do campeonato
	select rank() OVER (ORDER BY pontos desc) AS classif ,
		    nometime,
			pontos 
	from campeonato;

