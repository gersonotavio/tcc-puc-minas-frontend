prompt --application/shared_components/navigation/lists/paginas_ad_dex
begin
--   Manifest
--     LIST: PAGINAS_AD_DEX
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
 p_id=>wwv_flow_imp.id(12636623920851040)
,p_name=>'PAGINAS_AD_DEX'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12636813857851041)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o Contrato de Experi\00EAncia CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avaliacao_contrato_experiencia.png'
,p_list_item_icon_attributes=>' width="60%" height="60%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12637293707851041)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Alinhamento CELOS'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7,10,11:P7_ITEM_MENU:ALINHAMENTO_CELOS_PERFIL_DEX:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#alinhamento_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12637673274851041)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('Autoavalia\00E7\00E3o CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23,24,25:P23_ITEM_MENU:AUTOAV_CELOS_PERFIL_DEX:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#autoavaliacao_colorido.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12638059882851041)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o de Desempenho CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19,20,21:P19_ITEM_MENU:AV_DESEMPENHO_CELOS_PERFIL_DEX:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avalicao desempenho celos.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12638468903851042)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('Di\00E1rio de Avalia\00E7\00E3o CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22,26,27:P22_ITEM_MENU:DIARIO_AVALIACAO_PERFIL_DEX:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#diario_avaliacao_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12638862019851042)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('Vis\00E3o Geral')
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:29,30,31:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#visao_geral_colorido.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
