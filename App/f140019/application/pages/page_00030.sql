prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
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
 p_id=>30
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>'Resultado Geral'
,p_alias=>'RESULTADO-GERAL'
,p_step_title=>'Resultado Geral'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(27010041501965255)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(4155261545157727)
,p_page_component_map=>'18'
,p_last_updated_by=>'GERSON'
,p_last_upd_yyyymmddhh24miss=>'20220212024125'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25217158139950803)
,p_plug_name=>'Resultado Geral'
,p_region_template_options=>'#DEFAULT#:t-Region--accent11:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P30_ANO_REFERENCIA'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25217289793950804)
,p_plug_name=>unistr('Quantidade de Avalia\00E7\00F5es')
,p_parent_plug_id=>wwv_flow_imp.id(25217158139950803)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr(' -- Quantidade de Avalia\00E7\00F5es --'),
unistr(' select DECODE(a.tp_avaliacao,1,''Avalia\00E7\00E3o Individual Colaboradores'','),
unistr('                              2,''Avalia\00E7\00E3o Gerentes pela DEX'','),
unistr('                              3,''Autoavalia\00E7\00E3o Colaboradores'','),
unistr('                              4,''Autoavalia\00E7\00E3o Gerentes'','),
unistr('                              5,''Avalia\00E7\00E3o Gerentes pelos Colaboradores'','),
'                              NULL) tp_avaliacao, ',
' count(1) quantidade',
'from ad_avaliacao a',
'where to_char(dt_geracao_avaliacao,''rrrr'') = :P30_ANO_REFERENCIA',
'AND a.DT_FIM_AVALIACAO IS NOT NULL',
'group by a.tp_avaliacao',
'order by a.tp_avaliacao;',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P30_ANO_REFERENCIA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Quantidade de Avalia\00E7\00F5es')
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
 p_id=>wwv_flow_imp.id(25217341736950805)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GERSON'
,p_internal_uid=>25217341736950805
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25217890986950810)
,p_db_column_name=>'TP_AVALIACAO'
,p_display_order=>10
,p_column_identifier=>'C'
,p_column_label=>'Tp Avaliacao'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25217902964950811)
,p_db_column_name=>'QUANTIDADE'
,p_display_order=>20
,p_column_identifier=>'D'
,p_column_label=>'Quantidade'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(25230975224281579)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'252310'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'TP_AVALIACAO:QUANTIDADE'
,p_sum_columns_on_break=>'QUANTIDADE'
,p_chart_type=>'pie'
,p_chart_label_column=>'TP_AVALIACAO'
,p_chart_value_column=>'QUANTIDADE'
,p_chart_aggregate=>'SUM'
,p_chart_sorting=>'DEFAULT'
,p_chart_orientation=>'vertical'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25224240949198223)
,p_plug_name=>'Quantidade Total Colaboradores e Gerentes'
,p_parent_plug_id=>wwv_flow_imp.id(25217158139950803)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Qtdade total colaboradores e Gerentes --',
'SELECT decode(id_perfil,1,''Colaboradores'',5,''Colaboradores'',2,''Gerentes'',6,''Gerentes'',null) id_perfil, COUNT(1) qtd -- perfil 1 e 5 colaborador e 2 e 6 gerente',
'  FROM ad_usuario u',
' WHERE u.id_perfil not in (3,4) -- Perfil DEX e Administrador',
'   AND id_ativo = 1',
' GROUP BY decode(id_perfil,1,''Colaboradores'',5,''Colaboradores'',2,''Gerentes'',6,''Gerentes'',null);'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Quantidade Total Colaboradores e Gerentes'
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
 p_id=>wwv_flow_imp.id(25224396496198223)
