prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>unistr('Autoavalia\00E7\00E3o')
,p_alias=>unistr('AUTOAVALIA\00C7\00C3O')
,p_step_title=>unistr('Autoavalia\00E7\00E3o')
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
'    border-color: rgb(0, 255, 106) !important;',
'    border-style: solid !important;',
'    background-color: rgba(0, 255, 115, 0.308) !important;',
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
,p_last_upd_yyyymmddhh24miss=>'20220601021630'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13219046451784116)
,p_plug_name=>'<strong>&P25_TITULO1.</strong>'
,p_region_css_classes=>'w3-pale-blue h420'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4036060997157557)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21250247408169365)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 1')
,p_parent_plug_id=>wwv_flow_imp.id(13219046451784116)
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
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,1,3,41),''G'',DECODE(a.TP_AVALIACAO,2,21,4,61))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO;     '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12382318342989636)
,p_region_id=>wwv_flow_imp.id(21250247408169365)
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
 p_id=>wwv_flow_imp.id(21250559559169368)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 1')
,p_region_name=>'pergunta-1'
,p_parent_plug_id=>wwv_flow_imp.id(21250247408169365)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 conceito',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,1,3,41),''G'',DECODE(a.TP_AVALIACAO,2,21,4,61))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'',
'  union all',
'',
'select a.DS_CONCEITO_2 conceito',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,1,3,41),''G'',DECODE(a.TP_AVALIACAO,2,21,4,61))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 conceito',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,1,3,41),''G'',DECODE(a.TP_AVALIACAO,2,21,4,61))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 conceito',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,1,3,41),''G'',DECODE(a.TP_AVALIACAO,2,21,4,61))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12383115930989637)
,p_region_id=>wwv_flow_imp.id(21250559559169368)
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
 p_id=>wwv_flow_imp.id(12383641417989637)
,p_card_id=>wwv_flow_imp.id(12383115930989637)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>20
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21251109010169373)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 2')
,p_parent_plug_id=>wwv_flow_imp.id(13219046451784116)
,p_region_css_classes=>'card-pergunta '
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA||'' - ''||a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,2,3,42),''G'',DECODE(a.TP_AVALIACAO,2,22,4,62))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12384587091989638)
,p_region_id=>wwv_flow_imp.id(21251109010169373)
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
 p_id=>wwv_flow_imp.id(21251253685169375)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 2')
,p_region_name=>'pergunta-2'
,p_parent_plug_id=>wwv_flow_imp.id(21251109010169373)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,2,3,42),''G'',DECODE(a.TP_AVALIACAO,2,22,4,62))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,2,3,42),''G'',DECODE(a.TP_AVALIACAO,2,22,4,62))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,2,3,42),''G'',DECODE(a.TP_AVALIACAO,2,22,4,62))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,2,3,42),''G'',DECODE(a.TP_AVALIACAO,2,22,4,62))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12385390713989639)
,p_region_id=>wwv_flow_imp.id(21251253685169375)
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
 p_id=>wwv_flow_imp.id(12385886902989640)
,p_card_id=>wwv_flow_imp.id(12385390713989639)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21251806884169380)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 3')
,p_parent_plug_id=>wwv_flow_imp.id(13219046451784116)
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
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,3,3,43),''G'',DECODE(a.TP_AVALIACAO,2,23,4,63))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12386731828989641)
,p_region_id=>wwv_flow_imp.id(21251806884169380)
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
 p_id=>wwv_flow_imp.id(21251973347169382)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 3')
,p_region_name=>'pergunta-3'
,p_parent_plug_id=>wwv_flow_imp.id(21251806884169380)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,3,3,43),''G'',DECODE(a.TP_AVALIACAO,2,23,4,63))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,3,3,43),''G'',DECODE(a.TP_AVALIACAO,2,23,4,63))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,3,3,43),''G'',DECODE(a.TP_AVALIACAO,2,23,4,63))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,3,3,43),''G'',DECODE(a.TP_AVALIACAO,2,23,4,63))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12387507072989642)
,p_region_id=>wwv_flow_imp.id(21251973347169382)
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
 p_id=>wwv_flow_imp.id(12388023075989642)
,p_card_id=>wwv_flow_imp.id(12387507072989642)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13219178263784117)
,p_plug_name=>'<strong>&P25_TITULO2.</strong>'
,p_region_css_classes=>'w3-pale-yellow h420'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4036060997157557)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21319829489440984)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 5')
,p_parent_plug_id=>wwv_flow_imp.id(13219178263784117)
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
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,5,3,45),''G'',DECODE(a.TP_AVALIACAO,2,25,4,65))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12349857925989600)
,p_region_id=>wwv_flow_imp.id(21319829489440984)
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
 p_id=>wwv_flow_imp.id(21317698506440962)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 5')
