prompt --application/shared_components/user_interface/lovs/lv_diretoria
begin
--   Manifest
--     LV_DIRETORIA
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
 p_id=>wwv_flow_imp.id(14055152154743761)
,p_lov_name=>'LV_DIRETORIA'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'AD_DIRETORIA'
,p_return_column_name=>'ID_DIRETORIA'
,p_display_column_name=>'NM_DIRETORIA'
,p_default_sort_column_name=>'NM_DIRETORIA'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
