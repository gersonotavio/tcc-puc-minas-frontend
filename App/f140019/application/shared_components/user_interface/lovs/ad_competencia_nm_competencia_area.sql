prompt --application/shared_components/user_interface/lovs/ad_competencia_nm_competencia_area
begin
--   Manifest
--     AD_COMPETENCIA.NM_COMPETENCIA_AREA
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
 p_id=>wwv_flow_imp.id(4405482546611035)
,p_lov_name=>'AD_COMPETENCIA.NM_COMPETENCIA_AREA'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'AD_COMPETENCIA'
,p_return_column_name=>'ID'
,p_display_column_name=>'NM_COMPETENCIA_AREA'
,p_default_sort_column_name=>'NM_COMPETENCIA_AREA'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
