prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
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
 p_id=>27
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>unistr('Di\00E1rio de Avalia\00E7\00E3o / Meu Di\00E1rio')
,p_alias=>unistr('DI\00C1RIO-DE-AVALIA\00C7\00C3O-MEU-DI\00C1RIO')
,p_step_title=>unistr('Di\00E1rio de Avalia\00E7\00E3o / Meu Di\00E1rio')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'GERSON'
,p_last_upd_yyyymmddhh24miss=>'20211130124154'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15388788650246786)
,p_plug_name=>'&P27_TITULO_PAGINA.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'AD_DIARIO_AVALIACAO'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15399338876246808)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'CHANGE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF (:P27_ROWID IS NOT NULL AND :GL_PERFIL IN (2, 4, 6) AND :GL_ID_USUARIO = :P27_ID_COLABORADOR_AVALIADOR) OR',
'   (:P27_ROWID IS NOT NULL AND :P27_ITEM_MENU = ''MEU_DIARIO'') THEN',
'   RETURN TRUE;',
'ELSE',
'   RETURN FALSE;',
'END IF;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15398192669246804)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22819281642397107)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_button_name=>'VOLTAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Voltar'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15399724924246808)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF (:P27_ROWID IS NULL AND :GL_PERFIL IN (2, 4, 6)) OR',
'   (:P27_ROWID IS NULL AND :GL_PERFIL IN (1,5) AND :P27_ITEM_MENU = ''MEU_DIARIO'') THEN',
'   RETURN TRUE;',
'ELSE',
'   RETURN FALSE;',
'END IF;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15398993897246807)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_image_alt=>'Excluir'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF (:P27_ROWID IS NOT NULL AND :GL_PERFIL IN (2, 4, 6) AND (:GL_ID_USUARIO = :P27_ID_COLABORADOR_AVALIADOR or :P27_ITEM_MENU = ''MEU_DIARIO'')) OR',
'   (:P27_ROWID IS NOT NULL AND :GL_PERFIL IN (1,5) AND :P27_ITEM_MENU = ''MEU_DIARIO'') THEN',
'   RETURN TRUE;',
'ELSE',
'   RETURN FALSE;',
'END IF;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(15400069624246808)
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15389042062246788)
,p_name=>'P27_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_item_source_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(4125486867157626)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15389435343246794)
,p_name=>'P27_ID_DIARIO_AVALIACAO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_item_source_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_source=>'ID_DIARIO_AVALIACAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15389807441246796)
,p_name=>'P27_ID_COLABORADOR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_item_source_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_prompt=>'Colaborador:'
,p_source=>'ID_COLABORADOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.nome, ',
'       u.COLABORADOR_ID',
'from V_AD_DADOS_USUARIOS u',
'where EXISTS (select 1  ',
'               from V_AD_DADOS_USUARIOS u2 ',
'               where u2.COLABORADOR_ID = DECODE(:GL_PERFIL,3,:P27_ID_COLABORADOR_AVALIADOR,',
'                                                           4,:P27_ID_COLABORADOR_AVALIADOR,',
'                                                           6,:P27_ID_COLABORADOR_AVALIADOR,',
'                                                           :gl_id_usuario) ',
'                 and u2.LOTACAO_ID = u.LOTACAO_ID',
'                 AND :P27_ITEM_MENU IN(''DIARIO_AVALIACAO_PERFIL_GERENTE'',''MEU_DIARIO'')) or',
'     (:GL_PERFIL IN (3,4,5,6) AND :P27_ITEM_MENU != ''DIARIO_AVALIACAO_PERFIL_GERENTE'');'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when=>'P27_ITEM_MENU'
,p_read_only_when2=>'MEU_DIARIO'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(4125570846157626)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15390204109246797)
,p_name=>'P27_ID_COLABORADOR_AVALIADOR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_item_source_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_prompt=>'Avaliador:'
,p_source=>'ID_COLABORADOR_AVALIADOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_USUARIO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if :P27_ITEM_MENU like ''DIARIO_AVALIACAO%'' then',
'     return true;',
'   else',
'     return false;',
'    end if; ',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_read_only_when=>'P27_ID_COLABORADOR_AVALIADOR'
,p_read_only_when2=>'&GL_ID_USUARIO.'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(4125570846157626)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15390694047246797)
,p_name=>'P27_DESCRICAO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_item_source_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_prompt=>unistr('Descri\00E7\00E3o:')
,p_source=>'DESCRICAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>90
,p_cMaxlength=>4000
,p_cHeight=>8
,p_field_template=>wwv_flow_imp.id(4125570846157626)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15391076632246797)
,p_name=>'P27_DT_ACONTECIMENTO'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_item_source_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_prompt=>'Data Acontecimento:'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'DT_ACONTECIMENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>10
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(4125570846157626)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15391416845246798)
,p_name=>'P27_DT_REGISTRO'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_item_source_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_source=>'DT_REGISTRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15392253854246799)
,p_name=>'P27_ANEXO'
,p_source_data_type=>'BLOB'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_item_source_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_prompt=>'Anexo:'
,p_source=>'ANEXO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(4125246033157626)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'ATTACH_MIMETYPE'
,p_attribute_03=>'ATTACH_FILENAME'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_12=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15392643291246799)
,p_name=>'P27_ATTACH_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_item_source_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_source=>'ATTACH_FILENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15393054387246799)
,p_name=>'P27_ATTACH_MIMETYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_item_source_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_source=>'ATTACH_MIMETYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15393469622246800)
,p_name=>'P27_NM_ARQUIVO_SALVO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_item_source_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_source=>'NM_ARQUIVO_SALVO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15393898722246800)
,p_name=>'P27_ID_PERFIL_REGISTRO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_item_source_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_source=>'ID_PERFIL_REGISTRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15415124885296003)
,p_name=>'P27_ITEM_MENU'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15516981839057102)
,p_name=>'P27_TITULO_PAGINA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(15388788650246786)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22218762067373607)
,p_name=>'PROTEGE_DADOS'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22218811864373608)
,p_event_id=>wwv_flow_imp.id(22218762067373607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_ID_COLABORADOR,P27_ID_COLABORADOR_AVALIADOR,P27_DT_REGISTRO,P27_DESCRICAO,P27_DT_ACONTECIMENTO,P27_ANEXO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P27_ITEM_MENU'
,p_client_condition_expression=>'DIARIO_AVALIACAO_PERFIL_ADM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22818849420397103)
,p_event_id=>wwv_flow_imp.id(22218762067373607)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_ID_COLABORADOR,P27_ID_COLABORADOR_AVALIADOR,P27_DT_REGISTRO,P27_DESCRICAO,P27_DT_ACONTECIMENTO,P27_ANEXO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P27_ITEM_MENU'
,p_client_condition_expression=>'MEU_DIARIO_PERFIL_ADM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22818993183397104)
,p_event_id=>wwv_flow_imp.id(22218762067373607)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_ID_COLABORADOR,P27_ID_COLABORADOR_AVALIADOR,P27_DT_REGISTRO,P27_DESCRICAO,P27_DT_ACONTECIMENTO,P27_ANEXO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P27_ITEM_MENU'
,p_client_condition_expression=>'DIARIO_AVALIACAO_PERFIL_COLAB_ADM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22819036435397105)
,p_event_id=>wwv_flow_imp.id(22218762067373607)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_ID_COLABORADOR,P27_ID_COLABORADOR_AVALIADOR,P27_DT_REGISTRO,P27_DESCRICAO,P27_DT_ACONTECIMENTO,P27_ANEXO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P27_ITEM_MENU'
,p_client_condition_expression=>'MEU_DIARIO_PERFIL_COLAB_ADM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22819156821397106)
,p_event_id=>wwv_flow_imp.id(22218762067373607)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_ID_COLABORADOR,P27_ID_COLABORADOR_AVALIADOR,P27_DT_REGISTRO,P27_DESCRICAO,P27_DT_ACONTECIMENTO,P27_ANEXO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P27_ITEM_MENU'
,p_client_condition_expression=>'DIARIO_AVALIACAO_PERFIL_GERENTE_ADM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22819358568397108)
,p_event_id=>wwv_flow_imp.id(22218762067373607)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_ID_COLABORADOR,P27_ID_COLABORADOR_AVALIADOR,P27_DT_REGISTRO,P27_DESCRICAO,P27_DT_ACONTECIMENTO,P27_ANEXO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P27_ITEM_MENU'
,p_client_condition_expression=>'MEU_DIARIO_PERFIL_GERENTE_ADM'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22819433797397109)
,p_event_id=>wwv_flow_imp.id(22218762067373607)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_ID_COLABORADOR,P27_ID_COLABORADOR_AVALIADOR,P27_DT_REGISTRO,P27_DESCRICAO,P27_DT_ACONTECIMENTO,P27_ANEXO'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P27_ID_COLABORADOR_AVALIADOR'
,p_client_condition_expression=>'&GL_ID_USUARIO.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22819589154397110)
,p_event_id=>wwv_flow_imp.id(22218762067373607)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_ID_COLABORADOR,P27_ID_COLABORADOR_AVALIADOR,P27_DT_REGISTRO,P27_DESCRICAO,P27_DT_ACONTECIMENTO,P27_ANEXO'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P27_ITEM_MENU'
,p_client_condition_expression=>'MEU_DIARIO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15400946742246812)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(15388788650246786)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('Process form Di\00E1rio de Avalia\00E7\00E3o / Meu Di\00E1rio')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15400521538246811)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(15388788650246786)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Di\00E1rio de Avalia\00E7\00E3o / Meu Di\00E1rio')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15516834251057101)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'carrega_titulo_pagina'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--',
'   IF :P27_ITEM_MENU LIKE ''MEU_DIARIO%'' THEN',
'      IF :GL_ID_USUARIO = :P27_ID_COLABORADOR THEN',
'          select A.NOME',
'          into :P27_TITULO_PAGINA',
'          from v_ad_dados_usuarios a',
'          where a.colaborador_id = :GL_ID_USUARIO ;',
'          --',
unistr('         :P27_TITULO_PAGINA := ''Meu Di\00E1rio - ''||:P27_TITULO_PAGINA;'),
'      ELSE',
'          select A.NOME',
'          into :P27_TITULO_PAGINA',
'          from v_ad_dados_usuarios a',
'          where a.colaborador_id = :P27_ID_COLABORADOR ;',
'          --',
unistr('         :P27_TITULO_PAGINA := ''Meu Di\00E1rio - ''||:P27_TITULO_PAGINA;'),
'      END IF;',
'   ELSIF :P27_ITEM_MENU LIKE ''DIARIO%'' THEN',
unistr('      :P27_TITULO_PAGINA := ''Di\00E1rio Avalia\00E7\00E3o'';'),
'   END IF;    ',
'--',
'   IF :GL_PERFIL IN(1,5) THEN',
'      --:P27_ID_COLABORADOR := :GL_ID_USUARIO;',
'      --:P27_ID_COLABORADOR_AVALIADOR := pck_ad.FNC_BUSCA_ID_GERENTE_COLAB(:GL_ID_USUARIO);',
'      NULL;',
'   ELSIF :GL_PERFIL = 4 and :P27_ROWID IS NULL THEN',
'      :P27_ID_COLABORADOR_AVALIADOR := :GL_ID_USUARIO;',
'   END IF;    ',
'',
'---   RAISE_APPLICATION_ERROR(-20001,''TESTE GERSON --> :GL_ID_USUARIO:''||:GL_ID_USUARIO||'' :GL_PERFIL: ''||:GL_PERFIL||'' :P27_ID_COLABORADOR: ''||:P27_ID_COLABORADOR||'' :P27_ID_COLABORADOR_AVALIADOR: ''||:P27_ID_COLABORADOR_AVALIADOR);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
