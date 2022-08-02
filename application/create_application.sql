prompt --application/create_application
begin
--   Manifest
--     FLOW: 216
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>215941952601575223
,p_default_application_id=>216
,p_default_id_offset=>0
,p_default_owner=>'JGOLON'
);
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'JGOLON')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'TestApp')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'TESTAPP')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'0F371A1151A96FED01E7A4C46FAAAFFC7192A0F089E6DD8581672EB347BBA209'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'21.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(56681192274936065)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'TestApp'
,p_app_builder_icon_name=>'app-icon.svg'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_vpd=>'st_mp_ctx_api.init(p_user_name => :APP_USER, p_app_session => :APP_SESSION);	'
,p_vpd_teardown_code=>'st_mp_ctx_api.cleanup(p_app_session => :APP_SESSION);	'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_error_handling_function=>'st_mp_error_api.handle_error	'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'TestApp'
,p_last_updated_by=>'JGOLON'
,p_last_upd_yyyymmddhh24miss=>'20220708111008'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
,p_print_server_type=>'NATIVE'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
);
wwv_flow_api.component_end;
end;
/
