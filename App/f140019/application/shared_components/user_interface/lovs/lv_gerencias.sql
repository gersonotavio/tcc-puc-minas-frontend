prompt --application/shared_components/user_interface/lovs/lv_gerencias
begin
--   Manifest
--     LV_GERENCIAS
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
 p_id=>wwv_flow_imp.id(14055305476748755)
,p_lov_name=>'LV_GERENCIAS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT lot.lotacao_id,',
'       lot.nm_lotacao',
'  FROM hp_lotacao lot',
' WHERE lot.lotacao_id NOT IN (11, 12, 13)',
' ORDER BY lot.lotacao_id;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'LOTACAO_ID'
,p_display_column_name=>'NM_LOTACAO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
