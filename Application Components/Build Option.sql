prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_220100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>35356834705155059975
,p_default_application_id=>140019
,p_default_id_offset=>31982554338203874331
,p_default_owner=>'WKSP_CELOS'
);
end;
/
 
prompt APPLICATION 140019 - Avaliação de Desempenho
--
-- Application Export:
--   Application:     140019
--   Name:            Avaliação de Desempenho
--   Date and Time:   18:56 Thursday July 7, 2022
--   Exported By:     GERSON
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     BUILD_OPTION: 31986709097216032056
--   Manifest End
--   Version:         22.1.1
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(31986709097216032056)
,p_build_option_name=>unistr('Recurso: Sele\00E7\00E3o de Estilo do Tema')
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>unistr('Permitir que os administradores selecionem um esquema de cores padr\00E3o (estilo de tema) para o aplicativo. Os administradores tamb\00E9m podem permitir que os usu\00E1rios finais escolham seu pr\00F3prio estilo de tema. ')
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
--commit;
end;
/
set verify on feedback on define on
prompt  ...done
