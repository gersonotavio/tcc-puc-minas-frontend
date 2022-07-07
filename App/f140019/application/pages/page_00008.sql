prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_user_interface_id=>wwv_flow_imp.id(4152451592157680)
,p_name=>unistr('Usu\00E1rios')
,p_alias=>unistr('USU\00C1RIOS1')
,p_step_title=>unistr('Usu\00E1rios')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'GERSON'
,p_last_upd_yyyymmddhh24miss=>'20220601020924'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(38572058052502141)
,p_plug_name=>unistr('LISTAGEM DE USU\00C1RIOS')
,p_region_template_options=>'#DEFAULT#:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4062893845157577)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROWID, ',
'       id, ',
'       --(select upper(d.nome) from V_AD_DADOS_USUARIOS d where d.colaborador_id = a.id) nome_usuario,',
'       nm_usuario, ',
'       NOME_USUARIO,',
'       decode(id_perfil,1,''Colaborador'',2,''Gerente'',3,''Administrador'',4,''DEX'',5,''Colaborador + Administrador'',6,''Gerente + Administrador'') PERFI_USUARIO, ',
unistr('       decode(id_administrador,0,''USU\00C1RIO'',''ADMINISTRADOR'') PERFIL_SISTEMA,'),
unistr('       (select decode(d.id_ativo,1,''sim'',''n\00E3o'') from V_AD_DADOS_USUARIOS d where d.colaborador_id = a.id) ativo,'),
unistr('       decode((select 1 from ad_usuario a1 where a1.id = a.id and a1.avatar is not null),1,''sim'',''n\00E3o'') avatar_sim_nao'),
'  FROM ad_usuario a',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('LISTAGEM DE USU\00C1RIOS')
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
 p_id=>wwv_flow_imp.id(38572465532502142)
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
,p_detail_link=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:RP,:P9_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'GERSON'
,p_internal_uid=>38572465532502142
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13030984386158819)
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
 p_id=>wwv_flow_imp.id(13031310216158820)
,p_db_column_name=>'ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13031709367158820)
,p_db_column_name=>'NM_USUARIO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('USU\00C1RIO')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13030172108158818)
,p_db_column_name=>'PERFI_USUARIO'
,p_display_order=>13
,p_column_identifier=>'G'
,p_column_label=>'Perfi Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13030599221158819)
,p_db_column_name=>'PERFIL_SISTEMA'
,p_display_order=>23
,p_column_identifier=>'H'
,p_column_label=>'Perfil Sistema'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(25216958997950801)
,p_db_column_name=>'ATIVO'
,p_display_order=>33
,p_column_identifier=>'I'
,p_column_label=>'Ativo'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3961816277205327971)
,p_db_column_name=>'AVATAR_SIM_NAO'
,p_display_order=>43
,p_column_identifier=>'K'
,p_column_label=>'Tem Avatar?'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3961816456300327972)
,p_db_column_name=>'NOME_USUARIO'
,p_display_order=>53
,p_column_identifier=>'L'
,p_column_label=>'Nome Usuario'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(38576107425502619)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'130321'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NM_USUARIO:NOME_USUARIO:PERFI_USUARIO:PERFIL_SISTEMA:ATIVO:AVATAR_SIM_NAO:'
,p_sort_column_1=>'NM_USUARIO'
,p_sort_direction_1=>'ASC'
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
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13032549035158827)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(38572058052502141)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4127947139157632)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Novo'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:9::'
);
wwv_flow_imp.component_end;
end;
/
