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
/*
 
Função retorna o valor correto que será gravado em lb_samp_service_det.
 
Exceções:
       -01010101 = Determinação com processo em aberto (não finalizada).
       -02020202 = Determinação sem processo.
       -03030303 = Determinação com resultados duplicados que dever ser resolvidos pelo usuário.
       -04040404 = Inconsistência entre os status e a qtde de rp encontrado.
       -06060606 = Determinação com resultados duplicados que dever ser resolvidos pelo usuário devido ao fato de estar fora da tolerância.
 
       Atenção: Se ocorrer erro na conversão de unidades, será gerado um exception.
*/
 
BEGIN
  r_value_alpha                  := '';
  r_value_number                 := null;
  r_fk_pa_variables_consts_items := null;
  r_a_has_number                 := false;
  r_a_multi_select               := false;
  r_a_has_consts                 := false;
  r_fk_samp_service_det_rp       := null;

  -- Se não for alphanumérica, retorna null.
  IF not( COALESCE(vro_type,' ') = '0') THEN
     RAISE EXCEPTION 'Determinação parcial não é alfanumérica (%)!', vpk_samp_service_det;
  END IF;
 
  -- Verifica se todos os processos foram encerrados.
  IF ( vst_number - ( vst_finish + vst_discarted ) > 0 ) then
     IF ( vexception = '1' ) THEN
       RAISE EXCEPTION 'Determinação com processos em aberto não pode ser finalizada (%)!', vpk_samp_service_det;
     ELSE
       r_value_alpha := '-01010101';
       RETURN ;
     END IF;
  ELSE
    -- Verifica se nem todos os processos foram descartados.
    IF ( vst_finish = 0 ) then
       IF ( vexception = '1' ) THEN
         RAISE EXCEPTION 'Determinação sem processo não pode ser encerrada (%)!', vpk_samp_service_det;
       ELSE
         r_value_alpha := '-02020202';
         RETURN;
       END IF;
    END IF;
  END IF;
 
  -- Qtde de resultados parciais é maior que 1, usuário terá que definir qual resultado.
  IF (vst_finish > 1) THEN
     IF ( vexception = '1' ) THEN
       RAISE EXCEPTION 'Determinação com repetição deve ser resolvida antes de encerrar (%)!', vpk_samp_service_det;
     ELSE
       r_value_alpha := '-03030303';
       RETURN;
     END IF;
  END IF;
  
 
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
