prompt --application/shared_components/navigation/lists/menu_de_navegação_da_área_de_trabalho
begin
--   Manifest
--     LIST: Menu de Navegação da Área de Trabalho
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
 p_id=>wwv_flow_imp.id(4005765010157512)
,p_name=>unistr('Menu de Navega\00E7\00E3o da \00C1rea de Trabalho')
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4162539867157776)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('In\00EDcio')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_security_scheme=>wwv_flow_imp.id(4155261545157727)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7149483468561248640)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\00C1rea de Compet\00EAncia')
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4410540875621707)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('Indicador de Compet\00EAncia')
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_imp.id(4155261545157727)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11726667411255721)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Indicadores de Resultados'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_imp.id(4155261545157727)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,5'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12541564584275965)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('Usu\00E1rios')
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8,9:::'
,p_security_scheme=>wwv_flow_imp.id(4155261545157727)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8,9'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14040204918594546)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Diretorias'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_imp.id(4155261545157727)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13,14'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14052295164722789)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>unistr('Ger\00EAncias e Avaliadores')
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_imp.id(4155261545157727)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15,16'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32801847859395981)
,p_list_item_display_sequence=>115
,p_list_item_link_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Relat\00F3rios'),
''))
,p_security_scheme=>wwv_flow_imp.id(4155261545157727)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(25223811119198217)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Resultado Geral'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(32801847859395981)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(26429786284010354)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>unistr('Resultado Lota\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(32801847859395981)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'31'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32827128195670691)
,p_list_item_display_sequence=>135
,p_list_item_link_text=>'JOBs'
,p_security_scheme=>wwv_flow_imp.id(4155261545157727)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32804797363564011)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>unistr('Job Gera\00E7\00E3o Alinhamentos')
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(32827128195670691)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'40'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32828128114677818)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>unistr('Job Gera\00E7\00E3o Avalia\00E7\00F5es')
,p_list_item_link_target=>'f?p=&APP_ID.:41:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(32827128195670691)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'41'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(33218780229653173)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>unistr('Job Email Autoavalia\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:42:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(32827128195670691)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'42'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(33242623657695982)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>unistr('Job Email Avalia\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:43:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(32827128195670691)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'43'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(33249904857712424)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Job Email Alinhamento'
,p_list_item_link_target=>'f?p=&APP_ID.:44:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(32827128195670691)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'44'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(4171495362157812)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>unistr('Administra\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(4155261545157727)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
