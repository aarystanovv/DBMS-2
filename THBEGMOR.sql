prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_default_workspace_id=>53931211463892963691
);
end;
/
prompt  WORKSPACE 53931211463892963691
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   18:04 Monday April 24, 2023
--   Exported By:     SABYR
--   Export Type:     Workspace Export
--   Version:         23.1.0-15
--   Instance ID:     63113759365424
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_230100
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>53931211463892963691);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace THBEGMOR...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 53932628090355702316
 ,p_provisioning_company_id => 53931211463892963691
 ,p_short_name => 'THBEGMOR'
 ,p_display_name => 'THBEGMOR'
 ,p_first_schema_provisioned => 'WKSP_THBEGMOR'
 ,p_company_schemas => 'WKSP_THBEGMOR'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'THBEGMOR'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'THBEGMOR'
 ,p_files_version => 1
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111224556075029,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111140893075029,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111073851075029,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '53931211384609963691',
  p_user_name                    => '210103226@STU.SDU.EDU.KZ',
  p_first_name                   => 'Dias',
  p_last_name                    => 'Dias',
  p_description                  => '',
  p_email_address                => '210103226@stu.sdu.edu.kz',
  p_web_password                 => '96FCB17249099D03F53D85F6F4A296F5B299342478CE6713BAA1E42333A6A08231910B1A3EA2EBE6AA5019D96A99C0474EE3DBE8C0C75F1FE6B3E1F6B4167F03',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '111073851075029:111140893075029:111224556075029:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_THBEGMOR',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202303030927','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '2279016378454659496',
  p_user_name                    => 'NURKHA',
  p_first_name                   => 'Nurkhat',
  p_last_name                    => 'Muratkan',
  p_description                  => '',
  p_email_address                => '210103047@stu.sdu.edu.kz',
  p_web_password                 => '0FAB46E7CD9F09641CBC72B63A40F66BB378A0584F2E1CA421AA94FB88C15A58B033B326BC33B5B9A369959BF87299D173847B5C913EAFD1969A152B807D67E7',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_THBEGMOR',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202304221810','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '2277108071162616651',
  p_user_name                    => 'SABYR',
  p_first_name                   => 'Sabyrzhan',
  p_last_name                    => 'Rustembekov',
  p_description                  => '',
  p_email_address                => '210103157@stu.sdu.edu.kz',
  p_web_password                 => '994FCD81533B0C4D37E3F49D6A9061C788095949FF4B56251958CB4E991A6B7AEAF8C8AD6C735D0E3FB67463EBFF8BEF9E80886179CE4167DF1B8EAA27EBA4A1',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_THBEGMOR',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202304221805','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '2277631530941138522',
  p_user_name                    => 'TIMA',
  p_first_name                   => 'Temirlan',
  p_last_name                    => 'Arystan',
  p_description                  => '',
  p_email_address                => '210103082@stu.sdu.edu.kz',
  p_web_password                 => 'F43FD47AA6521B07419AFB933F31687DC883F23086B5BA8A45EAC22871740C2888B54DB8127D4A714A4350DD413BEC5927A25E04D0FED31BBDA3CB0A17206020',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_THBEGMOR',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202304221809','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...Issue Templates
--
begin
null;
end;
/
--
prompt ...Issue Email Prefs
--
begin
null;
end;
/
--
prompt ...Label Groups
--
begin
null;
end;
/
--
prompt ...Labels
--
begin
null;
end;
/
--
prompt ... Milestones
--
begin
null;
end;
/
--
prompt ... Issues
--
begin
null;
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