,p_region_name=>'pergunta-5'
,p_parent_plug_id=>wwv_flow_imp.id(21319829489440984)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,5,3,45),''G'',DECODE(a.TP_AVALIACAO,2,25,4,65))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,5,3,45),''G'',DECODE(a.TP_AVALIACAO,2,25,4,65))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,5,3,45),''G'',DECODE(a.TP_AVALIACAO,2,25,4,65))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,5,3,45),''G'',DECODE(a.TP_AVALIACAO,2,25,4,65))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12350694444989601)
,p_region_id=>wwv_flow_imp.id(21317698506440962)
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
 p_id=>wwv_flow_imp.id(12351144431989601)
,p_card_id=>wwv_flow_imp.id(12350694444989601)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21320027958440986)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 7')
,p_parent_plug_id=>wwv_flow_imp.id(13219178263784117)
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
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,7,3,47),''G'',DECODE(a.TP_AVALIACAO,2,27,4,67))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12352000147989602)
,p_region_id=>wwv_flow_imp.id(21320027958440986)
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
 p_id=>wwv_flow_imp.id(21318353755440969)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 7')
,p_region_name=>'pergunta-7'
,p_parent_plug_id=>wwv_flow_imp.id(21320027958440986)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,7,3,47),''G'',DECODE(a.TP_AVALIACAO,2,27,4,67))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,7,3,47),''G'',DECODE(a.TP_AVALIACAO,2,27,4,67))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,7,3,47),''G'',DECODE(a.TP_AVALIACAO,2,27,4,67))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,7,3,47),''G'',DECODE(a.TP_AVALIACAO,2,27,4,67))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12352884880989603)
,p_region_id=>wwv_flow_imp.id(21318353755440969)
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
 p_id=>wwv_flow_imp.id(12353307136989604)
,p_card_id=>wwv_flow_imp.id(12352884880989603)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21320312676440988)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 9')
,p_parent_plug_id=>wwv_flow_imp.id(13219178263784117)
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
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,9,3,49),''G'',DECODE(a.TP_AVALIACAO,2,29,4,69))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12354279535989605)
,p_region_id=>wwv_flow_imp.id(21320312676440988)
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
 p_id=>wwv_flow_imp.id(21318924308440975)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 9')
,p_region_name=>'pergunta-9'
,p_parent_plug_id=>wwv_flow_imp.id(21320312676440988)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,9,3,49),''G'',DECODE(a.TP_AVALIACAO,2,29,4,69))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,9,3,49),''G'',DECODE(a.TP_AVALIACAO,2,29,4,69))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,9,3,49),''G'',DECODE(a.TP_AVALIACAO,2,29,4,69))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,9,3,49),''G'',DECODE(a.TP_AVALIACAO,2,29,4,69))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12355044086989606)
,p_region_id=>wwv_flow_imp.id(21318924308440975)
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
 p_id=>wwv_flow_imp.id(12355565898989606)
,p_card_id=>wwv_flow_imp.id(12355044086989606)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21320447445440990)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 6')
,p_parent_plug_id=>wwv_flow_imp.id(13219178263784117)
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
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,6,3,46),''G'',DECODE(a.TP_AVALIACAO,2,26,4,66))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12356491696989607)
,p_region_id=>wwv_flow_imp.id(21320447445440990)
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
 p_id=>wwv_flow_imp.id(21318050546440966)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 6')
,p_region_name=>'pergunta-6'
,p_parent_plug_id=>wwv_flow_imp.id(21320447445440990)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,6,3,46),''G'',DECODE(a.TP_AVALIACAO,2,26,4,66))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,6,3,46),''G'',DECODE(a.TP_AVALIACAO,2,26,4,66))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,6,3,46),''G'',DECODE(a.TP_AVALIACAO,2,26,4,66))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,6,3,46),''G'',DECODE(a.TP_AVALIACAO,2,26,4,66))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
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
 p_id=>wwv_flow_imp.id(12357267756989608)
,p_region_id=>wwv_flow_imp.id(21318050546440966)
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
 p_id=>wwv_flow_imp.id(12357779266989608)
