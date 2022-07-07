prompt --application/shared_components/navigation/lists/paginas_ad_admnistrador
begin
--   Manifest
--     LIST: PAGINAS_AD_ADMNISTRADOR
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
 p_id=>wwv_flow_imp.id(12633651456848888)
,p_name=>'PAGINAS_AD_ADMNISTRADOR'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(6961138295880057586)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>unistr('Cadastro de Usu\00E1rios')
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8,9:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#CAD_USUARIO.jpg'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7210903260090379970)
,p_list_item_display_sequence=>6
,p_list_item_link_text=>unistr('Indicadores de Compet\00EAncia')
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33,34:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avalicao desempenho celos.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12651298055021651)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o Contrato de Experi\00EAncia CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avaliacao_contrato_experiencia.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12633852687848888)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Alinhamento CELOS'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,7,10,11:P7_ITEM_MENU:ALINHAMENTO_CELOS_PERFIL_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#alinhamento_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12634283321848888)
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
 p_id=>wwv_flow_imp.id(12634665831848889)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o de Desempenho CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19,20,21:P19_ITEM_MENU:AV_DESEMPENHO_CELOS_PERFIL_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avaliacao_desemp_gestores_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12635067448848889)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('Di\00E1rio de Avalia\00E7\00E3o CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22,26,27:P22_ITEM_MENU:DIARIO_AVALIACAO_PERFIL_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#diario_avaliacao_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12635423512848889)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('Meu Di\00E1rio CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::P22_ITEM_MENU:MEU_DIARIO_PERFIL_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#meu_diario_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12635876664848889)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>unistr('Cadastro para avalia\00E7\00E3o de experi\00EAncia')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#cadastro_avaliacao_experiencia.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12636297965848890)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('Vis\00E3o Geral')
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#visao_geral_colorido.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
