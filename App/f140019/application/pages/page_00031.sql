prompt --application/pages/page_00031
begin
--   Manifest
--     PAGE: 00031
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
 p_id=>31
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>unistr('Resultado Lota\00E7\00E3o')
,p_alias=>unistr('RESULTADO-LOTA\00C7\00C3O')
,p_step_title=>unistr('Resultado Lota\00E7\00E3o')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(27010041501965255)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(4155261545157727)
,p_page_component_map=>'18'
,p_last_updated_by=>'GERSON'
,p_last_upd_yyyymmddhh24miss=>'20220212204119'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51646607904961108)
,p_plug_name=>unistr('Resultado Lota\00E7\00E3o')
,p_region_template_options=>'#DEFAULT#:t-Region--accent9:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   if :P31_ANO_REFERENCIA is not null and :P31_ID_LOTACAO is not null then',
'      return true;',
'    else',
'      return false;',
'    end if;',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26306827619850049)
,p_plug_name=>unistr('Avalia\00E7\00E3o de Desempenho Gerente (realizada pela DEX)')
,p_parent_plug_id=>wwv_flow_imp.id(51646607904961108)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr(' -- media geral das avalia\00E7\00F5es do gerente pela DEX --'),
unistr(' -- media geral das avalia\00E7\00F5es dos colaboradores (avalia\00E7\00E3o do colaborador pelo gerente e autoavalia\00E7\00E3o do colaborador)  --'),
' select 99  id,',
unistr('       ''M\00C9DIA'' area_competencia, '),
unistr('       '' 99-M\00E9dia Geral'' nm_indicador,'),
'       trunc(AVG(ai.vl_escolha), 2) media,',
'      ''<div style="background-color:'' || ',
'      pck_ad.fnc_conceito_result_cor(1, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''; color:'' || ',
'      pck_ad.fnc_conceito_result_cor_fonte(1, trunc(AVG(ai.vl_escolha), 2))',
'      || ''">'' ||to_char(trunc(AVG(ai.vl_escolha),2),''0D00'') || ''</div>'' media_geral_cor,',
'      ''<div style="background-color:'' || ',
'      pck_ad.fnc_conceito_result_cor(1, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''; color:'' || ',
'      pck_ad.fnc_conceito_result_cor_fonte(1, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''">'' || ',
'      pck_ad.fnc_conceito_result(1, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''</div>'' conceito_cor         ',
'      FROM ad_avaliacao_item   ai,',
'       ad_avaliacao        a,',
'       v_ad_dados_usuarios u',
' WHERE extract(YEAR FROM(a.dt_geracao_avaliacao)) = :P31_ANO_REFERENCIA',
'   AND ai.id = a.id',
'   AND a.tp_avaliacao = 2',
'   and a.id_colaborador = u.colaborador_id',
'   and u.lotacao_id = :P31_ID_LOTACAO',
' GROUP BY a.id_colaborador',
' ',
' ---------',
' union all',
' ---------',
' ',
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
'  FROM ad_avaliacao_item   ai,',
'       ad_avaliacao        a,',
'       ad_indicador        i,',
'       ad_competencia      c,',
'       v_ad_dados_usuarios u',
' WHERE extract(YEAR FROM(a.dt_geracao_avaliacao)) = :P31_ANO_REFERENCIA',
'   AND ai.id = a.id',
'   AND a.tp_avaliacao = 2',
'   AND i.id_indicador = ai.id_indicador ',
'   AND i.tp_avaliacao = a.tp_avaliacao',
'   and c.id = i.id_competencia',
'   and a.id_colaborador = u.colaborador_id',
'   and u.lotacao_id = :P31_ID_LOTACAO',
' GROUP BY c.id, c.NM_COMPETENCIA_AREA, i.nm_competencia , ai.id_indicador',
' order by 3;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P31_ANO_REFERENCIA,P31_ID_LOTACAO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Avalia\00E7\00E3o de Desempenho Gerente (realizada pela DEX)')
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
 p_id=>wwv_flow_imp.id(26306948912850050)
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GERSON'
,p_internal_uid=>26306948912850050
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26477540233243701)
,p_db_column_name=>'AREA_COMPETENCIA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('\00C1rea de Compet\00EAncia')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26477604088243702)
,p_db_column_name=>'NM_INDICADOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Indicador'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26477777259243703)
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
 p_id=>wwv_flow_imp.id(26477836373243704)
