prompt --application/pages/page_10000
begin
--   Manifest
--     PAGE: 10000
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
 p_id=>10000
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>unistr('Administra\00E7\00E3o')
,p_alias=>'ADMIN'
,p_step_title=>unistr('Administra\00E7\00E3o')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4155803138157730)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(4155261545157727)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>A p\00E1gina de administra\00E7\00E3o permite que os propriet\00E1rios do aplicativo (Administradores) configurem o aplicativo e mantenham os dados comuns usados pelo aplicativo.'),
unistr('Selecionando uma das defini\00E7\00F5es dispon\00EDveis, os administradores podem alterar muito a forma pela qual o aplicativo \00E9 exibido e/ou as funcionalidades dispon\00EDveis para os usu\00E1rios finais.</p>'),
unistr('<p>O acesso a esta p\00E1gina deve ser limitado somente aos Administradores.</p>')))
,p_page_component_map=>'06'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20210824143037'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4171944246157816)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4072200293157582)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(4005223521157508)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(4129384583157633)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4173289357157817)
,p_plug_name=>'Coluna 1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(4032045025157555)
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4173671344157817)
,p_plug_name=>unistr('Interface do Usu\00E1rio')
,p_parent_plug_id=>wwv_flow_imp.id(4173289357157817)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(4172543574157816)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(4110900812157614)
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(4154759012157725)
);
wwv_flow_imp.component_end;
end;
/
