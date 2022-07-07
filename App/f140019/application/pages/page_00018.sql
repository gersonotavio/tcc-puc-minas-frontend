prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>unistr('Avalia\00E7\00E3o Desempenho do Gestor')
,p_alias=>unistr('AVALIA\00C7\00C3O-DESEMPENHO-DO-GESTOR')
,p_step_title=>unistr('Avalia\00E7\00E3o Desempenho do Gestor')
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
,p_last_updated_by=>'GEROTAVIO@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220119205214'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23159861373897148)
,p_plug_name=>unistr('\00E1rea de compet\00EAncia 1')
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_1'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.NM_COMPETENCIA_AREA titulo,',
'       c.DS_COMPETENCIA informacao     ',
'  from AD_COMPETENCIA c',
'  where c.ID = 1;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14329232197717436)
,p_region_id=>wwv_flow_imp.id(23159861373897148)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-1-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'INFORMACAO'
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23161426525897164)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 1')
,p_parent_plug_id=>wwv_flow_imp.id(23159861373897148)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,1,21);'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14330029477717437)
,p_region_id=>wwv_flow_imp.id(23161426525897164)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-3-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'INFORMACAO'
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23161738676897167)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 1')
,p_region_name=>'pergunta-1'
,p_parent_plug_id=>wwv_flow_imp.id(23161426525897164)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleC'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 conceito',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,1,21)',
'',
'  union all',
'',
'select a.DS_CONCEITO_2 conceito',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,1,21)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 conceito',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,1,21)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 conceito',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,1,21);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14330838548717438)
,p_region_id=>wwv_flow_imp.id(23161738676897167)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-color-5-bg'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(14331336748717438)
,p_card_id=>wwv_flow_imp.id(14330838548717438)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>20
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23162288127897172)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 2')
,p_parent_plug_id=>wwv_flow_imp.id(23159861373897148)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,2,22);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14332299270717439)
,p_region_id=>wwv_flow_imp.id(23162288127897172)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-3-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'INFORMACAO'
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23162432802897174)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 2')
,p_region_name=>'pergunta-2'
,p_parent_plug_id=>wwv_flow_imp.id(23162288127897172)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,2,22)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,2,22)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,2,22)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,2,22);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14333020081717440)
,p_region_id=>wwv_flow_imp.id(23162432802897174)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-color-5-bg'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(14333523962717441)
,p_card_id=>wwv_flow_imp.id(14333020081717440)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23162986001897179)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 3')
,p_parent_plug_id=>wwv_flow_imp.id(23159861373897148)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,3,23);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14334457573717442)
,p_region_id=>wwv_flow_imp.id(23162986001897179)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-3-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'INFORMACAO'
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23163152464897181)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 3')
,p_region_name=>'pergunta-3'
,p_parent_plug_id=>wwv_flow_imp.id(23162986001897179)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,3,23)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,3,23)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,3,23)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,3,23);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14335206949717443)
,p_region_id=>wwv_flow_imp.id(23163152464897181)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-color-5-bg'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(14335717419717443)
,p_card_id=>wwv_flow_imp.id(14335206949717443)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23161631261897166)
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
 p_id=>wwv_flow_imp.id(23228621415168759)
,p_plug_name=>unistr('\00E1rea de compet\00EAncia 2')
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_2'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.NM_COMPETENCIA_AREA titulo,',
'       c.DS_COMPETENCIA informacao     ',
'  from AD_COMPETENCIA c',
'  where c.ID = 2;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14293784907717394)
,p_region_id=>wwv_flow_imp.id(23228621415168759)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-1-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'INFORMACAO'
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23231008607168783)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 5')
,p_parent_plug_id=>wwv_flow_imp.id(23228621415168759)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,5,25);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14296753086717398)
,p_region_id=>wwv_flow_imp.id(23231008607168783)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-3-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'INFORMACAO'
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23228877624168761)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 5')
,p_region_name=>'pergunta-5'
,p_parent_plug_id=>wwv_flow_imp.id(23231008607168783)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,5,25)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,5,25)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,5,25)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,5,25);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14297535894717399)
,p_region_id=>wwv_flow_imp.id(23228877624168761)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-color-5-bg'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(14298092617717400)
,p_card_id=>wwv_flow_imp.id(14297535894717399)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23231207076168785)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 7')
,p_parent_plug_id=>wwv_flow_imp.id(23228621415168759)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,7,27);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14298970090717401)
,p_region_id=>wwv_flow_imp.id(23231207076168785)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-3-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'INFORMACAO'
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23229532873168768)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 7')
,p_region_name=>'pergunta-7'
,p_parent_plug_id=>wwv_flow_imp.id(23231207076168785)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,7,27)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,7,27)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,7,27)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,7,27);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14299741805717402)
,p_region_id=>wwv_flow_imp.id(23229532873168768)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-color-5-bg'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(14300250951717402)
,p_card_id=>wwv_flow_imp.id(14299741805717402)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23231491794168787)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 9')
,p_parent_plug_id=>wwv_flow_imp.id(23228621415168759)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,9,29);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14301188513717403)
,p_region_id=>wwv_flow_imp.id(23231491794168787)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-3-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'INFORMACAO'
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23230103426168774)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 9')
,p_region_name=>'pergunta-9'
,p_parent_plug_id=>wwv_flow_imp.id(23231491794168787)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,9,29)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,9,29)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,9,29)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,9,29);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14301980013717404)
,p_region_id=>wwv_flow_imp.id(23230103426168774)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-color-5-bg'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(14302424375717405)
,p_card_id=>wwv_flow_imp.id(14301980013717404)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23231626563168789)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 6')
,p_parent_plug_id=>wwv_flow_imp.id(23228621415168759)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,6,26);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14303395754717406)
,p_region_id=>wwv_flow_imp.id(23231626563168789)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-3-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'INFORMACAO'
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23229229664168765)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 6')
,p_region_name=>'pergunta-6'
,p_parent_plug_id=>wwv_flow_imp.id(23231626563168789)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,6,26)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,6,26)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,6,26)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,6,26);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14304107323717407)
,p_region_id=>wwv_flow_imp.id(23229229664168765)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-color-5-bg'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(14304682074717407)
,p_card_id=>wwv_flow_imp.id(14304107323717407)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23231798597168791)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 8')
,p_parent_plug_id=>wwv_flow_imp.id(23228621415168759)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,8,28);',
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
 p_id=>wwv_flow_imp.id(14305595850717408)
