prompt --application/shared_components/user_interface/lovs/lv_competencia2
begin
--   Manifest
--     LV_COMPETENCIA2
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
 p_id=>wwv_flow_imp.id(7158110488035115820)
,p_lov_name=>'LV_COMPETENCIA2'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.ID,',
'       (A.ID||''-''||A.NM_COMPETENCIA_AREA) DISP',
'FROM AD_COMPETENCIA A'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'DISP'
,p_default_sort_column_name=>'DISP'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
