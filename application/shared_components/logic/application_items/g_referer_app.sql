prompt --application/shared_components/logic/application_items/g_referer_app
begin
--   Manifest
--     APPLICATION ITEM: G_REFERER_APP
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>215941952601575223
,p_default_application_id=>216
,p_default_id_offset=>0
,p_default_owner=>'JGOLON'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(56685112134974737)
,p_name=>'G_REFERER_APP'
,p_scope=>'GLOBAL'
,p_protection_level=>'I'
);
wwv_flow_api.component_end;
end;
/
