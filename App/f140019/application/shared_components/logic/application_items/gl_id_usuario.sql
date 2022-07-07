prompt --application/shared_components/logic/application_items/gl_id_usuario
begin
--   Manifest
--     APPLICATION ITEM: GL_ID_USUARIO
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>3060310794164477
,p_default_application_id=>777
,p_default_id_offset=>31982554338203874331
,p_default_owner=>'DVGE'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(10518485905283820)
,p_name=>'GL_ID_USUARIO'
,p_protection_level=>'I'
);
wwv_flow_imp.component_end;
end;
/