,p_name=>'Resultado Geral'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GERSON'
,p_internal_uid=>25224396496198223
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25224720625198227)
,p_db_column_name=>'ID_PERFIL'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Perfil'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25225121948198229)
,p_db_column_name=>'QTD'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Total Ativos'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(25225542342198693)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'252256'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'ID_PERFIL:QTD'
,p_sum_columns_on_break=>'QTD'
,p_chart_type=>'pie'
,p_chart_label_column=>'ID_PERFIL'
,p_chart_value_column=>'QTD'
,p_chart_aggregate=>'SUM'
,p_chart_sorting=>'DEFAULT'
,p_chart_orientation=>'vertical'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25702207853717201)
,p_plug_name=>'Resultado Geral da Empresa - Colaboradores'
,p_parent_plug_id=>wwv_flow_imp.id(25217158139950803)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr(' -- media geral das avalia\00E7\00F5es dos colaboradores (avalia\00E7\00E3o do colaborador pelo gerente e autoavalia\00E7\00E3o do colaborador)  --'),
'SELECT c.id,',
'       c.NM_COMPETENCIA_AREA area_competencia, ',
'       to_char(ai.id_indicador,''00'')||''-''||i.nm_competencia nm_indicador,',
'       trunc(AVG(ai.vl_escolha), 2) media,',
'      ''<div style="background-color:'' || ',
'      pck_ad.fnc_conceito_result_cor(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''; color:'' || ',
'      pck_ad.fnc_conceito_result_cor_fonte(c.id, trunc(AVG(ai.vl_escolha), 2))',
'      || ''">'' ||to_char(trunc(AVG(ai.vl_escolha),2),''0D00'') || ''</div>'' media_geral_cor,',
'      ''<div style="background-color:'' || ',
'      pck_ad.fnc_conceito_result_cor(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''; color:'' || ',
'      pck_ad.fnc_conceito_result_cor_fonte(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''">'' || ',
'      pck_ad.fnc_conceito_result(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''</div>'' conceito_cor        ',
'  FROM ad_avaliacao_item ai,',
'       ad_avaliacao      a,',
'       ad_indicador      i,',
'       ad_competencia    c',
' WHERE extract(YEAR FROM(a.dt_geracao_avaliacao)) = :P30_ANO_REFERENCIA',
'   AND ai.id = a.id',
'   AND a.tp_avaliacao IN (1,3)',
'   AND i.id_indicador = ai.id_indicador ',
'   AND i.tp_avaliacao = a.tp_avaliacao',
'   and c.id = i.id_competencia',
'  --and a.id_colaborador = 216 --',
' GROUP BY c.id, c.NM_COMPETENCIA_AREA, i.nm_competencia , ai.id_indicador',
' ORDER BY ai.id_indicador;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P30_ANO_REFERENCIA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resultado Geral da Empresa - Colaboradores'
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
 p_id=>wwv_flow_imp.id(25702363834717202)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GERSON'
