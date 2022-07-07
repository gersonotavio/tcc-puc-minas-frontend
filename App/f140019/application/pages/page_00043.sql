prompt --application/pages/page_00043
begin
--   Manifest
--     PAGE: 00043
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
 p_id=>43
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>unistr('Job Email Avalia\00E7\00E3o')
,p_alias=>unistr('JOB-EMAIL-AVALIA\00C7\00C3O')
,p_step_title=>unistr('Job Email Avalia\00E7\00E3o')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(4155261545157727)
,p_page_component_map=>'18'
,p_last_updated_by=>'GERSON'
,p_last_upd_yyyymmddhh24miss=>'20211130162357'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(94766457175040969)
,p_plug_name=>unistr('Filtro - Email Avalia\00E7\00E3o')
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(99265908060913140)
,p_plug_name=>unistr('Job Email Avalia\00E7\00E3o')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4060920233157576)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.colaborador_id,',
'       a.ds_email,',
'       a.tp_avaliacao,',
'       a.dt_geracao_avaliacao,',
'       a.dt_envio_email,',
'       a.ds_tp_email',
'  FROM ad_log_envio_email a',
' WHERE a.tp_avaliacao = 1',
'  and TO_CHAR(a.dt_geracao_avaliacao,''MM/YYYY'') = :P43_REFERENCIA;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P43_REFERENCIA'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Job Email Autoavalia\00E7\00E3o')
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
 p_id=>wwv_flow_imp.id(99266056259913140)
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
,p_internal_uid=>99266056259913140
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33245274237695986)
,p_db_column_name=>'COLABORADOR_ID'
,p_display_order=>10
,p_column_identifier=>'L'
,p_column_label=>'Colaborador Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33245693246695987)
,p_db_column_name=>'DS_EMAIL'
,p_display_order=>20
,p_column_identifier=>'M'
,p_column_label=>'Ds Email'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33246095052695987)
,p_db_column_name=>'TP_AVALIACAO'
,p_display_order=>30
,p_column_identifier=>'N'
,p_column_label=>'Tp Avaliacao'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33246463488695987)
,p_db_column_name=>'DT_GERACAO_AVALIACAO'
,p_display_order=>40
,p_column_identifier=>'O'
,p_column_label=>'Dt Geracao Avaliacao'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33246878378695988)
,p_db_column_name=>'DT_ENVIO_EMAIL'
,p_display_order=>50
,p_column_identifier=>'P'
,p_column_label=>'Dt Envio Email'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(33247229919695988)
,p_db_column_name=>'DS_TP_EMAIL'
,p_display_order=>60
,p_column_identifier=>'Q'
,p_column_label=>'Ds Tp Email'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(99270407980913648)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'332476'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>':COLABORADOR_ID:DS_EMAIL:TP_AVALIACAO:DT_GERACAO_AVALIACAO:DT_ENVIO_EMAIL:DS_TP_EMAIL'
,p_break_on=>'ID_COLABORADOR_AVALIADOR:0:0:0:0:0'
,p_break_enabled_on=>'ID_COLABORADOR_AVALIADOR:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33243358700695983)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(94766457175040969)
,p_button_name=>'CONSULTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Consultar'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(33243725553695984)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(94766457175040969)
,p_button_name=>'PROCESSAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Processar'
,p_button_position=>'CREATE'
,p_button_condition=>'P43_REFERENCIA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33244104915695985)
,p_name=>'P43_REFERENCIA'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(94766457175040969)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(33244539544695985)
,p_name=>'P43_MENSAGEM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(94766457175040969)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(33248000492695989)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'EXECUTA_JOB'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   pck_ad.envia_email_avaliacao(:P43_MENSAGEM);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(33243725553695984)
,p_process_success_message=>'&P43_MENSAGEM.'
);
wwv_flow_imp.component_end;
end;
/
