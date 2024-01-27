create or replace function tg_status_after()
returns trigger
language plpgsql
as $function$

begin
	if (tg_op = 'UPDATE') then
		update status
		set update_time = current_timestamp
		where
			pk_status = new.pk_status;
	end if;
	
	
	if (tg_op = 'DELETE') then
		return old;
	else
		return new;
	end if;
end;
$function$

create trigger tg_status_after
	after insert or update or delete
	on public.status
	for each row
	when (pg_trigger_depth() = 0)
	execute procedure tg_status_after();