,p_internal_uid=>25702363834717202
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25702990880717208)
,p_db_column_name=>'AREA_COMPETENCIA'
,p_display_order=>20
,p_column_identifier=>'D'
,p_column_label=>unistr('\00C1rea de Compet\00EAncia')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25702771275717206)
,p_db_column_name=>'NM_INDICADOR'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Indicador'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25703041731717209)
,p_db_column_name=>'MEDIA_GERAL_COR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('M\00E9dia Geral')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25703147430717210)
,p_db_column_name=>'CONCEITO_COR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Conceito'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26302194710850002)
,p_db_column_name=>'ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26303791304850018)
,p_db_column_name=>'MEDIA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Media'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(25708637933724801)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'257087'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'AREA_COMPETENCIA:NM_INDICADOR:MEDIA_GERAL_COR:CONCEITO_COR'
,p_chart_type=>'bar'
,p_chart_label_column=>'NM_INDICADOR'
,p_chart_value_column=>'MEDIA'
,p_chart_aggregate=>'AVG'
,p_chart_sorting=>'LABEL_ASC'
,p_chart_orientation=>'horizontal'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25703224320717211)
,p_plug_name=>'Resultado Geral da Empresa - Gerentes'
,p_parent_plug_id=>wwv_flow_imp.id(25217158139950803)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr(' -- media geral das avalia\00E7\00F5es dos gerentes (avalia\00E7\00E3o do gerente pela DEX, autoavalia\00E7\00E3o do gerente e avalia\00E7\00E3o dos gerentes pelos colaboradores)'),
'SELECT c.id,',
'       c.NM_COMPETENCIA_AREA area_competencia, ',
'       to_char(ai.id_indicador,''00'')||''-''||i.nm_competencia nm_indicador,',
'       trunc(AVG(ai.vl_escolha), 2) media,',
'      ''<div style="background-color:'' || ',
'      pck_ad.fnc_conceito_result_cor(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''; color:'' || ',
'      pck_ad.fnc_conceito_result_cor_fonte(c.id, trunc(AVG(ai.vl_escolha), 2))',
'      || ''">'' ||to_char(trunc(AVG(ai.vl_escolha),2),''0D00'') || ''</div>'' media_geral_cor,',
'      ''<div style="background-color:'' || ',
'      pck_ad.fnc_conceito_result_cor(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''; color:'' || ',
'      pck_ad.fnc_conceito_result_cor_fonte(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''">'' || ',
'      pck_ad.fnc_conceito_result(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''</div>'' conceito_cor        ',
'  FROM ad_avaliacao_item ai,',
'       ad_avaliacao      a,',
'       ad_indicador      i,',
'       ad_competencia    c',
' WHERE extract(YEAR FROM(a.dt_geracao_avaliacao)) = :P30_ANO_REFERENCIA',
'   AND ai.id = a.id',
'   AND a.tp_avaliacao IN (2,4,5)',
'   AND i.id_indicador = ai.id_indicador ',
'   AND i.tp_avaliacao = a.tp_avaliacao',
'   and c.id = i.id_competencia',
'  --and a.id_colaborador = 216 --',
' GROUP BY c.id, c.NM_COMPETENCIA_AREA, i.nm_competencia , ai.id_indicador',
' ORDER BY ai.id_indicador;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P30_ANO_REFERENCIA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Resultado Geral da Empresa - Gerentes'
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
 p_id=>wwv_flow_imp.id(25703363363717212)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GERSON'
,p_internal_uid=>25703363363717212
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25703572020717214)
,p_db_column_name=>'AREA_COMPETENCIA'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('\00C1rea de Compet\00EAncia')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25703680800717215)
,p_db_column_name=>'NM_INDICADOR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Indicador'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25703707975717216)
,p_db_column_name=>'MEDIA_GERAL_COR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('M\00E9dia Geral')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25703874765717217)
,p_db_column_name=>'CONCEITO_COR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Conceito'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26302029459850001)
,p_db_column_name=>'ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26303986229850020)
,p_db_column_name=>'MEDIA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Media'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26008688717297252)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'260087'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'AREA_COMPETENCIA:NM_INDICADOR:MEDIA_GERAL_COR:CONCEITO_COR:'
,p_chart_type=>'bar'
,p_chart_label_column=>'NM_INDICADOR'
,p_chart_label_title=>'Indicadores'
,p_chart_value_column=>'MEDIA'
,p_chart_aggregate=>'AVG'
,p_chart_value_title=>unistr('M\00E9dias')
,p_chart_sorting=>'LABEL_ASC'
,p_chart_orientation=>'horizontal'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26302270006850003)
,p_plug_name=>unistr('Resultado Geral da Empresa - Colaboradores - Avalia\00E7\00E3o Individual')
,p_parent_plug_id=>wwv_flow_imp.id(25217158139950803)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>55
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr(' -- media geral das avalia\00E7\00F5es dos colaboradores pelos gerentes --'),
' SELECT c.id,',
'       c.NM_COMPETENCIA_AREA area_competencia, ',
'       to_char(ai.id_indicador,''00'')||''-''||i.nm_competencia nm_indicador,',
'       trunc(AVG(ai.vl_escolha), 2) media,',
'      ''<div style="background-color:'' || ',
'      pck_ad.fnc_conceito_result_cor(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''; color:'' || ',
'      pck_ad.fnc_conceito_result_cor_fonte(c.id, trunc(AVG(ai.vl_escolha), 2))',
'      || ''">'' ||to_char(trunc(AVG(ai.vl_escolha),2),''0D00'') || ''</div>'' media_geral_cor,',
'      ''<div style="background-color:'' || ',
'      pck_ad.fnc_conceito_result_cor(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''; color:'' || ',
'      pck_ad.fnc_conceito_result_cor_fonte(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''">'' || ',
'      pck_ad.fnc_conceito_result(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''</div>'' conceito_cor        ',
'  FROM ad_avaliacao_item ai,',
'       ad_avaliacao      a,',
'       ad_indicador      i,',
'       ad_competencia    c',
' WHERE extract(YEAR FROM(a.dt_geracao_avaliacao)) = :P30_ANO_REFERENCIA',
'   AND ai.id = a.id',
'   AND a.tp_avaliacao = 1',
'   AND i.id_indicador = ai.id_indicador ',
'   AND i.tp_avaliacao = a.tp_avaliacao',
'   and c.id = i.id_competencia',
'  --and a.id_colaborador = 216 --',
' GROUP BY c.id, c.NM_COMPETENCIA_AREA, i.nm_competencia , ai.id_indicador',
' ORDER BY ai.id_indicador;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P30_ANO_REFERENCIA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Resultado Geral da Empresa - Colaboradores - Avalia\00E7\00E3o Individual')
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
 p_id=>wwv_flow_imp.id(26302326326850004)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GERSON'
