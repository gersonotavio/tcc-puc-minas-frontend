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
--   Date and Time:   18:57 Thursday July 7, 2022
--   Exported By:     GERSON
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     BUTTON_TEMPLATE: 53110226402649402965
--     BUTTON_TEMPLATE: 31986681606154031961
--     BUTTON_TEMPLATE: 31986682285343031963
--     BUTTON_TEMPLATE: 31986682353194031963
--   Manifest End
--   Version:         22.1.1
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(31986681606154031961)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidde'
||'n="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL!ATTR#" aria-label="#LABEL!ATTR#"><span class="t-Icon #ICON_CSS_CLASSE'
||'S#" aria-hidden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(31986682285343031963)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(31986682353194031963)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/google_login
begin
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(53110226402649402965)
,p_template_name=>'google login'
,p_internal_name=>'GOOGLE_LOGIN'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html>',
'<head>',
'  <meta name="google-signin-client_id" content="YOUR_CLIENT_ID.apps.googleusercontent.com">',
'</head>',
'<body>',
'  <div id="my-signin2"></div>',
'  <script>',
'    function onSuccess(googleUser) {',
'      console.log(''Logged in as: '' + googleUser.getBasicProfile().getName());',
'    }',
'    function onFailure(error) {',
'      console.log(error);',
'    }',
'    function renderButton() {',
'      gapi.signin2.render(''my-signin2'', {',
'        ''scope'': ''profile email'',',
'        ''width'': 240,',
'        ''height'': 50,',
'        ''longtitle'': true,',
'        ''theme'': ''dark'',',
'        ''onsuccess'': onSuccess,',
'        ''onfailure'': onFailure',
'      });',
'    }',
'  </script>',
'',
'  <script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>',
'</body>',
'</html>',
''))
,p_hot_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html>',
'<head>',
'  <meta name="google-signin-client_id" content="YOUR_CLIENT_ID.apps.googleusercontent.com">',
'</head>',
'<body>',
'  <div id="my-signin2"></div>',
'  <script>',
'    function onSuccess(googleUser) {',
'      console.log(''Logged in as: '' + googleUser.getBasicProfile().getName());',
'    }',
'    function onFailure(error) {',
'      console.log(error);',
'    }',
'    function renderButton() {',
'      gapi.signin2.render(''my-signin2'', {',
'        ''scope'': ''profile email'',',
'        ''width'': 240,',
'        ''height'': 50,',
'        ''longtitle'': true,',
'        ''theme'': ''dark'',',
'        ''onsuccess'': onSuccess,',
'        ''onfailure'': onFailure',
'      });',
'    }',
'  </script>',
'',
'  <script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>',
'</body>',
'</html>',
''))
,p_theme_class_id=>13
,p_preset_template_options=>'t-Button--large:t-Button--stretch'
,p_theme_id=>42
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