,p_region_id=>wwv_flow_imp.id(23231798597168791)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-3-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'INFORMACAO'
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23229868109168771)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 8')
,p_region_name=>'pergunta-8'
,p_parent_plug_id=>wwv_flow_imp.id(23231798597168791)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,8,28)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,8,28)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,8,28)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,8,28);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14306300972717409)
,p_region_id=>wwv_flow_imp.id(23229868109168771)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-color-5-bg'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(14306846296717410)
,p_card_id=>wwv_flow_imp.id(14306300972717409)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23232066975168793)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 10')
,p_parent_plug_id=>wwv_flow_imp.id(23228621415168759)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,10,30);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14307725234717411)
,p_region_id=>wwv_flow_imp.id(23232066975168793)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-3-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'INFORMACAO'
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23230395500168777)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 10')
,p_region_name=>'pergunta-10'
,p_parent_plug_id=>wwv_flow_imp.id(23232066975168793)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,10,30)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,10,30)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,10,30)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,10,30);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14308529453717412)
,p_region_id=>wwv_flow_imp.id(23230395500168777)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-color-5-bg'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(14309017880717412)
,p_card_id=>wwv_flow_imp.id(14308529453717412)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23232204524168795)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 11')
,p_parent_plug_id=>wwv_flow_imp.id(23228621415168759)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>120
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,11,31);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14309901786717413)
,p_region_id=>wwv_flow_imp.id(23232204524168795)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-3-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'INFORMACAO'
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23230703877168780)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 11')
,p_region_name=>'pergunta-11'
,p_parent_plug_id=>wwv_flow_imp.id(23232204524168795)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,11,31)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,11,31)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,11,31)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,11,31);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14310799140717414)
,p_region_id=>wwv_flow_imp.id(23230703877168780)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-color-5-bg'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(14311204383717415)
,p_card_id=>wwv_flow_imp.id(14310799140717414)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32138577837754998)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 4')
,p_parent_plug_id=>wwv_flow_imp.id(23228621415168759)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,4,24);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14294511733717395)
,p_region_id=>wwv_flow_imp.id(32138577837754998)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-3-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'INFORMACAO'
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32138889988755001)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 4')
,p_region_name=>'pergunta-4'
,p_parent_plug_id=>wwv_flow_imp.id(32138577837754998)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,4,24)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,4,24)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,4,24)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,4,24);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14295329793717396)
,p_region_id=>wwv_flow_imp.id(32138889988755001)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-color-5-bg'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(14295897607717397)
,p_card_id=>wwv_flow_imp.id(14295329793717396)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25991042601116048)
,p_plug_name=>'RESULTADO'
,p_region_css_classes=>'u-color-22'
,p_region_template_options=>'#DEFAULT#:t-Region--accent7:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P18_DT_FIM_AVALIACAO'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32239667741209720)
,p_plug_name=>unistr('\00E1rea de compet\00EAncia 3')
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>130
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.NM_COMPETENCIA_AREA titulo,',
'       c.DS_COMPETENCIA informacao     ',
'  from AD_COMPETENCIA c',
'  where c.ID = 3;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14319217432717424)
,p_region_id=>wwv_flow_imp.id(32239667741209720)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-1-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'INFORMACAO'
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32242054933209744)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 13')
,p_parent_plug_id=>wwv_flow_imp.id(32239667741209720)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,13,33);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14322237934717428)
,p_region_id=>wwv_flow_imp.id(32242054933209744)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-3-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'INFORMACAO'
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32239923950209722)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 13')
,p_region_name=>'pergunta-13'
,p_parent_plug_id=>wwv_flow_imp.id(32242054933209744)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,13,33)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,13,33)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,13,33)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,13,33);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14323015635717429)
,p_region_id=>wwv_flow_imp.id(32239923950209722)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-color-5-bg'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(14323590278717430)
,p_card_id=>wwv_flow_imp.id(14323015635717429)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32242253402209746)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 15')
,p_parent_plug_id=>wwv_flow_imp.id(32239667741209720)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,15,35);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14324479603717431)
,p_region_id=>wwv_flow_imp.id(32242253402209746)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-3-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'INFORMACAO'
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32240579199209729)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 15')
,p_region_name=>'pergunta-15'
,p_parent_plug_id=>wwv_flow_imp.id(32242253402209746)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,15,35)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,15,35)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,15,35)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,15,35);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14325221059717432)
,p_region_id=>wwv_flow_imp.id(32240579199209729)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-color-5-bg'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(14325773899717432)
,p_card_id=>wwv_flow_imp.id(14325221059717432)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32242672889209750)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 14')
,p_parent_plug_id=>wwv_flow_imp.id(32239667741209720)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,14,34);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14327038170717434)
,p_region_id=>wwv_flow_imp.id(32242672889209750)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-3-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'INFORMACAO'
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32240275990209726)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 14')
,p_region_name=>'pergunta-14'
,p_parent_plug_id=>wwv_flow_imp.id(32242672889209750)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,14,34)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,14,34)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,14,34)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,14,34);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14327820935717435)
,p_region_id=>wwv_flow_imp.id(32240275990209726)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-color-5-bg'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(14328392650717435)
,p_card_id=>wwv_flow_imp.id(14327820935717435)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41149624163795959)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 12')
,p_parent_plug_id=>wwv_flow_imp.id(32239667741209720)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,12,32);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14320045671717425)
,p_region_id=>wwv_flow_imp.id(41149624163795959)
,p_layout_type=>'ROW'
,p_card_css_classes=>'u-color-3-bg'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITULO'
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'INFORMACAO'
,p_body_css_classes=>'u-italics	'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41149936314795962)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 12')
,p_region_name=>'pergunta-12'
,p_parent_plug_id=>wwv_flow_imp.id(41149624163795959)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,12,32)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,12,32)',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,12,32)',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = DECODE(:P18_ID_GERENTE,0,''E'',''G'')',
'  and a.ID = DECODE(:P18_ID_GERENTE,0,12,32);',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14320817926717426)
,p_region_id=>wwv_flow_imp.id(41149936314795962)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'u-color-5-bg'
,p_title_adv_formatting=>false
,p_title_css_classes=>'u-bold	'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CONCEITO'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(14321389489717427)
,p_card_id=>wwv_flow_imp.id(14320817926717426)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41020551792400076)
,p_plug_name=>'<strong>&P18_TITULO1.</strong>'
,p_region_css_classes=>'w3-pale-blue h420'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4036060997157557)
,p_plug_display_sequence=>140
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49051752748785325)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 1')
,p_parent_plug_id=>wwv_flow_imp.id(41020551792400076)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA || '' - '' || a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 21',
'  and a.TP_AVALIACAO = decode(:P18_TIPO_AVALIACAO,5,2,:P18_TIPO_AVALIACAO);     '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14276149727717374)
,p_region_id=>wwv_flow_imp.id(49051752748785325)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49052064899785328)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 1')
,p_region_name=>'pergunta-1'
,p_parent_plug_id=>wwv_flow_imp.id(49051752748785325)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 conceito',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 21',
'  and a.TP_AVALIACAO = 2',
'  union all',
'',
'select a.DS_CONCEITO_2 conceito',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 21',
'  and a.TP_AVALIACAO = 2',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 conceito',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 21',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 conceito',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 21',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14276952028717375)
,p_region_id=>wwv_flow_imp.id(49052064899785328)
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
 p_id=>wwv_flow_imp.id(14277415798717376)
