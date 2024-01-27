CREATE OR REPLACE FUNCTION fc_get_tasks()
returns setof record
LANGUAGE plpgsql
as $function$
BEGIN

	return
	SELECT 
		tasks.pk_task,
		tasks.title,
		status.description
	FROM 
		public.tasks
		inner join public.status on public.tasks.fk_status = public.status.pk_status;
	return;

END;
$function$