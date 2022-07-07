prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>'Alinhamentos'
,p_alias=>'ALINHAMENTOS'
,p_step_title=>'Alinhamentos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'GERSON'
,p_last_upd_yyyymmddhh24miss=>'20220212025145'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13122720393822111)
,p_plug_name=>unistr('Hist\00F3rico de Alinhamentos - &P10_NOME.')
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12927876924524258)
,p_plug_name=>'Alinhamentos'
,p_parent_plug_id=>wwv_flow_imp.id(13122720393822111)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4060920233157576)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>4
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.ROWID,',
'       A.ID_ALINHAMENTO,',
'       A.ID_COLABORADOR,',
'       A.ID_COLABORADOR_AVALIADOR,',
'       A.DT_REFERENCIA,',
'       A.DT_ALINHAMENTO,',
'       A.DT_REGISTRO,',
'       A.DESCRICAO_1,',
'       A.DESCRICAO_2,',
'       A.DESCRICAO_3,',
'       TO_CHAR(a.dt_referencia,''MONTH/YYYY'') periodo,',
'       decode(a.dt_registro,null,''<img src="#WORKSPACE_IMAGES#chamado_cancelado.gif" style="vertical-align: middle;">'',''<img src="#WORKSPACE_IMAGES#chamado_finalizado.gif" style="vertical-align: middle;">'') realizado,',
'       TO_CHAR(a.dt_referencia,''YYYY'') ANO,',
'       A.OBSERVACAO',
'  from AD_ALINHAMENTO A',
' WHERE a.id_colaborador = nvl(:P10_ID_USUARIO,:gl_id_usuario);'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Alinhamentos'
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
 p_id=>wwv_flow_imp.id(12928294751524259)
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
,p_detail_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,:P11_ROWID,P11_ID_COLABORADOR_AVALIADOR:\#ROWID#\,#ID_COLABORADOR_AVALIADOR#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_owner=>'GERSON'
,p_internal_uid=>12928294751524259
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12928386843524263)
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
 p_id=>wwv_flow_imp.id(12928750352524270)
,p_db_column_name=>'ID_ALINHAMENTO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Alinhamento'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12929192360524271)
,p_db_column_name=>'ID_COLABORADOR'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Id Colaborador'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12929572470524271)
,p_db_column_name=>'ID_COLABORADOR_AVALIADOR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Id Colaborador Avaliador'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12945493715869605)
,p_db_column_name=>'ANO'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'ANO'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12929960128524271)
,p_db_column_name=>'DESCRICAO_1'
,p_display_order=>24
,p_column_identifier=>'E'
,p_column_label=>'Descricao 1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12930374329524272)
,p_db_column_name=>'DESCRICAO_2'
,p_display_order=>34
,p_column_identifier=>'F'
,p_column_label=>'Descricao 2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12930794542524272)
,p_db_column_name=>'DESCRICAO_3'
,p_display_order=>44
,p_column_identifier=>'G'
,p_column_label=>'Descricao 3'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12931180355524272)
,p_db_column_name=>'OBSERVACAO'
,p_display_order=>54
,p_column_identifier=>'H'
,p_column_label=>'Observacao'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12931563356524273)
,p_db_column_name=>'DT_ALINHAMENTO'
,p_display_order=>64
,p_column_identifier=>'I'
,p_column_label=>'Data Alinhamento'
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
 p_id=>wwv_flow_imp.id(12931900130524273)
,p_db_column_name=>'DT_REGISTRO'
,p_display_order=>74
,p_column_identifier=>'J'
,p_column_label=>'Dt Registro'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12945114549869602)
,p_db_column_name=>'DT_REFERENCIA'
,p_display_order=>84
,p_column_identifier=>'K'
,p_column_label=>'Dt Referencia'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12945256375869603)
,p_db_column_name=>'PERIODO'
,p_display_order=>94
,p_column_identifier=>'L'
,p_column_label=>unistr('PER\00CDODO')
,p_column_html_expression=>'<p style="font-size:12px">#PERIODO#</p>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12945319585869604)
,p_db_column_name=>'REALIZADO'
,p_display_order=>104
,p_column_identifier=>'M'
,p_column_label=>'Realizado'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(12932859951525206)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'129329'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DT_ALINHAMENTO:ANO:PERIODO:REALIZADO:'
,p_sort_column_1=>'ID_ALINHAMENTO'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
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
 p_id=>wwv_flow_imp.id(13122348518822107)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12927876924524258)
,p_button_name=>'VOLTAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Voltar'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12932466006524274)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(12927876924524258)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Novo'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11:P11_ID_COLABORADOR,P11_ID_COLABORADOR_AVALIADOR:&P10_ID_USUARIO.,&GL_ID_USUARIO.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   if (:GL_PERFIL = 4 AND :GL_ID_USUARIO = PCK_AD.fnc_busca_id_diretor_gerente(:P10_ID_USUARIO)) or :gl_perfil = 2 then',
'      return true;',
'    end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13121860638822102)
,p_name=>'P10_ID_USUARIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12927876924524258)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13122021842822104)
,p_name=>'P10_ID_PERFIL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12927876924524258)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13417078005579603)
,p_name=>'P10_NOME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12927876924524258)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17402984758945917)
,p_name=>'P10_PERIDO_ABERTURA_DEX'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12927876924524258)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13417319189579606)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'carrega_p10_nome'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.NOME',
'INTO :P10_NOME',
'  FROM v_ad_dados_usuarios a',
' WHERE A.COLABORADOR_ID =  nvl(:P10_ID_USUARIO,:gl_id_usuario);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