,p_card_id=>wwv_flow_imp.id(14276952028717375)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>20
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49052614350785333)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 2')
,p_parent_plug_id=>wwv_flow_imp.id(41020551792400076)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA || '' - '' || a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 22',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14278319204717377)
,p_region_id=>wwv_flow_imp.id(49052614350785333)
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
 p_id=>wwv_flow_imp.id(49052759025785335)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 2')
,p_region_name=>'pergunta-2'
,p_parent_plug_id=>wwv_flow_imp.id(49052614350785333)
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
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 22',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 22',
'  and a.TP_AVALIACAO = 2',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 22',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 22',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14279144150717378)
,p_region_id=>wwv_flow_imp.id(49052759025785335)
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
 p_id=>wwv_flow_imp.id(14279626536717378)
,p_card_id=>wwv_flow_imp.id(14279144150717378)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49053312224785340)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 3')
,p_parent_plug_id=>wwv_flow_imp.id(41020551792400076)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA || '' - '' || a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 23',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14280597738717379)
,p_region_id=>wwv_flow_imp.id(49053312224785340)
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
 p_id=>wwv_flow_imp.id(49053478687785342)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 3')
,p_region_name=>'pergunta-3'
,p_parent_plug_id=>wwv_flow_imp.id(49053312224785340)
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
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 23',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 23',
'  and a.TP_AVALIACAO = 2',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 23',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 1',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 23',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14281310827717380)
,p_region_id=>wwv_flow_imp.id(49053478687785342)
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
 p_id=>wwv_flow_imp.id(14281828161717381)
,p_card_id=>wwv_flow_imp.id(14281310827717380)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41028157546401577)
,p_plug_name=>'<strong>&P18_TITULO2.</strong>'
,p_region_css_classes=>'w3-pale-yellow  h420'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4036060997157557)
,p_plug_display_sequence=>150
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49128808772058444)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 5')
,p_parent_plug_id=>wwv_flow_imp.id(41028157546401577)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA || '' - '' || a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 25',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14257757266717353)
,p_region_id=>wwv_flow_imp.id(49128808772058444)
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
 p_id=>wwv_flow_imp.id(49126677789058422)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 5')
,p_region_name=>'pergunta-5'
,p_parent_plug_id=>wwv_flow_imp.id(49128808772058444)
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
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 25',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 25',
'  and a.TP_AVALIACAO = 2',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 25',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 25',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14258594096717354)
,p_region_id=>wwv_flow_imp.id(49126677789058422)
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
 p_id=>wwv_flow_imp.id(14259084464717354)
