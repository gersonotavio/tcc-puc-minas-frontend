prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>unistr('In\00EDcio')
,p_alias=>unistr('IN\00CDCIO')
,p_step_title=>unistr('In\00EDcio')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'13'
,p_last_updated_by=>'GERSON'
,p_last_upd_yyyymmddhh24miss=>'20220212015700'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12518231592778520)
,p_plug_name=>unistr('Avalia\00E7\00E3o de Desempenho')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--featured:t-Cards--3cols:t-Cards--hideBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_list_id=>wwv_flow_imp.id(12630631514841968)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12325754969495545)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'GL_PERFIL'
,p_plug_display_when_cond2=>'2'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12518341884778521)
,p_plug_name=>unistr('Avalia\00E7\00E3o de Desempenho')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--featured:t-Cards--3cols:t-Cards--hideBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_list_id=>wwv_flow_imp.id(12633651456848888)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12325754969495545)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'GL_PERFIL'
,p_plug_display_when_cond2=>'3'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12518475345778522)
,p_plug_name=>unistr('Avalia\00E7\00E3o de Desempenho')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--featured:t-Cards--3cols:t-Cards--hideBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_list_id=>wwv_flow_imp.id(12636623920851040)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12325754969495545)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'GL_PERFIL'
,p_plug_display_when_cond2=>'4'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15518519650057118)
,p_plug_name=>unistr('Avalia\00E7\00E3o de Desempenho')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--featured:t-Cards--3cols:t-Cards--hideBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_list_id=>wwv_flow_imp.id(16810196841227675)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12325754969495545)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'GL_PERFIL'
,p_plug_display_when_cond2=>'5'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15518624709057119)
,p_plug_name=>unistr('Avalia\00E7\00E3o de Desempenho')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--featured:t-Cards--3cols:t-Cards--hideBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_list_id=>wwv_flow_imp.id(16806754431224087)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12325754969495545)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'GL_PERFIL'
,p_plug_display_when_cond2=>'6'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25146038593539297)
,p_plug_name=>unistr('Avalia\00E7\00E3o de Desempenho')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--featured:t-Cards--3cols:t-Cards--hideBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_list_id=>wwv_flow_imp.id(12317520540379605)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(12325754969495545)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'GL_PERFIL'
,p_plug_display_when_cond2=>'1'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(37769348230240057)
,p_plug_name=>'COLABORADOR'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>4
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NOME,',
unistr('       ''Data de Admiss\00E3o: ''||to_char(a.DT_ADMISSAO,''dd/mm/yyyy'') admissao,'),
unistr('       ''Fun\00E7\00E3o: ''||pck_hp_colaboradores.fnc_hp_ret_cargo(a.colaborador_id) funcao,'),
'       ''Cargo: ''||a.CARGO||'' - ''|| a.NM_LOTACAO cargo_lotacao,',
'       u.AVATAR',
'  from V_AD_DADOS_USUARIOS a,',
'       AD_USUARIO u',
'where a.COLABORADOR_ID = :gl_id_usuario',
'  and a.COLABORADOR_ID = u.ID;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12628773370760793)
,p_region_id=>wwv_flow_imp.id(37769348230240057)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'CARGO_LOTACAO'
,p_body_adv_formatting=>false
,p_body_column_name=>'ADMISSAO'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'FUNCAO'
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'AVATAR'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
,p_pk1_column_name=>'NOME'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13122805274822112)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(37769348230240057)
,p_button_name=>'ALTERA_IMAGEM'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_image_alt=>'Altera Imagem'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_ID:&GL_ID_USUARIO.'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13123185640822115)
,p_name=>'refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13122805274822112)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13123231272822116)
,p_event_id=>wwv_flow_imp.id(13123185640822115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp.component_end;
end;
/
