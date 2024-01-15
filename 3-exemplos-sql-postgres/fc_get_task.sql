CREATE OR REPLACE FUNCTION fc_get_task(
	v_pk_task integer,
	out r_pk_task integer,
	out r_title text,
	out r_status text
)
RETURNS RECORD
LANGUAGE plpgsql
as $function$
BEGIN
	r_pk_task := v_pk_task;
	r_title := '';
	r_status := '';

	SELECT 
		public.tasks.pk_task,
		public.tasks.title,
		public.status.description
	INTO
		r_pk_task,
		r_title,
		r_status
	FROM
		public.tasks
		inner join public.status on public.status.pk_status = public.tasks.fk_status
	WHERE
		public.tasks.pk_task = v_pk_task;
		
END;
$function$