,p_card_id=>wwv_flow_imp.id(14258594096717354)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49129007241058446)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 7')
,p_parent_plug_id=>wwv_flow_imp.id(41028157546401577)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA || '' - '' || a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 27',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14259967905717356)
,p_region_id=>wwv_flow_imp.id(49129007241058446)
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
 p_id=>wwv_flow_imp.id(49127333038058429)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 7')
,p_region_name=>'pergunta-7'
,p_parent_plug_id=>wwv_flow_imp.id(49129007241058446)
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
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 27',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 27',
'  and a.TP_AVALIACAO = 2',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 27',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 27',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14260715615717357)
,p_region_id=>wwv_flow_imp.id(49127333038058429)
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
 p_id=>wwv_flow_imp.id(14261242994717357)
,p_card_id=>wwv_flow_imp.id(14260715615717357)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49129291959058448)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 9')
,p_parent_plug_id=>wwv_flow_imp.id(41028157546401577)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA || '' - '' || a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 29',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14262128878717358)
,p_region_id=>wwv_flow_imp.id(49129291959058448)
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
 p_id=>wwv_flow_imp.id(49127903591058435)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 9')
,p_region_name=>'pergunta-9'
,p_parent_plug_id=>wwv_flow_imp.id(49129291959058448)
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
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 29',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 29',
'  and a.TP_AVALIACAO = 2',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 29',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 29',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14262972594717359)
,p_region_id=>wwv_flow_imp.id(49127903591058435)
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
 p_id=>wwv_flow_imp.id(14263468371717360)
,p_card_id=>wwv_flow_imp.id(14262972594717359)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49129426728058450)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 6')
,p_parent_plug_id=>wwv_flow_imp.id(41028157546401577)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA || '' - '' || a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 26',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14264346625717361)
,p_region_id=>wwv_flow_imp.id(49129426728058450)
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
 p_id=>wwv_flow_imp.id(49127029829058426)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 6')
,p_region_name=>'pergunta-6'
,p_parent_plug_id=>wwv_flow_imp.id(49129426728058450)
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
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 26',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 26',
'  and a.TP_AVALIACAO = 2',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 26',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 26',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14265130001717362)
,p_region_id=>wwv_flow_imp.id(49127029829058426)
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
 p_id=>wwv_flow_imp.id(14265698762717362)
,p_card_id=>wwv_flow_imp.id(14265130001717362)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49129598762058452)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 8')
,p_parent_plug_id=>wwv_flow_imp.id(41028157546401577)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA || '' - '' || a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 28',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14266532053717363)
,p_region_id=>wwv_flow_imp.id(49129598762058452)
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
 p_id=>wwv_flow_imp.id(49127668274058432)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 8')
,p_region_name=>'pergunta-8'
,p_parent_plug_id=>wwv_flow_imp.id(49129598762058452)
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
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 28',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 28',
'  and a.TP_AVALIACAO = 2',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 28',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 28',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14267374702717364)
,p_region_id=>wwv_flow_imp.id(49127668274058432)
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
 p_id=>wwv_flow_imp.id(14267824864717365)
,p_card_id=>wwv_flow_imp.id(14267374702717364)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49129867140058454)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 10')
,p_parent_plug_id=>wwv_flow_imp.id(41028157546401577)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA || '' - '' || a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 30',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14268794166717366)
,p_region_id=>wwv_flow_imp.id(49129867140058454)
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
 p_id=>wwv_flow_imp.id(49128195665058438)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 10')
,p_region_name=>'pergunta-10'
,p_parent_plug_id=>wwv_flow_imp.id(49129867140058454)
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
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 30',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 30',
'  and a.TP_AVALIACAO = 2',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 30',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 30',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14269593388717367)
,p_region_id=>wwv_flow_imp.id(49128195665058438)
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
 p_id=>wwv_flow_imp.id(14270030762717367)
,p_card_id=>wwv_flow_imp.id(14269593388717367)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(49130004689058456)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 11')
,p_parent_plug_id=>wwv_flow_imp.id(41028157546401577)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>120
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA || '' - '' || a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 31',
'  and a.TP_AVALIACAO = 2',
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
 p_id=>wwv_flow_imp.id(14270963862717368)
,p_region_id=>wwv_flow_imp.id(49130004689058456)
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
 p_id=>wwv_flow_imp.id(49128504042058441)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 11')
,p_region_name=>'pergunta-11'
,p_parent_plug_id=>wwv_flow_imp.id(49130004689058456)
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
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 31',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 31',
'  and a.TP_AVALIACAO = 2',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 31',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 31',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14271792895717369)
,p_region_id=>wwv_flow_imp.id(49128504042058441)
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
 p_id=>wwv_flow_imp.id(14272221271717370)
,p_card_id=>wwv_flow_imp.id(14271792895717369)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58036378002644659)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 4')
,p_parent_plug_id=>wwv_flow_imp.id(41028157546401577)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA || '' - '' || a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 24',
'  and a.TP_AVALIACAO = 2',
'',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14273163696717371)
,p_region_id=>wwv_flow_imp.id(58036378002644659)
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
 p_id=>wwv_flow_imp.id(58036690153644662)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 4')
,p_region_name=>'pergunta-4'
,p_parent_plug_id=>wwv_flow_imp.id(58036378002644659)
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
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 24',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 24',
'  and a.TP_AVALIACAO = 2',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 24',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 2',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 24',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14273948878717372)
,p_region_id=>wwv_flow_imp.id(58036690153644662)
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
 p_id=>wwv_flow_imp.id(14274493344717372)
