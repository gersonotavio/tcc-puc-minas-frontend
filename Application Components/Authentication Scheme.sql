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
--   Date and Time:   18:54 Thursday July 7, 2022
--   Exported By:     GERSON
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     AUTHENTICATION: 53454720403515244610
--     AUTHENTICATION: 31987256144179639849
--     AUTHENTICATION: 31986559291046031836
--     AUTHORIZATION: 31986709599749032058
--   Manifest End
--   Version:         22.1.1
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/security/authorizations/direitos_de_administração
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(31986709599749032058)
,p_name=>unistr('Direitos de Administra\00E7\00E3o')
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :gl_admin = 1 then ',
' return true;',
'else',
' return false;',
'end if;'))
,p_error_message=>unistr('Privil\00E9gios insuficientes; o usu\00E1rio n\00E3o \00E9 um Administrador')
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authentications/contas_do_application_express
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(31986559291046031836)
,p_name=>'Contas do Application Express'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/security/authentications/autenticacao_ad
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(31987256144179639849)
,p_name=>'Autenticacao_AD'
,p_scheme_type=>'NATIVE_LDAP'
,p_attribute_01=>'dc.celos.loc'
,p_attribute_02=>'389'
,p_attribute_03=>'NO_SSL'
,p_attribute_04=>'celosdomain\%LDAP_USER%'
,p_attribute_05=>'Y'
,p_attribute_08=>'STD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/security/authentications/google_authentication
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(53454720403515244610)
,p_name=>'Google_Authentication'
,p_scheme_type=>'NATIVE_SOCIAL'
,p_attribute_01=>wwv_flow_imp.id(53453834926584842855)
,p_attribute_02=>'GOOGLE'
,p_attribute_07=>'profile, email'
,p_attribute_09=>'email'
,p_attribute_10=>'email, name'
,p_attribute_11=>'N'
,p_attribute_13=>'Y'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'https://www.google.com/accounts/logout'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_switch_in_session_yn=>'Y'
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
