prompt --application/pages/page_00041
begin
--   Manifest
--     PAGE: 00041
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
 p_id=>41
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>unistr('Job Gera\00E7\00E3o Avalia\00E7\00F5es')
,p_alias=>unistr('JOB-GERA\00C7\00C3O-AVALIA\00C7\00D5ES')
,p_step_title=>unistr('Job Gera\00E7\00E3o Avalia\00E7\00F5es')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(4155261545157727)
,p_page_component_map=>'18'
,p_last_updated_by=>'GERSON'
,p_last_upd_yyyymmddhh24miss=>'20211130162107'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(61133511891369641)
,p_plug_name=>unistr('Filtro - Gera Avalia\00E7\00F5es')
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65632962777241812)
,p_plug_name=>unistr('Job Gera\00E7\00E3o Avalia\00E7\00F5es')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4060920233157576)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.ID_COLABORADOR,',
'       A.ID_COLABORADOR_AVALIADOR,',
'       A.TP_AVALIACAO,',
'       A.DT_GERACAO_AVALIACAO,',
'       A.DT_FEEDBACK,',
'       A.DT_FIM_AVALIACAO',
'FROM AD_AVALIACAO A',
'WHERE TO_CHAR(A.DT_GERACAO_AVALIACAO,''MM/YYYY'') = :P41_REFERENCIA;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P41_REFERENCIA'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Job Gera\00E7\00E3o Avalia\00E7\00F5es')
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(65633110976241812)
,p_name=>unistr('Job Gera\00E7\00E3o Alinhamentos')
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GERSON'
,p_internal_uid=>65633110976241812
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32831916203677841)
,p_db_column_name=>'ID_COLABORADOR'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Colaborador'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(10520185347380589)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32832335635677841)
,p_db_column_name=>'ID_COLABORADOR_AVALIADOR'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Avaliador'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(10520185347380589)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32816492856605505)
,p_db_column_name=>'TP_AVALIACAO'
,p_display_order=>76
,p_column_identifier=>'M'
,p_column_label=>unistr('Tipo Avalia\00E7\00E3o')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(10520949551408352)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32816529398605506)
,p_db_column_name=>'DT_FIM_AVALIACAO'
,p_display_order=>86
,p_column_identifier=>'N'
,p_column_label=>unistr('Fim Avalia\00E7\00E3o')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32816697327605507)
,p_db_column_name=>'DT_FEEDBACK'
,p_display_order=>96
,p_column_identifier=>'O'
,p_column_label=>'Data Feedback'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(32816778554605508)
,p_db_column_name=>'DT_GERACAO_AVALIACAO'
,p_display_order=>106
,p_column_identifier=>'P'
,p_column_label=>unistr('Refer\00EAncia')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(65637462697242320)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'328343'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_COLABORADOR_AVALIADOR:ID_COLABORADOR:TP_AVALIACAO:DT_FIM_AVALIACAO:DT_FEEDBACK:DT_GERACAO_AVALIACAO:'
,p_break_on=>'TP_AVALIACAO:ID_COLABORADOR_AVALIADOR:0:0:0:0'
,p_break_enabled_on=>'TP_AVALIACAO:ID_COLABORADOR_AVALIADOR:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32828865687677824)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(61133511891369641)
,p_button_name=>'CONSULTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Consultar'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(32829275596677825)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(61133511891369641)
,p_button_name=>'PROCESSAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Processar'
,p_button_position=>'CREATE'
,p_button_condition=>'P41_REFERENCIA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32829692151677830)
,p_name=>'P41_REFERENCIA'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(61133511891369641)
,p_prompt=>unistr('Refer\00EAncia:')
,p_format_mask=>'MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>7
,p_field_template=>wwv_flow_imp.id(4125570846157626)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(32834779025677864)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'EXECUTA_JOB'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   pck_ad.gera_avaliacoes_ano_corrente;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
