prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(55170164950680821)
,p_name=>'Password Recover'
,p_alias=>'SEND-EMAIL-TO-RECOVER-PWD'
,p_page_mode=>'MODAL'
,p_step_title=>'Password Recover'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_last_updated_by=>'JGOLON'
,p_last_upd_yyyymmddhh24miss=>'20220622161604'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(53806401138286108)
,p_plug_name=>'Forgot PWD container'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(55072896817680482)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(53805989071286103)
,p_plug_name=>'Forgot Your Password?'
,p_parent_plug_id=>wwv_flow_api.id(53806401138286108)
,p_icon_css_classes=>'fa-lock-user'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>wwv_flow_api.id(55013203653680352)
,p_plug_display_sequence=>10
,p_plug_source=>'Enter your email address and we''ll send you a link to reset your password'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(53806559994286109)
,p_plug_name=>'TestApp'
,p_parent_plug_id=>wwv_flow_api.id(53806401138286108)
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--featured t-HeroRegion--centered'
,p_plug_template=>wwv_flow_api.id(55050733582680442)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(53806310767286107)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(53806401138286108)
,p_button_name=>'SEND'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--warning:t-Button--stretch:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_api.id(55145483290680690)
,p_button_image_alt=>'Send Password Reset Email'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53806228229286106)
,p_name=>'P3_EMAIL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(53806401138286108)
,p_prompt=>'Email Address'
,p_placeholder=>'e.g email@example.com'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(55142891271680670)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:margin-bottom-lg'
,p_warn_on_unsaved_changes=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(53807316700286117)
,p_name=>'P3_URL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(53806401138286108)
,p_prompt=>'Url'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(55142996048680670)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(53807145355286115)
,p_name=>'SEND URL EMAIL'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(53806310767286107)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(53807209445286116)
,p_event_id=>wwv_flow_api.id(53807145355286115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_email_url     VARCHAR2(250);',
'generated_date  TIMESTAMP;',
'p_link_id       NUMBER;',
'BEGIN',
'generated_date := TO_TIMESTAMP(SYSDATE,''mm-dd-yyyy HH24:MI:SSFF3'');',
'',
'INSERT INTO TEST_RECOVER_PASS_LINKS(USER_EMAIL,RECOVER_LINK,EXPIRED,CREATED)',
'VALUES (:P3_EMAIL,l_email_url,''N'',generated_date) RETURNING LINK_ID INTO p_link_id;',
'',
'l_email_url :=  APEX_PAGE.GET_URL (',
'                            p_page  => 4,',
'                            p_items => ''P4_TIMESTAMP_ID'',',
'                            p_values => p_link_id,',
'                            p_plain_url => TRUE',
'                        );',
'',
'UPDATE TEST_RECOVER_PASS_LINKS',
'SET RECOVER_LINK = l_email_url',
'WHERE LINK_ID = p_link_id;',
'',
'',
':P3_URL := l_email_url;',
'/*',
'l_email_url := APEX_UTIL.PREPARE_URL (',
'                    p_url          => l_email_url,',
'                    p_checksum_type  => ''PUBLIC_BOOKMARK'',',
'                    p_triggering_element => NULL,',
'                    p_plain_url  => TRUE);',
':P3_URL := l_email_url;',
'',
'',
'',
'',
'',
'apex_mail.send(',
'        p_template_static_id    => ''RESET_PASSWORD'',',
'        p_placeholders 		    => ''{'' ||',
'        ''   ,"LINK_TO":''     || apex_json.stringify(l_email_url_details) ||        ',
'        ''}'' ,',
'        p_to 					 => l_employee_email,',
'        p_from 				     => l_email_from_address,',
'        p_application_id 		 => c_app_id',
');',
'apex_mail.push_queue;',
'',
'                                        */',
'',
'END;'))
,p_attribute_02=>'P3_EMAIL'
,p_attribute_03=>'P3_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.component_end;
end;
/
