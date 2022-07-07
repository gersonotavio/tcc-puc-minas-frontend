prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 140019
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>3060310794164477
,p_default_application_id=>777
,p_default_id_offset=>31982554338203874331
,p_default_owner=>'DVGE'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(4155803138157730)
,p_group_name=>unistr('Administra\00E7\00E3o')
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(27010041501965255)
,p_group_name=>unistr('Vis\00E3o Geral')
,p_group_desc=>unistr('Relat\00F3rios da Vis\00E3o Geral')
);
wwv_flow_imp.component_end;
end;
/