,p_card_id=>wwv_flow_imp.id(12357267756989608)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21320619479440992)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 8')
,p_parent_plug_id=>wwv_flow_imp.id(13219178263784117)
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
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,8,3,48),''G'',DECODE(a.TP_AVALIACAO,2,28,4,68))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12358671610989609)
,p_region_id=>wwv_flow_imp.id(21320619479440992)
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
 p_id=>wwv_flow_imp.id(21318688991440972)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 8')
,p_region_name=>'pergunta-8'
,p_parent_plug_id=>wwv_flow_imp.id(21320619479440992)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,8,3,48),''G'',DECODE(a.TP_AVALIACAO,2,28,4,68))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,8,3,48),''G'',DECODE(a.TP_AVALIACAO,2,28,4,68))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,8,3,48),''G'',DECODE(a.TP_AVALIACAO,2,28,4,68))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,8,3,48),''G'',DECODE(a.TP_AVALIACAO,2,28,4,68))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12359404818989610)
,p_region_id=>wwv_flow_imp.id(21318688991440972)
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
 p_id=>wwv_flow_imp.id(12359994425989610)
,p_card_id=>wwv_flow_imp.id(12359404818989610)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21320887857440994)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 10')
,p_parent_plug_id=>wwv_flow_imp.id(13219178263784117)
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
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,10,3,50),''G'',DECODE(a.TP_AVALIACAO,2,30,4,70))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12360813241989611)
,p_region_id=>wwv_flow_imp.id(21320887857440994)
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
 p_id=>wwv_flow_imp.id(21319216382440978)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 10')
,p_region_name=>'pergunta-10'
,p_parent_plug_id=>wwv_flow_imp.id(21320887857440994)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,10,3,50),''G'',DECODE(a.TP_AVALIACAO,2,30,4,70))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,10,3,50),''G'',DECODE(a.TP_AVALIACAO,2,30,4,70))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,10,3,50),''G'',DECODE(a.TP_AVALIACAO,2,30,4,70))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,10,3,50),''G'',DECODE(a.TP_AVALIACAO,2,30,4,70))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12361627820989612)
,p_region_id=>wwv_flow_imp.id(21319216382440978)
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
 p_id=>wwv_flow_imp.id(12362159902989613)
,p_card_id=>wwv_flow_imp.id(12361627820989612)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21321025406440996)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 11')
,p_parent_plug_id=>wwv_flow_imp.id(13219178263784117)
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
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,11,3,51),''G'',DECODE(a.TP_AVALIACAO,2,31,4,71))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12363004573989614)
,p_region_id=>wwv_flow_imp.id(21321025406440996)
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
 p_id=>wwv_flow_imp.id(21319524759440981)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 11')
,p_region_name=>'pergunta-11'
,p_parent_plug_id=>wwv_flow_imp.id(21321025406440996)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,11,3,51),''G'',DECODE(a.TP_AVALIACAO,2,31,4,71))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,11,3,51),''G'',DECODE(a.TP_AVALIACAO,2,31,4,71))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,11,3,51),''G'',DECODE(a.TP_AVALIACAO,2,31,4,71))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,11,3,51),''G'',DECODE(a.TP_AVALIACAO,2,31,4,71))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12363815527989614)
,p_region_id=>wwv_flow_imp.id(21319524759440981)
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
 p_id=>wwv_flow_imp.id(12364356483989615)
,p_card_id=>wwv_flow_imp.id(12363815527989614)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30227398720027199)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 4')
,p_parent_plug_id=>wwv_flow_imp.id(13219178263784117)
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
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,4,3,44),''G'',DECODE(a.TP_AVALIACAO,2,24,4,64))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12347683077989597)
,p_region_id=>wwv_flow_imp.id(30227398720027199)
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
 p_id=>wwv_flow_imp.id(30227710871027202)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 4')
,p_region_name=>'pergunta-4'
,p_parent_plug_id=>wwv_flow_imp.id(30227398720027199)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,4,3,44),''G'',DECODE(a.TP_AVALIACAO,2,24,4,64))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,4,3,44),''G'',DECODE(a.TP_AVALIACAO,2,24,4,64))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,4,3,44),''G'',DECODE(a.TP_AVALIACAO,2,24,4,64))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,4,3,44),''G'',DECODE(a.TP_AVALIACAO,2,24,4,64))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12348408611989598)
,p_region_id=>wwv_flow_imp.id(30227710871027202)
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
 p_id=>wwv_flow_imp.id(12348987514989598)
