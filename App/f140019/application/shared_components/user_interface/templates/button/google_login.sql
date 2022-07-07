prompt --application/shared_components/user_interface/templates/button/google_login
begin
--   Manifest
--     BUTTON TEMPLATE: GOOGLE_LOGIN
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>3060310794164477
,p_default_application_id=>777
,p_default_id_offset=>31982554338203874331
,p_default_owner=>'DVGE'
);
wwv_flow_imp_shared.create_button_templates(
 p_id=>wwv_flow_imp.id(21127672064445528634)
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
wwv_flow_imp.component_end;
end;
/