,p_db_column_name=>'CONCEITO_COR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Conceito'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26477968391243705)
,p_db_column_name=>'ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26478050406243706)
,p_db_column_name=>'MEDIA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Media'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26504360828282331)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'265044'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
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
 p_id=>wwv_flow_imp.id(26704818033586501)
,p_plug_name=>unistr('Avalia\00E7\00E3o de Desempenho (Colaboradores)')
,p_parent_plug_id=>wwv_flow_imp.id(51646607904961108)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4043280273157563)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('-- media geral das avalia\00E7\00F5es dos colaboradores (avalia\00E7\00E3o do colaborador pelo gerente)  --'),
' select 99  id,',
'        a.id_colaborador,',
'        (select nome from v_ad_dados_usuarios u where u.colaborador_id = a.id_colaborador) nome,',
unistr('       ''<br><b>M\00C9DIA<b></br>'' area_competencia, '),
unistr('       ''<br><b> 99-M\00E9dia Colaorador<b></br>'' nm_indicador,'),
'       trunc(AVG(ai.vl_escolha), 2) media,',
'      ''<div style="background-color:'' || ',
'      pck_ad.fnc_conceito_result_cor(1, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''; color:'' || ',
'      pck_ad.fnc_conceito_result_cor_fonte(1, trunc(AVG(ai.vl_escolha), 2))',
'      || ''">'' ||to_char(trunc(AVG(ai.vl_escolha),2),''0D00'') || ''</div>'' media_geral_cor,',
'      ''<div style="background-color:'' || ',
'      pck_ad.fnc_conceito_result_cor(1, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''; color:'' || ',
'      pck_ad.fnc_conceito_result_cor_fonte(1, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''">'' || ',
'      pck_ad.fnc_conceito_result(1, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''</div>'' conceito_cor         ',
'      FROM ad_avaliacao_item   ai,',
'       ad_avaliacao        a,',
'       v_ad_dados_usuarios u',
' WHERE extract(YEAR FROM(a.dt_geracao_avaliacao)) = :P31_ANO_REFERENCIA',
'   AND ai.id = a.id',
'   AND a.tp_avaliacao = 1',
'   and a.id_colaborador = u.colaborador_id',
'   and u.lotacao_id = :P31_ID_LOTACAO',
' GROUP BY a.id_colaborador',
' ',
' ---------',
' union all',
' ---------',
' ',
' SELECT c.id,',
'        a.id_colaborador,',
'        (select nome from v_ad_dados_usuarios u where u.colaborador_id = a.id_colaborador) nome,',
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
'  FROM ad_avaliacao_item   ai,',
'       ad_avaliacao        a,',
'       ad_indicador        i,',
'       ad_competencia      c,',
'       v_ad_dados_usuarios u',
' WHERE extract(YEAR FROM(a.dt_geracao_avaliacao)) = :P31_ANO_REFERENCIA',
'   AND ai.id = a.id',
'   AND a.tp_avaliacao = 1',
'   AND i.id_indicador = ai.id_indicador ',
'   AND i.tp_avaliacao = a.tp_avaliacao',
'   and c.id = i.id_competencia',
'   and a.id_colaborador = u.colaborador_id',
'   and u.lotacao_id = :P31_ID_LOTACAO',
' GROUP BY c.id, a.id_colaborador, c.NM_COMPETENCIA_AREA, i.nm_competencia , ai.id_indicador',
' order by 2, 5;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P31_ANO_REFERENCIA,P31_ID_LOTACAO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Avalia\00E7\00E3o de Desempenho (Colaboradores)')
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
 p_id=>wwv_flow_imp.id(26704926486586502)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_highlight=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GERSON'
