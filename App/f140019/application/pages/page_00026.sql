prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>unistr('Di\00E1rio de Avalia\00E7\00E3o / Meu Di\00E1rio')
,p_alias=>unistr('DI\00C1RIO-DE-AVALIA\00C7\00C3O-MEU-DI\00C1RIO1')
,p_step_title=>unistr('Di\00E1rio de Avalia\00E7\00E3o / Meu Di\00E1rio')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'GERSON'
,p_last_upd_yyyymmddhh24miss=>'20211130124126'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15401579546246814)
,p_plug_name=>'&P26_TITULO_PAGINA.'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID,',
'       id_diario_avaliacao,',
'       id_colaborador,',
'       id_colaborador_avaliador,',
'       descricao,',
'       dt_acontecimento,',
'       dt_registro,',
'       sys.dbms_lob.getlength(anexo) anexo',
'  FROM ad_diario_avaliacao',
'  WHERE (:P26_ITEM_MENU like ''MEU_DIARIO%'' AND ',
'         --:GL_PERFIL IN (1,2) AND ',
'         id_colaborador = :P26_ID_COLAB_PARAMETRO and ID_PERFIL_REGISTRO = 1) ',
'         --',
'         OR',
'         --',
'        (:P26_ITEM_MENU like ''DIARIO_AVALIACAO%'' AND ',
'        ((:GL_PERFIL IN (3,4, 5, 6) AND  ((id_colaborador = :P26_ID_COLAB_PARAMETRO) or (id_colaborador_avaliador = pck_ad.FNC_BUSCA_ID_GERENTE_COLAB(:P26_ID_COLAB_AVALIAD_PARAMETRO)))) or ',
'         (:GL_PERFIL IN (2,6) AND  id_colaborador_avaliador = :P26_ID_COLAB_AVALIAD_PARAMETRO )) AND ',
'        ID_PERFIL_REGISTRO = 2)   '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'&P26_TITULO_PAGINA.'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(15401954592246814)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:RP,:P27_ROWID,P27_ITEM_MENU,P27_TITULO_PAGINA,P27_ID_COLABORADOR,P27_ID_COLABORADOR_AVALIADOR,P27_ID_PERFIL_REGISTRO:\#ROWID#\,&P26_ITEM_MENU.,&P26_TITULO_PAGINA.,&P26_ID_COLAB_PARAMETRO.,&P26_ID_COLAB_AVALIAD_PARAM'
||'ETRO.,&P26_ID_PERFIL_REGISTRO.'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_owner=>'GERSON'
,p_internal_uid=>15401954592246814
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15402087622246816)
,p_db_column_name=>'ROWID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'ROWID'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15402441366246819)
,p_db_column_name=>'ID_DIARIO_AVALIACAO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Diario Avaliacao'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15402874907246820)
,p_db_column_name=>'ID_COLABORADOR'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Colaborador'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(10520185347380589)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15403202092246820)
,p_db_column_name=>'ID_COLABORADOR_AVALIADOR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Avaliador'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(10520185347380589)
,p_rpt_show_filter_lov=>'1'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P26_ITEM_MENU like ''DIARIO_AVALIACAO%'' then',
'   return true;',
'end if;'))
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15403636249246820)
,p_db_column_name=>'DESCRICAO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('Descri\00E7\00E3o')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15404088825246821)
,p_db_column_name=>'DT_ACONTECIMENTO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Data<br> Acontecimento'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15404402749246821)
,p_db_column_name=>'DT_REGISTRO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Data<br>Registro'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'dd/mm/yyyy'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15405252782246822)
,p_db_column_name=>'ANEXO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Anexo'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DOWNLOAD:AD_DIARIO_AVALIACAO:ANEXO:ROWID::ATTACH_MIMETYPE:ATTACH_FILENAME:::attachment::'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(15407790230247518)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'154078'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_COLABORADOR_AVALIADOR:ID_COLABORADOR:DT_REGISTRO:DESCRICAO:DT_ACONTECIMENTO:ANEXO:'
,p_sort_column_1=>'DT_REGISTRO'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'ID_COLABORADOR:0:0:0:0'
,p_break_enabled_on=>'ID_COLABORADOR:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15415059622296002)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15401579546246814)
,p_button_name=>'VOLTAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Voltar'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15407303319246824)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(15401579546246814)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Novo'
,p_button_position=>'TOP_AND_BOTTOM'
,p_button_redirect_url=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:27:P27_ITEM_MENU,P27_ID_COLABORADOR,P27_ID_COLABORADOR_AVALIADOR,P27_ID_PERFIL_REGISTRO:&P26_ITEM_MENU.,&P26_ID_COLAB_PARAMETRO.,&P26_ID_COLAB_AVALIAD_PARAMETRO.,&P26_ID_PERFIL_REGISTRO.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   if  :GL_PERFIL IN(1,2,5,6) AND :P26_ITEM_MENU like ''MEU_DIARIO%'' AND :GL_ID_USUARIO = :P26_ID_COLAB_PARAMETRO  THEN',
'      return true;',
'   elsif :GL_PERFIL IN(2,4,6) AND :P26_ITEM_MENU like ''DIARIO_AVALIACAO%'' AND :GL_ID_USUARIO = :P26_ID_COLAB_AVALIAD_PARAMETRO THEN',
'      return true;',
'   else',
'      return false;',
'   end if;',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15414938163296001)
,p_name=>'P26_ITEM_MENU'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15401579546246814)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15415285951296004)
,p_name=>'P26_ID_COLAB_PARAMETRO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15401579546246814)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15443124440518302)
,p_name=>'P26_TITULO_PAGINA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(15401579546246814)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15443213591518303)
,p_name=>'P26_ID_COLAB_AVALIAD_PARAMETRO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15401579546246814)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15443393716518304)
,p_name=>'P26_ID_PERFIL_REGISTRO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(15401579546246814)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17401309309945901)
,p_name=>'P26_PAGINA_ORIGEM'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(15401579546246814)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15443028936518301)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'carrega_configuracoes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    --',
'    IF :P26_ITEM_MENU like ''MEU_DIARIO%'' THEN ',
'       -- PREENCHIDO POR GERENTES E COLABORADORES -- perfis: 1 - colaborador / 2 - gerente / 5 - colaborador + adm / 6 - gerente + adm',
'       --',
'       if :GL_PERFIL IN(1,5,2,6) AND :P26_PAGINA_ORIGEM = ''26''  THEN',
'          :P26_ID_COLAB_PARAMETRO := :GL_ID_USUARIO;',
'       end if;',
'       --',
unistr('       select ''Meu Di\00E1rio - ''||A.NOME'),
'       into :P26_TITULO_PAGINA',
'       from v_ad_dados_usuarios a',
'       where a.colaborador_id = decode(:GL_PERFIL,1,:GL_ID_USUARIO,5,:P26_ID_COLAB_PARAMETRO,2,:GL_ID_USUARIO,6,:P26_ID_COLAB_PARAMETRO,:P26_ID_COLAB_PARAMETRO) ;',
'       --',
'       SELECT pck_ad.FNC_BUSCA_ID_GERENTE_COLAB(:P26_ID_COLAB_PARAMETRO) ',
'         INTO :P26_ID_COLAB_AVALIAD_PARAMETRO ',
'       FROM DUAL;',
'       --',
'       :P26_ID_PERFIL_REGISTRO := 1;',
'       --',
unistr('    ELSE -- SE DIARIO DE AVALIA\00C7\00C3O -- (SOMENTE GERENTES e DEX PREEENCHEM)'),
'       --',
'       if :GL_PERFIL IN(2,6) and :P26_ITEM_MENU != ''DIARIO_AVALIACAO_PERFIL_GERENTE_ADM'' THEN',
'          :P26_ID_COLAB_PARAMETRO := null;',
'       end if;',
'       --',
'       if :P26_ITEM_MENU != ''DIARIO_AVALIACAO_PERFIL_GERENTE_ADM'' then',
'          :P26_ID_COLAB_AVALIAD_PARAMETRO :=:GL_ID_USUARIO;',
'       else',
'          :P26_ID_COLAB_AVALIAD_PARAMETRO := :P26_ID_COLAB_PARAMETRO;',
'       end if;',
'       --',
'       :P26_ID_PERFIL_REGISTRO := 2;',
'       --',
'       IF :GL_PERFIL = 2 THEN',
unistr('         :P26_TITULO_PAGINA := ''Di\00E1rio de Avalia\00E7\00E3o'';'),
'       ELSIF :GL_PERFIL IN (3,5,6) THEN',
unistr('         :P26_TITULO_PAGINA := ''Di\00E1rio de Avalia\00E7\00E3o CELOS'';'),
'       ELSIF :GL_PERFIL = 4 THEN',
unistr('         :P26_TITULO_PAGINA := ''Di\00E1rio de Avalia\00E7\00E3o vis\00E3o DEX'';'),
'       END IF;',
'       --',
'    END IF;',
'    --',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
