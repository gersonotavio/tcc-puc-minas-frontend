prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 140019
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>3060310794164477
,p_default_application_id=>777
,p_default_id_offset=>31982554338203874331
,p_default_owner=>'DVGE'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(4130706508157653)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(4021083489157543)
,p_default_dialog_template=>wwv_flow_imp.id(4016786968157540)
,p_error_template=>wwv_flow_imp.id(4011902013157535)
,p_printer_friendly_template=>wwv_flow_imp.id(4021083489157543)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(4011902013157535)
,p_default_button_template=>wwv_flow_imp.id(4127947139157632)
,p_default_region_template=>wwv_flow_imp.id(4062893845157577)
,p_default_chart_template=>wwv_flow_imp.id(4062893845157577)
,p_default_form_template=>wwv_flow_imp.id(4062893845157577)
,p_default_reportr_template=>wwv_flow_imp.id(4062893845157577)
,p_default_tabform_template=>wwv_flow_imp.id(4062893845157577)
,p_default_wizard_template=>wwv_flow_imp.id(4062893845157577)
,p_default_menur_template=>wwv_flow_imp.id(4072200293157582)
,p_default_listr_template=>wwv_flow_imp.id(4062893845157577)
,p_default_irr_template=>wwv_flow_imp.id(4060920233157576)
,p_default_report_template=>wwv_flow_imp.id(4092912290157599)
,p_default_label_template=>wwv_flow_imp.id(4125486867157626)
,p_default_menu_template=>wwv_flow_imp.id(4129384583157633)
,p_default_calendar_template=>wwv_flow_imp.id(4129474709157638)
,p_default_list_template=>wwv_flow_imp.id(4109391790157613)
,p_default_nav_list_template=>wwv_flow_imp.id(4121175628157622)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(4121175628157622)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(4115714229157618)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(4032801071157555)
,p_default_dialogr_template=>wwv_flow_imp.id(4031886466157555)
,p_default_option_label=>wwv_flow_imp.id(4125486867157626)
,p_default_required_label=>wwv_flow_imp.id(4126755145157628)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_imp.id(4115312292157617)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/21.1/')
,p_files_version=>66
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