,p_internal_uid=>26302326326850004
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26302495473850005)
,p_db_column_name=>'AREA_COMPETENCIA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('\00C1rea de Compet\00EAncia')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26302598930850006)
,p_db_column_name=>'NM_INDICADOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Indicador'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26302667125850007)
,p_db_column_name=>'MEDIA_GERAL_COR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('M\00E9dia Geral')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26302711027850008)
,p_db_column_name=>'CONCEITO_COR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Conceito'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26302894605850009)
,p_db_column_name=>'ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26304024627850021)
,p_db_column_name=>'MEDIA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Media'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26313791905056485)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'263138'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'AREA_COMPETENCIA:NM_INDICADOR:MEDIA_GERAL_COR:CONCEITO_COR:'
,p_chart_type=>'bar'
,p_chart_label_column=>'NM_INDICADOR'
,p_chart_label_title=>'Indicadores'
,p_chart_value_column=>'MEDIA'
,p_chart_aggregate=>'AVG'
,p_chart_value_title=>unistr('M\00E9dias')
,p_chart_sorting=>'LABEL_ASC'
,p_chart_orientation=>'horizontal'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26302918198850010)
,p_plug_name=>unistr('Resultado Geral da Empresa - Colaboradores - Autoavalia\00E7\00E3o')
,p_parent_plug_id=>wwv_flow_imp.id(25217158139950803)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>75
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr(' -- media geral das autoavalia\00E7\00E3o dos colaboradores --'),
'SELECT c.id,',
'       c.NM_COMPETENCIA_AREA area_competencia, ',
'       to_char(ai.id_indicador,''00'')||''-''||i.nm_competencia nm_indicador,',
'       trunc(AVG(ai.vl_escolha), 2) media,',
'      ''<div style="background-color:'' || ',
'      pck_ad.fnc_conceito_result_cor(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''; color:'' || ',
'      pck_ad.fnc_conceito_result_cor_fonte(c.id, trunc(AVG(ai.vl_escolha), 2))',
'      || ''">'' ||to_char(trunc(AVG(ai.vl_escolha),2),''0D00'') || ''</div>'' media_geral_cor,',
'      ''<div style="background-color:'' || ',
'      pck_ad.fnc_conceito_result_cor(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''; color:'' || ',
'      pck_ad.fnc_conceito_result_cor_fonte(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''">'' || ',
'      pck_ad.fnc_conceito_result(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''</div>'' conceito_cor        ',
'  FROM ad_avaliacao_item ai,',
'       ad_avaliacao      a,',
'       ad_indicador      i,',
'       ad_competencia    c',
' WHERE extract(YEAR FROM(a.dt_geracao_avaliacao)) = :P30_ANO_REFERENCIA',
'   AND ai.id = a.id',
'   AND a.tp_avaliacao = 3',
'   AND i.id_indicador = ai.id_indicador ',
'   AND i.tp_avaliacao = a.tp_avaliacao',
'   and c.id = i.id_competencia',
'  --and a.id_colaborador = 216 --',
' GROUP BY c.id, c.NM_COMPETENCIA_AREA, i.nm_competencia , ai.id_indicador',
' ORDER BY ai.id_indicador;  '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P30_ANO_REFERENCIA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Resultado Geral da Empresa - Colaboradores - Autoavalia\00E7\00E3o')
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
 p_id=>wwv_flow_imp.id(26303064656850011)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GERSON'
