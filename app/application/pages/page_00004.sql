prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>215941952601575223
,p_default_application_id=>216
,p_default_id_offset=>0
,p_default_owner=>'JGOLON'
);
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(55170164950680821)
,p_name=>'Change Password'
,p_alias=>'CHANGE-PASSWORD'
,p_step_title=>'Change Password'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(55000823094680325)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_last_updated_by=>'JGOLON'
,p_last_upd_yyyymmddhh24miss=>'20220621181818'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(53806688261286110)
,p_plug_name=>'Change Password'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(55070376881680478)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(53807056553286114)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(53806688261286110)
,p_button_name=>'CHANGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(55145483290680690)
,p_button_image_alt=>'Change Password'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53806851052286112)
,p_name=>'P4_NEW_PWD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(53806688261286110)
,p_prompt=>'Enter New Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(55143717886680673)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53806991524286113)
,p_name=>'P4_CONFIRM_PWD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(53806688261286110)
,p_prompt=>'Confirm New Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(55143717886680673)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-bottom-lg'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53807864546286122)
,p_name=>'P4_TIMESTAMP_ID'
,p_item_sequence=>20
,p_prompt=>'Timestamp Id'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(55142996048680670)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(53808093847286124)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CHECK_EXPIRED'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'is_correct  NUMBER;',
'BEGIN',
'',
'SELECT COUNT(*) INTO is_correct',
'FROM  TEST_RECOVER_PASS_LINKS',
'WHERE LINK_ID = 1',
'AND EXTRACT(MINUTE FROM  SYSDATE -CREATED) <= 5 AND EXPIRED = ''N'';',
'',
'IF is_correct = 0 THEN',
':P4_CONFIRM_PWD := ''EXPIRED'';',
'ELSE ',
':P4_CONFIRM_PWD := ''AVAILABLE'';',
'END IF;',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
