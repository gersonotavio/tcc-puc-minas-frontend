prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>'Cadastro Alinhamento'
,p_alias=>'CADASTRO-ALINHAMENTO'
,p_step_title=>'Cadastro Alinhamento'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'GERSON'
,p_last_upd_yyyymmddhh24miss=>'20220212025910'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12917050751524225)
,p_plug_name=>'&P11_TITULO_PAGINA.'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       ID_ALINHAMENTO,',
'       ID_COLABORADOR,',
'       ID_COLABORADOR_AVALIADOR,',
'       DT_REFERENCIA,',
'       replace(to_char(DT_REFERENCIA,''month/rrrr''), '' '','''') DT_REFERENCIA_DISPLAY,',
'       to_char(DT_ALINHAMENTO,''dd/mm/rrrr'') DT_ALINHAMENTO,',
'       to_char(DT_REGISTRO,''dd/mm/rrrr'') DT_REGISTRO,',
'       DESCRICAO_1,',
'       DESCRICAO_2,',
'       DESCRICAO_3,',
'       OBSERVACAO',
'  from AD_ALINHAMENTO'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12925657139524252)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'CHANGE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   if (:P11_ID_COLABORADOR_AVALIADOR != :GL_ID_USUARIO) or ',
'     (:P11_DT_REGISTRO is not null ) or',
'     (:GL_PERFIL in(1,3,5))  or ',
'    (:P11_ROWID is null) then',
'      return false;',
'    else',
'      return true;',
'    end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'UPDATE'
,p_button_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   if  (:gl_perfil = 4 and :P11_ROWID is not null AND :P11_ID_COLABORADOR_AVALIADOR = :GL_ID_USUARIO AND :P11_DT_REGISTRO IS NULL) or ',
'       (:gl_perfil = 2) then',
'       return true;',
'    else',
'       return false;',
'    end if;',
'end;'))
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17403175826945919)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_button_name=>'NOVO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Incluir'
,p_button_position=>'CHANGE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   if :gl_perfil in (2,4) and :P11_ROWID is null then',
'      return true;',
'    else',
'       return false;',
'    end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12945086146869601)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_button_name=>'FINALIZAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Finalizar'
,p_button_position=>'CREATE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if (:P11_DT_ALINHAMENTO is not  null and :gl_perfil in(2,4, 6) and :P11_DT_REGISTRO IS NULL AND :P11_ID_COLABORADOR_AVALIADOR = :GL_ID_USUARIO)  then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12924475992524249)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_button_name=>'VOLTAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Voltar'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(12926305966524252)
,p_branch_name=>'Go To Page 10'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::P10_ID_USUARIO:&P11_ID_COLABORADOR_AVALIADOR.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12917407549524232)
,p_name=>'P11_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_item_source_plug_id=>wwv_flow_imp.id(12917050751524225)
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
 p_id=>wwv_flow_imp.id(12917828668524239)
,p_name=>'P11_ID_ALINHAMENTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_item_source_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_source=>'ID_ALINHAMENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12918203650524242)
,p_name=>'P11_ID_COLABORADOR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_item_source_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_prompt=>'Nome do Colaborador:'
,p_source=>'ID_COLABORADOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_USUARIO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(4125246033157626)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12918655201524243)
,p_name=>'P11_ID_COLABORADOR_AVALIADOR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_item_source_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_prompt=>'Avaliador:'
,p_source=>'ID_COLABORADOR_AVALIADOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LV_USUARIO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(4125246033157626)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12919097210524243)
,p_name=>'P11_DESCRICAO_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_item_source_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_prompt=>'<b>1) O que o Colaborador deve continuar fazendo:</b>'
,p_source=>'DESCRICAO_1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>15
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(4125394473157626)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12919478722524243)
,p_name=>'P11_DESCRICAO_2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_item_source_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_prompt=>unistr('<b>2) O que o Colaborador deve come\00E7ar a fazer:</b>')
,p_source=>'DESCRICAO_2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(4125394473157626)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12919877227524244)
,p_name=>'P11_DESCRICAO_3'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_item_source_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_prompt=>'<b>3) O que o Colaborador deve parar de fazer:</b>'
,p_source=>'DESCRICAO_3'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(4125394473157626)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12920281597524244)
,p_name=>'P11_OBSERVACAO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_item_source_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_prompt=>unistr('Observac\00F5es:')
,p_source=>'OBSERVACAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>3
,p_field_template=>wwv_flow_imp.id(4125246033157626)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12920683951524244)
,p_name=>'P11_DT_ALINHAMENTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_item_source_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_prompt=>'Data Alinhamento:'
,p_source=>'DT_ALINHAMENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>10
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(4125246033157626)
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
 p_id=>wwv_flow_imp.id(12921058308524245)
,p_name=>'P11_DT_REGISTRO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_item_source_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_prompt=>'Data Registro:'
,p_source=>'DT_REGISTRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4125246033157626)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(22818638892397101)
,p_name=>'P11_TITULO_PAGINA'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35723853629396402)
,p_name=>'P11_DT_REFERENCIA'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_item_source_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_source=>'DT_REFERENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(35723992813396403)
,p_name=>'P11_DT_REFERENCIA_DISPLAY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_item_source_plug_id=>wwv_flow_imp.id(12917050751524225)
,p_prompt=>unistr('Per\00EDodo:')
,p_source=>'DT_REFERENCIA_DISPLAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4125246033157626)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12978700182657209)
,p_name=>'protege_campo_colaborador'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_DT_ALINHAMENTO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12978869509657210)
,p_event_id=>wwv_flow_imp.id(12978700182657209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_DT_ALINHAMENTO,P11_DESCRICAO_1,P11_DESCRICAO_2,P11_DESCRICAO_3,P11_OBSERVACAO,P11_DT_REGISTRO'
,p_server_condition_type=>'FUNCTION_BODY'
,p_server_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if :gl_perfil in (2,4) and :gl_id_usuario = nvl(:P11_ID_COLABORADOR_AVALIADOR, :gl_id_usuario) then',
'     return true;',
'  else',
'     return false;',
'  end if;',
'end;'))
,p_server_condition_expr2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12978957170657211)
,p_event_id=>wwv_flow_imp.id(12978700182657209)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_DT_ALINHAMENTO,P11_DESCRICAO_1,P11_DESCRICAO_2,P11_DESCRICAO_3,P11_OBSERVACAO'
,p_server_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_server_condition_expr1=>'GL_PERFIL'
,p_server_condition_expr2=>'2:4'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17403581232945923)
,p_name=>'protege_registro'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(12917050751524225)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17403637530945924)
,p_event_id=>wwv_flow_imp.id(17403581232945923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P11_DT_ALINHAMENTO,P11_DESCRICAO_1,P11_DESCRICAO_2,P11_DESCRICAO_3,P11_OBSERVACAO'
,p_server_condition_type=>'FUNCTION_BODY'
,p_server_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   if (:P11_ID_COLABORADOR_AVALIADOR != :GL_ID_USUARIO) or ',
'     (:P11_DT_REGISTRO is not null )   then',
'      return true;',
'    else',
'      return false;',
'    end if;',
'end;'))
,p_server_condition_expr2=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12927260669524256)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(12917050751524225)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Cadastro Alinhamento'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#SQLERRM#',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Alinhamento Salvo com Sucesso!'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13217834696784104)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'atualiza_data_registro'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :REQUEST = ''FINALIZAR'' THEN',
'        update ad_alinhamento a',
'          set a.dt_registro = SYSDATE',
'        where a.ID_ALINHAMENTO = :P11_ID_ALINHAMENTO;',
'    END IF;',
'END;    '))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#SQLERRM#',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12945086146869601)
,p_process_success_message=>unistr('Finaliza\00E7\00E3o do Alinhamento efetuado com sucesso!')
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12926852640524255)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(12917050751524225)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Cadastro Alinhamento'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18313197602714281)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'prepara_periodo_DEX'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_ANO  VARCHAR2(4);',
'  V_DATA VARCHAR2(10);',
'begin',
'   if :gl_perfil = 4 AND :P11_ROWID IS NULL then',
'      V_ANO := to_char(sysdate,''yyyy'');',
'      if to_char( trunc(sysdate,''MONTH''),''DD/MM/YYYY'') >= to_char(''01/08/''||to_char(sysdate,''yyyy'')) then',
'         V_DATA := ''08/''||V_ANO;',
'         --V_DATA := ''01/08/''||V_ANO;',
'      else',
'         V_DATA := ''04/''||V_ANO;',
'         --V_DATA := ''01/04/''||V_ANO;',
'      end if;',
'      --',
'      :P11_DT_REFERENCIA := to_date(V_DATA,''mm/yyyy'');',
'   end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22818795472397102)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'prepara_titulo_pagina'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   select ''Alinhamento ''|| initcap(replace(to_char(to_date(:P11_DT_REFERENCIA,''dd/mm/rrrr''),''month/rrrr''),'' '',''''))',
'     into :P11_TITULO_PAGINA',
'   from dual;   ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
