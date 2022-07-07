prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
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
 p_id=>24
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>unistr('Autoavalia\00E7\00F5es')
,p_alias=>unistr('AUTOAVALIA\00C7\00D5ES')
,p_step_title=>unistr('Autoavalia\00E7\00F5es')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'GERSON'
,p_last_upd_yyyymmddhh24miss=>'20220212021341'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27870697171915947)
,p_plug_name=>unistr('Hist\00F3rico de Autoavalia\00E7\00E3o - &P24_NOME.')
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34528015947905052)
,p_plug_name=>unistr('Autoavalia\00E7\00F5es')
,p_parent_plug_id=>wwv_flow_imp.id(27870697171915947)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4060920233157576)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   /*',
'    gl_perfil     -- 1-Colaborador,2-Gerente,3-Administrador,4-DEX, 5-colab DVGE + ADM (Juliana), 6 - gerente DVGE + ADM (Monique)',
'    */',
'',
'--',
'SELECT a.rowid,',
'       a.id,',
'       a.id_colaborador,',
'       -- a.id_colaborador_avaliador,',
'       a.tp_avaliacao,',
'       a.dt_fim_avaliacao,',
'       a.dt_feedback,',
'       ''JAN- DEZ/''||TO_CHAR(a.dt_geracao_avaliacao,''YYYY'') periodo,',
'       decode(a.dt_fim_avaliacao,null,''<img src="#WORKSPACE_IMAGES#chamado_cancelado.gif" style="vertical-align: middle;">'',''<img src="#WORKSPACE_IMAGES#chamado_finalizado.gif" style="vertical-align: middle;">'') realizado,',
'       a.observacao,',
'       TO_CHAR(a.dt_geracao_avaliacao,''YYYY'') ANO',
'  FROM ad_avaliacao a',
' WHERE (a.id_colaborador = NVL(:P24_ID_USUARIO,:GL_ID_USUARIO) and :gl_perfil in (1,5)  and a.tp_avaliacao = 3)',
'    OR ((a.id_colaborador_avaliador = :P24_ID_USUARIO and :P24_PAGINA_ORIGEM = ''24'') and (:gl_perfil in (2,6)  and a.tp_avaliacao in(3,4)))',
'    OR ((a.id_colaborador = :P24_ID_USUARIO and :P24_PAGINA_ORIGEM is null) and (:gl_perfil in (2,6)  and a.tp_avaliacao in(3,4))) ',
'    OR (a.id_colaborador = NVL(:P24_ID_USUARIO,:GL_ID_USUARIO) and :gl_perfil IN (3, 4, 5, 6) and a.tp_avaliacao in(3,4)); ',
'',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'GL_ID_USUARIO, GL_PERFIL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Autoavalia\00E7\00F5es')
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
 p_id=>wwv_flow_imp.id(34528378540905052)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:RP,:P25_ID,P25_ID_PERFIL:#ID#,&GL_PERFIL.'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_owner=>'GERSON'
,p_internal_uid=>34528378540905052
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12398871691993307)
,p_db_column_name=>'ROWID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'ROWID'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12399209590993310)
,p_db_column_name=>'ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12399620306993311)
,p_db_column_name=>'ID_COLABORADOR'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Colaborador'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(10520185347380589)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12401648621993312)
,p_db_column_name=>'ANO'
,p_display_order=>15
,p_column_identifier=>'J'
,p_column_label=>'ANO'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12402480922993313)
,p_db_column_name=>'PERIODO'
,p_display_order=>25
,p_column_identifier=>'L'
,p_column_label=>unistr('PER\00CDODO')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12402088311993313)
,p_db_column_name=>'REALIZADO'
,p_display_order=>35
,p_column_identifier=>'K'
,p_column_label=>'REALIZADO'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12400846898993311)
,p_db_column_name=>'DT_FIM_AVALIACAO'
,p_display_order=>45
,p_column_identifier=>'F'
,p_column_label=>'Data'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy'
,p_tz_dependent=>'N'
,p_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_display_condition=>'GL_PERFIL'
,p_display_condition2=>'3:4:5:6'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12401281401993312)
,p_db_column_name=>'OBSERVACAO'
,p_display_order=>55
,p_column_identifier=>'H'
,p_column_label=>'Observacao'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13417496620579607)
,p_db_column_name=>'TP_AVALIACAO'
,p_display_order=>65
,p_column_identifier=>'M'
,p_column_label=>'Tp Avaliacao'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15518718527057120)
,p_db_column_name=>'DT_FEEDBACK'
,p_display_order=>75
,p_column_identifier=>'N'
,p_column_label=>'Dt Feedback'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(34533283082905642)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'124028'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_COLABORADOR:PERIODO:DT_FIM_AVALIACAO:REALIZADO:'
,p_sort_column_1=>'ID_COLABORADOR'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'ID_COLABORADOR'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12403270054993322)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(34528015947905052)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Novo'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:12'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13122174851822105)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(34528015947905052)
,p_button_name=>'VOLTAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Voltar'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:24,25::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13218026973784106)
,p_name=>'P24_PAGINA_ORIGEM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(34528015947905052)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14738866250804102)
,p_name=>'P24_ID_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(34528015947905052)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14746536951072831)
,p_name=>'P24_NOME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(34528015947905052)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14746146703070110)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'carrega_p24_nome'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.NOME',
'INTO :P24_NOME',
'  FROM v_ad_dados_usuarios a',
' WHERE A.COLABORADOR_ID =  nvl(:P24_ID_USUARIO,:gl_id_usuario);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
