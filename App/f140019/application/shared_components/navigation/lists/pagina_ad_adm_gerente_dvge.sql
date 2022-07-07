prompt --application/shared_components/navigation/lists/pagina_ad_adm_gerente_dvge
begin
--   Manifest
--     LIST: PAGINA_AD_ADM_GERENTE_DVGE
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
 p_id=>wwv_flow_imp.id(16806754431224087)
,p_name=>'PAGINA_AD_ADM_GERENTE_DVGE'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12642220985862918)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o Contrato de Experi\00EAncia')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avaliacao_contrato_experiencia.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12630832057841969)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('Alinhamento \00C1rea')
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,7,10,11:P7_ITEM_MENU:ALINHAMENTO_CELOS_PERFIL_GERENTE:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#alinhamento_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12643316289879515)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('Autoavalia\00E7\00E3o \00C1rea')
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:23,24,25:P23_PAGINA_ORIGEM,P23_ITEM_MENU:23,AUTOAV_CELOS_PERFIL_GERENTE:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#autoavaliacao_colorido.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12643680987885281)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o de Desempenho \00C1rea')
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19, 20,21:P19_ITEM_MENU:AV_DESEMPENHO_CELOS_PERFIL_GERENTE:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avaliacao_desemp_gestores_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12632000701841971)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('Di\00E1rio de Avalia\00E7\00E3o \00C1rea')
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:26,27:P26_ITEM_MENU:DIARIO_AVALIACAO_PERFIL_GERENTE:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#diario_avaliacao_area_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12632404655841971)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('Meu Di\00E1rio')
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::P26_ITEM_MENU,P26_PAGINA_ORIGEM:MEU_DIARIO,26:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#meu_diario_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12631245699841970)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>unistr('Minha Autoavalia\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24,25:P24_ID_USUARIO:&GL_ID_USUARIO.:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#minha_autoavaliacao_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12631654868841971)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('Minhas Avalia\00E7\00F5es de Desempenho')
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20,21:P20_ID_USUARIO:&GL_ID_USUARIO.:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#minha_avaliacao_desempenho_26112021.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12633244053841974)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>unistr('Descri\00E7\00F5es de Fun\00E7\00E3o \00C1rea')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#descricao_funcao.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16806944316224110)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o Contrato de Experi\00EAncia CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avaliacao_contrato_experiencia.png'
,p_list_item_icon_attributes=>' width="60%" height="60%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16807317725224113)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Alinhamento CELOS'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,7,10,11:P7_ITEM_MENU:ALINHAMENTO_CELOS_PERFIL_GERENTE_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#alinhamento_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16807775770224114)
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
 p_id=>wwv_flow_imp.id(16808113826224114)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>unistr('Avalia\00E7\00E3o de Desempenho CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:19,20,21:P19_ITEM_MENU:AV_DESEMPENHO_CELOS_PERFIL_GERENTE_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#avalicao desempenho celos.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16808572895224114)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>unistr('Di\00E1rio de Avalia\00E7\00E3o CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22,26,27:P22_ITEM_MENU:DIARIO_AVALIACAO_PERFIL_GERENTE_ADM:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#diario_avaliacao_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16808927151224114)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>unistr('Meu Di\00E1rio CELOS')
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::P22_ITEM_MENU,P22_PAGINA_ORIGEM:MEU_DIARIO_PERFIL_GERENTE_ADM,22:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#meu_diario_celos_26112021.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16809333812224115)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>unistr('Cadastro para avalia\00E7\00E3o de experi\00EAncia')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#cadastro_avaliacao_experiencia.png'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16809734085224115)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>unistr('Vis\00E3o Geral')
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#visao_geral_colorido.JPG'
,p_list_item_icon_attributes=>' width="30%" height="30%"'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
