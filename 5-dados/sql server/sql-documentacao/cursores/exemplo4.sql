use curso;
go
create table tabela_clientes(
    id_cliente int not null primary key identity(1,1),
    nome_cliente varchar(200),
    cpf_cliente varchar(20)
)
go

insert into table_clientes (nomecliente, cpf_cliente) values
    ('fabio', null),
    ('jorge', 12345678914),
    ('jack', null),
    ('peter', 25836914736)


declare 
    @nome_cliente varchar(200),
    @cpf_cliente varchar(20)

declare nome_do_cursor cursor for
    select nome_cliente, cpf_cliente
    from tabela_clientes


open nome_do_cursor

fetch next from nome_do_cursor into @nome_cliente, @cpf_cliente

while @@fetch_status = 0
    begin
        if (@cpf_cliente = null)
            begin 
                update tabela_clientes set cpf_cliente = 'atualizar CPF' where cpf_cliente is null
            end
        
        fetch next from tabela_clientes into @nome_cliente, @cpf_cliente

    end

close nome_do_cursor

deallocate nome_do_cursor