,p_internal_uid=>26704926486586502
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26705027676586503)
,p_db_column_name=>'AREA_COMPETENCIA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('\00C1rea de Compet\00EAncia')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26705187860586504)
,p_db_column_name=>'NM_INDICADOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Indicador'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26705212542586505)
,p_db_column_name=>'MEDIA_GERAL_COR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nota'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26705390460586506)
,p_db_column_name=>'CONCEITO_COR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Conceito'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26705446744586507)
,p_db_column_name=>'ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26705552087586508)
,p_db_column_name=>'MEDIA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Media'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26705664220586509)
,p_db_column_name=>'ID_COLABORADOR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Id Colaborador'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26705729564586510)
,p_db_column_name=>'NOME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Nome'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26712644155590499)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'267127'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_view_mode=>'REPORT'
,p_report_columns=>'NOME:AREA_COMPETENCIA:NM_INDICADOR:MEDIA_GERAL_COR:CONCEITO_COR:'
,p_sort_column_1=>'NM_INDICADOR'
,p_sort_direction_1=>'ASC'
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
,p_break_on=>'NOME:0:0:0:0:0'
,p_break_enabled_on=>'NOME:0:0:0:0:0'
,p_chart_type=>'bar'
,p_chart_label_column=>'NOME'
,p_chart_value_column=>'MEDIA'
,p_chart_aggregate=>'AVG'
,p_chart_sorting=>'LABEL_ASC'
,p_chart_orientation=>'horizontal'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26705866430586511)
,p_plug_name=>unistr('Autoavalia\00E7\00E3o Colaboradores')
,p_parent_plug_id=>wwv_flow_imp.id(51646607904961108)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4043280273157563)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('-- media geral das avalia\00E7\00F5es dos colaboradores (avalia\00E7\00E3o do colaborador pelo gerente)  --'),
' select 99  id,',
'        a.id_colaborador,',
'        (select nome from v_ad_dados_usuarios u where u.colaborador_id = a.id_colaborador) nome,',
unistr('       ''<br><b>M\00C9DIA<b></br>'' area_competencia, '),
unistr('       ''<br><b> 99-M\00E9dia Colaorador<b></br>'' nm_indicador,'),
'       trunc(AVG(ai.vl_escolha), 2) media,',
'      ''<div style="background-color:'' || ',
'      pck_ad.fnc_conceito_result_cor(1, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''; color:'' || ',
'      pck_ad.fnc_conceito_result_cor_fonte(1, trunc(AVG(ai.vl_escolha), 2))',
'      || ''">'' ||to_char(trunc(AVG(ai.vl_escolha),2),''0D00'') || ''</div>'' media_geral_cor,',
'      ''<div style="background-color:'' || ',
'      pck_ad.fnc_conceito_result_cor(1, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''; color:'' || ',
'      pck_ad.fnc_conceito_result_cor_fonte(1, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''">'' || ',
'      pck_ad.fnc_conceito_result(1, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''</div>'' conceito_cor         ',
'      FROM ad_avaliacao_item   ai,',
'       ad_avaliacao        a,',
'       v_ad_dados_usuarios u',
' WHERE extract(YEAR FROM(a.dt_geracao_avaliacao)) = :P31_ANO_REFERENCIA',
'   AND ai.id = a.id',
'   AND a.tp_avaliacao = 3',
'   and a.id_colaborador = u.colaborador_id',
'   and u.lotacao_id = :P31_ID_LOTACAO',
' GROUP BY a.id_colaborador',
' ',
' ---------',
' union all',
' ---------',
' ',
' SELECT c.id,',
'        a.id_colaborador,',
'        (select nome from v_ad_dados_usuarios u where u.colaborador_id = a.id_colaborador) nome,',
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
'  FROM ad_avaliacao_item   ai,',
'       ad_avaliacao        a,',
'       ad_indicador        i,',
'       ad_competencia      c,',
'       v_ad_dados_usuarios u',
' WHERE extract(YEAR FROM(a.dt_geracao_avaliacao)) = :P31_ANO_REFERENCIA',
'   AND ai.id = a.id',
'   AND a.tp_avaliacao = 3',
'   AND i.id_indicador = ai.id_indicador ',
'   AND i.tp_avaliacao = a.tp_avaliacao',
'   and c.id = i.id_competencia',
'   and a.id_colaborador = u.colaborador_id',
'   and u.lotacao_id = :P31_ID_LOTACAO',
' GROUP BY c.id, a.id_colaborador, c.NM_COMPETENCIA_AREA, i.nm_competencia , ai.id_indicador',
' order by 2, 5;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P31_ANO_REFERENCIA,P31_ID_LOTACAO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Autoavalia\00E7\00E3o Colaboradores')
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
 p_id=>wwv_flow_imp.id(26705932221586512)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_highlight=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GERSON'
