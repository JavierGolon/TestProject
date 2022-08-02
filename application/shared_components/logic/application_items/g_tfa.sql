prompt --application/shared_components/logic/application_items/g_tfa
begin
--   Manifest
--     APPLICATION ITEM: G_TFA
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
 p_id=>wwv_flow_api.id(56685963581979148)
,p_name=>'G_TFA'
,p_scope=>'GLOBAL'
,p_protection_level=>'I'
);
wwv_flow_api.component_end;
end;
/
