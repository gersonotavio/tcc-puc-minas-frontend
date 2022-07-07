prompt --application/shared_components/navigation/lists/paginas_ad_adm_colab_dvge
begin
--   Manifest
--     LIST: PAGINAS_AD_ADM_COLAB_DVGE
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
 p_id=>wwv_flow_imp.id(16810196841227675)
,p_name=>'PAGINAS_AD_ADM_COLAB_DVGE'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12317995663402552)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Alinhamento'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10,11:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#alinhamento_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12332727167806006)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('Minha Autoavalia\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24,25:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#minha_autoavaliacao_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12335678498854683)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('Minha Avalia\00E7\00E3o de Desempenho')
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20,21:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#minha_avaliacao_desempenho_26112021.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12336891904868686)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('Meu Di\00E1rio')
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::P26_ITEM_MENU,P26_PAGINA_ORIGEM:MEU_DIARIO,26:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#meu_diario_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12337353734872557)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o de Desempenho dos Gestores')
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17,18:P20_PAGINA_ORIGEM:99:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avaliacao_desemp_gestores_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12337863509876822)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>unistr('Descri\00E7\00E3o da Fun\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#descricao_funcao.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16810355528227676)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o Contrato de Experi\00EAncia CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avaliacao_contrato_experiencia.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16810748966227676)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Alinhamento CELOS'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,7,10,11:P7_ITEM_MENU:ALINHAMENTO_CELOS_PERFIL_COLAB_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#alinhamento_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16811189291227676)
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
 p_id=>wwv_flow_imp.id(16811564954227677)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o de Desempenho CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19,20,21:P19_ITEM_MENU:AV_DESEMPENHO_CELOS_PERFIL_COLAB_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avalicao desempenho celos.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16811913087227677)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>unistr('Di\00E1rio de Avalia\00E7\00E3o CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22,26,27:P22_ITEM_MENU:DIARIO_AVALIACAO_PERFIL_COLAB_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#diario_avaliacao_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16812395449227677)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>unistr('Meu Di\00E1rio CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::P22_ITEM_MENU,P22_PAGINA_ORIGEM:MEU_DIARIO_PERFIL_COLAB_ADM,22:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#meu_diario_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16812734656227677)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>unistr('Cadastro para avalia\00E7\00E3o de experi\00EAncia')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#cadastro_avaliacao_experiencia.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16813196306227678)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>unistr('Vis\00E3o Geral')
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#visao_geral_colorido.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30,31'
);
wwv_flow_imp.component_end;
end;
/