,p_internal_uid=>26705932221586512
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26706081050586513)
,p_db_column_name=>'AREA_COMPETENCIA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('\00C1rea de Compet\00EAncia')
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26706132880586514)
,p_db_column_name=>'NM_INDICADOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Indicador'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26706241639586515)
,p_db_column_name=>'MEDIA_GERAL_COR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nota'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26706324270586516)
,p_db_column_name=>'CONCEITO_COR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Conceito'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26706418073586517)
,p_db_column_name=>'ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26706590893586518)
,p_db_column_name=>'MEDIA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Media'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26706693468586519)
,p_db_column_name=>'ID_COLABORADOR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Id Colaborador'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26706768911586520)
,p_db_column_name=>'NOME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Nome'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(26806255544957732)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'268063'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'NOME:AREA_COMPETENCIA:NM_INDICADOR:MEDIA_GERAL_COR:CONCEITO_COR:'
,p_sort_column_1=>'ID_COLABORADOR'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'NM_INDICADOR'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'NOME:0:0:0:0:0'
,p_break_enabled_on=>'NOME:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51646739558961109)
,p_plug_name=>unistr('Quantidade de Avalia\00E7\00F5es')
,p_parent_plug_id=>wwv_flow_imp.id(51646607904961108)
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
'from ad_avaliacao a,',
'     v_ad_dados_usuarios u2',
'where to_char(dt_geracao_avaliacao,''rrrr'') = :P31_ANO_REFERENCIA',
'AND a.DT_FIM_AVALIACAO IS NOT NULL',
'AND A.ID_COLABORADOR = U2.COLABORADOR_ID',
'AND u2.lotacao_id = :P31_ID_LOTACAO',
'group by a.tp_avaliacao',
'order by a.tp_avaliacao;',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P31_ANO_REFERENCIA'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(51646791501961110)
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GERSON'
,p_internal_uid=>51646791501961110
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26439582693010428)
,p_db_column_name=>'TP_AVALIACAO'
,p_display_order=>10
,p_column_identifier=>'C'
,p_column_label=>'Tp Avaliacao'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26439906445010428)
,p_db_column_name=>'QUANTIDADE'
,p_display_order=>20
,p_column_identifier=>'D'
,p_column_label=>'Quantidade'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(51660424989291884)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'264403'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
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
 p_id=>wwv_flow_imp.id(51653690714208528)
,p_plug_name=>'Quantidade Total Colaboradores e Gerente'
,p_parent_plug_id=>wwv_flow_imp.id(51646607904961108)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Qtdade total colaboradores e Gerentes --',
'SELECT decode(u.id_perfil,1,''Colaboradores'',5,''Colaboradores'',2,''Gerentes'',6,''Gerentes'',null) id_perfil, COUNT(1) qtd -- perfil 1 e 5 colaborador e 2 e 6 gerente',
'  FROM ad_usuario u,',
'       v_ad_dados_usuarios u2',
' WHERE u.id_perfil not in (3,4) -- Perfil DEX e Administrador',
'   AND u.id_ativo = 1',
'   AND u2.colaborador_id = u.id',
'   AND u2.lotacao_id = :P31_ID_LOTACAO',
' GROUP BY decode(id_perfil,1,''Colaboradores'',5,''Colaboradores'',2,''Gerentes'',6,''Gerentes'',null);'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Quantidade Total Colaboradores e Gerente'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(51653846261208528)
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GERSON'
,p_internal_uid=>51653846261208528
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26434984088010423)
,p_db_column_name=>'ID_PERFIL'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Perfil'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26435371044010424)
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
 p_id=>wwv_flow_imp.id(51654992107208998)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'264357'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
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
 p_id=>wwv_flow_imp.id(52131657618727506)