,p_internal_uid=>26303064656850011
);
wwv_flow_imp.component_end;
end;
/
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>3060310794164477
,p_default_application_id=>777
,p_default_id_offset=>31982554338203874331
,p_default_owner=>'DVGE'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26303101332850012)
,p_db_column_name=>'AREA_COMPETENCIA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('\00C1rea de Compet\00EAncia')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26303282744850013)
,p_db_column_name=>'NM_INDICADOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Indicador'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26303392469850014)
,p_db_column_name=>'MEDIA_GERAL_COR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('M\00E9dia Geral')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26303494163850015)
,p_db_column_name=>'CONCEITO_COR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Conceito'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26303513671850016)
,p_db_column_name=>'ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26304162245850022)
,p_db_column_name=>'MEDIA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Media'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26316571193065537)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'263166'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'AREA_COMPETENCIA:NM_INDICADOR:MEDIA_GERAL_COR:CONCEITO_COR:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26304244139850023)
,p_plug_name=>unistr('Resultado Geral da Empresa - Gerentes - Avalia\00E7\00E3o Individual')
,p_parent_plug_id=>wwv_flow_imp.id(25217158139950803)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr(' -- media geral das avalia\00E7\00F5es dos colaboradores pelos gerentes --'),
' SELECT c.id,',
'       c.NM_COMPETENCIA_AREA area_competencia, ',
'       to_char(ai.id_indicador,''00'')||''-''||i.nm_competencia nm_indicador,',
'       trunc(AVG(ai.vl_escolha), 2) media,',
'      ''<div style="background-color:'' || ',
'      pck_ad.fnc_conceito_result_cor(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''; color:'' || ',
'      pck_ad.fnc_conceito_result_cor_fonte(c.id, trunc(AVG(ai.vl_escolha), 2))',
'      || ''">'' ||to_char(trunc(AVG(ai.vl_escolha),2),''0D00'') || ''</div>'' media_geral_cor,',
'      ''<div style="background-color:'' || ',
'      pck_ad.fnc_conceito_result_cor(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''; color:'' || ',
'      pck_ad.fnc_conceito_result_cor_fonte(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''">'' || ',
'      pck_ad.fnc_conceito_result(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''</div>'' conceito_cor        ',
'  FROM ad_avaliacao_item ai,',
'       ad_avaliacao      a,',
'       ad_indicador      i,',
'       ad_competencia    c',
' WHERE extract(YEAR FROM(a.dt_geracao_avaliacao)) = :P30_ANO_REFERENCIA',
'   AND ai.id = a.id',
'   AND a.tp_avaliacao = 2',
'   AND i.id_indicador = ai.id_indicador ',
'   AND i.tp_avaliacao = a.tp_avaliacao',
'   and c.id = i.id_competencia',
'  --and a.id_colaborador = 216 --',
' GROUP BY c.id, c.NM_COMPETENCIA_AREA, i.nm_competencia , ai.id_indicador',
' ORDER BY ai.id_indicador;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P30_ANO_REFERENCIA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Resultado Geral da Empresa - Gerentes - Avalia\00E7\00E3o Individual')
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
 p_id=>wwv_flow_imp.id(26304368442850024)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GERSON'
