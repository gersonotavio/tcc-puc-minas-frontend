prompt --application/pages/page_00029
begin
--   Manifest
--     PAGE: 00029
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>3060310794164477
,p_default_application_id=>777
,p_default_id_offset=>31982554338203874331
,p_default_owner=>'DVGE'
);
wwv_flow_imp_page.create_page(
 p_id=>29
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>unistr('Vis\00E3o Geral')
,p_alias=>unistr('VIS\00C3O-GERAL')
,p_step_title=>unistr('Vis\00E3o Geral')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'06'
,p_last_updated_by=>'GERSON'
,p_last_upd_yyyymmddhh24miss=>'20211125144751'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26706997755586522)
,p_plug_name=>unistr('Vis\00E3o Geral')
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--featured:t-Cards--5cols:t-Cards--hideBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_list_id=>wwv_flow_imp.id(26901644272992722)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12325754969495545)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp.component_end;
end;
/