,p_plug_name=>unistr('Avalia\00E7\00E3o do Gestor (realizada pelos Colaboradores da \00E1rea)')
,p_parent_plug_id=>wwv_flow_imp.id(51646607904961108)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr(' -- media geral das avalia\00E7\00F5es do gerente pelos colaboradores --'),
' select 99  id,',
unistr('       ''M\00C9DIA'' area_competencia, '),
unistr('       '' 99-M\00E9dia Geral'' nm_indicador,'),
'       trunc(AVG(ai.vl_escolha), 2) media,',
'      ''<div style="background-color:'' || ',
'      pck_ad.fnc_conceito_result_cor(1, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''; color:'' || ',
'      pck_ad.fnc_conceito_result_cor_fonte(1, trunc(AVG(ai.vl_escolha), 2))',
'      || ''">'' ||to_char(trunc(AVG(ai.vl_escolha),2),''0D00'') || ''</div>'' media_geral_cor,',
'      ''<div style="background-color:'' || ',
'      pck_ad.fnc_conceito_result_cor(1, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''; color:'' || ',
'      pck_ad.fnc_conceito_result_cor_fonte(1, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''">'' || ',
'      pck_ad.fnc_conceito_result(1, trunc(AVG(ai.vl_escolha), 2)) ',
'      || ''</div>'' conceito_cor         ',
'      FROM ad_avaliacao_item   ai,',
'       ad_avaliacao        a,',
'       v_ad_dados_usuarios u',
' WHERE extract(YEAR FROM(a.dt_geracao_avaliacao)) = :P31_ANO_REFERENCIA',
'   AND ai.id = a.id',
'   AND a.tp_avaliacao = 5',
'   and a.id_colaborador = u.colaborador_id',
'   and u.lotacao_id = :P31_ID_LOTACAO',
' GROUP BY a.id_colaborador',
' ',
' ---------',
' union all',
' ---------',
' ',
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
'  FROM ad_avaliacao_item   ai,',
'       ad_avaliacao        a,',
'       ad_indicador        i,',
'       ad_competencia      c,',
'       v_ad_dados_usuarios u',
' WHERE extract(YEAR FROM(a.dt_geracao_avaliacao)) = :P31_ANO_REFERENCIA',
'   AND ai.id = a.id',
'   AND a.tp_avaliacao = 5',
'   AND i.id_indicador = ai.id_indicador ',
'   AND i.tp_avaliacao = a.tp_avaliacao',
'   and c.id = i.id_competencia',
'   and a.id_colaborador = u.colaborador_id',
'   and u.lotacao_id = :P31_ID_LOTACAO',
' GROUP BY c.id, c.NM_COMPETENCIA_AREA, i.nm_competencia , ai.id_indicador',
' order by 3;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P31_ANO_REFERENCIA,P31_ID_LOTACAO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Avalia\00E7\00E3o do Gestor (realizada pelos Colaboradores da \00E1rea)')
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
 p_id=>wwv_flow_imp.id(52131813599727507)
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GERSON'
,p_internal_uid=>52131813599727507
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26441428226010430)
,p_db_column_name=>'AREA_COMPETENCIA'
,p_display_order=>20
,p_column_identifier=>'D'
,p_column_label=>unistr('\00C1rea de Compet\00EAncia')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26441087850010430)
,p_db_column_name=>'NM_INDICADOR'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Indicador'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26441803684010431)
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
 p_id=>wwv_flow_imp.id(26442209240010431)
,p_db_column_name=>'CONCEITO_COR'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Conceito'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26442697970010431)
,p_db_column_name=>'ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(26443013068010432)
,p_db_column_name=>'MEDIA'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Media'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(52138087698735106)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'264434'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'AREA_COMPETENCIA:NM_INDICADOR:MEDIA_GERAL_COR:CONCEITO_COR'
,p_chart_type=>'bar'
,p_chart_label_column=>'NM_INDICADOR'
,p_chart_value_column=>'MEDIA'
,p_chart_aggregate=>'AVG'
,p_chart_sorting=>'LABEL_ASC'
,p_chart_orientation=>'horizontal'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(51647052229961113)
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
 p_id=>wwv_flow_imp.id(26708309290586536)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(51647052229961113)
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
 p_id=>wwv_flow_imp.id(26430439996010371)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(51647052229961113)
,p_button_name=>'Consultar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(4128014990157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Consultar'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26306706024850048)
,p_name=>'P31_ID_LOTACAO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(51647052229961113)
,p_prompt=>unistr('Lota\00E7\00E3o:')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_LOTACAO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nm_lotacao || ''-''|| ds_lotacao d, lotacao_id r',
'from hp_lotacao',
'where (dt_fim is null or dt_fim >= trunc(sysdate))',
' and  lotacao_id not in(12,13)',
'order by 1',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(4125570846157626)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(26430889765010380)
,p_name=>'P31_ANO_REFERENCIA'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(51647052229961113)
,p_prompt=>unistr('Ano Refer\00EAncia:')
,p_format_mask=>'9999'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>4
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
