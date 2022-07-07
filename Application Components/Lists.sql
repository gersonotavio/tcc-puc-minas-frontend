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
--   Date and Time:   19:01 Thursday July 7, 2022
--   Exported By:     GERSON
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     LIST: 31995187989660723219
--     LIST: 31986560103214031843
--     LIST: 32009455982476867053
--     LIST: 31995184969718716299
--     LIST: 31986706443695032009
--     LIST: 31994871858744253936
--     LIST: 31986726881778032147
--     LIST: 32018077307115836550
--     LIST: 31999364535045102006
--     LIST: 31995190962124725371
--     LIST: 31999361092635098418
--   Manifest End
--   Version:         22.1.1
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/navigation/lists/menu_de_navegação_da_área_de_trabalho
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(31986560103214031843)
,p_name=>unistr('Menu de Navega\00E7\00E3o da \00C1rea de Trabalho')
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31986716878071032107)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('In\00EDcio')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_security_scheme=>wwv_flow_imp.id(31986709599749032058)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(39132037806765122971)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\00C1rea de Compet\00EAncia')
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31986964879079496038)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('Indicador de Compet\00EAncia')
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_imp.id(31986709599749032058)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31994281005615130052)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Indicadores de Resultados'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_imp.id(31986709599749032058)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,5'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995095902788150296)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('Usu\00E1rios')
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8,9:::'
,p_security_scheme=>wwv_flow_imp.id(31986709599749032058)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8,9'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31996594543122468877)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Diretorias'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_imp.id(31986709599749032058)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13,14'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31996606633368597120)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>unistr('Ger\00EAncias e Avaliadores')
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_imp.id(31986709599749032058)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15,16'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32015356186063270312)
,p_list_item_display_sequence=>115
,p_list_item_link_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Relat\00F3rios'),
''))
,p_security_scheme=>wwv_flow_imp.id(31986709599749032058)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32007778149323072548)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Resultado Geral'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(32015356186063270312)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32008984124487884685)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>unistr('Resultado Lota\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(32015356186063270312)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'31'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32015381466399545022)
,p_list_item_display_sequence=>135
,p_list_item_link_text=>'JOBs'
,p_security_scheme=>wwv_flow_imp.id(31986709599749032058)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32015359135567438342)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>unistr('Job Gera\00E7\00E3o Alinhamentos')
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.::::'
,p_parent_list_item_id=>wwv_flow_imp.id(32015381466399545022)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'40'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32015382466318552149)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>unistr('Job Gera\00E7\00E3o Avalia\00E7\00F5es')
,p_list_item_link_target=>'f?p=&APP_ID.:41:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(32015381466399545022)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'41'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32015773118433527504)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>unistr('Job Email Autoavalia\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:42:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(32015381466399545022)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'42'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32015796961861570313)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>unistr('Job Email Avalia\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:43:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(32015381466399545022)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'43'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32015804243061586755)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Job Email Alinhamento'
,p_list_item_link_target=>'f?p=&APP_ID.:44:&APP_SESSION.::&DEBUG.:::'
,p_parent_list_item_id=>wwv_flow_imp.id(32015381466399545022)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'44'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31986725833566032143)
,p_list_item_display_sequence=>10000
,p_list_item_link_text=>unistr('Administra\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-user-wrench'
,p_security_scheme=>wwv_flow_imp.id(31986709599749032058)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/barra_de_navegação_da_área_de_trabalho
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(31986706443695032009)
,p_name=>unistr('Barra de Navega\00E7\00E3o da \00C1rea de Trabalho')
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31986724277821032142)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31986724759032032143)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_imp.id(31986724277821032142)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31986725207567032143)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sair'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_imp.id(31986724277821032142)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/interface_do_usuário
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(31986726881778032147)
,p_name=>unistr('Interface do Usu\00E1rio')
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(31986709097216032056)
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31986727321733032148)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('Sele\00E7\00E3o de Estilo do Tema')
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&SESSION.::&DEBUG.:10010:::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>unistr('Define a apar\00EAncia e a funcionalidade do aplicativo padr\00E3o')
,p_required_patch=>wwv_flow_imp.id(31986709097216032056)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/paginas_ad_colaborador
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(31994871858744253936)
,p_name=>'PAGINAS_AD_COLABORADOR'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32012574713525413207)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Alinhamento'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10,11:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#alinhamento_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32012589445029816661)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>unistr('Minha Autoavalia\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24,25:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#autoavaliacao_colorido.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32012592396360865338)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>unistr('Minha Avalia\00E7\00E3o de Desempenho')
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20,21:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#minha_avaliacao_desempenho_26112021.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32012593609766879341)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>unistr('Meu Di\00E1rio')
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::P26_ITEM_MENU,P26_PAGINA_ORIGEM:MEU_DIARIO,26:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#meu_diario_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32012594071596883212)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o de Desempenho dos Gestores')
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17,18:P20_PAGINA_ORIGEM:99:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avaliacao_desemp_gestores_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32012594581371887477)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>unistr('Descri\00E7\00E3o da Fun\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#descricao_funcao.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/paginas_ad_gerente
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(31995184969718716299)
,p_name=>'PAGINAS_AD_GERENTE'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32012905526018886904)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o Contrato de Experi\00EAncia')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avaliacao_contrato_experiencia.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32012894137090865955)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>unistr('Alinhamento \00C1rea')
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,7,10,11:P7_ITEM_MENU:ALINHAMENTO_CELOS_PERFIL_GERENTE:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#alinhamento_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32012906621322903501)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>unistr('Autoavalia\00E7\00E3o \00C1rea')
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23,24,25:P23_PAGINA_ORIGEM,P23_ITEM_MENU:23,AUTOAV_CELOS_PERFIL_GERENTE:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#autoavaliacao_colorido.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32012906986020909267)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o de Desempenho \00C1rea')
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19, 20,21:P19_ITEM_MENU:AV_DESEMPENHO_CELOS_PERFIL_GERENTE:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avaliacao_desemp_gestores_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32012895305734865957)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>unistr('Di\00E1rio de Avalia\00E7\00E3o \00C1rea')
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:26,27:P26_ITEM_MENU:DIARIO_AVALIACAO_PERFIL_GERENTE:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#diario_avaliacao_area_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32012895709688865957)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>unistr('Meu Di\00E1rio')
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::P26_ITEM_MENU,P26_PAGINA_ORIGEM:MEU_DIARIO,26:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#meu_diario_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32012894550732865956)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>unistr('Minha Autoavalia\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24,25:P24_ID_USUARIO:&GL_ID_USUARIO.:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#autoavaliacao_colorido.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32012894959901865957)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>unistr('Minhas Avalia\00E7\00F5es de Desempenho')
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20,21:P20_ID_USUARIO:&GL_ID_USUARIO.:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#minha_avaliacao_desempenho_26112021.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32012896549086865960)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>unistr('Descri\00E7\00F5es de Fun\00E7\00E3o \00C1rea')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#descricao_funcao.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38932397297390914696)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>unistr('Vis\00E3o Geral')
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#visao_geral_colorido.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/paginas_ad_admnistrador
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(31995187989660723219)
,p_name=>'PAGINAS_AD_ADMNISTRADOR'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(38943692634083931917)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>unistr('Cadastro de Usu\00E1rios')
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8,9:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#CAD_USUARIO.jpg'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(39193457598294254301)
,p_list_item_display_sequence=>6
,p_list_item_link_text=>unistr('Indicadores de Compet\00EAncia')
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33,34:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avalicao desempenho celos.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995205636258895982)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o Contrato de Experi\00EAncia CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avaliacao_contrato_experiencia.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995188190891723219)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Alinhamento CELOS'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,7,10,11:P7_ITEM_MENU:ALINHAMENTO_CELOS_PERFIL_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#alinhamento_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995188621525723219)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Autoavalia\00E7\00E3o CELOS'),
''))
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23,24,25:P23_ITEM_MENU:AUTOAV_CELOS_PERFIL_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#autoavaliacao_colorido.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995189004035723220)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o de Desempenho CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19,20,21:P19_ITEM_MENU:AV_DESEMPENHO_CELOS_PERFIL_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avaliacao_desemp_gestores_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995189405652723220)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('Di\00E1rio de Avalia\00E7\00E3o CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22,26,27:P22_ITEM_MENU:DIARIO_AVALIACAO_PERFIL_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#diario_avaliacao_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995189761716723220)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('Meu Di\00E1rio CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::P22_ITEM_MENU:MEU_DIARIO_PERFIL_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#meu_diario_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995190214868723220)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>unistr('Cadastro para avalia\00E7\00E3o de experi\00EAncia')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#cadastro_avaliacao_experiencia.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995190636169723221)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('Vis\00E3o Geral')
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#visao_geral_colorido.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/paginas_ad_dex
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(31995190962124725371)
,p_name=>'PAGINAS_AD_DEX'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995191152061725372)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o Contrato de Experi\00EAncia CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avaliacao_contrato_experiencia.png'
,p_list_item_icon_attributes=>' width="60%" height="60%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995191631911725372)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Alinhamento CELOS'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7,10,11:P7_ITEM_MENU:ALINHAMENTO_CELOS_PERFIL_DEX:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#alinhamento_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995192011478725372)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('Autoavalia\00E7\00E3o CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23,24,25:P23_ITEM_MENU:AUTOAV_CELOS_PERFIL_DEX:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#autoavaliacao_colorido.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995192398086725372)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o de Desempenho CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19,20,21:P19_ITEM_MENU:AV_DESEMPENHO_CELOS_PERFIL_DEX:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avalicao desempenho celos.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995192807107725373)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('Di\00E1rio de Avalia\00E7\00E3o CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22,26,27:P22_ITEM_MENU:DIARIO_AVALIACAO_PERFIL_DEX:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#diario_avaliacao_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995193200223725373)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('Vis\00E3o Geral')
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:29,30,31:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#visao_geral_colorido.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/pagina_ad_adm_gerente_dvge
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(31999361092635098418)
,p_name=>'PAGINA_AD_ADM_GERENTE_DVGE'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995196559189737249)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o Contrato de Experi\00EAncia')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avaliacao_contrato_experiencia.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995185170261716300)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('Alinhamento \00C1rea')
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,7,10,11:P7_ITEM_MENU:ALINHAMENTO_CELOS_PERFIL_GERENTE:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#alinhamento_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995197654493753846)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('Autoavalia\00E7\00E3o \00C1rea')
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23,24,25:P23_PAGINA_ORIGEM,P23_ITEM_MENU:23,AUTOAV_CELOS_PERFIL_GERENTE:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#autoavaliacao_colorido.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995198019191759612)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o de Desempenho \00C1rea')
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19, 20,21:P19_ITEM_MENU:AV_DESEMPENHO_CELOS_PERFIL_GERENTE:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avaliacao_desemp_gestores_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995186338905716302)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('Di\00E1rio de Avalia\00E7\00E3o \00C1rea')
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:26,27:P26_ITEM_MENU:DIARIO_AVALIACAO_PERFIL_GERENTE:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#diario_avaliacao_area_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995186742859716302)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('Meu Di\00E1rio')
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::P26_ITEM_MENU,P26_PAGINA_ORIGEM:MEU_DIARIO,26:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#meu_diario_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995185583903716301)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>unistr('Minha Autoavalia\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24,25:P24_ID_USUARIO:&GL_ID_USUARIO.:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#minha_autoavaliacao_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995185993072716302)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('Minhas Avalia\00E7\00F5es de Desempenho')
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20,21:P20_ID_USUARIO:&GL_ID_USUARIO.:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#minha_avaliacao_desempenho_26112021.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31995187582257716305)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>unistr('Descri\00E7\00F5es de Fun\00E7\00E3o \00C1rea')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#descricao_funcao.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31999361282520098441)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o Contrato de Experi\00EAncia CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avaliacao_contrato_experiencia.png'
,p_list_item_icon_attributes=>' width="60%" height="60%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31999361655929098444)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Alinhamento CELOS'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,7,10,11:P7_ITEM_MENU:ALINHAMENTO_CELOS_PERFIL_GERENTE_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#alinhamento_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31999362113974098445)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Autoavalia\00E7\00E3o CELOS'),
''))
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23,24,25:P23_ITEM_MENU:AUTOAV_CELOS_PERFIL_GERENTE_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#autoavaliacao_colorido.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31999362452030098445)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o de Desempenho CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19,20,21:P19_ITEM_MENU:AV_DESEMPENHO_CELOS_PERFIL_GERENTE_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avalicao desempenho celos.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31999362911099098445)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>unistr('Di\00E1rio de Avalia\00E7\00E3o CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22,26,27:P22_ITEM_MENU:DIARIO_AVALIACAO_PERFIL_GERENTE_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#diario_avaliacao_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31999363265355098445)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>unistr('Meu Di\00E1rio CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::P22_ITEM_MENU,P22_PAGINA_ORIGEM:MEU_DIARIO_PERFIL_GERENTE_ADM,22:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#meu_diario_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31999363672016098446)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>unistr('Cadastro para avalia\00E7\00E3o de experi\00EAncia')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#cadastro_avaliacao_experiencia.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31999364072289098446)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>unistr('Vis\00E3o Geral')
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#visao_geral_colorido.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/paginas_ad_adm_colab_dvge
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(31999364535045102006)
,p_name=>'PAGINAS_AD_ADM_COLAB_DVGE'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31994872333867276883)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Alinhamento'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10,11:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#alinhamento_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31994887065371680337)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('Minha Autoavalia\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24,25:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#minha_autoavaliacao_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31994890016702729014)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('Minha Avalia\00E7\00E3o de Desempenho')
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20,21:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#minha_avaliacao_desempenho_26112021.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31994891230108743017)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('Meu Di\00E1rio')
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::P26_ITEM_MENU,P26_PAGINA_ORIGEM:MEU_DIARIO,26:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#meu_diario_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31994891691938746888)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o de Desempenho dos Gestores')
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17,18:P20_PAGINA_ORIGEM:99:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avaliacao_desemp_gestores_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31994892201713751153)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>unistr('Descri\00E7\00E3o da Fun\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#descricao_funcao.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31999364693732102007)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o Contrato de Experi\00EAncia CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avaliacao_contrato_experiencia.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31999365087170102007)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Alinhamento CELOS'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,7,10,11:P7_ITEM_MENU:ALINHAMENTO_CELOS_PERFIL_COLAB_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#alinhamento_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31999365527495102007)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Autoavalia\00E7\00E3o CELOS'),
''))
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23,24,25:P23_ITEM_MENU:AUTOAV_CELOS_PERFIL_COLAB_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#autoavaliacao_colorido.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31999365903158102008)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o de Desempenho CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19,20,21:P19_ITEM_MENU:AV_DESEMPENHO_CELOS_PERFIL_COLAB_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avalicao desempenho celos.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31999366251291102008)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>unistr('Di\00E1rio de Avalia\00E7\00E3o CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22,26,27:P22_ITEM_MENU:DIARIO_AVALIACAO_PERFIL_COLAB_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#diario_avaliacao_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31999366733653102008)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>unistr('Meu Di\00E1rio CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::P22_ITEM_MENU,P22_PAGINA_ORIGEM:MEU_DIARIO_PERFIL_COLAB_ADM,22:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#meu_diario_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31999367072860102008)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>unistr('Cadastro para avalia\00E7\00E3o de experi\00EAncia')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#cadastro_avaliacao_experiencia.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31999367534510102009)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>unistr('Vis\00E3o Geral')
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#visao_geral_colorido.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30,31'
);
end;
/
prompt --application/shared_components/navigation/lists/visao_geral
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(32009455982476867053)
,p_name=>'VISAO_GERAL'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32009456188018867086)
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
 p_id=>wwv_flow_imp.id(32009457431342867090)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Resultado Lota\00E7\00E3o'),
''))
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#resultado lotacao.png'
,p_list_item_icon_attributes=>' width="60%" height="60%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/menu_de_sistemas
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(32018077307115836550)
,p_name=>'Menu de Sistemas'
,p_list_status=>'PUBLIC'
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
