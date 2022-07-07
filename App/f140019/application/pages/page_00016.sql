prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>unistr('Ger\00EAncias e Avaliadores')
,p_alias=>unistr('GER\00CANCIAS-E-AVALIADORES')
,p_step_title=>unistr('Ger\00EAncias e Avaliadores')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'GEROTAVIO@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20220119205122'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14044714003722781)
,p_plug_name=>unistr('Ger\00EAncias e Avaliadores')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'AD_DIRETORIA_LOTACAO'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14048349588722785)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(14044714003722781)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'CHANGE'
,p_button_condition=>'P16_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14047114737722784)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14044714003722781)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14048782387722785)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(14044714003722781)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'CREATE'
,p_button_condition=>'P16_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(14047933787722784)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(14044714003722781)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_image_alt=>'Excluir'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P16_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(14049051708722785)
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14045169441722781)
,p_name=>'P16_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(14044714003722781)
,p_item_source_plug_id=>wwv_flow_imp.id(14044714003722781)
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
 p_id=>wwv_flow_imp.id(14045417369722782)
,p_name=>'P16_ID_DIRETORIA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(14044714003722781)
,p_item_source_plug_id=>wwv_flow_imp.id(14044714003722781)
,p_prompt=>'Diretorias'
,p_source=>'ID_DIRETORIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SHUTTLE'
,p_named_lov=>'LV_DIRETORIA'
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(4126755145157628)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ALL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14045870953722783)
,p_name=>'P16_ID_LOTACAO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(14044714003722781)
,p_item_source_plug_id=>wwv_flow_imp.id(14044714003722781)
,p_prompt=>unistr('Ger\00EAncias')
,p_source=>'ID_LOTACAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SHUTTLE'
,p_named_lov=>'LV_GERENCIAS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT lot.lotacao_id,',
'       lot.nm_lotacao',
'  FROM hp_lotacao lot',
' WHERE lot.lotacao_id NOT IN (11, 12, 13)',
' ORDER BY lot.lotacao_id;'))
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(4126755145157628)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'ALL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14057608125865106)
,p_name=>'P16_ID_LOTACAO_OLD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(14044714003722781)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14049965994722786)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(14044714003722781)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('Process form Ger\00EAncias e Avaliadores')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14057195952865101)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'popular_ad_diretoria_lotacao'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  vtab apex_application_global.vc_arr2;',
'begin',
'   vtab := apex_util.string_to_table(:P16_ID_LOTACAO);',
'   for a in 1 .. vtab.count loop',
'      insert into ad_diretoria_lotacao(id_diretoria, id_lotacao) values (:P16_ID_DIRETORIA, vtab(a));',
'   end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14048782387722785)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14057288774865102)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'altera_ad_diretoria_lotacao'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_id_lotacao number;',
'begin',
'    select lotacao_id',
'      into v_id_lotacao',
'    FROM hp_lotacao ',
'    where nm_lotacao = :P16_ID_LOTACAO_OLD;',
'    --    ',
'    update ad_diretoria_lotacao',
'    set id_lotacao =  :P16_ID_LOTACAO',
'    where id_diretoria = :P16_ID_DIRETORIA',
'        and id_lotacao = v_id_lotacao;',
'end;         ',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14048349588722785)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14057349827865103)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'exclui_ad_diretoria_lotacao'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'      delete from ad_diretoria_lotacao',
'       where id_diretoria = :P16_ID_DIRETORIA',
'        and  id_lotacao =  :P16_ID_LOTACAO;',
' '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(14047933787722784)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(14049531740722786)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(14044714003722781)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Ger\00EAncias e Avaliadores')
);
wwv_flow_imp.component_end;
end;
/
