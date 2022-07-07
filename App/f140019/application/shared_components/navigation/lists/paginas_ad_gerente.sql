prompt --application/shared_components/navigation/lists/paginas_ad_gerente
begin
--   Manifest
--     LIST: PAGINAS_AD_GERENTE
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
 p_id=>wwv_flow_imp.id(12630631514841968)
,p_name=>'PAGINAS_AD_GERENTE'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30351187815012573)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o Contrato de Experi\00EAncia')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avaliacao_contrato_experiencia.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30339798886991624)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>unistr('Alinhamento \00C1rea')
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,7,10,11:P7_ITEM_MENU:ALINHAMENTO_CELOS_PERFIL_GERENTE:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#alinhamento_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30352283119029170)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>unistr('Autoavalia\00E7\00E3o \00C1rea')
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23,24,25:P23_PAGINA_ORIGEM,P23_ITEM_MENU:23,AUTOAV_CELOS_PERFIL_GERENTE:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#autoavaliacao_colorido.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30352647817034936)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o de Desempenho \00C1rea')
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19, 20,21:P19_ITEM_MENU:AV_DESEMPENHO_CELOS_PERFIL_GERENTE:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avaliacao_desemp_gestores_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30340967530991626)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>unistr('Di\00E1rio de Avalia\00E7\00E3o \00C1rea')
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:26,27:P26_ITEM_MENU:DIARIO_AVALIACAO_PERFIL_GERENTE:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#diario_avaliacao_area_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30341371484991626)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>unistr('Meu Di\00E1rio')
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::P26_ITEM_MENU,P26_PAGINA_ORIGEM:MEU_DIARIO,26:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#meu_diario_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30340212528991625)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>unistr('Minha Autoavalia\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24,25:P24_ID_USUARIO:&GL_ID_USUARIO.:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#autoavaliacao_colorido.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30340621697991626)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>unistr('Minhas Avalia\00E7\00F5es de Desempenho')
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20,21:P20_ID_USUARIO:&GL_ID_USUARIO.:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#minha_avaliacao_desempenho_26112021.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30342210882991629)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>unistr('Descri\00E7\00F5es de Fun\00E7\00E3o \00C1rea')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#descricao_funcao.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6949842959187040365)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>unistr('Vis\00E3o Geral')
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#visao_geral_colorido.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
