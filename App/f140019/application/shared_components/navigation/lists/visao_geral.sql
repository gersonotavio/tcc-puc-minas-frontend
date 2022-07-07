prompt --application/shared_components/navigation/lists/visao_geral
begin
--   Manifest
--     LIST: VISAO_GERAL
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
 p_id=>wwv_flow_imp.id(26901644272992722)
,p_name=>'VISAO_GERAL'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26901849814992755)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Resultado Geral'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#resultado_geral.png'
,p_list_item_icon_attributes=>' width="60%" height="60%"'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :gl_perfil in (3,4) then',
'   return true;',
'else',
'   return false;',
'end if;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26903093138992759)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Resultado Lota\00E7\00E3o'),
''))
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#resultado lotacao.png'
,p_list_item_icon_attributes=>' width="60%" height="60%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
