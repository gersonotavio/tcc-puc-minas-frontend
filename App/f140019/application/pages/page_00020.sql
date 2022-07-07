prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>unistr('Avalia\00E7\00F5es de Desempenho')
,p_alias=>unistr('AVALIA\00C7\00D5ES-DE-DESEMPENHO1')
,p_step_title=>unistr('Avalia\00E7\00F5es de Desempenho')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'GERSON'
,p_last_upd_yyyymmddhh24miss=>'20220212030852'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(27882816042105607)
,p_plug_name=>'&P20_TITULO_PAGINA.'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22129778232911755)
,p_plug_name=>unistr('Avali\00E7\00F5es de Desenpenho')
,p_parent_plug_id=>wwv_flow_imp.id(27882816042105607)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>5
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   /*',
'    gl_perfil     -- 1-Colaborador,2-Gerente,3-Administrador,4-DEX',
'    */',
'',
'SELECT a.rowid,',
'       a.id,',
'       a.id_colaborador,',
'       --a.id_colaborador_avaliador,',
'       a.tp_avaliacao,',
'       a.dt_fim_avaliacao,',
'       ''JAN- DEZ/''||TO_CHAR(a.dt_geracao_avaliacao,''YYYY'') periodo,',
'       decode(a.dt_fim_avaliacao,null,''<img src="#WORKSPACE_IMAGES#chamado_cancelado.gif" style="vertical-align: middle;">'',''<img src="#WORKSPACE_IMAGES#chamado_finalizado.gif" style="vertical-align: middle;">'') realizado,',
'       a.observacao,',
'       TO_CHAR(a.dt_geracao_avaliacao,''YYYY'') ANO',
'  FROM ad_avaliacao a',
' WHERE (a.id_colaborador = nvl(:P20_ID_USUARIO, :GL_ID_USUARIO) and :gl_perfil = 1 and a.tp_avaliacao = 1 and :P20_PAGINA_ORIGEM is null)',
'    OR (a.id_colaborador_avaliador = :P20_ID_USUARIO and :gl_perfil = 1 and a.tp_avaliacao = 5 and :P20_PAGINA_ORIGEM = ''99'')',
'    OR ((a.id_colaborador_avaliador = :P20_ID_USUARIO and :P20_PAGINA_ORIGEM = ''20'') and (:gl_perfil in (2,6) and a.tp_avaliacao in(1,2)))',
'    OR ((a.id_colaborador = :P20_ID_USUARIO and :P20_PAGINA_ORIGEM is null) and (:gl_perfil in (2,6) and a.tp_avaliacao in(1,2,5))) ',
'    OR (a.id_colaborador = NVL(:P20_ID_USUARIO,:GL_ID_USUARIO) and :gl_perfil IN (3, 4, 5, 6) and a.tp_avaliacao in(1,2) /*AND a.dt_fim_avaliacao is not null*/); ',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'GL_ID_USUARIO, GL_PERFIL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Avali\00E7\00F5es de Desenpenho')
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
 p_id=>wwv_flow_imp.id(22130140825911755)
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
,p_detail_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP,:P21_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_owner=>'GERSON'
,p_internal_uid=>22130140825911755
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11618386410662938)
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
 p_id=>wwv_flow_imp.id(11618749634662944)
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
 p_id=>wwv_flow_imp.id(14739139033804105)
,p_db_column_name=>'TP_AVALIACAO'
,p_display_order=>12
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
 p_id=>wwv_flow_imp.id(11619157768662945)
,p_db_column_name=>'ID_COLABORADOR'
,p_display_order=>22
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
 p_id=>wwv_flow_imp.id(11621167406662946)
,p_db_column_name=>'ANO'
,p_display_order=>32
,p_column_identifier=>'J'
,p_column_label=>'ANO'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11621955260662947)
,p_db_column_name=>'PERIODO'
,p_display_order=>42
,p_column_identifier=>'L'
,p_column_label=>unistr('PER\00CDODO')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11621580863662947)
,p_db_column_name=>'REALIZADO'
,p_display_order=>52
,p_column_identifier=>'K'
,p_column_label=>'REALIZADO'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11620315941662946)
,p_db_column_name=>'DT_FIM_AVALIACAO'
,p_display_order=>62
,p_column_identifier=>'F'
,p_column_label=>'Data'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy'
,p_tz_dependent=>'N'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'   if :GL_PERFIN IN (3,4,5,6) AND :P20_PAGINA_ORIGEM IS NOT NULL THEN',
'      return true;',
'    else',
'      return false;',
'    end if;',
'END;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11620758474662946)
,p_db_column_name=>'OBSERVACAO'
,p_display_order=>72
,p_column_identifier=>'H'
,p_column_label=>'Observacao'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22135045367912345)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'116223'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TP_AVALIACAO:ID_COLABORADOR:PERIODO:REALIZADO:'
,p_sort_column_1=>'TP_AVALIACAO'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'ANO'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'TP_AVALIACAO:ID_COLABORADOR:0:0:0:0'
,p_break_enabled_on=>'TP_AVALIACAO:ID_COLABORADOR:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11622753097662957)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(22129778232911755)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Novo'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:12'
,p_button_condition=>'GL_PERFIL'
,p_button_condition2=>'3'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13122241225822106)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(22129778232911755)
,p_button_name=>'VOLTAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Voltar'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:20,21::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13218133412784107)
,p_name=>'P20_PAGINA_ORIGEM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(22129778232911755)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14739028277804104)
,p_name=>'P20_NOME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(22129778232911755)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14753382931169401)
,p_name=>'P20_ID_USUARIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(22129778232911755)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18801878139453606)
,p_name=>'P20_TITULO_PAGINA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(27882816042105607)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14759715478276323)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'carrega_p20_nome'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.NOME',
'INTO :P20_NOME',
'  FROM v_ad_dados_usuarios a',
' WHERE A.COLABORADOR_ID =  nvl(:P20_ID_USUARIO,:gl_id_usuario);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18802131977453609)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'prepara_titulo'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   if :gl_perfil = :P20_ID_USUARIO then',
unistr('      :P20_TITULO_PAGINA := ''Minhas Avalia\00E7\00F5es de Desempenho - ''||:P20_NOME;'),
'    else',
unistr('      :P20_TITULO_PAGINA := ''Avalia\00E7\00F5es de Desempenho - ''||:P20_NOME;'),
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
