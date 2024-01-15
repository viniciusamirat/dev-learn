use curso

create table cli_nome (
    cod_cliente int primary key not null,
    nome_completo varchar(100) not null
)

declare @codcliente int,
        @primeironome varchar(30),
        @sobrenome varchar(60),
        @nomecompleto varchar(90)

declare cursor1 cursor for
    select a.businessEntityID, a.firstname, a.lastname from AdventureWorks2017.person.person a

open cursor1

fetch next from cursor1 into @codcliente, @primeironome, @sobrenome

while @@fetch_status = 0
    begin
        set @nomecompleto = @primeironome + ' ' + @sobrenome
        insert into cli_nome values
            (@codcliente, @nomecompleto)

        fetch next from cursor1 into  @codcliente, @primeironome, @sobrenome

    end

close cursor1

deallocate cursor1

