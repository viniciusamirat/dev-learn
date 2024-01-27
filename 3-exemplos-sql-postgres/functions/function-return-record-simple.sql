CREATE OR REPLACE FUNCTION public.lb_fc_ro_get_result_rp_alpha(
  vpk_samp_service_det integer, 
  vro_type character, vst_number numeric, 
  vst_finish numeric, 
  vst_discarted numeric, 
  vexception character, 
  OUT r_value_alpha character varying, 
  OUT r_value_number numeric, 
  OUT r_fk_pa_variables_consts_items integer, 
  OUT r_a_has_number boolean, 
  OUT r_a_multi_select boolean, 
  OUT r_a_has_consts boolean, 
  OUT r_fk_samp_service_det_rp integer
)
 RETURNS record AS 
$BODY$
 
BEGIN
  r_value_alpha                  := '';
  r_value_number                 := null;
  r_fk_pa_variables_consts_items := null;
  r_a_has_number                 := false;
  r_a_multi_select               := false;
  r_a_has_consts                 := false;
  r_fk_samp_service_det_rp       := null;
 
  SELECT
    value_alpha                  ,
    value_number                 ,
    fk_pa_variables_consts_items ,
    a_has_number                 ,
    a_multi_select               ,
    a_has_consts                 ,
    pk_samp_service_det_rp
    
  INTO
    r_value_alpha                  ,
    r_value_number                 ,
    r_fk_pa_variables_consts_items ,
    r_a_has_number                 ,
    r_a_multi_select               ,
    r_a_has_consts                 ,
    r_fk_samp_service_det_rp
 
  FROM
    lb_samp_service_det_rp
 
  WHERE
        fk_samp_service_det = vpk_samp_service_det
    AND NOT ( date_finish IS null )
    AND NOT ( st_discard = '1' );
 
END;
$BODY$
LANGUAGE plpgsql;