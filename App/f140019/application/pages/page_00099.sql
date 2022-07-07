prompt --application/pages/page_00099
begin
--   Manifest
--     PAGE: 00099
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
 p_id=>99
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>'teste cadastro alinhamento'
,p_alias=>'TESTE-CADASTRO-ALINHAMENTO'
,p_step_title=>'teste cadastro alinhamento'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'GERSON'
,p_last_upd_yyyymmddhh24miss=>'20211111160824'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18301624415551491)
,p_plug_name=>'teste cadastro alinhamento'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'AD_ALINHAMENTO'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18310809908551522)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P99_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18309615801551517)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18311262393551522)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P99_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(18310446125551521)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P99_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18301982254551495)
,p_name=>'P99_ROWID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_item_source_plug_id=>wwv_flow_imp.id(18301624415551491)
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
 p_id=>wwv_flow_imp.id(18302392558551503)
,p_name=>'P99_ID_ALINHAMENTO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_item_source_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Alinhamento'
,p_source=>'ID_ALINHAMENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(4126755145157628)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18302741480551507)
,p_name=>'P99_ID_COLABORADOR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_item_source_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Colaborador'
,p_source=>'ID_COLABORADOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(4126755145157628)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18303108360551507)
,p_name=>'P99_ID_COLABORADOR_AVALIADOR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_item_source_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Colaborador Avaliador'
,p_source=>'ID_COLABORADOR_AVALIADOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(4126755145157628)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18303522783551508)
,p_name=>'P99_DT_REFERENCIA'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_item_source_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dt Referencia'
,p_source=>'DT_REFERENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(4126755145157628)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18303988838551508)
,p_name=>'P99_DT_ALINHAMENTO'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_item_source_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dt Alinhamento'
,p_source=>'DT_ALINHAMENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(4125486867157626)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18304302223551509)
,p_name=>'P99_DT_REGISTRO'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_item_source_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dt Registro'
,p_source=>'DT_REGISTRO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(4125486867157626)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18304774386551510)
,p_name=>'P99_DESCRICAO_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_item_source_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descricao 1'
,p_source=>'DESCRICAO_1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(4125486867157626)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18305172705551510)
,p_name=>'P99_DESCRICAO_2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_item_source_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descricao 2'
,p_source=>'DESCRICAO_2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(4125486867157626)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18305506617551511)
,p_name=>'P99_DESCRICAO_3'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_item_source_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descricao 3'
,p_source=>'DESCRICAO_3'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(4125486867157626)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18305936891551511)
,p_name=>'P99_OBSERVACAO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_item_source_plug_id=>wwv_flow_imp.id(18301624415551491)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Observacao'
,p_source=>'OBSERVACAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(4125486867157626)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18312013837551526)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(18301624415551491)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form teste cadastro alinhamento'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18311628355551526)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(18301624415551491)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form teste cadastro alinhamento'
);
wwv_flow_imp.component_end;
end;
/