,p_card_id=>wwv_flow_imp.id(14273948878717372)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(41046722541403733)
,p_plug_name=>'<strong>&P18_TITULO3.</strong>'
,p_region_css_classes=>'w3-light-grey  h425'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_imp.id(4036060997157557)
,p_plug_display_sequence=>160
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58158328819101560)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 13')
,p_parent_plug_id=>wwv_flow_imp.id(41046722541403733)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA || '' - '' || a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 33',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14283491523717383)
,p_region_id=>wwv_flow_imp.id(58158328819101560)
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
 p_id=>wwv_flow_imp.id(58156197836101538)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 13')
,p_region_name=>'pergunta-13'
,p_parent_plug_id=>wwv_flow_imp.id(58158328819101560)
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
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 33',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 33',
'  and a.TP_AVALIACAO = 2',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 33',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 33',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14284213858717384)
,p_region_id=>wwv_flow_imp.id(58156197836101538)
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
 p_id=>wwv_flow_imp.id(14284731183717384)
,p_card_id=>wwv_flow_imp.id(14284213858717384)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58158527288101562)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 15')
,p_parent_plug_id=>wwv_flow_imp.id(41046722541403733)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA || '' - '' || a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 35',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14285619117717385)
,p_region_id=>wwv_flow_imp.id(58158527288101562)
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
 p_id=>wwv_flow_imp.id(58156853085101545)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 15')
,p_region_name=>'pergunta-15'
,p_parent_plug_id=>wwv_flow_imp.id(58158527288101562)
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.DS_CONCEITO_1 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 35',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 35',
'  and a.TP_AVALIACAO = 2',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 35',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 35',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14286494164717386)
,p_region_id=>wwv_flow_imp.id(58156853085101545)
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
 p_id=>wwv_flow_imp.id(14286933188717386)
,p_card_id=>wwv_flow_imp.id(14286494164717386)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58158946775101566)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 14')
,p_parent_plug_id=>wwv_flow_imp.id(41046722541403733)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA || '' - '' || a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 34',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14288266816717388)
,p_region_id=>wwv_flow_imp.id(58158946775101566)
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
 p_id=>wwv_flow_imp.id(58156549876101542)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 14')
,p_region_name=>'pergunta-14'
,p_parent_plug_id=>wwv_flow_imp.id(58158946775101566)
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
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 34',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 34',
'  and a.TP_AVALIACAO = 2',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 34',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 34',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14289020451717389)
,p_region_id=>wwv_flow_imp.id(58156549876101542)
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
 p_id=>wwv_flow_imp.id(14289506226717389)
,p_card_id=>wwv_flow_imp.id(14289020451717389)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(67065898049687775)
,p_plug_name=>unistr('conceito \00E1rea de compet\00EAncia 12')
,p_parent_plug_id=>wwv_flow_imp.id(41046722541403733)
,p_region_css_classes=>'card-pergunta'
,p_region_template_options=>'#DEFAULT#:margin-left-lg:margin-right-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NM_COMPETENCIA || '' - '' || a.DS_COMPETENCIA TITULO,',
'       a.DS_COMPETENCIA informacao',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 32',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14290444962717390)
,p_region_id=>wwv_flow_imp.id(67065898049687775)
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
 p_id=>wwv_flow_imp.id(67066210200687778)
,p_plug_name=>unistr('op\00E7\00E3o de conceitos 12')
,p_region_name=>'pergunta-12'
,p_parent_plug_id=>wwv_flow_imp.id(67065898049687775)
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
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 32',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_2 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 32',
'  and a.TP_AVALIACAO = 2',
'',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_3 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 32',
'  and a.TP_AVALIACAO = 2',
'  ',
'  union all',
'',
'select a.DS_CONCEITO_4 CONCEITO',
'from AD_INDICADOR a',
'where a.ID_COMPETENCIA = 3',
'  and a.TP_INDICADOR = ''G''',
'  and a.ID = 32',
'  and a.TP_AVALIACAO = 2',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(14291234455717391)
,p_region_id=>wwv_flow_imp.id(67066210200687778)
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
 p_id=>wwv_flow_imp.id(14291765575717392)
,p_card_id=>wwv_flow_imp.id(14291234455717391)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14326350907717433)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(32240579199209729)
,p_button_name=>'BTN-SALVAR-2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(4128014990157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>'P18_DT_FIM_AVALIACAO'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14312186400717416)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(23161631261897166)
,p_button_name=>'VOLTAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(4128014990157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Voltar'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14312906016717417)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(23161631261897166)
,p_button_name=>'BTN-SALVAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(4128014990157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
unistr('  IF :P18_DT_FIM_AVALIACAO IS NULL AND :P18_PROTEGE_AVALIACAO = ''N\00C3O'' THEN'),
'     RETURN TRUE;',
'  ELSE',
'     RETURN FALSE;',
'  END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14312524291717416)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(23161631261897166)
,p_button_name=>'BTN-FINALIZAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(4128014990157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finalizar'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
unistr('  IF :P18_DT_FIM_AVALIACAO IS NULL AND :P18_PROTEGE_AVALIACAO = ''N\00C3O'' THEN'),
'     RETURN TRUE;',
'  ELSE',
'     RETURN FALSE;',
'  END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14292624334717393)
,p_name=>'P18_TITULO_RESULTADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(25991042601116048)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>' u-bold '
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
 p_id=>wwv_flow_imp.id(14293030596717393)
