prompt --application/shared_components/user_interface/lovs/lv_usuario
begin
--   Manifest
--     LV_USUARIO
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
 p_id=>wwv_flow_imp.id(10520185347380589)
,p_lov_name=>'LV_USUARIO'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'V_AD_DADOS_USUARIOS'
,p_return_column_name=>'COLABORADOR_ID'
,p_display_column_name=>'NOME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NOME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_imp.component_end;
end;
/
