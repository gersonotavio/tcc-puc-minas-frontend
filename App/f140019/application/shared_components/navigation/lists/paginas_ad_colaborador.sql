prompt --application/shared_components/navigation/lists/paginas_ad_colaborador
begin
--   Manifest
--     LIST: PAGINAS_AD_COLABORADOR
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
 p_id=>wwv_flow_imp.id(12317520540379605)
,p_name=>'PAGINAS_AD_COLABORADOR'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30020375321538876)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Alinhamento'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10,11:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#alinhamento_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30035106825942330)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>unistr('Minha Autoavalia\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24,25:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#autoavaliacao_colorido.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30038058156991007)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>unistr('Minha Avalia\00E7\00E3o de Desempenho')
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20,21:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#minha_avaliacao_desempenho_26112021.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30039271563005010)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>unistr('Meu Di\00E1rio')
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::P26_ITEM_MENU,P26_PAGINA_ORIGEM:MEU_DIARIO,26:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#meu_diario_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30039733393008881)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o de Desempenho dos Gestores')
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17,18:P20_PAGINA_ORIGEM:99:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avaliacao_desemp_gestores_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(30040243168013146)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>unistr('Descri\00E7\00E3o da Fun\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#descricao_funcao.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
