prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
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
 p_id=>9999
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>unistr('P\00E1gina de Log-in')
,p_alias=>'LOGIN'
,p_step_title=>unistr('Avalia\00E7\00E3o de Desempenho - Acessar')
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.my-signin2{',
'  position:relative; ',
'  left:-50%;',
'} '))
,p_step_template=>wwv_flow_imp.id(4011902013157535)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'12'
,p_last_updated_by=>'GERSON'
,p_last_upd_yyyymmddhh24miss=>'20220401022511'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4156706386157747)
,p_plug_name=>unistr('Avalia\00E7\00E3o de Desempenho')
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4061569862157576)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4161325551157770)
,p_plug_name=>'Seletor de Idioma'
,p_parent_plug_id=>wwv_flow_imp.id(4156706386157747)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4031886466157555)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3961816858365327976)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4156706386157747)
,p_button_name=>'Google'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(21127672064445528634)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Google'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.:APEX_AUTHENTICATION=Google_Authentication:&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4159471664157765)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4156706386157747)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(4128014990157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Acessar'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4157141176157750)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4156706386157747)
,p_prompt=>unistr('Nome do Usu\00E1rio')
,p_placeholder=>unistr('Nome do Usu\00E1rio')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(4125186486157625)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4157548589157754)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4156706386157747)
,p_prompt=>'Senha'
,p_placeholder=>'Senha'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(4125186486157625)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4158548895157761)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4156706386157747)
,p_prompt=>unistr('Lembrar nome do usu\00E1rio')
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_imp.id(4157720250157754)||'.'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(4125186486157625)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
unistr('Se voc\00EA marcar esta caixa de sele\00E7\00E3o, o aplicativo salvar\00E1 seu nome de usu\00E1rio em um cookie de browser persistente chamado "LOGIN_USERNAME_COOKIE".'),
unistr('Quando voc\00EA for at\00E9 a p\00E1gina de log-in na pr\00F3xima vez, '),
unistr('o campo de nome do usu\00E1rio ser\00E1 preenchido automaticamente com esse valor.'),
'</p>',
'<p>',
unistr('Se voc\00EA desmarcar esta caixa de sele\00E7\00E3o e o seu nome de usu\00E1rio j\00E1 estiver salvo no cookie,'),
unistr('o aplicativo o substituir\00E1 por um valor vazio.'),
unistr('Voc\00EA tamb\00E9m pode usar as ferramentas de desenvolvedor do seu browser para remover completamente o cookie.'),
'</p>'))
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4160254821157768)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Definir Cookie de Nome do Usu\00E1rio')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4159833702157766)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'v_mensagem varchar2(300);',
'v_erro EXCEPTION;',
'',
'cursor c1 is',
'select ID_PERFIL, ID_ADMINISTRADOR, ID',
'from AD_USUARIO',
'where Upper(nm_usuario) = Upper(:P9999_USERNAME);',
'',
'r1 c1%rowtype;',
'begin',
'    apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );',
'',
'    open c1;',
'    fetch c1 into r1;',
'    if c1%notfound then',
unistr('       v_mensagem := ''Usu\00E1rio n\00E3o cadastrado no sistema!'';'),
'    else',
'       :GL_PERFIL     := R1.ID_PERFIL;',
'       :GL_ADMIN      := R1.ID_ADMINISTRADOR;',
'       :GL_ID_USUARIO := R1.ID;',
'    end if;',
'    close c1;',
'    if :gl_id_usuario = 216 then',
'    -- teste como gerente',
'       --:GL_PERFIL     := 5; -- perfil colaborador DVGE (Juliana Colab e ADM) --',
'       --:GL_PERFIL     := 6; -- perfil Gerente DVGE -- (Monique - Gerente e ADM)',
'       --:GL_PERFIL     := 4; -- perfil DEX --',
'       --:GL_PERFIL     := 3; -- perfil admnistrador --',
'       --:GL_PERFIL     := 2;',
'       :GL_PERFIL     := 1;',
'       :GL_ADMIN      := 1;',
'       --:GL_ADMIN      := 0;',
'       --:GL_ID_USUARIO := 30;',
'       --:GL_ID_USUARIO := 104;--96; --5',
'       --:GL_ID_USUARIO := 5;  -- perfil 1-Colaborador,2-Gerente,3-Administrador,4-DEX',
'       --:GL_ID_USUARIO := 107;',
'       --:GL_ID_USUARIO := 218;',
'       --:GL_ID_USUARIO := 147;',
'       --:GL_ID_USUARIO := 96;',
'       --:GL_ID_USUARIO := 244;',
'       --:GL_ID_USUARIO := 235;',
'       --:GL_ID_USUARIO := 3;',
'       --:GL_ID_USUARIO := 51; --matricula regiane',
'       null;',
'    end if;',
'    --',
'',
'EXCEPTION',
'  WHEN v_erro THEN',
'    raise_application_error(-20001, v_mensagem);',
'end;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4161014085157769)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>unistr('Limpar Cache de P\00E1gina(s)')
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4160696330157769)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Obter Cookie de Nome do Usu\00E1rio')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
