prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_220100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>35356834705155059975
,p_default_application_id=>140019
,p_default_id_offset=>31982554338203874331
,p_default_owner=>'WKSP_CELOS'
);
end;
/
 
prompt APPLICATION 140019 - Avaliação de Desempenho
--
-- Application Export:
--   Application:     140019
--   Name:            Avaliação de Desempenho
--   Date and Time:   19:04 Thursday July 7, 2022
--   Exported By:     GERSON
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     LOV: 38947954926853514228
--     LOV: 31993075287755282683
--     LOV: 39140664826238990151
--     LOV: 39137153591429892643
--     LOV: 32009010813247960079
--     LOV: 31996609643680623086
--     LOV: 31996678679869041805
--     LOV: 31986959820750485366
--     LOV: 31986720988072032125
--     LOV: 31986712058454032085
--     LOV: 31996609490358618092
--     LOV: 31993074523551254920
--     LOV: 31986721727876032138
--   Manifest End
--   Version:         22.1.1
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/user_interface/lovs/ad_competencia_nm_competencia_area
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(31986959820750485366)
,p_lov_name=>'AD_COMPETENCIA.NM_COMPETENCIA_AREA'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'AD_COMPETENCIA'
,p_return_column_name=>'ID'
,p_display_column_name=>'NM_COMPETENCIA_AREA'
,p_default_sort_column_name=>'NM_COMPETENCIA_AREA'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/desktop_theme_styles
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(31986720988072032125)
,p_lov_name=>'DESKTOP THEME STYLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name d,',
'    s.theme_style_id r',
'from apex_application_theme_styles s, apex_application_themes t',
'where s.application_id = t.application_id',
'    and s.theme_number = t.theme_number',
'    and s.application_id = :app_id',
'    and t.ui_type_name   = ''DESKTOP''',
'    and t.is_current = ''Yes''',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
end;
/
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(31986712058454032085)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_imp.id(31986712058454032085)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(31986712458855032089)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>unistr('Lembrar nome do usu\00E1rio')
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lv_cargos
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(31996678679869041805)
,p_lov_name=>'LV_CARGOS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.id_cargo, ',
'       a.ds_cargo',
'  FROM pcr_cargo a;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'ID_CARGO'
,p_display_column_name=>'DS_CARGO'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DS_CARGO'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lv_competencia
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(39137153591429892643)
,p_lov_name=>'LV_COMPETENCIA'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'AD_COMPETENCIA'
,p_return_column_name=>'ID'
,p_display_column_name=>'NM_COMPETENCIA_AREA'
,p_group_column_name=>'ID'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'ID'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lv_competencia2
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(39140664826238990151)
,p_lov_name=>'LV_COMPETENCIA2'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.ID,',
'       (A.ID||''-''||A.NM_COMPETENCIA_AREA) DISP',
'FROM AD_COMPETENCIA A'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'DISP'
,p_default_sort_column_name=>'DISP'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lv_diretoria
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(31996609490358618092)
,p_lov_name=>'LV_DIRETORIA'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'AD_DIRETORIA'
,p_return_column_name=>'ID_DIRETORIA'
,p_display_column_name=>'NM_DIRETORIA'
,p_default_sort_column_name=>'NM_DIRETORIA'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lv_funcao
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(38947954926853514228)
,p_lov_name=>'LV_FUNCAO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'    SELECT (SELECT C.CARGO_ID ',
'             FROM HP_CARGOS C ',
'            WHERE UPPER(LTRIM(C.DS_CARGO)) = X.DS_FUNCAO ',
'             AND ROWNUM = 1) ID_FUNCAO, ',
'            X.DS_FUNCAO',
'    FROM (SELECT  DISTINCT UPPER(LTRIM(A.DS_CARGO)) DS_FUNCAO FROM HP_CARGOS A',
'    WHERE A.DS_CARGO IS NOT NULL',
'    ORDER BY  UPPER(LTRIM(A.DS_CARGO))) X'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'ID_FUNCAO'
,p_display_column_name=>'DS_FUNCAO'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DS_FUNCAO'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lv_gerencias
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(31996609643680623086)
,p_lov_name=>'LV_GERENCIAS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT lot.lotacao_id,',
'       lot.nm_lotacao',
'  FROM hp_lotacao lot',
' WHERE lot.lotacao_id NOT IN (11, 12, 13)',
' ORDER BY lot.lotacao_id;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'LOTACAO_ID'
,p_display_column_name=>'NM_LOTACAO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lv_lotacao
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(32009010813247960079)
,p_lov_name=>'LV_LOTACAO'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nm_lotacao || ''-''|| ds_lotacao d, lotacao_id r',
'from hp_lotacao',
'where (dt_fim is null or dt_fim >= trunc(sysdate))',
' and  lotacao_id not in(12,13)',
'order by 1',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lv_tipo_avaliacao
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(31993075287755282683)
,p_lov_name=>'LV_TIPO_AVALIACAO'
,p_lov_query=>'.'||wwv_flow_imp.id(31993075287755282683)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(31993075571653282692)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('Avalia\00E7\00E3o Individual Colaboradores')
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(31993076365899282693)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('Autoavalia\00E7\00E3o Colaborador')
,p_lov_return_value=>'3'
);
end;
/
prompt --application/shared_components/user_interface/lovs/lv_usuario
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(31993074523551254920)
,p_lov_name=>'LV_USUARIO'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'V_AD_DADOS_USUARIOS'
,p_return_column_name=>'COLABORADOR_ID'
,p_display_column_name=>'NOME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NOME'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/user_theme_preference
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(31986721727876032138)
,p_lov_name=>'USER_THEME_PREFERENCE'
,p_lov_query=>'.'||wwv_flow_imp.id(31986721727876032138)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(31986722018010032138)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('Permite que os Usu\00E1rios Finais escolham o Estilo do Tema')
,p_lov_return_value=>'Yes'
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
--commit;
end;
/
set verify on feedback on define on
prompt  ...done