,p_name=>'P18_DESCRICAO_RESULTADO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(25991042601116048)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>' u-bold '
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
 p_id=>wwv_flow_imp.id(14313357203717417)
,p_name=>'P18_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(23161631261897166)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14313762414717417)
,p_name=>'P18_ID_COLABORADOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(23161631261897166)
,p_prompt=>'Gerente Avaliado:'
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
 p_id=>wwv_flow_imp.id(14314160314717418)
,p_name=>'P18_ID_COLABORADOR_AVALIADOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(23161631261897166)
,p_prompt=>'Avaliador:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.nome || '' - '' ||decode(a.lotacao_id, 11, c_diretoria.ds_cargo, (SELECT c.ds_cargo',
'          FROM hp_cargos c, hp_lotacao l, hp_colaboradores e',
'         WHERE l.lotacao_id(+) = c.lotacao_id',
'           AND c.colaborador_id = :P18_ID_COLABORADOR_AVALIADOR',
'           AND nvl(c.dt_fim,sysdate) >= (SELECT MAX(nvl(x.dt_fim,sysdate)) FROM hp_cargos x WHERE x.colaborador_id = c.colaborador_id)',
'           AND e.colaborador_id = c.colaborador_id',
'           AND e.lotacao_id = l.lotacao_id)) d,',
'       a.colaborador_id r',
'  FROM hp_colaboradores a,',
'       pcr_cargo c_diretoria',
' WHERE a.colaborador_id = :P18_ID_COLABORADOR_AVALIADOR',
'   AND a.id_cargo = c_diretoria.id_cargo;',
'',
'',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_display_when_type=>'NEVER'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(4125246033157626)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14314532796717419)
,p_name=>'P18_DT_FIM_AVALIACAO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(23161631261897166)
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
 p_id=>wwv_flow_imp.id(14314975391717420)
,p_name=>'P18_TIPO_AVALIACAO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(23161631261897166)
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
 p_id=>wwv_flow_imp.id(14315319535717420)
,p_name=>'P18_FEEDBACK_REALIZADO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(23161631261897166)
,p_item_default=>'null;'
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
 p_id=>wwv_flow_imp.id(14315760395717420)
,p_name=>'P18_DT_FEEDBACK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(23161631261897166)
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
 p_id=>wwv_flow_imp.id(14316133618717421)
,p_name=>'P18_OBSERVACAO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(23161631261897166)
,p_prompt=>unistr('Observa\00E7\00F5es:')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>4000
,p_cHeight=>5
,p_colspan=>9
,p_grid_label_column_span=>2
,p_read_only_when=>'P18_PROTEGE_AVALIACAO'
,p_read_only_when2=>'SIM'
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
 p_id=>wwv_flow_imp.id(14316541672717422)
,p_name=>'P18_ID_GERENTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(23161631261897166)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14316970752717422)
,p_name=>'P18_RESPOSTAS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(23161631261897166)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14317316449717422)
,p_name=>'P18_SOMA_TOTAL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(23161631261897166)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14317770532717423)
,p_name=>'P18_QTD_RESPOSTAS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(23161631261897166)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14318175736717423)
,p_name=>'P18_PERFIL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(23161631261897166)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14660409968934601)
,p_name=>'P18_PROTEGE_AVALIACAO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(23161631261897166)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15250834941172717)
,p_name=>'P18_MSG_ERRO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(23161631261897166)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17401476348945902)
,p_name=>'P18_TITULO1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(23161631261897166)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17401510075945903)
,p_name=>'P18_TITULO2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(23161631261897166)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17401636818945904)
,p_name=>'P18_TITULO3'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(23161631261897166)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18803124286453619)
,p_name=>'P18_DT_GERACAO_AVALIACAO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(23161631261897166)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22218249650373602)
,p_name=>'P18_PERIODO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(23161631261897166)
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
 p_id=>wwv_flow_imp.id(14336476261717445)
,p_validation_name=>'verifica_se_respondeu_tudo'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    --',
'    if :P18_QTD_RESPOSTAS < 15 AND :REQUEST = ''BTN-FINALIZAR'' then',
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
,p_validation_condition=>'BTN-FINALIZAR, BTN-SALVAR, BTN-SALVAR-2'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14343525847717454)
,p_name=>'mostra_foco'
,p_event_sequence=>5
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.a-CardView-item'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusin'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14344086399717454)
,p_event_id=>wwv_flow_imp.id(14343525847717454)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'EVENT_SOURCE'
,p_attribute_01=>'mostra_foco'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14342643523717453)
,p_name=>'retira_foco'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.a-CardView-item'
,p_bind_type=>'bind'
,p_bind_event_type=>'focusout'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14343130303717453)
,p_event_id=>wwv_flow_imp.id(14342643523717453)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'EVENT_SOURCE'
,p_attribute_01=>'mostra_foco'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14340710679717452)
,p_name=>'altera_data'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_FEEDBACK_REALIZADO'
,p_bind_type=>'live'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14342217529717453)
,p_event_id=>wwv_flow_imp.id(14340710679717452)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_DT_FEEDBACK'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(sysdate,''dd/mm/yyyy'')',
'from dual'))
,p_attribute_07=>'P18_DT_FEEDBACK'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P18_FEEDBACK_REALIZADO'
,p_client_condition_expression=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14341713032717453)
,p_event_id=>wwv_flow_imp.id(14340710679717452)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_DT_FEEDBACK'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P18_FEEDBACK_REALIZADO'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14341290882717452)
,p_event_id=>wwv_flow_imp.id(14340710679717452)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_DT_FEEDBACK'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14344405886717454)
,p_name=>'clica-pergunta-1'
,p_event_sequence=>320
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.a-CardView-item'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14344918009717455)
,p_event_id=>wwv_flow_imp.id(14344405886717454)
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
'    $s(''P18_RESPOSTAS'', listaResposta);',
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
 p_id=>wwv_flow_imp.id(14345312018717455)
