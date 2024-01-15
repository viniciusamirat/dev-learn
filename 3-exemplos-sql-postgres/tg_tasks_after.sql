create or replace function tg_tasks_after()
	returns trigger
	language plpgsql
as $function$

begin

	if (tg_op = 'UPDATE') then
		update tasks set
			update_time = current_timestamp
		where
			pk_task = new.pk_task;
	end if;


	if(tg_op = 'DELETE') then
		return old;
	else
		return new;
	end if;

end;

$function$

create or replace trigger tg_tasks_after
	after insert or update or delete
	on public.tasks
	for each row
	WHEN (pg_trigger_depth() = 0)
	execute procedure tg_tasks_after();