prompt --application/shared_components/security/authentications/google_authentication
begin
--   Manifest
--     AUTHENTICATION: Google_Authentication
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>3060310794164477
,p_default_application_id=>777
,p_default_id_offset=>31982554338203874331
,p_default_owner=>'DVGE'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(21472166065311370279)
,p_name=>'Google_Authentication'
,p_scheme_type=>'NATIVE_SOCIAL'
,p_attribute_01=>wwv_flow_imp.id(21471280588380968524)
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
wwv_flow_imp.component_end;
end;
/
