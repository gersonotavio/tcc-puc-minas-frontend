prompt --application/shared_components/navigation/lists/menu_de_sistemas
begin
--   Manifest
--     LIST: Menu de Sistemas
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>3060310794164477
,p_default_application_id=>777
,p_default_id_offset=>31982554338203874331
,p_default_owner=>'DVGE'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(35522968911962219)
,p_name=>'Menu de Sistemas'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp.component_end;
end;
/
