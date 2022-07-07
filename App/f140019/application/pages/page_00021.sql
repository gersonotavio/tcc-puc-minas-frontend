prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>unistr('Avalia\00E7\00E3o de Desempenho Individual')
,p_alias=>'AVALIACAO-DESEMPENHO-INDIVIDUA'
,p_step_title=>unistr('Avalia\00E7\00E3o de Desempenho Individual')
,p_welcome_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'<title>W3.CSS</title>',
'<meta name="viewport" content="width=device-width, initial-scale=1">',
'<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">',
'<body>'))
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script language="JavaScript">',
'',
'function somenteNumero(e)',
'{',
'	/*onkeypress*/',
'	var tecla = (window.event) ? event.keyCode : e.which;',
'    var tab = 0;',
'    ',
'	if (navigator.appName.indexOf(''Internet Explorer'') > 0)',
'        tab = 9;',
'    ',
'	if ((tecla > 47 && tecla < 58) || (tecla == tab)) ',
'		return true;',
'    else',
'    {',
'		if (tecla != 8) ',
'			return false;',
'		else ',
'			return true;',
'    }',
'}   ',
'function formataData(campo, teclapres)',
'{',
'  var tecla = teclapres.keyCode;',
'  var vr = new String(campo.value);',
'  vr = vr.replace(".", "");',
'  vr = vr.replace("/", "");',
'  vr = vr.replace("-", "");',
'  tam = vr.length + 1;',
'  if (tecla != 8)',
'  {',
'    if (tam == 3)',
'      campo.value = vr.substr(0, 2) + ''/'';',
'  }',
'}',
'</script>'))
,p_javascript_code=>'var perguntas = [];'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.mostra_foco {',
'  background-color: rgba(251, 244, 244, 0.499) !important;',
'}',
'',
'.t-Form-inputContainer input.mostra_foco.popup_lov, ',
'.t-Form-inputContainer input[type=text].mostra_foco, ',
'.t-Form-inputContainer select.mostra_foco,  ',
'.t-Form-inputContainer select.mostra_foco.selectlist {',
'  background-color: rgba(255, 249, 248, 0.24) !important;',
'}',
'',
'  function mudaCor(novaCor) {',
'    var x = document.getElementById(this.id);',
'    x.style.backgroundColor = novaCor;',
'  }',
'',
'  .selecionado {',
'    border: 2px !important;',
'    border-color: rgba(0, 255, 115, 0.527) !important;',
'    border-style: solid !important;',
'    background-color: rgba(0, 255, 98, 0.425) !important;',
'    border-style: solid !important;',
'}',
'/*',
'.selecionado {',
'    background-color: red !important;',
'    border-style: solid !important;',
'}',
'*/'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'GERSON'
,p_last_upd_yyyymmddhh24miss=>'20220601022153'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8905236209179819)
,p_plug_name=>'COLABORADOR'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11734647548398701)
,p_plug_name=>'RESULTADO'
,p_region_css_classes=>'u-color-22'
,p_region_template_options=>'#DEFAULT#:t-Region--accent7:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P21_DT_FIM_AVALIACAO'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(22819783650397112)
,p_name=>unistr('Resumo Resultado Avalia\00E7\00E3o de Desempenho Individual')
,p_template=>wwv_flow_imp.id(4062893845157577)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'u-color-22'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_row_css_classes=>'u-color-22'
,p_grid_column_css_classes=>'u-color-22'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.nm_competencia_area,',
'       i.nm_competencia,',
'       ai.vl_escolha,',
'       (SELECT r.ds_titulo',
'          FROM ad_indicador_resultado r',
'         WHERE r.tp_avaliacao = :P21_TIPO_AVALIACAO',
'           AND ai.vl_escolha BETWEEN r.id_faixa_inicial AND r.id_faixa_final) indicador',
'  FROM ad_competencia a, ad_indicador i, ad_avaliacao_item ai',
' WHERE a.id = i.id_competencia',
'   AND i.tp_avaliacao = :P21_TIPO_AVALIACAO',
'   AND ai.id = :P21_ID',
'   AND ai.id_indicador = i.id',
' ORDER BY i.id_competencia, i.id;'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(4092912290157599)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22820323683397118)
,p_query_column_id=>1
,p_column_alias=>'NM_COMPETENCIA_AREA'
,p_column_display_sequence=>10
,p_column_heading=>unistr('\00C1rea de Compet\00EAncia')
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22820485139397119)
,p_query_column_id=>2
,p_column_alias=>'NM_COMPETENCIA'
,p_column_display_sequence=>20
,p_column_heading=>'Indicador'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22820586107397120)
,p_query_column_id=>3
,p_column_alias=>'VL_ESCOLHA'
,p_column_display_sequence=>30
,p_use_as_row_header=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(22820638084397121)
,p_query_column_id=>4
,p_column_alias=>'INDICADOR'
,p_column_display_sequence=>40
,p_column_heading=>'Conceito'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26764156739682729)
,p_plug_name=>'<strong>&P21_TITULO1.</strong>'
,p_region_css_classes=>'w3-pale-blue '
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4036060997157557)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34795357696067978)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 1')
,p_parent_plug_id=>wwv_flow_imp.id(26764156739682729)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA||'' - ''||a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,1,3,41),''G'',DECODE(a.TP_AVALIACAO,2,21,4,61))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO);     '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13546256764898623)
,p_region_id=>wwv_flow_imp.id(34795357696067978)
,p_layout_type=>'ROW'
,p_card_css_classes=>'w3-light-blue'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34795669847067981)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 1')
,p_region_name=>'pergunta-1'
,p_parent_plug_id=>wwv_flow_imp.id(34795357696067978)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg:margin-left-lg:margin-right-lg'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 conceito',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,1,3,41),''G'',DECODE(a.TP_AVALIACAO,2,21,4,61))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'',
'  union all',
'',
'select a.DS_CONCEITO_2 conceito',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,1,3,41),''G'',DECODE(a.TP_AVALIACAO,2,21,4,61))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 conceito',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,1,3,41),''G'',DECODE(a.TP_AVALIACAO,2,21,4,61))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 conceito',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,1,3,41),''G'',DECODE(a.TP_AVALIACAO,2,21,4,61))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13547020988898624)
,p_region_id=>wwv_flow_imp.id(34795669847067981)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-normal-text u-color-15-border'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(13547566127898624)
,p_card_id=>wwv_flow_imp.id(13547020988898624)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>20
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34796219298067986)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 2')
,p_parent_plug_id=>wwv_flow_imp.id(26764156739682729)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA||'' - ''||a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,2,3,42),''G'',DECODE(a.TP_AVALIACAO,2,22,4,62))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO);     '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13548430736898626)
,p_region_id=>wwv_flow_imp.id(34796219298067986)
,p_layout_type=>'ROW'
,p_card_css_classes=>'w3-light-blue'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34796363973067988)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 2')
,p_region_name=>'pergunta-2'
,p_parent_plug_id=>wwv_flow_imp.id(34796219298067986)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,2,3,42),''G'',DECODE(a.TP_AVALIACAO,2,22,4,62))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,2,3,42),''G'',DECODE(a.TP_AVALIACAO,2,22,4,62))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,2,3,42),''G'',DECODE(a.TP_AVALIACAO,2,22,4,62))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,2,3,42),''G'',DECODE(a.TP_AVALIACAO,2,22,4,62))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13549259923898627)
,p_region_id=>wwv_flow_imp.id(34796363973067988)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-normal-text u-color-15-border'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(13549795113898628)
,p_card_id=>wwv_flow_imp.id(13549259923898627)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34796917172067993)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 3')
,p_parent_plug_id=>wwv_flow_imp.id(26764156739682729)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA||'' - ''||a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,3,3,43),''G'',DECODE(a.TP_AVALIACAO,2,23,4,63))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO);     '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13550662494898628)
,p_region_id=>wwv_flow_imp.id(34796917172067993)
,p_layout_type=>'ROW'
,p_card_css_classes=>'w3-light-blue'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34797083635067995)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 3')
,p_region_name=>'pergunta-3'
,p_parent_plug_id=>wwv_flow_imp.id(34796917172067993)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,3,3,43),''G'',DECODE(a.TP_AVALIACAO,2,23,4,63))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,3,3,43),''G'',DECODE(a.TP_AVALIACAO,2,23,4,63))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,3,3,43),''G'',DECODE(a.TP_AVALIACAO,2,23,4,63))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,3,3,43),''G'',DECODE(a.TP_AVALIACAO,2,23,4,63))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13551468961898629)
,p_region_id=>wwv_flow_imp.id(34797083635067995)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-normal-text u-color-15-border'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(13551988709898630)
,p_card_id=>wwv_flow_imp.id(13551468961898629)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26771762493684230)
,p_plug_name=>'<strong>&P21_TITULO2.</strong>'
,p_region_css_classes=>'w3-pale-yellow  '
,p_region_template_options=>'t-Region--showCarouselControls:i-h320:t-Region--accent1:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4036060997157557)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34872413719341097)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 5')
,p_parent_plug_id=>wwv_flow_imp.id(26771762493684230)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA||'' - ''||a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,5,3,45),''G'',DECODE(a.TP_AVALIACAO,2,25,4,65))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO);     '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13553650355900115)
,p_region_id=>wwv_flow_imp.id(34872413719341097)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-22-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34870282736341075)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 5')
,p_region_name=>'pergunta-5'
,p_parent_plug_id=>wwv_flow_imp.id(34872413719341097)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,5,3,45),''G'',DECODE(a.TP_AVALIACAO,2,25,4,65))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,5,3,45),''G'',DECODE(a.TP_AVALIACAO,2,25,4,65))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,5,3,45),''G'',DECODE(a.TP_AVALIACAO,2,25,4,65))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,5,3,45),''G'',DECODE(a.TP_AVALIACAO,2,25,4,65))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13554426783900116)
,p_region_id=>wwv_flow_imp.id(34870282736341075)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-normal-text u-color-15-border'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(13554923937900116)
,p_card_id=>wwv_flow_imp.id(13554426783900116)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34872612188341099)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 7')
,p_parent_plug_id=>wwv_flow_imp.id(26771762493684230)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA||'' - ''||a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,7,3,47),''G'',DECODE(a.TP_AVALIACAO,2,27,4,67))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO);     '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13555880793900117)
,p_region_id=>wwv_flow_imp.id(34872612188341099)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-22-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34870937985341082)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 7')
,p_region_name=>'pergunta-7'
,p_parent_plug_id=>wwv_flow_imp.id(34872612188341099)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,7,3,47),''G'',DECODE(a.TP_AVALIACAO,2,27,4,67))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,7,3,47),''G'',DECODE(a.TP_AVALIACAO,2,27,4,67))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,7,3,47),''G'',DECODE(a.TP_AVALIACAO,2,27,4,67))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,7,3,47),''G'',DECODE(a.TP_AVALIACAO,2,27,4,67))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13556689247900118)
,p_region_id=>wwv_flow_imp.id(34870937985341082)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-normal-text u-color-15-border'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(13557171728900118)
,p_card_id=>wwv_flow_imp.id(13556689247900118)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34872896906341101)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 9')
,p_parent_plug_id=>wwv_flow_imp.id(26771762493684230)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA||'' - ''||a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,9,3,49),''G'',DECODE(a.TP_AVALIACAO,2,29,4,69))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO);     '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13558082108900119)
,p_region_id=>wwv_flow_imp.id(34872896906341101)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-22-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34871508538341088)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 9')
,p_region_name=>'pergunta-9'
,p_parent_plug_id=>wwv_flow_imp.id(34872896906341101)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,9,3,49),''G'',DECODE(a.TP_AVALIACAO,2,29,4,69))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,9,3,49),''G'',DECODE(a.TP_AVALIACAO,2,29,4,69))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,9,3,49),''G'',DECODE(a.TP_AVALIACAO,2,29,4,69))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,9,3,49),''G'',DECODE(a.TP_AVALIACAO,2,29,4,69))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
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
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13558816555900120)
,p_region_id=>wwv_flow_imp.id(34871508538341088)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-normal-text u-color-15-border'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(13559361205900121)
,p_card_id=>wwv_flow_imp.id(13558816555900120)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34873031675341103)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 6')
,p_parent_plug_id=>wwv_flow_imp.id(26771762493684230)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA||'' - ''||a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,6,3,46),''G'',DECODE(a.TP_AVALIACAO,2,26,4,66))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO);     '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13560289518900121)
,p_region_id=>wwv_flow_imp.id(34873031675341103)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-22-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34870634776341079)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 6')
,p_region_name=>'pergunta-6'
,p_parent_plug_id=>wwv_flow_imp.id(34873031675341103)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,6,3,46),''G'',DECODE(a.TP_AVALIACAO,2,26,4,66))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,6,3,46),''G'',DECODE(a.TP_AVALIACAO,2,26,4,66))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,6,3,46),''G'',DECODE(a.TP_AVALIACAO,2,26,4,66))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,6,3,46),''G'',DECODE(a.TP_AVALIACAO,2,26,4,66))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13561022559900122)
,p_region_id=>wwv_flow_imp.id(34870634776341079)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-normal-text u-color-15-border'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(13561514184900123)
,p_card_id=>wwv_flow_imp.id(13561022559900122)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34873203709341105)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 8')
,p_parent_plug_id=>wwv_flow_imp.id(26771762493684230)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA||'' - ''||a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,8,3,48),''G'',DECODE(a.TP_AVALIACAO,2,28,4,68))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO);     '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13562403751900124)
,p_region_id=>wwv_flow_imp.id(34873203709341105)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-22-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34871273221341085)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 8')
,p_region_name=>'pergunta-8'
,p_parent_plug_id=>wwv_flow_imp.id(34873203709341105)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,8,3,48),''G'',DECODE(a.TP_AVALIACAO,2,28,4,68))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,8,3,48),''G'',DECODE(a.TP_AVALIACAO,2,28,4,68))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,8,3,48),''G'',DECODE(a.TP_AVALIACAO,2,28,4,68))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,8,3,48),''G'',DECODE(a.TP_AVALIACAO,2,28,4,68))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13563254589900125)
,p_region_id=>wwv_flow_imp.id(34871273221341085)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-normal-text u-color-15-border'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(13563732413900125)
,p_card_id=>wwv_flow_imp.id(13563254589900125)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34873472087341107)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 10')
,p_parent_plug_id=>wwv_flow_imp.id(26771762493684230)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA||'' - ''||a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,10,3,50),''G'',DECODE(a.TP_AVALIACAO,2,30,4,70))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO);     '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13564673109900126)
,p_region_id=>wwv_flow_imp.id(34873472087341107)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-22-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34871800612341091)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 10')
,p_region_name=>'pergunta-10'
,p_parent_plug_id=>wwv_flow_imp.id(34873472087341107)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,10,3,50),''G'',DECODE(a.TP_AVALIACAO,2,30,4,70))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,10,3,50),''G'',DECODE(a.TP_AVALIACAO,2,30,4,70))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,10,3,50),''G'',DECODE(a.TP_AVALIACAO,2,30,4,70))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,10,3,50),''G'',DECODE(a.TP_AVALIACAO,2,30,4,70))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13565430135900127)
,p_region_id=>wwv_flow_imp.id(34871800612341091)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-normal-text u-color-15-border'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(13565932419900127)
,p_card_id=>wwv_flow_imp.id(13565430135900127)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34873609636341109)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 11')
,p_parent_plug_id=>wwv_flow_imp.id(26771762493684230)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>120
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA||'' - ''||a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,11,3,51),''G'',DECODE(a.TP_AVALIACAO,2,31,4,71))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO);     '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13566892991900128)
,p_region_id=>wwv_flow_imp.id(34873609636341109)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-22-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(34872108989341094)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 11')
,p_region_name=>'pergunta-11'
,p_parent_plug_id=>wwv_flow_imp.id(34873609636341109)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,11,3,51),''G'',DECODE(a.TP_AVALIACAO,2,31,4,71))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,11,3,51),''G'',DECODE(a.TP_AVALIACAO,2,31,4,71))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,11,3,51),''G'',DECODE(a.TP_AVALIACAO,2,31,4,71))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,11,3,51),''G'',DECODE(a.TP_AVALIACAO,2,31,4,71))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13567692105900129)
,p_region_id=>wwv_flow_imp.id(34872108989341094)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-normal-text u-color-15-border'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(13568112760900129)
,p_card_id=>wwv_flow_imp.id(13567692105900129)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43779982949927312)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 4')
,p_parent_plug_id=>wwv_flow_imp.id(26771762493684230)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA||'' - ''||a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,4,3,44),''G'',DECODE(a.TP_AVALIACAO,2,24,4,64))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO);     ',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13569011365900130)
,p_region_id=>wwv_flow_imp.id(43779982949927312)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-22-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43780295100927315)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 4')
,p_region_name=>'pergunta-4'
,p_parent_plug_id=>wwv_flow_imp.id(43779982949927312)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,4,3,44),''G'',DECODE(a.TP_AVALIACAO,2,24,4,64))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,4,3,44),''G'',DECODE(a.TP_AVALIACAO,2,24,4,64))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,4,3,44),''G'',DECODE(a.TP_AVALIACAO,2,24,4,64))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,4,3,44),''G'',DECODE(a.TP_AVALIACAO,2,24,4,64))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13569844205900131)
,p_region_id=>wwv_flow_imp.id(43780295100927315)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-normal-text u-color-15-border'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(13570399188900132)
,p_card_id=>wwv_flow_imp.id(13569844205900131)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26790327488686386)
,p_plug_name=>'<strong>&P21_TITULO3.</strong>'
,p_region_css_classes=>'w3-light-grey  '
,p_region_template_options=>'t-Region--showCarouselControls:i-h320:t-Region--accent1:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4036060997157557)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43901933766384213)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 13')
,p_parent_plug_id=>wwv_flow_imp.id(26790327488686386)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA||'' - ''||a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,13,3,53),''G'',DECODE(a.TP_AVALIACAO,2,33,4,73))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO);     '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13572120566902271)
,p_region_id=>wwv_flow_imp.id(43901933766384213)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-29-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43899802783384191)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 13')
,p_region_name=>'pergunta-13'
,p_parent_plug_id=>wwv_flow_imp.id(43901933766384213)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,13,3,53),''G'',DECODE(a.TP_AVALIACAO,2,33,4,73))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,13,3,53),''G'',DECODE(a.TP_AVALIACAO,2,33,4,73))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,13,3,53),''G'',DECODE(a.TP_AVALIACAO,2,33,4,73))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,13,3,53),''G'',DECODE(a.TP_AVALIACAO,2,33,4,73))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13572920417902272)
,p_region_id=>wwv_flow_imp.id(43899802783384191)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-normal-text u-color-15-border'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(13573482132902272)
,p_card_id=>wwv_flow_imp.id(13572920417902272)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43902132235384215)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 15')
,p_parent_plug_id=>wwv_flow_imp.id(26790327488686386)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA||'' - ''||a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,15,3,55),''G'',DECODE(a.TP_AVALIACAO,2,35,4,75))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO);     '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13574390224902273)
,p_region_id=>wwv_flow_imp.id(43902132235384215)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-29-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43900458032384198)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 15')
,p_region_name=>'pergunta-15'
,p_parent_plug_id=>wwv_flow_imp.id(43902132235384215)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,15,3,55),''G'',DECODE(a.TP_AVALIACAO,2,35,4,75))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,15,3,55),''G'',DECODE(a.TP_AVALIACAO,2,35,4,75))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,15,3,55),''G'',DECODE(a.TP_AVALIACAO,2,35,4,75))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,15,3,55),''G'',DECODE(a.TP_AVALIACAO,2,35,4,75))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
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
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13575132837902274)
,p_region_id=>wwv_flow_imp.id(43900458032384198)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-normal-text u-color-15-border'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(13575629456902274)
,p_card_id=>wwv_flow_imp.id(13575132837902274)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43902551722384219)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 14')
,p_parent_plug_id=>wwv_flow_imp.id(26790327488686386)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA||'' - ''||a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,14,3,54),''G'',DECODE(a.TP_AVALIACAO,2,34,4,74))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO);     '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13576919376902276)
,p_region_id=>wwv_flow_imp.id(43902551722384219)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-29-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(43900154823384195)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 14')
,p_region_name=>'pergunta-14'
,p_parent_plug_id=>wwv_flow_imp.id(43902551722384219)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,14,3,54),''G'',DECODE(a.TP_AVALIACAO,2,34,4,74))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,14,3,54),''G'',DECODE(a.TP_AVALIACAO,2,34,4,74))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,14,3,54),''G'',DECODE(a.TP_AVALIACAO,2,34,4,74))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,14,3,54),''G'',DECODE(a.TP_AVALIACAO,2,34,4,74))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13577793729902277)
,p_region_id=>wwv_flow_imp.id(43900154823384195)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-normal-text u-color-15-border'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(13578261013902278)
,p_card_id=>wwv_flow_imp.id(13577793729902277)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52809502996970428)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 12')
,p_parent_plug_id=>wwv_flow_imp.id(26790327488686386)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA||'' - ''||a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,12,3,52),''G'',DECODE(a.TP_AVALIACAO,2,32,4,72))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO);     '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13579152682902278)
,p_region_id=>wwv_flow_imp.id(52809502996970428)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-29-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(52809815147970431)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 12')
,p_region_name=>'pergunta-12'
,p_parent_plug_id=>wwv_flow_imp.id(52809502996970428)
,p_region_template_options=>'#DEFAULT#:margin-top-lg:margin-bottom-lg:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,12,3,52),''G'',DECODE(a.TP_AVALIACAO,2,32,4,72))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,12,3,52),''G'',DECODE(a.TP_AVALIACAO,2,32,4,72))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,12,3,52),''G'',DECODE(a.TP_AVALIACAO,2,32,4,72))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P21_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,12,3,52),''G'',DECODE(a.TP_AVALIACAO,2,32,4,72))',
'  and a.TP_AVALIACAO = decode(:P21_TIPO_AVALIACAO,5,2,:P21_TIPO_AVALIACAO)',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13579988647902279)
,p_region_id=>wwv_flow_imp.id(52809815147970431)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-normal-text u-color-15-border'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(13580473044902280)
,p_card_id=>wwv_flow_imp.id(13579988647902279)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10525432174433011)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_button_name=>'VOLTAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(4128014990157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Voltar'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:21:P21_ID:&P21_ID.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10525312878433010)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_button_name=>'BTN-SALVAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(4128014990157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('if (:P21_PROTEGE_AVALIACAO = ''N\00C3O'' OR :P21_DT_FEEDBACK is null) and :GL_PERFIL IN (1,2,4,5,6)  THEN'),
'   return true;',
'else',
'   return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11627311782379201)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_button_name=>'BTN-FINALIZAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(4128014990157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finalizar'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('if :P21_PROTEGE_AVALIACAO = ''N\00C3O'' and :P21_QTD_RESPOSTAS = 15 THEN'),
'   return true;',
'else',
'   return false;',
'end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(39027865448284401)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_button_name=>'BTN-VOLTAR-MENU-AVALIACAO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Menu Avalia\00E7\00F5es')
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::P19_ITEM_MENU:AV_DESEMPENHO_CELOS_PERFIL_GERENTE'
,p_button_condition=>'GL_PERFIL'
,p_button_condition2=>'2:5:6'
,p_button_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10023862173834704)
,p_name=>'P21_ID_COLABORADOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_prompt=>'Nome do Colaborador:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_USUARIO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_display_when=>'P21_TIPO_AVALIACAO'
,p_display_when2=>'5'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(4125246033157626)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10023997572834705)
,p_name=>'P21_ID_COLABORADOR_AVALIADOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_prompt=>'Avaliador:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.nome  d,',
'       a.colaborador_id r',
'  FROM hp_colaboradores a,',
'       pcr_cargo c_diretoria',
' WHERE a.colaborador_id = :P21_ID_COLABORADOR_AVALIADOR',
'   AND a.id_cargo = c_diretoria.id_cargo;',
'',
'',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_display_when=>'P21_TIPO_AVALIACAO'
,p_display_when2=>'5'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(4125246033157626)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10524843913433005)
,p_name=>'P21_DT_FIM_AVALIACAO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_prompt=>'Data:'
,p_format_mask=>'dd/mm/yyyy'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(4125246033157626)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10524908873433006)
,p_name=>'P21_FEEDBACK_REALIZADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_item_default=>'null;'
,p_prompt=>'Feedback Realizado:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:SIM;1,N\00C3O;0')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_display_when=>'P21_TIPO_AVALIACAO'
,p_display_when2=>'5'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_read_only_when=>'P21_FEEDBACK_REALIZADO'
,p_read_only_when2=>'1'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(4125570846157626)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10525007344433007)
,p_name=>'P21_DT_FEEDBACK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_prompt=>'Data Feedback:'
,p_format_mask=>'dd/mm/yyyy'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'''formataData(this,event)'' onkeyup=''formataData(this,event)'''
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_display_when=>'P21_TIPO_AVALIACAO'
,p_display_when2=>'5'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(4125246033157626)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10525134434433008)
,p_name=>'P21_OBSERVACAO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_prompt=>unistr('Observa\00E7\00F5es:')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>4000
,p_cHeight=>5
,p_colspan=>9
,p_grid_label_column_span=>2
,p_read_only_when=>'P21_FEEDBACK_REALIZADO'
,p_read_only_when2=>'1'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(4125246033157626)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10525274270433009)
,p_name=>'P21_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10921803863014525)
,p_name=>'P21_ID_GERENTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11117946411176417)
,p_name=>'P21_RESPOSTAS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11304612115585704)
,p_name=>'P21_SOMA_TOTAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11304983524585707)
,p_name=>'P21_TIPO_AVALIACAO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_prompt=>unistr('Tipo Avalia\00E7\00E3o:')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_TIPO_AVALIACAO'
,p_lov=>'.'||wwv_flow_imp.id(10520949551408352)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(4125246033157626)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11627531084379203)
,p_name=>'P21_QTD_RESPOSTAS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11734828200398703)
,p_name=>'P21_TITULO_RESULTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11734647548398701)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>' u-bold u-color-22'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(4125486867157626)
,p_item_css_classes=>'apex_disabled'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11734979501398704)
,p_name=>'P21_DESCRICAO_RESULTADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11734647548398701)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cHeight=>4
,p_tag_css_classes=>' u-bold  u-color-22'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'u-color-22-border'
,p_field_template=>wwv_flow_imp.id(4125486867157626)
,p_item_css_classes=>'apex_disabled'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14226874970431902)
,p_name=>'P21_PERFIL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14240238907958501)
,p_name=>'P21_PROTEGE_AVALIACAO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15250214220172711)
,p_name=>'P21_TITULO1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15250580076172714)
,p_name=>'P21_TITULO2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15250631087172715)
,p_name=>'P21_TITULO3'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15250973455172718)
,p_name=>'P21_MSG_ERRO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18802533000453613)
,p_name=>'P21_DT_GERACAO_AVALIACAO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22218951375373609)
,p_name=>'P21_PERIODO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8905236209179819)
,p_prompt=>'Periodo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4125246033157626)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(11627491234379202)
,p_validation_name=>'verifica_se_respondeu_tudo'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    --',
'    if :P21_QTD_RESPOSTAS < 15 AND :REQUEST = ''BTN-FINALIZAR'' then',
'        :P21_MSG_ERRO := ''Favor responder todas as perguntas antes de finalizar'';',
'        return false;',
'    else',
'        return true;',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&P21_MSG_ERRO.',
''))
,p_validation_condition=>'BTN-FINALIZAR, BTN-SALVAR, BTN-SALVAR-2'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(15251025459172719)
,p_validation_name=>'verifica_se_preencheu_feedback'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    --',
'    if :REQUEST = ''BTN-FINALIZAR'' and :P21_FEEDBACK_REALIZADO != 1 and :GL_ID_USUARIO = :P21_ID_COLABORADOR then',
'       :P21_MSG_ERRO := ''Favor preencher o feedback!'';',
'       return false;',
'    else',
'       return true;',
'    end if;      ',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&P21_MSG_ERRO.',
''))
,p_validation_condition=>'BTN-FINALIZAR, BTN-SALVAR, BTN-SALVAR-2'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(38923487217906601)
,p_validation_name=>'verifica_se_respondeu_tudo_para_feedback'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    --',
'    if :P21_QTD_RESPOSTAS < 15 AND  :P21_FEEDBACK_REALIZADO = 1 then',
'        :P21_MSG_ERRO := ''Favor responder todas as perguntas antes de atualizar o feedback'';',
'        return false;',
'    else',
'        return true;',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&P21_MSG_ERRO.',
''))
,p_validation_condition=>'BTN-FINALIZAR, BTN-SALVAR, BTN-SALVAR-2'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10117973624585718)
,p_name=>'mostra_foco'
,p_event_sequence=>5
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.a-CardView-item'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10118092194585719)
,p_event_id=>wwv_flow_imp.id(10117973624585718)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'EVENT_SOURCE'
,p_attribute_01=>'mostra_foco'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10117705988585716)
,p_name=>'retira_foco'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.a-CardView-item'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10117854101585717)
,p_event_id=>wwv_flow_imp.id(10117705988585716)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'EVENT_SOURCE'
,p_attribute_01=>'mostra_foco'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(10919448755014501)
,p_name=>'altera_data'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P21_FEEDBACK_REALIZADO'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10919511857014502)
,p_event_id=>wwv_flow_imp.id(10919448755014501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_DT_FEEDBACK'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(sysdate,''dd/mm/yyyy'')',
'from dual'))
,p_attribute_07=>'P21_DT_FEEDBACK'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P21_FEEDBACK_REALIZADO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11117260146176410)
,p_event_id=>wwv_flow_imp.id(10919448755014501)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_DT_FEEDBACK'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P21_FEEDBACK_REALIZADO'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(10920944341014516)
,p_event_id=>wwv_flow_imp.id(10919448755014501)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_DT_FEEDBACK'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11117787313176415)
,p_name=>'clica-pergunta-1'
,p_event_sequence=>320
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.a-CardView-item'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11117800632176416)
,p_event_id=>wwv_flow_imp.id(11117787313176415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (! $(this.triggeringElement).closest(''.t-CardsRegion'').hasClass (''card-pergunta'')   ) {',
'    var pergunta = $(this.triggeringElement).closest(''.t-CardsRegion'').attr(''id'');',
'    var resposta = $(this.triggeringElement).attr(''data-id'');',
'    var listaResposta = "";',
'',
'    perguntas[pergunta] = resposta;',
'',
'    for (i in perguntas) { ',
'    listaResposta +=  i + "=" + perguntas[i] + ":";',
'    }',
'    $s(''P21_RESPOSTAS'', listaResposta);',
'',
'    /*$(this.triggeringElement).closest(''.t-CardsRegion'').find(''.selecionado'').removeClass(''selecionado'');',
'    $(this.triggeringElement).addClass(''selecionado'');*/',
'',
'    $(this.triggeringElement).closest(''.t-CardsRegion'').find(''.selecionado'').removeClass(''selecionado'');',
'    $(this.triggeringElement).find(''.a-CardView'').addClass(''selecionado'');',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11304753010585705)
,p_name=>'Carrega_respostas'
,p_event_sequence=>330
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11304830551585706)
,p_event_id=>wwv_flow_imp.id(11304753010585705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var respostas = $v(''P21_RESPOSTAS'');',
'var arrayResposta = respostas.split('':'');',
'',
'for ( i of arrayResposta ){',
'   if (i != "") {',
'        var parts = i.split("=");',
'        $(''.t-CardsRegion#''+ parts[0]).find(''.a-CardView-item[data-id="''+ parts[1] +''"] .a-CardView'').addClass(''selecionado''); ',
'   }  ',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11628344251379211)
,p_name=>'habilita_desabilita_perguntas'
,p_event_sequence=>340
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11628457772379212)
,p_event_id=>wwv_flow_imp.id(11628344251379211)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.a-CardView-item'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P21_PROTEGE_AVALIACAO'
,p_client_condition_expression=>'SIM'
,p_security_scheme=>'!'||wwv_flow_imp.id(14238955069827414)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14226932749431903)
,p_event_id=>wwv_flow_imp.id(11628344251379211)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.a-CardView-item'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P21_DT_FIM_AVALIACAO'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11628731374379215)
,p_name=>'habilita_desabilita_avaliacao'
,p_event_sequence=>350
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11628802610379216)
,p_event_id=>wwv_flow_imp.id(11628731374379215)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P21_FEEDBACK_REALIZADO,P21_OBSERVACAO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P21_FEEDBACK_REALIZADO'
,p_client_condition_expression=>'SIM'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11735037835398705)
,p_name=>'busca_descricao_resultado'
,p_event_sequence=>360
,p_condition_element=>'P21_DT_FIM_AVALIACAO'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11735147271398706)
,p_event_id=>wwv_flow_imp.id(11735037835398705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  IF :P21_SOMA_TOTAL > 40 THEN',
'     :P21_SOMA_TOTAL := 40;',
'  END IF;',
'  --',
'  pck_ad.busca_descricao_resultado(:P21_TIPO_AVALIACAO,:P21_SOMA_TOTAL, :P21_TITULO_RESULTADO, :P21_DESCRICAO_RESULTADO);',
'end;'))
,p_attribute_02=>'P21_SOMA_TOTAL,P21_TIPO_AVALIACAO'
,p_attribute_03=>'P21_TITULO_RESULTADO,P21_DESCRICAO_RESULTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P21_DT_FIM_AVALIACAO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10524717505433004)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARREGA_DADOS_AVALIACAO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':p21_perfil := :gl_perfil;',
'',
unistr('-- CARREGA DADOS AD_AVALIA\00C7\00C3O --'),
'select A.ID_COLABORADOR,',
'       A.ID_COLABORADOR_AVALIADOR,',
'       A.DT_FIM_AVALIACAO,',
'       A.TP_AVALIACAO,',
'       DECODE(A.DT_FEEDBACK,NULL,0,1) FEEDBACK_REALIZADO,',
'       A.DT_FEEDBACK,',
'       A.OBSERVACAO, ',
'       A.DT_GERACAO_AVALIACAO,',
'       ''JAN/DEZ ''||TO_CHAR(A.DT_GERACAO_AVALIACAO,''YYYY'')',
'into :P21_ID_COLABORADOR,',
'     :P21_ID_COLABORADOR_AVALIADOR,',
'     :P21_DT_FIM_AVALIACAO,',
'     :P21_TIPO_AVALIACAO,',
'     :P21_FEEDBACK_REALIZADO,',
'     :P21_DT_FEEDBACK,',
'     :P21_OBSERVACAO,',
'     :P21_DT_GERACAO_AVALIACAO,',
'     :P21_PERIODO',
'from AD_AVALIACAO A',
'where A.ID = :P21_ID; ',
'--',
'-- IDENTIFICA SE EH GERENTE --',
'SELECT A.ID_GERENTE',
'  INTO :P21_ID_GERENTE',
'  FROM v_ad_dados_usuarios a',
' WHERE a.colaborador_id = :P21_ID_COLABORADOR;',
'',
'-- CARREGA DADOS AD_AVALIACAO_ITEM --',
'',
'SELECT listagg(''pergunta-''||ai.id_indicador || ''='' || (ai.nr_escolha - 1), '':'') within GROUP(ORDER BY ai.id_indicador) ',
'into :P21_RESPOSTAS',
'  FROM ad_avaliacao_item ai',
' WHERE ai.id = :P21_ID',
' ORDER BY ai.id_indicador;',
'',
unistr('-- carrega a pontua\00E7\00E3o total --'),
'select nvl(sum(ai.vl_escolha),0) ',
'into :p21_soma_total ',
'from ad_avaliacao_item ai',
'    where ai.id = :p21_id; ',
'',
'-- quantidade respostas preenchidas --',
'select nvl(count(1),0)',
'into :P21_QTD_RESPOSTAS ',
'from ad_avaliacao_item ai',
'    where ai.id = :p21_id',
'      and nvl(ai.nr_escolha,0) > 0; ',
'',
unistr('-- verifica se bloqueia a pagina ou n\00E3o conforme o perfil --'),
':P21_PROTEGE_AVALIACAO := ''SIM'';',
'--',
'',
'if ((:P21_ID_GERENTE = 0 and  :P21_PERFIL IN(2,6) and  :P21_ID_COLABORADOR_AVALIADOR = :GL_ID_USUARIO) or    -- colaborador sendo avaliado pelo gerente --',
'    (:P21_ID_GERENTE = 1 and  :P21_PERFIL = 4 and :P21_ID_COLABORADOR_AVALIADOR = :GL_ID_USUARIO) OR   -- gerente sendo avaliado pela DEX --',
'    (:P21_ID_GERENTE = 0 and  :P21_PERFIL = 4 and  pck_ad.FNC_BUSCA_ID_GERENTE_COLAB(:P21_ID_COLABORADOR) = :GL_ID_USUARIO))      -- ouvidor e auditor --',
'  and (:P21_DT_FIM_AVALIACAO is null) THEN',
'  --and ((:P21_DT_GERACAO_AVALIACAO BETWEEN TRUNC(TO_DATE(''01/11/''||TO_CHAR(SYSDATE,''YYYY'')),''mm'') AND LAST_DAY(''01/01/''||(TO_CHAR(SYSDATE,''YYYY'')+1))) or  ',
'  --     (:P21_DT_GERACAO_AVALIACAO BETWEEN TRUNC(TO_DATE(''01/11/''||(TO_CHAR(SYSDATE,''YYYY'')-1)),''mm'') AND LAST_DAY(''01/01/''||TO_CHAR(SYSDATE,''YYYY'')))) then  ',
unistr('   :P21_PROTEGE_AVALIACAO := ''N\00C3O'';'),
'end if;',
'',
'-- carrega titulos --',
'select UPPER(c.NM_COMPETENCIA_AREA) || '' - ''  ||c.DS_COMPETENCIA ',
'  into :P21_TITULO1',
'  from AD_COMPETENCIA c',
'  where c.ID = 1;',
'',
'  select UPPER(c.NM_COMPETENCIA_AREA) || '' - ''  ||c.DS_COMPETENCIA ',
'  into :P21_TITULO2',
'  from AD_COMPETENCIA c',
'  where c.ID = 2;',
'',
'select UPPER(c.NM_COMPETENCIA_AREA) || '' - ''  ||c.DS_COMPETENCIA ',
'  into :P21_TITULO3',
'  from AD_COMPETENCIA c',
'  where c.ID = 3;',
unistr('--:P21_PROTEGE_AVALIACAO := ''N\00C3O''; -- TESTE GERSON TCC --'),
''))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10525595026433012)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ATUALIZA AD_AVALIACAO_E_ITENS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
' cursor c1 is',
'    SELECT REPLACE(regexp_substr(column_value, ''[^=]+'', 1, 1), ''pergunta-'', '''') id_indicador,',
'        regexp_substr(column_value, ''[^=]+'', 1, 2) nr_escolha',
'    FROM apex_string.split(rtrim(:P21_RESPOSTAS, '':''), '':'')',
'    order by 1;',
' r1 c1%ROWTYPE;',
'',
'begin',
unistr('    :P21_MSG_ERRO := ''Avalia\00E7\00E3o atualizada com sucesso!'';'),
unistr('    -- atualiza dados da avalia\00E7\00E3o (AD_AVALIACAO)--'),
'    update ad_avaliacao',
'    set dt_feedback = DECODE(:P21_FEEDBACK_REALIZADO,1, SYSDATE,NULL),',
'        observacao = :P21_OBSERVACAO',
'    where id = :P21_ID ;',
'',
unistr('    IF :P21_PROTEGE_AVALIACAO = ''N\00C3O'' THEN'),
unistr('        -- atualiza pontua\00E7\00F5es da avalia\00E7\00E3o (AD_AVALIACAO_ITEM) --'),
'        OPEN c1;',
'        FETCH c1 INTO r1;',
'        --',
'        WHILE c1%FOUND LOOP',
'            UPDATE ad_avaliacao_item ai',
'                SET nr_escolha = r1.nr_escolha + 1,',
'                    vl_escolha = (SELECT decode(r1.nr_escolha, 0, ac.vl_conceito_1, ',
'                                                            1, ac.vl_conceito_2, ',
'                                                            2, ac.vl_conceito_3, ',
'                                                            3, ac.vl_conceito_4, 0) vl_escolha',
'                                    FROM ad_competencia ac',
'                                    WHERE CASE',
'                                            WHEN r1.id_indicador BETWEEN 1 AND 3 THEN',
'                                            1',
'                                            WHEN r1.id_indicador BETWEEN 4 AND 11 THEN',
'                                            2',
'                                            WHEN r1.id_indicador BETWEEN 12 AND 15 THEN',
'                                            3',
'                                        END = ac.id)',
'            WHERE ai.id = :p21_id',
'            AND ai.id_indicador = r1.id_indicador;',
'            --',
'            FETCH c1 INTO r1;',
'            --',
'        END LOOP;',
'        CLOSE c1;',
'    END IF;',
'    --',
unistr('    -- atualiza a soma total das op\00E7\00F5es escolhidas --'),
'    select nvl(sum(ai.vl_escolha),0) ',
'    into :p21_soma_total ',
'    from ad_avaliacao_item ai',
'     where ai.id = :p21_id;    ',
'',
unistr('    -- atualiza a soma total das op\00E7\00F5es escolhidas --'),
'    select nvl(count(1),0) ',
'    into :P21_QTD_RESPOSTAS ',
'    from ad_avaliacao_item ai',
'     where ai.id = :p21_id',
'       and nvl(ai.nr_escolha,0) > 0;',
'    --',
'    if :P21_QTD_RESPOSTAS = 15 and :REQUEST = ''BTN-FINALIZAR'' then',
unistr('    -- finaliza a avalia\00E7\00E3o --'),
'        update ad_avaliacao',
'        set dt_fim_avaliacao = sysdate',
'        where id = :P21_ID ;    ',
'        --',
'        :P21_DT_FIM_AVALIACAO := sysdate;',
'        --',
'    end if;',
'    --',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#SQLERRM#',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'BTN-SALVAR;BTN-SALVAR-2;BTN-FINALIZAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'&P21_MSG_ERRO.'
);
wwv_flow_imp.component_end;
end;
/
