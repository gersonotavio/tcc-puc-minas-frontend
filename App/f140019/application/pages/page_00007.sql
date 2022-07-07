prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>3060310794164477
,p_default_application_id=>777
,p_default_id_offset=>31982554338203874331
,p_default_owner=>'DVGE'
);
wwv_flow_imp_page.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>unistr('Alinhamento Colaboradores da \00C1rea')
,p_alias=>'ALINHAMENTO-COLAB-DA-AREA'
,p_step_title=>unistr('Alinhamento Colaboradores da \00C1rea')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'GEROTAVIO@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220119204934'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13218285463784108)
,p_plug_name=>'&P7_TITULO.'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>35
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13034115830175821)
,p_plug_name=>unistr('Colaboradores da \00C1rea')
,p_parent_plug_id=>wwv_flow_imp.id(13218285463784108)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT u.NOME,',
unistr('       ''Data de Admiss\00E3o: ''||to_char(u.DT_ADMISSAO,''dd/mm/yyyy'') admissao,'),
'       ''Cargo: ''||u.CARGO||'' - ''|| u.NM_LOTACAO cargo_lotacao,',
unistr('       ''Fun\00E7\00E3o: ''||pck_hp_colaboradores.fnc_hp_ret_cargo(u.colaborador_id) funcao,'),
'       a.AVATAR,',
'       u.colaborador_id,',
'       a.id_perfil',
'  FROM ad_usuario a, ',
'       v_ad_dados_usuarios u',
' WHERE (EXISTS (SELECT *',
'          FROM v_ad_dados_usuarios u2',
'         WHERE (u2.id_gerente = 1 or :gl_perfil in (2,5,6))',
'           AND u2.nm_lotacao = u.nm_lotacao',
'           and u2.colaborador_id = :gl_id_usuario ',
'           and :P7_ITEM_MENU in(''ALINHAMENTO_CELOS_PERFIL_GERENTE'')) or (:P7_ITEM_MENU NOT in(''ALINHAMENTO_CELOS_PERFIL_GERENTE'') ))',
'   AND a.id = u.colaborador_id',
'   and (UPPER(u.nome) like ''%''||UPPER(:P7_BUSCA)||''%'' or :P7_BUSCA is null)',
'  -- and a.id != :gl_id_usuario',
'   and (a.id_perfil = 1 or (:gl_perfil != 1 and u.id_gerente != 1)) -- somente colaboradores OU COM colaborador com perfil de gerente ou adm',
'   order by u.lotacao_id, u.dt_admissao; '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P7_BUSCA'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13034667874175822)
,p_region_id=>wwv_flow_imp.id(13034115830175821)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'CARGO_LOTACAO'
,p_body_adv_formatting=>false
,p_body_column_name=>'ADMISSAO'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'FUNCAO'
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'AVATAR'
,p_media_display_position=>'BODY'
,p_media_appearance=>'WIDESCREEN'
,p_media_sizing=>'FIT'
,p_pk1_column_name=>'NOME'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(13121936102822103)
,p_card_id=>wwv_flow_imp.id(13034667874175822)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:7:P10_ID_USUARIO:&COLABORADOR_ID.'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17402349791945911)
,p_plug_name=>'&P7_TITULO_GERENTES.'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>25
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   if :P7_ITEM_MENU in(''ALINHAMENTO_CELOS_PERFIL_GERENTE_ADM'',',
'                       ''ALINHAMENTO_CELOS_PERFIL_COLAB_ADM'',',
'                       ''ALINHAMENTO_CELOS_PERFIL_DEX'',',
'                       ''ALINHAMENTO_CELOS_PERFIL_ADM'') then',
'      return true;',
'    else',
'      return false;',
'    end if;',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17402404409945912)
,p_plug_name=>unistr('Gerentes das \00C1reas')
,p_parent_plug_id=>wwv_flow_imp.id(17402349791945911)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4035076450157557)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ug.NOME,',
'       ug.dt_admissao,',
unistr('       ''Data de Admiss\00E3o: ''||to_char(ug.DT_ADMISSAO,''dd/mm/yyyy'') admissao,'),
'       ''Cargo: ''||ug.CARGO||'' - ''|| ug.NM_LOTACAO cargo_lotacao,',
unistr('       ''Fun\00E7\00E3o: ''||pck_hp_colaboradores.fnc_hp_ret_cargo(ug.colaborador_id) funcao,'),
'       ag.AVATAR,',
'       ug.colaborador_id,',
'       ag.id_perfil',
'  FROM (SELECT ug.colaborador_id',
'          FROM v_ad_dados_usuarios  ud, -- DEX',
'               v_ad_dados_usuarios  ug, -- gerentes associados a DEX --',
'               ad_diretoria         cd,',
'               ad_diretoria_lotacao dl,',
'               ad_usuario           ag',
'         WHERE cd.id_cargo = ud.id_cargo',
'           AND dl.id_diretoria = cd.id_diretoria',
'              -- gerentes --',
'           AND ug.lotacao_id = dl.id_lotacao',
'           AND ug.id_gerente = 1',
'           AND ug.colaborador_id = ag.id',
'        ',
'        UNION',
'        ',
'        -- auditor subordinado a DEX --',
'        SELECT ua.colaborador_id',
'          FROM v_ad_dados_usuarios  ud, -- DEX',
'               v_ad_dados_usuarios  ua, -- auditor interno associados a DEX --',
'               ad_diretoria         cd,',
'               ad_diretoria_lotacao dl,',
'               ad_usuario           aa',
'         WHERE cd.id_cargo = ud.id_cargo',
'           AND dl.id_diretoria = cd.id_diretoria',
'              -- auditor --',
'           AND ua.lotacao_id = dl.id_lotacao',
'           AND ua.lotacao_id = 14',
'           AND ua.id_gerente = 0',
'           AND ua.colaborador_id = aa.id',
'        ',
'        UNION',
'        ',
'        -- ouvidor subordinado a DEX --',
'        SELECT uo.colaborador_id',
'          FROM v_ad_dados_usuarios  ud, -- DEX',
'               v_ad_dados_usuarios  uo, -- ouvidor interno associados a DEX --',
'               ad_diretoria         cd,',
'               ad_diretoria_lotacao dl,',
'               ad_usuario           ag',
'         WHERE cd.id_cargo = ud.id_cargo',
'           AND dl.id_diretoria = cd.id_diretoria',
'              -- ouvidor --',
'           AND uo.lotacao_id = dl.id_lotacao',
'           AND uo.lotacao_id = 10',
'           AND uo.id_gerente = 0',
'           AND uo.colaborador_id = ag.id) x,',
'       V_AD_DADOS_USUARIOS ug, ',
'       ad_usuario ag  ',
'    where x.colaborador_id = ag.id ',
'     and  x.colaborador_id = ug.colaborador_id',
'     and (upper(ug.nome) like ''%''||upper(:P7_BUSCA)||''%'' or :P7_BUSCA is null)',
'',
'     ',
'     order by ag.id_perfil desc, ug.dt_admissao; '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P7_BUSCA'
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(17402799268945915)
,p_region_id=>wwv_flow_imp.id(17402404409945912)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'NOME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'CARGO_LOTACAO'
,p_body_adv_formatting=>false
,p_body_column_name=>'ADMISSAO'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'FUNCAO'
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'AVATAR'
,p_media_display_position=>'BODY'
,p_media_appearance=>'WIDESCREEN'
,p_media_sizing=>'FIT'
,p_pk1_column_name=>'NOME'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(17402868105945916)
,p_card_id=>wwv_flow_imp.id(17402799268945915)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:7:P10_ID_USUARIO:&COLABORADOR_ID.'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(28305302851691841)
,p_plug_name=>'PESQUISA'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--slimPadding:t-Form--stretchInputs:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13217981546784105)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13034115830175821)
,p_button_name=>'VOLTAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Voltar'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17402651287945914)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17402404409945912)
,p_button_name=>'VOLTAR_GERENTES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Voltar'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(28301456506691802)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(28305302851691841)
,p_button_name=>'Consultar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127267950157630)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Consultar'
,p_icon_css_classes=>'fa-lg fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15517119145057104)
,p_name=>'P7_TITULO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13034115830175821)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17402587895945913)
,p_name=>'P7_TITULO_GERENTES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17402404409945912)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18801396597453601)
,p_name=>'P7_ITEM_MENU'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17402349791945911)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(28301320412691801)
,p_name=>'P7_BUSCA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(28305302851691841)
,p_prompt=>'<b>Pesquisa:</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>80
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4125246033157626)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--preTextBlock:margin-top-none:margin-bottom-none'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15517215191057105)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'prepara_titulo_pagina'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if :gl_perfil in (3,5,6) then',
'     :P7_TITULO := ''Alinhamento CELOS - Colaboradores'';',
'     :P7_TITULO_GERENTES := ''Alinhamento CELOS - Gerentes'';',
'  elsif :gl_perfil = 4 then',
unistr('     :P7_TITULO := ''Alinhamento CELOS vis\00E3o DEX - Colaboradores'';'),
unistr('     :P7_TITULO_GERENTES := ''Alinhamento CELOS vis\00E3o DEX - Gerentes'';'),
'  else',
unistr('     :P7_TITULO := ''Alinhamento \00C1rea - Colaboradores'';'),
'     :P7_TITULO_GERENTES := ''Alinhamento CELOS - Gerentes'';',
'  end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
