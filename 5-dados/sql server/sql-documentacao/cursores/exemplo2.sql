use curso

    select a.BusinessEntityID codpessoa,
            a.Firstname nome,
            a.lastname sobrenome,
            cast('' as varchar(100)) nomecompleto
        into clifor
    from AdventureWorks2017.person.person a

select * from clifor


declare @codpessoa int,
        @primeironome varchar(50),
        @sobrenome varchar(50),
        @nomecompleto varchar(100)


declare cursor1 cursor for 
    select codpessoa,
            nome,
            sobrenome
    from clifor

open cursor1


fetch next from cursor1 into @codpessoa, @primeironome, @sobrenome


while @@fetch_status = 0
    begin 
        update clifor
        set nomecompleto = @primeironome + ' ' + @sobrenome
        where codpessoa = @codpessoa


        fetch next from cursor1 into @codpessoa, @primeironome, @sobrenome

    end

close curso1

deallocate cursor1