CREATE OR REPLACE FUNCTION atralabs_tg_lb_proto_after()
  RETURNS trigger AS
$BODY$
begin
    if (tg_op = 'INSERT') then
        insert into
            lb_proto_send_types --tipos de envio de OS
        (
             send_type
            ,fk_proto
            ,fk_send_types
            ,complement
        )
        values
        (
             '2' --send_type = solicitante
            ,new.pk_proto --fk_proto
            ,6 --fk_send_types = portal web
            ,'faturamento@atralabs.com.br;bruna.ribeiro@atralabs.com.br' --complement
        );
    end if;

    if (tg_op = 'DELETE') then
        return old;
    else
        return new;
    end if;
end;
$BODY$
  LANGUAGE plpgsql;

CREATE TRIGGER atralabs_tg_lb_proto_after
  AFTER INSERT OR UPDATE OR DELETE
  ON public.lb_proto
  FOR EACH ROW
  EXECUTE PROCEDURE atralabs_tg_lb_proto_after();
