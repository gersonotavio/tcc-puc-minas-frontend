prompt --application/shared_components/user_interface/lovs/lv_cargos
begin
--   Manifest
--     LV_CARGOS
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
 p_id=>wwv_flow_imp.id(14124341665167474)
,p_lov_name=>'LV_CARGOS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.id_cargo, ',
'       a.ds_cargo',
'  FROM pcr_cargo a;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'ID_CARGO'
,p_display_column_name=>'DS_CARGO'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DS_CARGO'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
