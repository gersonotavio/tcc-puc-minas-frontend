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
--   Date and Time:   18:51 Thursday July 7, 2022
--   Exported By:     GERSON
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     APP_ITEM: 31987257282698663474
--     APP_ITEM: 31993072824109158151
--     APP_ITEM: 31987257066353662427
--   Manifest End
--   Version:         22.1.1
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/logic/application_items/gl_admin
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(31987257282698663474)
,p_name=>'GL_ADMIN'
,p_protection_level=>'I'
);
end;
/
prompt --application/shared_components/logic/application_items/gl_id_usuario
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(31993072824109158151)
,p_name=>'GL_ID_USUARIO'
,p_protection_level=>'I'
);
end;
/
prompt --application/shared_components/logic/application_items/gl_perfil
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(31987257066353662427)
,p_name=>'GL_PERFIL'
,p_protection_level=>'I'
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