,p_card_id=>wwv_flow_imp.id(12348408611989598)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13219269537784118)
,p_plug_name=>'<strong>&P25_TITULO3.</strong>'
,p_region_css_classes=>'w3-light-grey h425'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4036060997157557)
,p_plug_display_sequence=>29
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30330875815481945)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 13')
,p_parent_plug_id=>wwv_flow_imp.id(13219269537784118)
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
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,13,3,53),''G'',DECODE(a.TP_AVALIACAO,2,33,4,73))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12374547816989628)
,p_region_id=>wwv_flow_imp.id(30330875815481945)
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
 p_id=>wwv_flow_imp.id(30328744832481923)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 13')
,p_region_name=>'pergunta-13'
,p_parent_plug_id=>wwv_flow_imp.id(30330875815481945)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,13,3,53),''G'',DECODE(a.TP_AVALIACAO,2,33,4,73))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,13,3,53),''G'',DECODE(a.TP_AVALIACAO,2,33,4,73))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,13,3,53),''G'',DECODE(a.TP_AVALIACAO,2,33,4,73))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,13,3,53),''G'',DECODE(a.TP_AVALIACAO,2,33,4,73))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12375308168989629)
,p_region_id=>wwv_flow_imp.id(30328744832481923)
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
 p_id=>wwv_flow_imp.id(12375884875989629)
,p_card_id=>wwv_flow_imp.id(12375308168989629)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30331074284481947)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 15')
,p_parent_plug_id=>wwv_flow_imp.id(13219269537784118)
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
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,15,3,55),''G'',DECODE(a.TP_AVALIACAO,2,35,4,75))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12376713295989630)
,p_region_id=>wwv_flow_imp.id(30331074284481947)
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
 p_id=>wwv_flow_imp.id(30329400081481930)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 15')
,p_region_name=>'pergunta-15'
,p_parent_plug_id=>wwv_flow_imp.id(30331074284481947)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,15,3,55),''G'',DECODE(a.TP_AVALIACAO,2,35,4,75))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,15,3,55),''G'',DECODE(a.TP_AVALIACAO,2,35,4,75))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,15,3,55),''G'',DECODE(a.TP_AVALIACAO,2,35,4,75))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,15,3,55),''G'',DECODE(a.TP_AVALIACAO,2,35,4,75))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(4631258075959968971)
,p_region_id=>wwv_flow_imp.id(30329400081481930)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(30331493771481951)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 14')
,p_parent_plug_id=>wwv_flow_imp.id(13219269537784118)
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
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,14,3,54),''G'',DECODE(a.TP_AVALIACAO,2,34,4,74))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12379356823989633)
,p_region_id=>wwv_flow_imp.id(30331493771481951)
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
 p_id=>wwv_flow_imp.id(30329096872481927)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 14')
,p_region_name=>'pergunta-14'
,p_parent_plug_id=>wwv_flow_imp.id(30331493771481951)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,14,3,54),''G'',DECODE(a.TP_AVALIACAO,2,34,4,74))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,14,3,54),''G'',DECODE(a.TP_AVALIACAO,2,34,4,74))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,14,3,54),''G'',DECODE(a.TP_AVALIACAO,2,34,4,74))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,14,3,54),''G'',DECODE(a.TP_AVALIACAO,2,34,4,74))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12380161316989634)
,p_region_id=>wwv_flow_imp.id(30329096872481927)
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
 p_id=>wwv_flow_imp.id(12380695927989634)
,p_card_id=>wwv_flow_imp.id(12380161316989634)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(39238445046068160)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 12')
,p_parent_plug_id=>wwv_flow_imp.id(13219269537784118)
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
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,12,3,52),''G'',DECODE(a.TP_AVALIACAO,2,32,4,72))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
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
 p_id=>wwv_flow_imp.id(12372389419989625)
,p_region_id=>wwv_flow_imp.id(39238445046068160)
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
 p_id=>wwv_flow_imp.id(39238757197068163)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 12')
,p_region_name=>'pergunta-12'
,p_parent_plug_id=>wwv_flow_imp.id(39238445046068160)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,12,3,52),''G'',DECODE(a.TP_AVALIACAO,2,32,4,72))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,12,3,52),''G'',DECODE(a.TP_AVALIACAO,2,32,4,72))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,12,3,52),''G'',DECODE(a.TP_AVALIACAO,2,32,4,72))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P25_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(a.TP_INDICADOR,''E'',DECODE(a.TP_AVALIACAO,1,12,3,52),''G'',DECODE(a.TP_AVALIACAO,2,32,4,72))',
'  and a.TP_AVALIACAO = :P25_TIPO_AVALIACAO',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(12373169352989626)
,p_region_id=>wwv_flow_imp.id(39238757197068163)
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
 p_id=>wwv_flow_imp.id(12373602961989627)
