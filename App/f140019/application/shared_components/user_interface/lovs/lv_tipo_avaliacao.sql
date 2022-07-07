prompt --application/shared_components/user_interface/lovs/lv_tipo_avaliacao
begin
--   Manifest
--     LV_TIPO_AVALIACAO
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
 p_id=>wwv_flow_imp.id(10520949551408352)
,p_lov_name=>'LV_TIPO_AVALIACAO'
,p_lov_query=>'.'||wwv_flow_imp.id(10520949551408352)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10521233449408361)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('Avalia\00E7\00E3o Individual Colaboradores')
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10522027695408362)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('Autoavalia\00E7\00E3o Colaborador')
,p_lov_return_value=>'3'
);
wwv_flow_imp.component_end;
end;
/
