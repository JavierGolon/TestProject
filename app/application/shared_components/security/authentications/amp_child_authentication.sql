prompt --application/shared_components/security/authentications/amp_child_authentication
begin
--   Manifest
--     AUTHENTICATION: AMP Child Authentication
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>215941952601575223
,p_default_application_id=>216
,p_default_id_offset=>0
,p_default_owner=>'JGOLON'
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(56681192274936065)
,p_name=>'AMP Child Authentication'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_05=>'N'
,p_invalid_session_type=>'URL'
,p_invalid_session_url=>'f?p=&G_LAUNCHPAD_APP_ID.:1'
,p_logout_url=>'f?p=&G_LAUNCHPAD_APP_ID.:1'
,p_cookie_name=>'SMP'
,p_use_secure_cookie_yn=>'Y'
,p_ras_mode=>0
);
wwv_flow_api.component_end;
end;
/