,p_card_id=>wwv_flow_imp.id(12373169352989626)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(21250452144169367)
,p_plug_name=>'COLABORADOR'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24079863483388249)
,p_plug_name=>'RESULTADO'
,p_region_css_classes=>'u-color-22 u-color-4-border'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent7:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4043280273157563)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P25_DT_FIM_AVALIACAO'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12365283067989616)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(21250452144169367)
,p_button_name=>'VOLTAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(4128014990157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Voltar'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:25::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12366052157989618)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(21250452144169367)
,p_button_name=>'BTN-SALVAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(4128014990157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P25_DT_FIM_AVALIACAO IS NULL AND',
'        :P25_ID_COLABORADOR = :GL_ID_USUARIO AND ',
'        :P25_PERIODO_VALIDO = ''SIM'' then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12365600227989617)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(21250452144169367)
,p_button_name=>'BTN-FINALIZAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(4128014990157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finalizar'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P25_DT_FIM_AVALIACAO IS NULL  AND ',
'       :P25_ID_COLABORADOR = :GL_ID_USUARIO AND',
'       :P25_PERIODO_VALIDO = ''SIM'' then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12345855776989584)
,p_name=>'P25_TITULO_RESULTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(24079863483388249)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>' u-bold u-color-9-border'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(4125486867157626)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12346106522989587)
,p_name=>'P25_DESCRICAO_RESULTADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(24079863483388249)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>' u-bold u-color-22-border'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4125486867157626)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12366402540989618)
,p_name=>'P25_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(21250452144169367)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12366806848989619)
,p_name=>'P25_ID_COLABORADOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(21250452144169367)
,p_prompt=>'Nome do Colaborador:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_USUARIO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(4125246033157626)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12367238933989619)
,p_name=>'P25_ID_COLABORADOR_AVALIADOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(21250452144169367)
,p_prompt=>'Avaliador:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_USUARIO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P25_TIPO_AVALIACAO not in (3,4) then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(4125246033157626)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12367606812989619)
,p_name=>'P25_DT_FIM_AVALIACAO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(21250452144169367)
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
 p_id=>wwv_flow_imp.id(12368012045989620)
,p_name=>'P25_TIPO_AVALIACAO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(21250452144169367)
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
 p_id=>wwv_flow_imp.id(12368433638989621)
