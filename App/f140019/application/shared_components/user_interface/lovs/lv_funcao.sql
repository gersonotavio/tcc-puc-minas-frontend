prompt --application/shared_components/user_interface/lovs/lv_funcao
begin
--   Manifest
--     LV_FUNCAO
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>3060310794164477
,p_default_application_id=>777
,p_default_id_offset=>31982554338203874331
,p_default_owner=>'DVGE'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6965400588649639897)
,p_lov_name=>'LV_FUNCAO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'    SELECT (SELECT C.CARGO_ID ',
'             FROM HP_CARGOS C ',
'            WHERE UPPER(LTRIM(C.DS_CARGO)) = X.DS_FUNCAO ',
'             AND ROWNUM = 1) ID_FUNCAO, ',
'            X.DS_FUNCAO',
'    FROM (SELECT  DISTINCT UPPER(LTRIM(A.DS_CARGO)) DS_FUNCAO FROM HP_CARGOS A',
'    WHERE A.DS_CARGO IS NOT NULL',
'    ORDER BY  UPPER(LTRIM(A.DS_CARGO))) X'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'ID_FUNCAO'
,p_display_column_name=>'DS_FUNCAO'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DS_FUNCAO'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