,p_internal_uid=>26304368442850024
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26304441459850025)
,p_db_column_name=>'AREA_COMPETENCIA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('\00C1rea de Compet\00EAncia')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26304569132850026)
,p_db_column_name=>'NM_INDICADOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Indicador'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26304644663850027)
,p_db_column_name=>'MEDIA_GERAL_COR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('M\00E9dia Geral')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26304761307850028)
,p_db_column_name=>'CONCEITO_COR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Conceito'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26304834965850029)
,p_db_column_name=>'ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26304994337850030)
,p_db_column_name=>'MEDIA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Media'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26424774046928770)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'264248'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'AREA_COMPETENCIA:NM_INDICADOR:MEDIA_GERAL_COR:CONCEITO_COR:'
,p_chart_type=>'lineWithArea'
,p_chart_label_column=>'NM_INDICADOR'
,p_chart_value_column=>'MEDIA'
,p_chart_aggregate=>'AVG'
,p_chart_sorting=>'LABEL_ASC'
,p_chart_orientation=>'horizontal'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26305028305850031)
,p_plug_name=>unistr('Resultado Geral da Empresa - Gerentes - Autoavalia\00E7\00E3o')
,p_parent_plug_id=>wwv_flow_imp.id(25217158139950803)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr(' -- media geral das autoavalia\00E7\00E3o dos colaboradores --'),
'SELECT c.id,',
'       c.NM_COMPETENCIA_AREA area_competencia, ',
'       to_char(ai.id_indicador,''00'')||''-''||i.nm_competencia nm_indicador,',
'       trunc(AVG(ai.vl_escolha), 2) media,',
'      ''<div style="background-color:'' || ',
'      pck_ad.fnc_conceito_result_cor(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''; color:'' || ',
'      pck_ad.fnc_conceito_result_cor_fonte(c.id, trunc(AVG(ai.vl_escolha), 2))',
'      || ''">'' ||to_char(trunc(AVG(ai.vl_escolha),2),''0D00'') || ''</div>'' media_geral_cor,',
'      ''<div style="background-color:'' || ',
'      pck_ad.fnc_conceito_result_cor(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''; color:'' || ',
'      pck_ad.fnc_conceito_result_cor_fonte(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''">'' || ',
'      pck_ad.fnc_conceito_result(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''</div>'' conceito_cor        ',
'  FROM ad_avaliacao_item ai,',
'       ad_avaliacao      a,',
'       ad_indicador      i,',
'       ad_competencia    c',
' WHERE extract(YEAR FROM(a.dt_geracao_avaliacao)) = :P30_ANO_REFERENCIA',
'   AND ai.id = a.id',
'   AND a.tp_avaliacao = 4',
'',
'   AND i.id_indicador = ai.id_indicador ',
'   AND i.tp_avaliacao = a.tp_avaliacao',
'   and c.id = i.id_competencia',
'  --and a.id_colaborador = 216 --',
' GROUP BY c.id, c.NM_COMPETENCIA_AREA, i.nm_competencia , ai.id_indicador',
' ORDER BY ai.id_indicador;  '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P30_ANO_REFERENCIA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Resultado Geral da Empresa - Gerentes - Autoavalia\00E7\00E3o')
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
 p_id=>wwv_flow_imp.id(26305138111850032)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GERSON'
