prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>unistr('Avalia\00E7\00F5es Desempenho do Gestor')
,p_alias=>unistr('AVALIA\00C7\00D5ES-DESEMP-DO-GESTOR')
,p_step_title=>unistr('Avalia\00E7\00F5es Desempenho do Gestor')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'GERSON'
,p_last_upd_yyyymmddhh24miss=>'20211125171818'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(36380465250624059)
,p_plug_name=>unistr('Avali\00E7\00F5es de Desempenho do Gestor')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4060920233157576)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>3
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   /*',
'    gl_perfil     -- 1-Colaborador,2-Gerente,3-Administrador,4-DEX',
'    */',
'',
'SELECT a.rowid,',
'       a.id,',
'       --a.id_colaborador,',
'       --a.id_colaborador_avaliador,',
'       --a.tp_avaliacao,',
'       a.dt_fim_avaliacao,',
'       ''JAN- DEZ/''||TO_CHAR(a.dt_geracao_avaliacao,''YYYY'') periodo,',
'       decode(a.dt_fim_avaliacao,null,''<img src="#WORKSPACE_IMAGES#chamado_cancelado.gif" style="vertical-align: middle;">'',''<img src="#WORKSPACE_IMAGES#chamado_finalizado.gif" style="vertical-align: middle;">'') realizado,',
'       a.observacao,',
'       TO_CHAR(a.dt_geracao_avaliacao,''YYYY'') ANO',
'  FROM ad_avaliacao a',
' WHERE (a.id_colaborador_avaliador = :gl_id_usuario and :gl_perfil IN (1,5) and a.tp_avaliacao = 5 )',
'    OR (:gl_perfil IN (3, 4, 6) and a.tp_avaliacao = 5); ',
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
,p_prn_page_header=>unistr('Avali\00E7\00F5es de Desempenho do Gestor')
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
,p_plug_header=>unistr('<B>AVALIA\00C7\00C3O DESEMPENHO DO GESTOR</B>')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(36380827843624059)
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
,p_detail_link=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:RP,:P18_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_owner=>'GERSON'
,p_internal_uid=>36380827843624059
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14251252459712328)
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
 p_id=>wwv_flow_imp.id(14251667154712331)
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
 p_id=>wwv_flow_imp.id(14253231413712333)
,p_db_column_name=>'ANO'
,p_display_order=>15
,p_column_identifier=>'J'
,p_column_label=>'ANO'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14254032076712333)
,p_db_column_name=>'PERIODO'
,p_display_order=>25
,p_column_identifier=>'L'
,p_column_label=>unistr('PER\00CDODO')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14253630012712333)
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
 p_id=>wwv_flow_imp.id(14252423948712332)
,p_db_column_name=>'DT_FIM_AVALIACAO'
,p_display_order=>45
,p_column_identifier=>'F'
,p_column_label=>'ANO'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14252882732712332)
,p_db_column_name=>'OBSERVACAO'
,p_display_order=>55
,p_column_identifier=>'H'
,p_column_label=>'Observacao'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(36385732385624649)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'142544'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PERIODO:REALIZADO:'
,p_sort_column_1=>'ANO'
,p_sort_direction_1=>'DESC'
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
 p_id=>wwv_flow_imp.id(14254894984712340)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(36380465250624059)
,p_button_name=>'VOLTAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Voltar'
,p_button_position=>'BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:20,21::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14255294170712341)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(36380465250624059)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Novo'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:12'
,p_button_condition=>'GL_PERFIL'
,p_button_condition2=>'3'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14255630051712348)
,p_name=>'P17_PAGINA_ORIGEM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(36380465250624059)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
