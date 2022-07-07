prompt --application/pages/page_00033
begin
--   Manifest
--     PAGE: 00033
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
 p_id=>33
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>unistr('Indicadores de Compet\00EAncia')
,p_alias=>unistr('INDICADORES-DE-COMPET\00CANCIA')
,p_step_title=>unistr('Indicadores de Compet\00EAncia')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'GERSON'
,p_last_upd_yyyymmddhh24miss=>'20220213203458'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7174688517576566347)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4060920233157576)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       ID_COMPETENCIA,',
'       ID,',
'       NM_COMPETENCIA,',
'       DS_COMPETENCIA,',
'       decode(TP_INDICADOR,''E'',''Colaborador'',''G'',''Gestor'')  TP_INDICADOR,',
'       DS_CONCEITO_1,',
'       DS_CONCEITO_2,',
'       DS_CONCEITO_3,',
'       DS_CONCEITO_4,',
'       TP_AVALIACAO,',
'       ID_INDICADOR',
'  from AD_INDICADOR'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Report 1'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(7174688930348566347)
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
,p_detail_link=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:RP:P34_ROWID:\#ROWID#\'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'GERSON'
,p_internal_uid=>39157243268552440678
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7174688996425566347)
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
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7174689416482566348)
,p_db_column_name=>'ID_COMPETENCIA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('\00C1rea de Compet\00EAncia')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(7158110488035115820)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7174689844143566348)
,p_db_column_name=>'ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7174690198383566348)
,p_db_column_name=>'NM_COMPETENCIA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('Indicador de<br> Compet\00EAncia')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7174690652498566348)
,p_db_column_name=>'DS_COMPETENCIA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('Descri\00E7\00E3o<br>Compet\00EAncia')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7174691032769566348)
,p_db_column_name=>'TP_INDICADOR'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Tipo Indicador'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7174691412305566349)
,p_db_column_name=>'DS_CONCEITO_1'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Indicador 1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7174691810902566349)
,p_db_column_name=>'DS_CONCEITO_2'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Indicador 2'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7174692174507566349)
,p_db_column_name=>'DS_CONCEITO_3'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Indicador 3'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7174692571661566349)
,p_db_column_name=>'DS_CONCEITO_4'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Indicador 4'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7174693035236566349)
,p_db_column_name=>'TP_AVALIACAO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>unistr('Tipo Avalia\00E7\00E3o')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(10520949551408352)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7174693450773566350)
,p_db_column_name=>'ID_INDICADOR'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Sequencia Indicador'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(7174694360547566782)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'391572487'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_COMPETENCIA:NM_COMPETENCIA:DS_COMPETENCIA:TP_INDICADOR:DS_CONCEITO_1:DS_CONCEITO_2:DS_CONCEITO_3:DS_CONCEITO_4:TP_AVALIACAO:'
,p_sort_column_1=>'ID_COMPETENCIA'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'NM_COMPETENCIA'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'TP_INDICADOR:TP_AVALIACAO:0:0:0:0'
,p_break_enabled_on=>'TP_INDICADOR:TP_AVALIACAO:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(7179149954523711797)
,p_report_id=>wwv_flow_imp.id(7174694360547566782)
,p_name=>'Institucional'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ID_COMPETENCIA'
,p_operator=>'='
,p_expr=>'1-Institucional'
,p_condition_sql=>' (case when ("ID_COMPETENCIA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''1-Institucional''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#cce5ff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(7179150345178711798)
,p_report_id=>wwv_flow_imp.id(7174694360547566782)
,p_name=>'Comportamentais'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ID_COMPETENCIA'
,p_operator=>'='
,p_expr=>'2-Comportamentais'
,p_condition_sql=>' (case when ("ID_COMPETENCIA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''2-Comportamentais''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#e8e8e8'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(7179150694345711798)
,p_report_id=>wwv_flow_imp.id(7174694360547566782)
,p_name=>unistr('T\00E9cnicas')
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ID_COMPETENCIA'
,p_operator=>'='
,p_expr=>unistr('3-T\00E9cnicas')
,p_condition_sql=>' (case when ("ID_COMPETENCIA" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>unistr('#APXWS_COL_NAME# = ''3-T\00E9cnicas''  ')
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fff5ce'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7174693907852566350)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(7174688517576566347)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Novo'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:34'
);
wwv_flow_imp.component_end;
end;
/