,p_internal_uid=>26305138111850032
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26305294793850033)
,p_db_column_name=>'AREA_COMPETENCIA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('\00C1rea de Compet\00EAncia')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26305363124850034)
,p_db_column_name=>'NM_INDICADOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Indicador'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26305490020850035)
,p_db_column_name=>'MEDIA_GERAL_COR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('M\00E9dia Geral')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26305553957850036)
,p_db_column_name=>'CONCEITO_COR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Conceito'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26305665428850037)
,p_db_column_name=>'ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26305748003850038)
,p_db_column_name=>'MEDIA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Media'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26425318899928779)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'264254'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'AREA_COMPETENCIA:NM_INDICADOR:MEDIA_GERAL_COR:CONCEITO_COR:'
,p_chart_type=>'lineWithArea'
,p_chart_label_column=>'NM_INDICADOR'
,p_chart_label_title=>'Indicadores'
,p_chart_value_column=>'MEDIA'
,p_chart_aggregate=>'AVG'
,p_chart_value_title=>unistr('M\00E9dias')
,p_chart_sorting=>'LABEL_ASC'
,p_chart_orientation=>'horizontal'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26305864194850039)
,p_plug_name=>unistr('Resultado Geral da Empresa - Gerentes - Avalia\00E7\00E3o dos Gestores')
,p_parent_plug_id=>wwv_flow_imp.id(25217158139950803)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr(' -- media geral das avalia\00E7\00F5es dos colaboradores pelos gerentes --'),
' SELECT c.id,',
'       c.NM_COMPETENCIA_AREA area_competencia, ',
'       to_char(ai.id_indicador,''00'')||''-''||i.nm_competencia nm_indicador,',
'       trunc(AVG(ai.vl_escolha), 2) media,',
'      ''<div style="background-color:'' || ',
'      pck_ad.fnc_conceito_result_cor(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''; color:'' || ',
'      pck_ad.fnc_conceito_result_cor_fonte(c.id, trunc(AVG(ai.vl_escolha), 2))',
'      || ''">'' ||to_char(trunc(AVG(ai.vl_escolha),2),''0D00'') || ''</div>'' media_geral_cor,',
'      ''<div style="background-color:'' || ',
'      pck_ad.fnc_conceito_result_cor(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''; color:'' || ',
'      pck_ad.fnc_conceito_result_cor_fonte(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''">'' || ',
'      pck_ad.fnc_conceito_result(c.id, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''</div>'' conceito_cor        ',
'  FROM ad_avaliacao_item ai,',
'       ad_avaliacao      a,',
'       ad_indicador      i,',
'       ad_competencia    c',
' WHERE extract(YEAR FROM(a.dt_geracao_avaliacao)) = :P30_ANO_REFERENCIA',
'   AND ai.id = a.id',
'   AND a.tp_avaliacao = 5',
'   AND i.id_indicador = ai.id_indicador ',
'   AND i.tp_avaliacao = a.tp_avaliacao',
'   and c.id = i.id_competencia',
'  --and a.id_colaborador = 216 --',
' GROUP BY c.id, c.NM_COMPETENCIA_AREA, i.nm_competencia , ai.id_indicador',
' ORDER BY ai.id_indicador;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P30_ANO_REFERENCIA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Resultado Geral da Empresa - Gerentes - Avalia\00E7\00E3o dos Gestores')
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
 p_id=>wwv_flow_imp.id(26305993975850040)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GERSON'
,p_internal_uid=>26305993975850040
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26306053518850041)
,p_db_column_name=>'AREA_COMPETENCIA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('\00C1rea de Compet\00EAncia')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26306136757850042)
,p_db_column_name=>'NM_INDICADOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Indicador'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26306215495850043)
,p_db_column_name=>'MEDIA_GERAL_COR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('M\00E9dia Geral')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26306386383850044)
,p_db_column_name=>'CONCEITO_COR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Conceito'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26306467132850045)
,p_db_column_name=>'ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26306519532850046)
,p_db_column_name=>'MEDIA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Media'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26426098683928787)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'264261'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'AREA_COMPETENCIA:NM_INDICADOR:MEDIA_GERAL_COR:CONCEITO_COR:'
,p_chart_type=>'lineWithArea'
,p_chart_label_column=>'NM_INDICADOR'
,p_chart_label_title=>'Indicadores'
,p_chart_value_column=>'MEDIA'
,p_chart_aggregate=>'AVG'
,p_chart_value_title=>unistr('M\00E9dia')
,p_chart_sorting=>'LABEL_ASC'
,p_chart_orientation=>'horizontal'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25217602464950808)
,p_plug_name=>'Filtro'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(26708232672586535)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(25217602464950808)
,p_button_name=>'VOLTAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Voltar'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:29,30,31::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(25218067209950812)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(25217602464950808)
,p_button_name=>'Consultar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(4128014990157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Consultar'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(25217724116950809)
,p_name=>'P30_ANO_REFERENCIA'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25217602464950808)
,p_prompt=>unistr('Ano Refer\00EAncia:')
,p_format_mask=>'9999'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>4
,p_grid_label_column_span=>10
,p_field_template=>wwv_flow_imp.id(4125570846157626)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp.component_end;
end;
/
