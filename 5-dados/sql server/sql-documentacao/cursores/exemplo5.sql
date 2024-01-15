use curso

create table contapagparc(
    num_doc int,
    dtvenc date,
    parcela int
)

select num_doc, dtvenc from contapagparc

select * from contapagparc

insert into contapagparc values ('1', getdate() + 30, '')
insert into contapagparc values ('1', getdate() + 45, '')
insert into contapagparc values ('1', getdate() + 60, '')

insert into contapagparc values ('2', getdate() + 15, '')
insert into contapagparc values ('2', getdate() + 20, '')
insert into contapagparc values ('2', getdate() + 25, '')

declare @num_doc as int
declare @dtvenc as date
declare @count as int = 0
declare @num_doc_aux as int
declare cursorparc cursor for
    select num_doc,
        dtvenc
    from contapagparc
    order by num_doc,
        dtvenc asc

open cursorparc

fetch next from cursorparc into @num_doc, @dtvenc

while @@fetch_status = 0
    begin
        if @num_doc_aux <> @num_doc
            begin
                set @count = 1;
                set @num_doc_aux = @num_doc;
            end
        else 
            begin
                set @count = @count + 1;
                set @num_doc_aux = @num_doc;
            end
        
        update contapagparc
        set parcela = @count
        where num_doc = @num_doc
        and dtvenc = @dtvenc

        fetch next from cursorparc into @num_doc, @dtvenc

    end

close cursorparc

deallocate cursorparc


