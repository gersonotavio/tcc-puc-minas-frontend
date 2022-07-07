prompt --application/shared_components/user_interface/lovs/lv_lotacao
begin
--   Manifest
--     LV_LOTACAO
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
 p_id=>wwv_flow_imp.id(26456475044085748)
,p_lov_name=>'LV_LOTACAO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nm_lotacao || ''-''|| ds_lotacao d, lotacao_id r',
'from hp_lotacao',
'where (dt_fim is null or dt_fim >= trunc(sysdate))',
' and  lotacao_id not in(12,13)',
'order by 1',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
