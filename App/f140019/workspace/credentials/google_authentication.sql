prompt --workspace/credentials/google_authentication
begin
--   Manifest
--     CREDENTIAL: Google_Authentication
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>3060310794164477
,p_default_application_id=>777
,p_default_id_offset=>31982554338203874331
,p_default_owner=>'DVGE'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(21471280588380968524)
,p_name=>'Google_Authentication'
,p_static_id=>'Google_Authentication'
,p_authentication_type=>'OAUTH2_CLIENT_CREDENTIALS'
,p_prompt_on_install=>true
);
wwv_flow_imp.component_end;
end;
/
