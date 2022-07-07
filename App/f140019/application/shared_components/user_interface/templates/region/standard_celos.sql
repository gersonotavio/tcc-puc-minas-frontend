prompt --application/shared_components/user_interface/templates/region/standard_celos
begin
--   Manifest
--     REGION TEMPLATE: STANDARD_CELOS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.1'
,p_default_workspace_id=>3060310794164477
,p_default_application_id=>777
,p_default_id_offset=>31982554338203874331
,p_default_owner=>'DVGE'
);
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(10563108090809879)
,p_layout=>'TABLE'
,p_template=>'#TITLE#<br />#BODY#'
,p_page_plug_template_name=>'Standard Celos'
,p_internal_name=>'STANDARD_CELOS'
,p_theme_id=>42
,p_theme_class_id=>8
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(213809322000585)
,p_plug_template_id=>wwv_flow_imp.id(10563108090809879)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(213916135000585)
,p_plug_template_id=>wwv_flow_imp.id(10563108090809879)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp.component_end;
end;
/
