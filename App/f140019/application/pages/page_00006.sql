prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>unistr('Indicador de Compet\00EAncia')
,p_alias=>unistr('INDICADOR-DE-COMPET\00CANCIA')
,p_step_title=>unistr('Indicador de Compet\00EAncia')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(4155261545157727)
,p_page_component_map=>'18'
,p_last_updated_by=>'ANDRE'
,p_last_upd_yyyymmddhh24miss=>'20210826171951'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4410919076621709)
,p_plug_name=>unistr('Indicador de Compet\00EAncia')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4060920233157576)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'''<b>''||ac.nm_competencia_area||''</b>'' as nm_competencia_area, ',
'''<b>''||ai.nm_competencia||''</b>''||''<br>''||ai.ds_competencia  nm_indicador,',
'decode( ai.TP_INDICADOR,''E'',''Empregado'',''G'',''Gerente'') as Tipo,',
'ai.id,',
'ai.id_competencia,',
'ai.DS_CONCEITO_1 as indicador_1,',
'ai.DS_CONCEITO_2 as indicador_2,',
'ai.DS_CONCEITO_3 as indicador_3,',
'ai.DS_CONCEITO_4 as indicador_4',
'from ad_indicador ai, ad_competencia ac',
'where ai.id_competencia = ac.id',
'order by ai.id_competencia asc, ai.id asc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>unistr('Indicador de Compet\00EAncia')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4411033024621709)
,p_name=>unistr('Indicador de Compet\00EAncia')
,p_max_row_count_message=>unistr('A contagem m\00E1xima de linhas deste relat\00F3rio \00E9 #MAX_ROW_COUNT# linhas. Aplique um filtro para reduzir o n\00FAmero de registros em sua consulta.')
,p_no_data_found_message=>unistr('Dados n\00E3o encontrados.')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'ADMIN'
,p_internal_uid=>4411033024621709
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4411444682621714)
,p_db_column_name=>'NM_COMPETENCIA_AREA'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>unistr('\00C1rea de Compet\00EAncia')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4411813035621722)
,p_db_column_name=>'ID_COMPETENCIA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Competencia'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4412275801621722)
,p_db_column_name=>'ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4422945459751401)
,p_db_column_name=>'NM_INDICADOR'
,p_display_order=>13
,p_column_identifier=>'K'
,p_column_label=>unistr('Indicador de Compet\00EAncia')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4423054371751402)
,p_db_column_name=>'TIPO'
,p_display_order=>23
,p_column_identifier=>'L'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4423185617751403)
,p_db_column_name=>'INDICADOR_1'
,p_display_order=>33
,p_column_identifier=>'M'
,p_column_label=>'Indicador 1'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4423251666751404)
,p_db_column_name=>'INDICADOR_2'
,p_display_order=>43
,p_column_identifier=>'N'
,p_column_label=>'Indicador 2'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4423305247751405)
,p_db_column_name=>'INDICADOR_3'
,p_display_order=>53
,p_column_identifier=>'O'
,p_column_label=>'Indicador 3'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4423485930751406)
,p_db_column_name=>'INDICADOR_4'
,p_display_order=>63
,p_column_identifier=>'P'
,p_column_label=>'Indicador 4'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4415461428622312)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'44155'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'NM_COMPETENCIA_AREA::NM_INDICADOR:TIPO:INDICADOR_1:INDICADOR_2:INDICADOR_3:INDICADOR_4'
,p_sort_column_1=>'ID_COMPETENCIA'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'ID'
,p_sort_direction_2=>'ASC'
,p_break_on=>'TIPO'
,p_break_enabled_on=>'TIPO'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(4714080946453159)
,p_report_id=>wwv_flow_imp.id(4415461428622312)
,p_name=>'Institucional'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ID_COMPETENCIA'
,p_operator=>'='
,p_expr=>'1'
,p_condition_sql=>' (case when ("ID_COMPETENCIA" = to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#cce5ff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(4714407563453159)
,p_report_id=>wwv_flow_imp.id(4415461428622312)
,p_name=>unistr('Compet\00EAncia')
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'NM_COMPETENCIA'
,p_operator=>'is not null'
,p_expr=>'0'
,p_condition_sql=>' (case when ("NM_COMPETENCIA" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_column_bg_color=>'#cee6ff'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(4714852234453160)
,p_report_id=>wwv_flow_imp.id(4415461428622312)
,p_name=>unistr('T\00E9cnicas')
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ID_COMPETENCIA'
,p_operator=>'='
,p_expr=>'3'
,p_condition_sql=>' (case when ("ID_COMPETENCIA" = to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#fff5ce'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(4715200422453160)
,p_report_id=>wwv_flow_imp.id(4415461428622312)
,p_name=>'Comportamentais'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ID_COMPETENCIA'
,p_operator=>'='
,p_expr=>'2'
,p_condition_sql=>' (case when ("ID_COMPETENCIA" = to_number(#APXWS_EXPR#)) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#e8e8e8'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(4713661053453158)
,p_report_id=>wwv_flow_imp.id(4415461428622312)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'TIPO'
,p_operator=>'='
,p_expr=>'Empregado'
,p_condition_sql=>'"TIPO" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Empregado''  '
,p_enabled=>'Y'
);
wwv_flow_imp.component_end;
end;
/