,p_name=>'Carrega_respostas'
,p_event_sequence=>330
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14345864725717455)
,p_event_id=>wwv_flow_imp.id(14345312018717455)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var respostas = $v(''P18_RESPOSTAS'');',
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
 p_id=>wwv_flow_imp.id(14338457600717450)
,p_name=>'habilita_desabilita_perguntas'
,p_event_sequence=>340
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14338904654717450)
,p_event_id=>wwv_flow_imp.id(14338457600717450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.a-CardView-item'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P18_PROTEGE_AVALIACAO'
,p_client_condition_expression=>'SIM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14339496168717451)
,p_event_id=>wwv_flow_imp.id(14338457600717450)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'.a-CardView-item'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P18_DT_FIM_AVALIACAO'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14339806544717451)
,p_name=>'habilita_desabilita_avaliacao'
,p_event_sequence=>350
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14340332693717452)
,p_event_id=>wwv_flow_imp.id(14339806544717451)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_FEEDBACK_REALIZADO,P18_OBSERVACAO'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P18_DT_FIM_AVALIACAO'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22218345261373603)
,p_event_id=>wwv_flow_imp.id(14339806544717451)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_FEEDBACK_REALIZADO,P18_OBSERVACAO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P18_PROTEGE_AVALIACAO'
,p_client_condition_expression=>'SIM'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14337541681717447)
,p_name=>'busca_descricao_resultado'
,p_event_sequence=>360
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14338047134717450)
,p_event_id=>wwv_flow_imp.id(14337541681717447)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'begin',
'',
'  --',
'  IF :P18_SOMA_TOTAL > 40 THEN',
'     :P18_SOMA_TOTAL := 40;',
'  END IF;',
'  --',
'  pck_ad.busca_descricao_resultado(:P18_TIPO_AVALIACAO,:P18_SOMA_TOTAL, :P18_TITULO_RESULTADO, :P18_DESCRICAO_RESULTADO);',
'end;'))
,p_attribute_02=>'P18_SOMA_TOTAL'
,p_attribute_03=>'P18_TITULO_RESULTADO,P18_DESCRICAO_RESULTADO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P18_DT_FIM_AVALIACAO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14336709578717445)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CARREGA_DADOS_AVALIACAO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':p18_perfil := :gl_perfil;',
'',
unistr('-- CARREGA DADOS AD_AVALIA\00C7\00C3O --'),
'select A.ID_COLABORADOR,',
'       A.ID_COLABORADOR_AVALIADOR,',
'       A.DT_FIM_AVALIACAO,',
'       A.TP_AVALIACAO,',
'       DECODE(A.DT_FEEDBACK,NULL,0,1) FEEDBACK_REALIZADO,',
'       A.DT_FEEDBACK,',
'       A.OBSERVACAO,',
'       A.DT_GERACAO_AVALIACAO, ',
'       ''JAN/DEZ ''||TO_CHAR(A.DT_GERACAO_AVALIACAO,''YYYY'') ',
'into :P18_ID_COLABORADOR,',
'     :P18_ID_COLABORADOR_AVALIADOR,',
'     :P18_DT_FIM_AVALIACAO,',
'     :P18_TIPO_AVALIACAO,',
'     :P18_FEEDBACK_REALIZADO,',
'     :P18_DT_FEEDBACK,',
'     :P18_OBSERVACAO,',
'     :P18_DT_GERACAO_AVALIACAO,',
'     :P18_PERIODO',
'from AD_AVALIACAO A',
'where A.ID = :P18_ID; ',
'--',
'-- IDENTIFICA SE EH GERENTE --',
'SELECT A.ID_GERENTE',
'  INTO :P18_ID_GERENTE',
'  FROM v_ad_dados_usuarios a',
' WHERE a.colaborador_id = :P18_ID_COLABORADOR_AVALIADOR;',
'',
'',
'-- CARREGA DADOS AD_AVALIACAO_ITEM --',
'',
'SELECT listagg(''pergunta-''||ai.id_indicador || ''='' || (ai.nr_escolha - 1), '':'') within GROUP(ORDER BY ai.id_indicador) ',
'into :P18_RESPOSTAS',
'  FROM ad_avaliacao_item ai',
' WHERE ai.id = :P18_ID',
' ORDER BY ai.id_indicador;',
'',
unistr('-- carrega a pontua\00E7\00E3o total --'),
'select nvl(sum(ai.vl_escolha),0) ',
'into :p18_soma_total ',
'from ad_avaliacao_item ai',
'    where ai.id = :p18_id; ',
'',
'-- quantidade respostas preenchidas --',
'select nvl(count(1),0)',
'into :P18_QTD_RESPOSTAS ',
'from ad_avaliacao_item ai',
'    where ai.id = :p18_id',
'      and nvl(ai.nr_escolha,0) > 0; ',
'',
unistr('-- verifica se bloqueia a pagina ou n\00E3o conforme o perfil --'),
':P18_PROTEGE_AVALIACAO := ''SIM'';',
'--',
'if (:P18_ID_GERENTE = 0 and  :P18_PERFIL IN(1,5) AND ',
'   (:P18_DT_GERACAO_AVALIACAO  BETWEEN TRUNC(TO_DATE(''01/11/''||TO_CHAR(SYSDATE,''YYYY'')),''mm'') AND  ',
'                                      LAST_DAY(''01/12/''||(TO_CHAR(SYSDATE,''YYYY''))) OR',
'    (:P18_DT_GERACAO_AVALIACAO <= to_date(''12/01/2022'',''dd/mm/yyyy'') and to_char(sysdate,''yyyy'') = ''2022'')  ',
'       -- a pedido da Juliana da DVGE foi prorrogado o prazo de 31/12 do ano corrente para 12/01/2022 --                                        ',
'                                      ',
'                                      )) then    -- gerente sendo avaliado pelo colaborador --',
unistr('   :P18_PROTEGE_AVALIACAO := ''N\00C3O'';'),
'end if;',
'',
'',
'',
'  ',
'-- carrega titulos --',
'select UPPER(c.NM_COMPETENCIA_AREA) || '' - ''  ||c.DS_COMPETENCIA ',
'  into :P18_TITULO1',
'  from AD_COMPETENCIA c',
'  where c.ID = 1;',
'',
'  select UPPER(c.NM_COMPETENCIA_AREA) || '' - ''  ||c.DS_COMPETENCIA ',
'  into :P18_TITULO2',
'  from AD_COMPETENCIA c',
'  where c.ID = 2;',
'',
'select UPPER(c.NM_COMPETENCIA_AREA) || '' - ''  ||c.DS_COMPETENCIA ',
'  into :P18_TITULO3',
'  from AD_COMPETENCIA c',
'  where c.ID = 3;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14337168014717446)
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
'    FROM apex_string.split(rtrim(:P18_RESPOSTAS, '':''), '':'')',
'    order by 1;',
' r1 c1%ROWTYPE;',
'',
'begin',
unistr('    :P18_MSG_ERRO := ''Avalia\00E7\00E3o atualizada com sucesso!'';'),
'',
unistr('    -- atualiza dados da avalia\00E7\00E3o (AD_AVALIACAO)--'),
'    update ad_avaliacao',
'    set dt_feedback = DECODE(:P18_FEEDBACK_REALIZADO,1, SYSDATE,NULL),',
'        observacao = :P18_OBSERVACAO',
'    where id = :P18_ID ;',
'',
unistr('    -- atualiza pontua\00E7\00F5es da avalia\00E7\00E3o (AD_AVALIACAO_ITEM) --'),
'    OPEN c1;',
'    FETCH c1 INTO r1;',
'    --',
'    WHILE c1%FOUND LOOP',
'        UPDATE ad_avaliacao_item ai',
'            SET nr_escolha = r1.nr_escolha + 1,',
'                vl_escolha = (SELECT decode(r1.nr_escolha, 0, ac.vl_conceito_1, ',
'                                                        1, ac.vl_conceito_2, ',
'                                                        2, ac.vl_conceito_3, ',
'                                                        3, ac.vl_conceito_4, 0) vl_escolha',
'                                FROM ad_competencia ac',
'                                WHERE CASE',
'                                        WHEN r1.id_indicador BETWEEN 1 AND 3 THEN',
'                                        1',
'                                        WHEN r1.id_indicador BETWEEN 4 AND 11 THEN',
'                                        2',
'                                        WHEN r1.id_indicador BETWEEN 12 AND 15 THEN',
'                                        3',
'                                    END = ac.id)',
'        WHERE ai.id = :p18_id',
'        AND ai.id_indicador = r1.id_indicador;',
'        --',
'        FETCH c1 INTO r1;',
'        --',
'    END LOOP;',
'    CLOSE c1;',
'    --',
unistr('    -- atualiza a soma total das op\00E7\00F5es escolhidas --'),
'    select nvl(sum(ai.vl_escolha),0) ',
'    into :p18_soma_total ',
'    from ad_avaliacao_item ai',
'     where ai.id = :p18_id;    ',
'',
unistr('    -- atualiza a soma total das op\00E7\00F5es escolhidas --'),
'    select nvl(count(1),0) ',
'    into :P18_QTD_RESPOSTAS ',
'    from ad_avaliacao_item ai',
'     where ai.id = :p18_id',
'       and nvl(ai.nr_escolha,0) > 0;',
'    --',
'    if :P18_QTD_RESPOSTAS < 15 and :REQUEST = ''BTN-FINALIZAR'' then',
'       --raise_application_error(-20001,''Favor responder todas as perguntas!'');',
'       :P18_MSG_ERRO := ''Favor responder todas as perguntas!'';',
'    elsif :P18_QTD_RESPOSTAS = 15 and :REQUEST = ''BTN-FINALIZAR'' then',
unistr('    -- finaliza a avalia\00E7\00E3o --'),
'        update ad_avaliacao',
'        set dt_fim_avaliacao = sysdate',
'        where id = :P18_ID ;    ',
'        --',
'        :P18_DT_FIM_AVALIACAO := sysdate;',
'        --',
'    end if;',
'    --',
'    --if :REQUEST = ''BTN-FINALIZAR'' and :P18_FEEDBACK_REALIZADO != 1 then',
'    --   raise_application_error(-20002,''Favor preencher o feedback!'');',
'    --end if;      ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#SQLERRM#',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'BTN-SALVAR;BTN-SALVAR-2;BTN-FINALIZAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'&P18_MSG_ERRO.',
''))
);
wwv_flow_imp.component_end;
end;
/
