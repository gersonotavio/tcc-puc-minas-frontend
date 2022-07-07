prompt --application/create_application
begin
--   Manifest
--     FLOW: 140019
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>3060310794164477
,p_default_application_id=>777
,p_default_id_offset=>31982554338203874331
,p_default_owner=>'DVGE'
);
wwv_flow_imp.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'DVGE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,unistr('Avalia\00E7\00E3o de Desempenho'))
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,unistr('AVALIA\00C7\00C3O-DE-DESEMPENHO'))
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'1AC51CC6E4BC90BE9E9DA2E7125F5D2E94350A2FEB3BD9E4455C9DC5CF2DFC59'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'19.2'
,p_flow_language=>'pt-br'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>unistr('Aplicativo criado com base no assistente de cria\00E7\00E3o de aplicativos 2021.08.24.')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_imp.id(4004952842157505)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>unistr('Avalia\00E7\00E3o de Desempenho')
,p_app_builder_icon_name=>'app-icon.svg'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_tokenize_row_search=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>unistr('Avalia\00E7\00E3o de Desempenho')
,p_last_updated_by=>'GERSON'
,p_last_upd_yyyymmddhh24miss=>'20220601022153'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
,p_print_server_type=>'NATIVE'
,p_is_pwa=>'N'
);
wwv_flow_imp.component_end;
end;
/