,p_name=>'P25_FEEDBACK_REALIZADO'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(21250452144169367)
,p_prompt=>'Feedback Realizado:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:SIM;1,N\00C3O;0')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(4125570846157626)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12368839833989621)
,p_name=>'P25_DT_FEEDBACK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(21250452144169367)
,p_prompt=>'Data Feedback:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'''formataData(this,event)'' onkeyup=''formataData(this,event)'''
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(4125246033157626)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12369253539989622)
,p_name=>'P25_OBSERVACAO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(21250452144169367)
,p_prompt=>unistr('Observa\00E7\00F5es:')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>4000
,p_cHeight=>5
,p_colspan=>9
,p_grid_label_column_span=>2
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P25_ID_COLABORADOR = :GL_ID_USUARIO and :P25_PERIODO_VALIDO = ''SIM'' then',
'        return FALSE;',
'    else',
'        return TRUE;',
'    end if;',
'end;'))
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(4125246033157626)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12369637817989623)
,p_name=>'P25_ID_GERENTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(21250452144169367)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12370075590989623)
,p_name=>'P25_RESPOSTAS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(21250452144169367)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12370476004989623)
,p_name=>'P25_SOMA_TOTAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(21250452144169367)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12370855165989624)
,p_name=>'P25_QTD_RESPOSTAS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(21250452144169367)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13486990714253107)
,p_name=>'P25_ID_PERFIL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(21250452144169367)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15250704514172716)
,p_name=>'P25_MSG_ERRO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(21250452144169367)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15330217610956301)
,p_name=>'P25_TITULO1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(21250452144169367)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15330373653956302)
,p_name=>'P25_TITULO2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(21250452144169367)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15330470268956303)
,p_name=>'P25_TITULO3'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(21250452144169367)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18802763941453615)
,p_name=>'P25_PERIODO_VALIDO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(21250452144169367)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18802834754453616)
,p_name=>'P25_DT_GERACAO_AVALIACAO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(21250452144169367)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22218190305373601)
,p_name=>'P25_PERIODO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(21250452144169367)
,p_prompt=>unistr('Per\00EDodo:')
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
 p_id=>wwv_flow_imp.id(12388772165989670)
,p_validation_name=>'verifica_se_respondeu_tudo'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    --',
'    if :P25_QTD_RESPOSTAS < 15 then',
'        return false;',
'    else',
'        return true;',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Favor responder todas as perguntas antes de finalizar',
''))
,p_when_button_pressed=>wwv_flow_imp.id(12365600227989617)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12395377457989679)
,p_name=>'mostra_foco'
,p_event_sequence=>5
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.a-CardView-item'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12395859871989679)
,p_event_id=>wwv_flow_imp.id(12395377457989679)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'EVENT_SOURCE'
,p_attribute_01=>'mostra_foco'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12394438060989678)
,p_name=>'retira_foco'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.a-CardView-item'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12394966863989679)
,p_event_id=>wwv_flow_imp.id(12394438060989678)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'EVENT_SOURCE'
,p_attribute_01=>'mostra_foco'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12392521226989677)
,p_name=>'altera_data'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P25_FEEDBACK_REALIZADO'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12394099345989678)
,p_event_id=>wwv_flow_imp.id(12392521226989677)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P25_DT_FEEDBACK'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(sysdate,''dd/mm/yyyy'')',
'from dual'))
,p_attribute_07=>'P25_DT_FEEDBACK'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P25_FEEDBACK_REALIZADO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12393587150989678)
,p_event_id=>wwv_flow_imp.id(12392521226989677)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P25_DT_FEEDBACK'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P25_FEEDBACK_REALIZADO'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12393001589989677)
,p_event_id=>wwv_flow_imp.id(12392521226989677)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P25_DT_FEEDBACK'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12396255747989679)
,p_name=>'clica-pergunta-1'
,p_event_sequence=>320
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.a-CardView-item'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12396734952989680)
,p_event_id=>wwv_flow_imp.id(12396255747989679)
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
'    $s(''P25_RESPOSTAS'', listaResposta);',
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
 p_id=>wwv_flow_imp.id(12397101297989680)
,p_name=>'Carrega_respostas'
,p_event_sequence=>330
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12397616942989681)
,p_event_id=>wwv_flow_imp.id(12397101297989680)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var respostas = $v(''P25_RESPOSTAS'');',
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
 p_id=>wwv_flow_imp.id(12390729621989676)
,p_name=>'desabilita_perguntas'
,p_event_sequence=>340
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12391242117989676)
,p_event_id=>wwv_flow_imp.id(12390729621989676)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.a-CardView-item'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P25_DT_FIM_AVALIACAO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13486697663253104)
,p_event_id=>wwv_flow_imp.id(12390729621989676)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.a-CardView-item'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P25_ID_COLABORADOR'
,p_client_condition_expression=>'&GL_ID_USUARIO.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18802904866453617)
,p_event_id=>wwv_flow_imp.id(12390729621989676)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.a-CardView-item'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P25_PERIODO_VALIDO'
,p_client_condition_expression=>'SIM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12391658813989676)
,p_name=>'desabilita_avaliacao'
,p_event_sequence=>360
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12392194012989677)
,p_event_id=>wwv_flow_imp.id(12391658813989676)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P25_FEEDBACK_REALIZADO,P25_OBSERVACAO'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P25_DT_FIM_AVALIACAO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13486848531253106)
,p_event_id=>wwv_flow_imp.id(12391658813989676)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P25_FEEDBACK_REALIZADO,P25_OBSERVACAO'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P25_ID_COLABORADOR'
,p_client_condition_expression=>'&GL_ID_USUARIO.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18803040101453618)
,p_event_id=>wwv_flow_imp.id(12391658813989676)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.a-CardView-item'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P25_PERIODO_VALIDO'
,p_client_condition_expression=>'SIM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12389860350989672)
,p_name=>'busca_descricao_resultado'
,p_event_sequence=>380
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12390340159989675)
,p_event_id=>wwv_flow_imp.id(12389860350989672)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  IF :P25_SOMA_TOTAL > 40 THEN',
'     :P25_SOMA_TOTAL := 40;',
'  END IF;',
'  --',
'  pck_ad.busca_descricao_resultado(:P25_TIPO_AVALIACAO, :P25_SOMA_TOTAL, :P25_TITULO_RESULTADO, :P25_DESCRICAO_RESULTADO);',
'end;'))
,p_attribute_02=>'P25_SOMA_TOTAL'
,p_attribute_03=>'P25_TITULO_RESULTADO,P25_DESCRICAO_RESULTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P25_DT_FIM_AVALIACAO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12389072316989670)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARREGA_DADOS_AVALIACAO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'--',
unistr('-- CARREGA DADOS AD_AVALIA\00C7\00C3O --'),
'select A.ID_COLABORADOR,',
'       A.ID_COLABORADOR_AVALIADOR,',
'       A.DT_FIM_AVALIACAO,',
'       A.TP_AVALIACAO,',
'       --DECODE(A.DT_FEEDBACK,NULL,0,1) FEEDBACK_REALIZADO,',
'       --A.DT_FEEDBACK,',
'       A.OBSERVACAO,',
'       A.DT_GERACAO_AVALIACAO,',
'       ''JAN/DEZ ''||TO_CHAR(A.DT_GERACAO_AVALIACAO,''YYYY'') ',
'into :P25_ID_COLABORADOR,',
'     :P25_ID_COLABORADOR_AVALIADOR,',
'     :P25_DT_FIM_AVALIACAO,',
'     :P25_TIPO_AVALIACAO,',
'     --:P25_FEEDBACK_REALIZADO,',
'     --:P25_DT_FEEDBACK,',
'     :P25_OBSERVACAO,',
'     :P25_DT_GERACAO_AVALIACAO,',
'     :P25_PERIODO',
'from AD_AVALIACAO A',
'where A.ID = :P25_ID;',
'',
'--',
'-- IDENTIFICA SE EH GERENTE --',
'SELECT A.ID_GERENTE',
'  INTO :P25_ID_GERENTE',
'  FROM v_ad_dados_usuarios a',
' WHERE a.colaborador_id = :P25_ID_COLABORADOR;',
'',
'',
'-- CARREGA DADOS AD_AVALIACAO_ITEM --',
'',
'SELECT listagg(''pergunta-''||ai.id_indicador || ''='' || (ai.nr_escolha - 1), '':'') within GROUP(ORDER BY ai.id_indicador) ',
'into :P25_RESPOSTAS',
'  FROM ad_avaliacao_item ai',
' WHERE ai.id = :P25_ID',
' ORDER BY ai.id_indicador;',
'',
unistr('-- carrega a pontua\00E7\00E3o total --'),
'select nvl(sum(ai.vl_escolha),0) ',
'into :p25_soma_total ',
'from ad_avaliacao_item ai',
'    where ai.id = :p25_id; ',
'',
'-- quantidade respostas preenchidas --',
'select nvl(count(1),0)',
'into :P25_QTD_RESPOSTAS ',
'from ad_avaliacao_item ai',
'    where ai.id = :p25_id',
'      and nvl(ai.nr_escolha,0) > 0; ',
'',
'-- carrega titulos --',
'select UPPER(c.NM_COMPETENCIA_AREA) || '' - ''  ||c.DS_COMPETENCIA ',
'  into :P25_TITULO1',
'  from AD_COMPETENCIA c',
'  where c.ID = 1;',
'',
'  select UPPER(c.NM_COMPETENCIA_AREA) || '' - ''  ||c.DS_COMPETENCIA ',
'  into :P25_TITULO2',
'  from AD_COMPETENCIA c',
'  where c.ID = 2;',
'',
'select UPPER(c.NM_COMPETENCIA_AREA) || '' - ''  ||c.DS_COMPETENCIA ',
'  into :P25_TITULO3',
'  from AD_COMPETENCIA c',
'  where c.ID = 3;',
'--',
'  --IF :P25_DT_GERACAO_AVALIACAO BETWEEN TRUNC(TO_DATE(''01/11/''||TO_CHAR(SYSDATE,''YYYY'')),''mm'') AND  LAST_DAY(''01/12/''||TO_CHAR(SYSDATE,''YYYY''))  ',
'  --or (:P25_DT_GERACAO_AVALIACAO <= to_date(''12/01/2022'',''dd/mm/yyyy'') and to_char(sysdate,''yyyy'') = ''2022'') THEN ',
'       -- a pedido da Juliana da DVGE foi prorrogado o prazo de 31/12 do ano corrente para 12/01/2022 --                                        ',
'  --   :P25_PERIODO_VALIDO := ''SIM'';',
'  --ELSE',
unistr('  --   :P25_PERIODO_VALIDO := ''N\00C3O'';'),
'  --END IF;  ',
'  --   :P25_PERIODO_VALIDO := ''SIM'';',
'',
'  IF :P25_DT_FEEDBACK IS NULL THEN',
'     :P25_PERIODO_VALIDO := ''SIM'';',
'   ELSE',
unistr('     :P25_PERIODO_VALIDO := ''N\00C3O'';'),
'   END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12389407693989671)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ATUALIZA AD_AVALIACAO_E_ITENS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  e_erro exception;',
'',
' cursor c1 is',
'    SELECT REPLACE(regexp_substr(column_value, ''[^=]+'', 1, 1), ''pergunta-'', '''') id_indicador,',
'        regexp_substr(column_value, ''[^=]+'', 1, 2) nr_escolha',
'    FROM apex_string.split(rtrim(:P25_RESPOSTAS, '':''), '':'')',
'    order by 1;',
' r1 c1%ROWTYPE;',
'',
'begin',
unistr('   :P25_MSG_ERRO := ''Avalia\00E7\00E3o atualizada com sucesso!'';'),
unistr('    -- atualiza dados da avalia\00E7\00E3o (AD_AVALIACAO)--'),
'    update ad_avaliacao',
' --   set dt_feedback = DECODE(:P25_FEEDBACK_REALIZADO,1, SYSDATE,NULL),',
'      set  observacao = :P25_OBSERVACAO',
'    where id = :P25_ID ;',
'',
unistr('    -- atualiza pontua\00E7\00F5es da avalia\00E7\00E3o (AD_AVALIACAO_ITEM) --'),
'    OPEN c1;',
'    FETCH c1 INTO r1;',
'    --',
'    WHILE c1%FOUND LOOP',
'        UPDATE ad_avaliacao_item ai',
'            SET nr_escolha = r1.nr_escolha + 1,',
'                vl_escolha = (SELECT decode(r1.nr_escolha, 0, ac.vl_conceito_1, ',
'                                                           1, ac.vl_conceito_2, ',
'                                                           2, ac.vl_conceito_3, ',
'                                                           3, ac.vl_conceito_4, 0) vl_escolha',
'                                FROM ad_competencia ac',
'                                WHERE CASE',
'                                        WHEN r1.id_indicador BETWEEN 1 AND 3 THEN',
'                                        1',
'                                        WHEN r1.id_indicador BETWEEN 4 AND 11 THEN',
'                                        2',
'                                        WHEN r1.id_indicador BETWEEN 12 AND 15 THEN',
'                                        3',
'                                    END = ac.id)',
'        WHERE ai.id = :p25_id',
'          AND ai.id_indicador = r1.id_indicador;',
'        --',
'        FETCH c1 INTO r1;',
'        --',
'    END LOOP;',
'    CLOSE c1;',
'    --',
unistr('    -- atualiza a soma total das op\00E7\00F5es escolhidas --'),
'    select nvl(sum(ai.vl_escolha),0) ',
'    into :p25_soma_total ',
'    from ad_avaliacao_item ai',
'     where ai.id = :p25_id;    ',
'',
unistr('    -- atualiza a soma total das op\00E7\00F5es escolhidas --'),
'    select nvl(count(1),0) ',
'    into :P25_QTD_RESPOSTAS ',
'    from ad_avaliacao_item ai',
'     where ai.id = :p25_id',
'       and nvl(ai.nr_escolha,0) > 0;',
'    --',
'    if :P25_QTD_RESPOSTAS < 15 and :REQUEST = ''BTN-FINALIZAR'' then',
'       --raise_application_error(-20001,''Favor responder todas as perguntas!'');',
'       :P25_MSG_ERRO := ''Favor responder todas as perguntas!'';',
'       --raise e_erro;',
'    elsif :P25_QTD_RESPOSTAS = 15 and :REQUEST = ''BTN-FINALIZAR'' then',
unistr('    -- finaliza a avalia\00E7\00E3o --'),
'        update ad_avaliacao',
'        set dt_fim_avaliacao = sysdate',
'        where id = :P25_ID ;    ',
'        --',
'        :P25_DT_FIM_AVALIACAO := sysdate;',
'        --',
'    end if;',
'    --',
'    -- if :REQUEST = ''BTN-FINALIZAR'' and :P25_FEEDBACK_REALIZADO != 1 then',
'    --    raise_application_error(-20002,''Favor preencher o feedback!'');',
'    -- end if;      ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'BTN-SALVAR;BTN-SALVAR-2;BTN-FINALIZAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&P25_MSG_ERRO.',
''))
);
wwv_flow_imp.component_end;
end;
/
