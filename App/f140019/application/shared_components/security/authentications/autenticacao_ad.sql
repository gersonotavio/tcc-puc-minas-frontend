prompt --application/shared_components/security/authentications/autenticacao_ad
begin
--   Manifest
--     AUTHENTICATION: Autenticacao_AD
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
 p_id=>wwv_flow_imp.id(4701805975765518)
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
wwv_flow_imp.component_end;
end;
/
