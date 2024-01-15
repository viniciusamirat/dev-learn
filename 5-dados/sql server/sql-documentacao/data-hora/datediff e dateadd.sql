select datediff(day, '2015-03-12', '2017-07-13');

select datediff(month, '2015-03-12', '2017-07-13');

select datediff(year, '2015-03-12', '2017-07-13');

--quantos dias de vida eu tenho
select datediff(day, '2003-10-21', getdate());

select datediff(year, '2003-10-21', getdate());

declare @meu_aniversario as datetime;
set @meu_aniversario='2003-21-10';

select datediff(day, @meu_aniversario, getdate());

--------------------------------------------

select getdate() agora,
    dateadd(day, 90, getdate());

select getdate() agora,
    dateadd(month, 2, getdate());

select getdate() agora,
    dateadd(year, 2, getdate());