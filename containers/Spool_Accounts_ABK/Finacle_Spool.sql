 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
bank_details_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
bank_details_spool.sql 
-- File Name		: bank_details_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 800
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ebanking/bank_details.txt
select
TRIM(DB_TS) ||'|'||
TRIM(LANG_ID) ||'|'||
TRIM(BANK_REF_NO) ||'|'||
TRIM(BANK_TYPE) ||'|'||
TRIM(UPDATE_DATE) ||'|'||
TRIM(INSTITUTION_TYPE) ||'|'||
TRIM(INSTITUTION_NAME) ||'|'||
TRIM(SHORT_NAME) ||'|'||
TRIM(ADDRESS) ||'|'||
TRIM(ADDRESS2) ||'|'||
TRIM(ADDRESS3) ||'|'||
TRIM(CITY_ZIPCODE) ||'|'||
TRIM(COUNTRY_CODE) ||'|'||
TRIM(STATE_CODE) ||'|'||
TRIM(ZIP_EXTN) ||'|'||
TRIM(BRANCH_NAME) ||'|'||
TRIM(PH_AREA_CODE) ||'|'||
TRIM(PH_NO) ||'|'||
TRIM(PH_NO_EXTN) ||'|'||
TRIM(FAX_AREA_CODE) ||'|'||
TRIM(FAX_NO) ||'|'||
TRIM(FAX_NO_EXTN) ||'|'||
TRIM(SERVICES) ||'|'||
TRIM(EXTRA_INFO) ||'|'||
TRIM(INSTITUTION_IDENTIFIER) ||'|'||
TRIM(IBAN_SUPPORT_INDICATOR_FLAG) ||'|'||
TRIM(DIRECT_DEBIT_SUPPORT_FLAG) ||'|'||
TRIM(ROUTING_NUMBER_SOURCE) ||'|'||
TRIM(DEL_FLG) ||'|'||
TRIM(FREE_TXT1) ||'|'||
TRIM(FREE_TXT2) ||'|'||
TRIM(FREE_TXT3) ||'|'||
TRIM(FREE_NUM1) ||'|'||
TRIM(FREE_NUM2) ||'|'||
TRIM(FREE_DATE1) ||'|'||
TRIM(FREE_DATE2) ||'|'||
TRIM(R_MOD_ID) ||'|'||
TRIM(R_MOD_TIME) ||'|'||
TRIM(R_CRE_ID) ||'|'||
TRIM(R_CRE_TIME)
from BANK_DETAILS_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
bank_master_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
bank_master_spool.sql 
-- File Name		: bank_master_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 800
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ebanking/bank_master.txt
select
TRIM(DB_TS) ||'|'||
TRIM(BANK_REF_NO) ||'|'||
TRIM(HOST_BANK_CODE) ||'|'||
TRIM(HOST_BRANCH_CODE) ||'|'||
TRIM(DEL_FLG) ||'|'||
TRIM(R_MOD_ID) ||'|'||
TRIM(R_MOD_TIME) ||'|'||
TRIM(R_CRE_ID) ||'|'||
TRIM(R_CRE_TIME)
from BANK_MASTER_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
bank_routing_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
bank_routing_spool.sql 
-- File Name		: bank_routing_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 800
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ebanking/bank_routing.txt
select
TRIM(DB_TS) ||'|'||
TRIM(BANK_REF_NO) ||'|'||
TRIM(NETWORK_TYPE) ||'|'||
TRIM(SEQ_NO) ||'|'||
TRIM(ROUTING_NO) ||'|'||
TRIM(ROUTING_NUMBER_SOURCE) ||'|'||
TRIM(R_MOD_ID) ||'|'||
TRIM(R_MOD_TIME) ||'|'||
TRIM(R_CRE_ID) ||'|'||
TRIM(R_CRE_TIME) ||'|'||
TRIM(DEL_FLG)
from BANK_ROUTING_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu1_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu1_spool.sql 
-- File Name		: cu1crop.sql
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1100
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifuae/CC001.txt
select
trim(CORP_KEY)||'|'||
trim(ENTITY_TYPE)||'|'||
trim(CORPORATENAME_NATIVE)||'|'||
trim(RELATIONSHIP_STARTDATE)||'|'||
trim(STATUS)||'|'||
trim(LEGALENTITY_TYPE)||'|'||
trim(SEGMENT)||'|'||
trim(SUBSEGMENT)||'|'||
trim(WEBSITE_ADDRESS)||'|'||
trim(KEYCONTACT_PERSONNAME)||'|'||
trim(PHONECITYCODE)||'|'||
trim(PHONELOCALCODE)||'|'||
trim(PHONECOUNTRYCODE)||'|'||
trim(NOTES)||'|'||
trim(PRINCIPLE_PLACEOPERATION)||'|'||
trim(BUSINESS_GROUP)||'|'||
trim(PRIMARYRM_ID)||'|'||
trim(DATE_OF_INCORPORATION)||'|'||
trim(DATE_OF_COMMENCEMENT)||'|'||
trim(PRIMARY_SERVICE_CENTER)||'|'||
trim(RELATIONSHIP_CREATEDBY)||'|'||
trim(SECTOR_CODE)||'|'||
trim(SUBSECTOR_CODE)||'|'||
trim(TAXID)||'|'||
trim(ENTITYCLASS)||'|'||
trim(AVERAGE_ANNUALINCOME)||'|'||
trim(SOURCE_OF_FUNDS)||'|'||
trim(GROUP_ID)||'|'||
trim(GROUP_ID_CODE)||'|'||
trim(PARENT_CIF)||'|'||
trim(CUSTOMER_RATING_CODE)||'|'||
trim(HEALTH_CODE)||'|'||
trim(RECORD_STATUS)||'|'||
trim(EFFECTIVE_DATE)||'|'||
trim(LINE_OF_ACTIVITY_DESC)||'|'||
trim(CUST_MGR_OPIN)||'|'||
trim(CUST_TYPE_DESC)||'|'||
trim(CUST_STAT_CHG_DATE)||'|'||
trim(TDS_TBL_DESC)||'|'||
trim(CUST_SWIFT_CODE)||'|'||
trim(IS_SWIFT_CODE_OF_BANK)||'|'||
trim(CUSTDEPOSITSINOTHERBANKS)||'|'||
trim(TOTALFUNDBASE)||'|'||
trim(TOTALNONFUNDBASE)||'|'||
trim(ADVANCEASONDATE)||'|'||
trim(CUST_CONST)||'|'||
trim(DOCUMENT_RECEIVED_FLAG)||'|'||
trim(CRNCY_CODE_CORPORATE)||'|'||
trim(TRADE_SERVICES_AVAILED)||'|'||
trim(PRIMARYSOLID)||'|'||
trim(CHRG_DR_FORACID)||'|'||
trim(CHRG_DR_SOL_ID)||'|'||
trim(CUST_CHRG_HISTORY_FLG)||'|'||
trim(TOT_TOD_ALWD_TIMES)||'|'||
trim(SMALL_STR1)||'|'||
trim(SMALL_STR2)||'|'||
trim(SMALL_STR3)||'|'||
trim(SMALL_STR4)||'|'||
trim(SMALL_STR5)||'|'||
trim(SMALL_STR6)||'|'||
trim(SMALL_STR7)||'|'||
trim(SMALL_STR8)||'|'||
trim(SMALL_STR9)||'|'||
trim(SMALL_STR10)||'|'||
trim(MED_STR1)||'|'||
trim(MED_STR2)||'|'||
trim(MED_STR3)||'|'||
trim(MED_STR4)||'|'||
trim(MED_STR5)||'|'||
trim(MED_STR6)||'|'||
trim(MED_STR7)||'|'||
trim(MED_STR8)||'|'||
trim(MED_STR9)||'|'||
trim(MED_STR10)||'|'||
trim(LARGE_STR1)||'|'||
trim(LARGE_STR2)||'|'||
trim(LARGE_STR3)||'|'||
trim(LARGE_STR4)||'|'||
trim(LARGE_STR5)||'|'||
trim(DATE1)||'|'||
trim(DATE2)||'|'||
trim(DATE3)||'|'||
trim(DATE4)||'|'||
trim(DATE5)||'|'||
trim(DATE6)||'|'||
trim(DATE7)||'|'||
trim(DATE8)||'|'||
trim(DATE9)||'|'||
trim(DATE10)||'|'||
trim(NUMBER1)||'|'||
trim(NUMBER2	)||'|'||
trim(NUMBER3)||'|'||
trim(NUMBER4)||'|'||
trim(NUMBER5)||'|'||
trim(NUMBER6)||'|'||
trim(NUMBER7)||'|'||
trim(NUMBER8)||'|'||
trim(NUMBER9)||'|'||
trim(NUMBER10)||'|'||
trim(DECIMAL1)||'|'||
trim(DECIMAL2)||'|'||
trim(DECIMAL3)||'|'||
trim(DECIMAL4)||'|'||
trim(DECIMAL5)||'|'||
trim(DECIMAL6)||'|'||
trim(DECIMAL7)||'|'||
trim(DECIMAL8)||'|'||
trim(DECIMAL9)||'|'||
trim(DECIMAL10)||'|'||
trim(CORE_CUST_ID)||'|'||
trim(CIFID)||'|'||
trim(CREATEDBYSYSTEMID)||'|'||
trim(CORPORATENAME_NATIVE1)||'|'||
trim(SHORT_NAME_NATIVE1)||'|'||
trim(OWNERAGENT)||'|'||
trim(PRIMARYRMLOGIN_ID)||'|'||
trim(SecondRMLogin_ID)||'|'||
trim(TERTIARYRMLOGIN_ID)||'|'||
trim(ACCESSOWNERGROUP)||'|'||
trim(ACCESSOWNERSEGMENT)||'|'||
trim(ACCESSOWNERBC)||'|'||
trim(ACCESSOWNERAGENT)||'|'||
trim(ACCESSASSIGNEEAGENT)||'|'||
trim(PRIMARYPARENTCOMPANY)||'|'||
trim(COUNTRYOFPRINCIPALOPERATION)||'|'||
trim(PARENTCIF_ID)||'|'||
trim(CHARGELEVELCODE)||'|'||
trim(COUNTRYOFORIGIN)||'|'||
trim(COUNTRYOFINCORPORATION)||'|'||
trim(INTUSERFIELD1)||'|'||
trim(INTUSERFIELD2)||'|'||
trim(INTUSERFIELD3)||'|'||
trim(INTUSERFIELD4)||'|'||
trim(INTUSERFIELD5)||'|'||
trim(StrUserField1)||'|'||
trim(StrUserField2)||'|'||
trim(StrUserField3)||'|'||
trim(StrUserField4)||'|'||
trim(StrUserField5)||'|'||
trim(StrUserField6)||'|'||
trim(StrUserField7)||'|'||
trim(StrUserField8)||'|'||
trim(StrUserField9)||'|'||
trim(StrUserField10)||'|'||
trim(StrUserField11)||'|'||
trim(StrUserField12)||'|'||
trim(StrUserField13)||'|'||
trim(StrUserField14)||'|'||
trim(StrUserField15)||'|'||
trim(StrUserField16)||'|'||
trim(StrUserField17)||'|'||
trim(StrUserField18)||'|'||
trim(StrUserField19)||'|'||
trim(StrUserField20)||'|'||
trim(StrUserField21)||'|'||
trim(StrUserField22)||'|'||
trim(StrUserField23)||'|'||
trim(StrUserField24)||'|'||
trim(StrUserField25)||'|'||
trim(StrUserField26)||'|'||
trim(StrUserField27)||'|'||
trim(StrUserField28)||'|'||
trim(StrUserField29)||'|'||
trim(StrUserField30)||'|'||
trim(DateUserField1)||'|'||
trim(DateUserField2)||'|'||
trim(DateUserField3)||'|'||
trim(DateUserField4)||'|'||
trim(DateUserField5)||'|'||
trim(NATIVELANGCODE)||'|'||
trim(CUST_HLTH)||'|'||
trim(LASTSUBMITTEDDATE)||'|'||
trim(RISK_PROFILE_SCORE)||'|'||
trim(RISK_PROFILE_EXPIRY_DATE)||'|'||
trim(OUTSTANDING_MORTAGE)||'|'||
trim(CORPORATE_NAME)||'|'||
trim(SHORT_NAME)||'|'||
trim(SHORT_NAME_NATIVE)||'|'||
trim(REGISTRATION_NUMBER)||'|'||
trim(CHANNELSACCESSED)||'|'||
trim(ZIP)||'|'||
trim(BACKENDID)||'|'||
trim(DELINQUENCYFLAG)||'|'||
trim(SUSPEND_FLAG)||'|'||
trim(SUSPEND_NOTES)||'|'||
trim(SUSPEND_REASON)||'|'||
trim(BLACKLIST_FLAG)||'|'||
trim(BLACKLIST_NOTES)||'|'||
trim(BLACKLIST_REASON)||'|'||
trim(NEGATIVE_FLAG)||'|'||
trim(NEGATIVE_NOTES)||'|'||
trim(NEGATIVE_REASON)||'|'||
trim(DSAID)||'|'||
trim(CUSTASSET_CLASSIFICATION)||'|'||
trim(CLASSIFIED_ON)||'|'||
trim(CUST_CREATION_MODE)||'|'||
trim(INCREMENTALDATEUPDATE)||'|'||
trim(LANG_CODE)||'|'||
trim(TDS_CUST_ID)||'|'||
trim(OTHERLIMITS)||'|'||
trim(CORE_INTROD_CUST_ID)||'|'||
trim(INTROD_NAME)||'|'||
trim(INTROD_STAT_CODE)||'|'||
trim(ENTITY_STAGE)||'|'||
trim(ENTITY_STEP_STATUS)||'|'||
trim(EMAIL2)||'|'||
trim(CUST_GRP)||'|'||
trim(CUST_CONST_CODE)||'|'||
trim(CUSTASSET_CLSFTION_CODE)||'|'||
trim(LEGALENTITY_TYPE_CODE)||'|'||
trim(REGION_CODE)||'|'||
trim(PRIORITY_CODE)||'|'||
trim(BUSINESS_TYPE_CODE)||'|'||
trim(RELATIONSHIP_TYPE_CODE)||'|'||
trim(CRNCY_CODE)||'|'||
trim(STR1)||'|'||
trim(STR2)||'|'||
trim(STR3)||'|'||
trim(STR4)||'|'||
trim(STR5)||'|'||
trim(STR6)||'|'||
trim(STR7)||'|'||
trim(STR8)||'|'||
trim(STR9)||'|'||
trim(STR10)||'|'||
trim(STR11)||'|'||
trim(STR12)||'|'||
trim(STR13)||'|'||
trim(STR14)||'|'||
trim(STR15)||'|'||
trim(AMOUNT1)||'|'||
trim(AMOUNT2)||'|'||
trim(AMOUNT3)||'|'||
trim(AMOUNT4)||'|'||
trim(AMOUNT5)||'|'||
trim(INT1)||'|'||
trim(INT2)||'|'||
trim(INT3)||'|'||
trim(INT4)||'|'||
trim(INT5)||'|'||
trim(Flag1)||'|'||
trim(Flag2)||'|'||
trim(Flag3)||'|'||
trim(Flag4)||'|'||
trim(Flag5)||'|'||
trim(MLUSERFIELD1)||'|'||
trim(MLUSERFIELD2)||'|'||
trim(MLUSERFIELD3)||'|'||
trim(MLUSERFIELD4)||'|'||
trim(MLUSERFIELD5)||'|'||
trim(MLUSERFIELD6)||'|'||
trim(MLUSERFIELD7)||'|'||
trim(MLUSERFIELD8)||'|'||
trim(MLUSERFIELD9)||'|'||
trim(MLUSERFIELD10)||'|'||
trim(UNIQUEGROUPFLAG)||'|'||
trim(BANK_ID)||'|'||
trim(ZAKAT_DEDUCTION)||'|'||
trim(ASSET_CLASSIFICATION)||'|'||
trim(CUSTOMER_LEVEL_PROVISIONING)||'|'||
trim(ISLAMIC_BANKING_CUSTOMER)||'|'||
trim(PREFERREDCALENDAR)||'|'||
trim(IDTYPEC1)||'|'||
trim(IDTYPEC2)||'|'||
trim(IDTYPEC3)||'|'||
trim(IDTYPEC4)||'|'||
trim(IDTYPEC5)||'|'||
trim(IDTYPEC6)||'|'||
trim(IDTYPEC7)||'|'||
trim(IDTYPEC8)||'|'||
trim(IDTYPEC9)||'|'||
trim(IDTYPEC10)||'|'||
trim(CORPORATE_NAME_ALT1)||'|'||
trim(short_Name_alt1)||'|'||
trim(KEYCONTACT_PERSONNAME_ALT1)||'|'||
trim(PARENT_CIF_ALT1)||'|'||
trim(BOCREATEDDBYLOGINID)
from CU1CORP_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu1_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu1_spool_kw.sql 
-- File Name		: cu1crop.sql
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1100
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifkw/CC001.txt
select
trim(CORP_KEY)||'|'||
trim(ENTITY_TYPE)||'|'||
trim(CORPORATENAME_NATIVE)||'|'||
trim(RELATIONSHIP_STARTDATE)||'|'||
trim(STATUS)||'|'||
trim(LEGALENTITY_TYPE)||'|'||
trim(SEGMENT)||'|'||
trim(SUBSEGMENT)||'|'||
trim(WEBSITE_ADDRESS)||'|'||
trim(KEYCONTACT_PERSONNAME)||'|'||
trim(PHONECITYCODE)||'|'||
trim(PHONELOCALCODE)||'|'||
trim(PHONECOUNTRYCODE)||'|'||
trim(NOTES)||'|'||
trim(PRINCIPLE_PLACEOPERATION)||'|'||
trim(BUSINESS_GROUP)||'|'||
trim(PRIMARYRM_ID)||'|'||
trim(DATE_OF_INCORPORATION)||'|'||
trim(DATE_OF_COMMENCEMENT)||'|'||
trim(PRIMARY_SERVICE_CENTER)||'|'||
trim(RELATIONSHIP_CREATEDBY)||'|'||
trim(SECTOR_CODE)||'|'||
trim(SUBSECTOR_CODE)||'|'||
trim(TAXID)||'|'||
trim(ENTITYCLASS)||'|'||
trim(AVERAGE_ANNUALINCOME)||'|'||
trim(SOURCE_OF_FUNDS)||'|'||
trim(GROUP_ID)||'|'||
trim(GROUP_ID_CODE)||'|'||
trim(PARENT_CIF)||'|'||
trim(CUSTOMER_RATING_CODE)||'|'||
trim(HEALTH_CODE)||'|'||
trim(RECORD_STATUS)||'|'||
trim(EFFECTIVE_DATE)||'|'||
trim(LINE_OF_ACTIVITY_DESC)||'|'||
trim(CUST_MGR_OPIN)||'|'||
trim(CUST_TYPE_DESC)||'|'||
trim(CUST_STAT_CHG_DATE)||'|'||
trim(TDS_TBL_DESC)||'|'||
trim(CUST_SWIFT_CODE)||'|'||
trim(IS_SWIFT_CODE_OF_BANK)||'|'||
trim(CUSTDEPOSITSINOTHERBANKS)||'|'||
trim(TOTALFUNDBASE)||'|'||
trim(TOTALNONFUNDBASE)||'|'||
trim(ADVANCEASONDATE)||'|'||
trim(CUST_CONST)||'|'||
trim(DOCUMENT_RECEIVED_FLAG)||'|'||
trim(CRNCY_CODE_CORPORATE)||'|'||
trim(TRADE_SERVICES_AVAILED)||'|'||
trim(PRIMARYSOLID)||'|'||
trim(CHRG_DR_FORACID)||'|'||
trim(CHRG_DR_SOL_ID)||'|'||
trim(CUST_CHRG_HISTORY_FLG)||'|'||
trim(TOT_TOD_ALWD_TIMES)||'|'||
trim(SMALL_STR1)||'|'||
trim(SMALL_STR2)||'|'||
trim(SMALL_STR3)||'|'||
trim(SMALL_STR4)||'|'||
trim(SMALL_STR5)||'|'||
trim(SMALL_STR6)||'|'||
trim(SMALL_STR7)||'|'||
trim(SMALL_STR8)||'|'||
trim(SMALL_STR9)||'|'||
trim(SMALL_STR10)||'|'||
trim(MED_STR1)||'|'||
trim(MED_STR2)||'|'||
trim(MED_STR3)||'|'||
trim(MED_STR4)||'|'||
trim(MED_STR5)||'|'||
trim(MED_STR6)||'|'||
trim(MED_STR7)||'|'||
trim(MED_STR8)||'|'||
trim(MED_STR9)||'|'||
trim(MED_STR10)||'|'||
trim(LARGE_STR1)||'|'||
trim(LARGE_STR2)||'|'||
trim(LARGE_STR3)||'|'||
trim(LARGE_STR4)||'|'||
trim(LARGE_STR5)||'|'||
trim(DATE1)||'|'||
trim(DATE2)||'|'||
trim(DATE3)||'|'||
trim(DATE4)||'|'||
trim(DATE5)||'|'||
trim(DATE6)||'|'||
trim(DATE7)||'|'||
trim(DATE8)||'|'||
trim(DATE9)||'|'||
trim(DATE10)||'|'||
trim(NUMBER1)||'|'||
trim(NUMBER2	)||'|'||
trim(NUMBER3)||'|'||
trim(NUMBER4)||'|'||
trim(NUMBER5)||'|'||
trim(NUMBER6)||'|'||
trim(NUMBER7)||'|'||
trim(NUMBER8)||'|'||
trim(NUMBER9)||'|'||
trim(NUMBER10)||'|'||
trim(DECIMAL1)||'|'||
trim(DECIMAL2)||'|'||
trim(DECIMAL3)||'|'||
trim(DECIMAL4)||'|'||
trim(DECIMAL5)||'|'||
trim(DECIMAL6)||'|'||
trim(DECIMAL7)||'|'||
trim(DECIMAL8)||'|'||
trim(DECIMAL9)||'|'||
trim(DECIMAL10)||'|'||
trim(CORE_CUST_ID)||'|'||
trim(CIFID)||'|'||
trim(CREATEDBYSYSTEMID)||'|'||
trim(CORPORATENAME_NATIVE1)||'|'||
trim(SHORT_NAME_NATIVE1)||'|'||
trim(OWNERAGENT)||'|'||
trim(PRIMARYRMLOGIN_ID)||'|'||
trim(SecondRMLogin_ID)||'|'||
trim(TERTIARYRMLOGIN_ID)||'|'||
trim(ACCESSOWNERGROUP)||'|'||
trim(ACCESSOWNERSEGMENT)||'|'||
trim(ACCESSOWNERBC)||'|'||
trim(ACCESSOWNERAGENT)||'|'||
trim(ACCESSASSIGNEEAGENT)||'|'||
trim(PRIMARYPARENTCOMPANY)||'|'||
trim(COUNTRYOFPRINCIPALOPERATION)||'|'||
trim(PARENTCIF_ID)||'|'||
trim(CHARGELEVELCODE)||'|'||
trim(COUNTRYOFORIGIN)||'|'||
trim(COUNTRYOFINCORPORATION)||'|'||
trim(INTUSERFIELD1)||'|'||
trim(INTUSERFIELD2)||'|'||
trim(INTUSERFIELD3)||'|'||
trim(INTUSERFIELD4)||'|'||
trim(INTUSERFIELD5)||'|'||
trim(StrUserField1)||'|'||
trim(StrUserField2)||'|'||
trim(StrUserField3)||'|'||
trim(StrUserField4)||'|'||
trim(StrUserField5)||'|'||
trim(StrUserField6)||'|'||
trim(StrUserField7)||'|'||
trim(StrUserField8)||'|'||
trim(StrUserField9)||'|'||
trim(StrUserField10)||'|'||
trim(StrUserField11)||'|'||
trim(StrUserField12)||'|'||
trim(StrUserField13)||'|'||
trim(StrUserField14)||'|'||
trim(StrUserField15)||'|'||
trim(StrUserField16)||'|'||
trim(StrUserField17)||'|'||
trim(StrUserField18)||'|'||
trim(StrUserField19)||'|'||
trim(StrUserField20)||'|'||
trim(StrUserField21)||'|'||
trim(StrUserField22)||'|'||
trim(StrUserField23)||'|'||
trim(StrUserField24)||'|'||
trim(StrUserField25)||'|'||
trim(StrUserField26)||'|'||
trim(StrUserField27)||'|'||
trim(StrUserField28)||'|'||
trim(StrUserField29)||'|'||
trim(StrUserField30)||'|'||
trim(DateUserField1)||'|'||
trim(DateUserField2)||'|'||
trim(DateUserField3)||'|'||
trim(DateUserField4)||'|'||
trim(DateUserField5)||'|'||
trim(NATIVELANGCODE)||'|'||
trim(CUST_HLTH)||'|'||
trim(LASTSUBMITTEDDATE)||'|'||
trim(RISK_PROFILE_SCORE)||'|'||
trim(RISK_PROFILE_EXPIRY_DATE)||'|'||
trim(OUTSTANDING_MORTAGE)||'|'||
trim(CORPORATE_NAME)||'|'||
trim(SHORT_NAME)||'|'||
trim(SHORT_NAME_NATIVE)||'|'||
trim(REGISTRATION_NUMBER)||'|'||
trim(CHANNELSACCESSED)||'|'||
trim(ZIP)||'|'||
trim(BACKENDID)||'|'||
trim(DELINQUENCYFLAG)||'|'||
trim(SUSPEND_FLAG)||'|'||
trim(SUSPEND_NOTES)||'|'||
trim(SUSPEND_REASON)||'|'||
trim(BLACKLIST_FLAG)||'|'||
trim(BLACKLIST_NOTES)||'|'||
trim(BLACKLIST_REASON)||'|'||
trim(NEGATIVE_FLAG)||'|'||
trim(NEGATIVE_NOTES)||'|'||
trim(NEGATIVE_REASON)||'|'||
trim(DSAID)||'|'||
trim(CUSTASSET_CLASSIFICATION)||'|'||
trim(CLASSIFIED_ON)||'|'||
trim(CUST_CREATION_MODE)||'|'||
trim(INCREMENTALDATEUPDATE)||'|'||
trim(LANG_CODE)||'|'||
trim(TDS_CUST_ID)||'|'||
trim(OTHERLIMITS)||'|'||
trim(CORE_INTROD_CUST_ID)||'|'||
trim(INTROD_NAME)||'|'||
trim(INTROD_STAT_CODE)||'|'||
trim(ENTITY_STAGE)||'|'||
trim(ENTITY_STEP_STATUS)||'|'||
trim(EMAIL2)||'|'||
trim(CUST_GRP)||'|'||
trim(CUST_CONST_CODE)||'|'||
trim(CUSTASSET_CLSFTION_CODE)||'|'||
trim(LEGALENTITY_TYPE_CODE)||'|'||
trim(REGION_CODE)||'|'||
trim(PRIORITY_CODE)||'|'||
trim(BUSINESS_TYPE_CODE)||'|'||
trim(RELATIONSHIP_TYPE_CODE)||'|'||
trim(CRNCY_CODE)||'|'||
trim(STR1)||'|'||
trim(STR2)||'|'||
trim(STR3)||'|'||
trim(STR4)||'|'||
trim(STR5)||'|'||
trim(STR6)||'|'||
trim(STR7)||'|'||
trim(STR8)||'|'||
trim(STR9)||'|'||
trim(STR10)||'|'||
trim(STR11)||'|'||
trim(STR12)||'|'||
trim(STR13)||'|'||
trim(STR14)||'|'||
trim(STR15)||'|'||
trim(AMOUNT1)||'|'||
trim(AMOUNT2)||'|'||
trim(AMOUNT3)||'|'||
trim(AMOUNT4)||'|'||
trim(AMOUNT5)||'|'||
trim(INT1)||'|'||
trim(INT2)||'|'||
trim(INT3)||'|'||
trim(INT4)||'|'||
trim(INT5)||'|'||
trim(Flag1)||'|'||
trim(Flag2)||'|'||
trim(Flag3)||'|'||
trim(Flag4)||'|'||
trim(Flag5)||'|'||
trim(MLUSERFIELD1)||'|'||
trim(MLUSERFIELD2)||'|'||
trim(MLUSERFIELD3)||'|'||
trim(MLUSERFIELD4)||'|'||
trim(MLUSERFIELD5)||'|'||
trim(MLUSERFIELD6)||'|'||
trim(MLUSERFIELD7)||'|'||
trim(MLUSERFIELD8)||'|'||
trim(MLUSERFIELD9)||'|'||
trim(MLUSERFIELD10)||'|'||
trim(UNIQUEGROUPFLAG)||'|'||
trim(BANK_ID)||'|'||
trim(ZAKAT_DEDUCTION)||'|'||
trim(ASSET_CLASSIFICATION)||'|'||
trim(CUSTOMER_LEVEL_PROVISIONING)||'|'||
trim(ISLAMIC_BANKING_CUSTOMER)||'|'||
trim(PREFERREDCALENDAR)||'|'||
trim(IDTYPEC1)||'|'||
trim(IDTYPEC2)||'|'||
trim(IDTYPEC3)||'|'||
trim(IDTYPEC4)||'|'||
trim(IDTYPEC5)||'|'||
trim(IDTYPEC6)||'|'||
trim(IDTYPEC7)||'|'||
trim(IDTYPEC8)||'|'||
trim(IDTYPEC9)||'|'||
trim(IDTYPEC10)||'|'||
trim(CORPORATE_NAME_ALT1)||'|'||
trim(short_Name_alt1)||'|'||
trim(KEYCONTACT_PERSONNAME_ALT1)||'|'||
trim(PARENT_CIF_ALT1)||'|'||
trim(BOCREATEDDBYLOGINID)||'|'||
trim(SUBMIT_FOR_KYC)||'|'||           
trim(KYC_REV_DATE)||'|'||              
trim(KYC_DATE)||'|'||                  
trim(RISKRATING)||'|'||                
trim(FATCA_REQUIRED)||'|'||            
trim(FORGN_TAX_REP_REQ_CUNTRY)||'|'||  
trim(FORGN_TAX_REP_REQ_STATUS)||'|'||  
trim(LAST_FORGN_TAX_REVW_DATE)||'|'||  
trim(NEXT_FORGN_TAX_REVW_DATE)||'|'||  
trim(TIN_EIN)||'|'||                   
trim(GIIN)||'|'||                      
trim(CUST_TYPE_CODE)||'|'||            
trim(PURGE_TEXT)
from CU1CORP_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu2_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu2_spool.sql 
-- File Name		: cu1crop.sql
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 800
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifuae/CC002.txt
select
trim(CORP_KEY)||'|'||
trim(CIF_ID)||'|'||
trim(CORP_REP_KEY)||'|'||
trim(ADDRESSCATEGORY)||'|'||
trim(START_DATE)||'|'||
trim(PhoneNo1LocalCode)||'|'||
trim(PhoneNo1CityCode)||'|'||
trim(PhoneNo1CountryCode)||'|'||
trim(PhoneNo2LocalCode)||'|'||
trim(PhoneNo2CityCode)||'|'||
trim(PhoneNo2CountryCode)||'|'||
trim(FaxNoLocalCode)||'|'||
trim(FaxNoCityCode)||'|'||
trim(FaxNoCountryCode)||'|'||
trim(Email)||'|'||
trim(PagerNoLocalCode)||'|'||
trim(PagerNoCityCode)||'|'||
trim(PagerNoCountryCode)||'|'||
trim(TelexLocalCode)||'|'||
trim(TelexCityCode)||'|'||
trim(TelexCountryCode)||'|'||
trim(HOUSE_NO)||'|'||
trim(PREMISE_NAME)||'|'||
trim(BUILDING_LEVEL)||'|'||
trim(STREET_NO)||'|'||
trim(STREET_NAME)||'|'||
trim(SUBURB)||'|'||
trim(LOCALITY_NAME)||'|'||
trim(TOWN)||'|'||
trim(DOMICILE)||'|'||
trim(CITY_CODE)||'|'||
trim(STATE_CODE)||'|'||
trim(ZIP)||'|'||
trim(COUNTRY_CODE)||'|'||
trim(SMALL_STR1)||'|'||
trim(SMALL_STR2)||'|'||
trim(SMALL_STR3)||'|'||
trim(SMALL_STR4)||'|'||
trim(SMALL_STR5)||'|'||
trim(SMALL_STR6)||'|'||
trim(SMALL_STR7)||'|'||
trim(SMALL_STR8)||'|'||
trim(SMALL_STR9)||'|'||
trim(SMALL_STR10)||'|'||
trim(MED_STR1)||'|'||
trim(MED_STR2)||'|'||
trim(MED_STR3)||'|'||
trim(MED_STR4)||'|'||
trim(MED_STR5)||'|'||
trim(MED_STR6)||'|'||
trim(MED_STR7)||'|'||
trim(MED_STR8)||'|'||
trim(MED_STR9)||'|'||
trim(MED_STR10)||'|'||
trim(LARGE_STR1)||'|'||
trim(LARGE_STR2)||'|'||
trim(LARGE_STR3)||'|'||
trim(LARGE_STR4)||'|'||
trim(LARGE_STR5)||'|'||
trim(DATE1)||'|'||
trim(DATE2)||'|'||
trim(DATE3)||'|'||
trim(DATE4)||'|'||
trim(DATE5)||'|'||
trim(DATE6)||'|'||
trim(DATE7)||'|'||
trim(DATE8)||'|'||
trim(DATE9)||'|'||
trim(DATE10)||'|'||
trim(NUMBER1)||'|'||
trim(NUMBER2)||'|'||
trim(NUMBER3)||'|'||
trim(NUMBER4)||'|'||
trim(NUMBER5)||'|'||
trim(NUMBER6)||'|'||
trim(NUMBER7)||'|'||
trim(NUMBER8)||'|'||
trim(NUMBER9)||'|'||
trim(NUMBER10)||'|'||
trim(DECIMAL1)||'|'||
trim(DECIMAL2)||'|'||
trim(DECIMAL3)||'|'||
trim(DECIMAL4)||'|'||
trim(DECIMAL5)||'|'||
trim(DECIMAL6)||'|'||
trim(DECIMAL7)||'|'||
trim(DECIMAL8)||'|'||
trim(DECIMAL9)||'|'||
trim(DECIMAL10)||'|'||
trim(preferredAddrss)||'|'||
trim(HoldMailInitiatedBy)||'|'||
trim(HoldMailFlag)||'|'||
trim(BusinessCenter)||'|'||
trim(HoldMailReason)||'|'||
trim(PreferredFormat)||'|'||
trim(FreeTextAddress)||'|'||
trim(FreeTextLabel)||'|'||
trim(ADDRESS_PROOF_RCVD)||'|'||
trim(LASTUPDATE_DATE)||'|'||
trim(ADDRESS_LINE1)||'|'||
trim(ADDRESS_LINE2)||'|'||
trim(ADDRESS_LINE3)||'|'||
trim(BANK_ID)
from CU2CORP_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu2_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu2_spool_kw.sql 
-- File Name		: cu1crop.sql
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 800
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifkw/CC002.txt
select
trim(CORP_KEY)||'|'||
trim(CIF_ID)||'|'||
trim(CORP_REP_KEY)||'|'||
trim(ADDRESSCATEGORY)||'|'||
trim(START_DATE)||'|'||
trim(PhoneNo1LocalCode)||'|'||
trim(PhoneNo1CityCode)||'|'||
trim(PhoneNo1CountryCode)||'|'||
trim(PhoneNo2LocalCode)||'|'||
trim(PhoneNo2CityCode)||'|'||
trim(PhoneNo2CountryCode)||'|'||
trim(FaxNoLocalCode)||'|'||
trim(FaxNoCityCode)||'|'||
trim(FaxNoCountryCode)||'|'||
trim(Email)||'|'||
trim(PagerNoLocalCode)||'|'||
trim(PagerNoCityCode)||'|'||
trim(PagerNoCountryCode)||'|'||
trim(TelexLocalCode)||'|'||
trim(TelexCityCode)||'|'||
trim(TelexCountryCode)||'|'||
trim(HOUSE_NO)||'|'||
trim(PREMISE_NAME)||'|'||
trim(BUILDING_LEVEL)||'|'||
trim(STREET_NO)||'|'||
trim(STREET_NAME)||'|'||
trim(SUBURB)||'|'||
trim(LOCALITY_NAME)||'|'||
trim(TOWN)||'|'||
trim(DOMICILE)||'|'||
trim(CITY_CODE)||'|'||
trim(STATE_CODE)||'|'||
trim(ZIP)||'|'||
trim(COUNTRY_CODE)||'|'||
trim(SMALL_STR1)||'|'||
trim(SMALL_STR2)||'|'||
trim(SMALL_STR3)||'|'||
trim(SMALL_STR4)||'|'||
trim(SMALL_STR5)||'|'||
trim(SMALL_STR6)||'|'||
trim(SMALL_STR7)||'|'||
trim(SMALL_STR8)||'|'||
trim(SMALL_STR9)||'|'||
trim(SMALL_STR10)||'|'||
trim(MED_STR1)||'|'||
trim(MED_STR2)||'|'||
trim(MED_STR3)||'|'||
trim(MED_STR4)||'|'||
trim(MED_STR5)||'|'||
trim(MED_STR6)||'|'||
trim(MED_STR7)||'|'||
trim(MED_STR8)||'|'||
trim(MED_STR9)||'|'||
trim(MED_STR10)||'|'||
trim(LARGE_STR1)||'|'||
trim(LARGE_STR2)||'|'||
trim(LARGE_STR3)||'|'||
trim(LARGE_STR4)||'|'||
trim(LARGE_STR5)||'|'||
trim(DATE1)||'|'||
trim(DATE2)||'|'||
trim(DATE3)||'|'||
trim(DATE4)||'|'||
trim(DATE5)||'|'||
trim(DATE6)||'|'||
trim(DATE7)||'|'||
trim(DATE8)||'|'||
trim(DATE9)||'|'||
trim(DATE10)||'|'||
trim(NUMBER1)||'|'||
trim(NUMBER2)||'|'||
trim(NUMBER3)||'|'||
trim(NUMBER4)||'|'||
trim(NUMBER5)||'|'||
trim(NUMBER6)||'|'||
trim(NUMBER7)||'|'||
trim(NUMBER8)||'|'||
trim(NUMBER9)||'|'||
trim(NUMBER10)||'|'||
trim(DECIMAL1)||'|'||
trim(DECIMAL2)||'|'||
trim(DECIMAL3)||'|'||
trim(DECIMAL4)||'|'||
trim(DECIMAL5)||'|'||
trim(DECIMAL6)||'|'||
trim(DECIMAL7)||'|'||
trim(DECIMAL8)||'|'||
trim(DECIMAL9)||'|'||
trim(DECIMAL10)||'|'||
trim(preferredAddrss)||'|'||
trim(HoldMailInitiatedBy)||'|'||
trim(HoldMailFlag)||'|'||
trim(BusinessCenter)||'|'||
trim(HoldMailReason)||'|'||
trim(PreferredFormat)||'|'||
trim(FreeTextAddress)||'|'||
trim(FreeTextLabel)||'|'||
trim(ADDRESS_PROOF_RCVD)||'|'||
trim(LASTUPDATE_DATE)||'|'||
trim(ADDRESS_LINE1)||'|'||
trim(ADDRESS_LINE2)||'|'||
trim(ADDRESS_LINE3)||'|'||
trim(BANK_ID)
from CU2CORP_O_TABLE ;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu5_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu5_spool.sql 
-- File Name		: cu1crop.sql
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 800
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifuae/CC005.txt
select
trim(CORP_KEY)||'|'||
trim(CIF_ID)||'|'||
trim(CORP_REP_KEY)||'|'||
trim(TYPE)||'|'||
trim(STR1)||'|'||
trim(STR2)||'|'||
trim(STR3)||'|'||
trim(STR4)||'|'||
trim(STR5)||'|'||
trim(STR6)||'|'||
trim(STR7)||'|'||
trim(STR8)||'|'||
trim(STR9)||'|'||
trim(STR10)||'|'||
trim(STR11)||'|'||
trim(DATE1)||'|'||
trim(STR12)||'|'||
trim(DATE2)||'|'||
trim(AMOUNT1)||'|'||
trim(AMOUNT2)||'|'||
trim(AMOUNT3)||'|'||
trim(AMOUNT4)||'|'||
trim(SMALL_STR1)||'|'||
trim(SMALL_STR2)||'|'||
trim(SMALL_STR3)||'|'||
trim(SMALL_STR4)||'|'||
trim(SMALL_STR5)||'|'||
trim(SMALL_STR6)||'|'||
trim(SMALL_STR7)||'|'||
trim(SMALL_STR8)||'|'||
trim(SMALL_STR9)||'|'||
trim(SMALL_STR10)||'|'||
trim(MED_STR1)||'|'||
trim(MED_STR2)||'|'||
trim(MED_STR3)||'|'||
trim(MED_STR4)||'|'||
trim(MED_STR5)||'|'||
trim(MED_STR6)||'|'||
trim(MED_STR7)||'|'||
trim(MED_STR8)||'|'||
trim(MED_STR9)||'|'||
trim(MED_STR10)||'|'||
trim(LARGE_STR1)||'|'||
trim(LARGE_STR2)||'|'||
trim(LARGE_STR3)||'|'||
trim(LARGE_STR4)||'|'||
trim(LARGE_STR5)||'|'||
trim(DATE3)||'|'||
trim(DATE4)||'|'||
trim(DATE5)||'|'||
trim(DATE6)||'|'||
trim(DATE7)||'|'||
trim(DATE8)||'|'||
trim(DATE9)||'|'||
trim(DATE10)||'|'||
trim(NUMBER1)||'|'||
trim(NUMBER2)||'|'||
trim(NUMBER3)||'|'||
trim(NUMBER4)||'|'||
trim(NUMBER5)||'|'||
trim(NUMBER6)||'|'||
trim(NUMBER7)||'|'||
trim(NUMBER8)||'|'||
trim(NUMBER9)||'|'||
trim(NUMBER10)||'|'||
trim(DECIMAL1)||'|'||
trim(DECIMAL2)||'|'||
trim(DECIMAL3)||'|'||
trim(DECIMAL4)||'|'||
trim(DECIMAL5)||'|'||
trim(DECIMAL6)||'|'||
trim(DECIMAL7)||'|'||
trim(DECIMAL8)||'|'||
trim(DECIMAL9)||'|'||
trim(DECIMAL10)||'|'||
trim(ENTITYTYPE)||'|'||
trim(STR43)||'|'||
trim(STR44)||'|'||
trim(STR45)||'|'||
trim(STR46)||'|'||
trim(STR47)||'|'||
trim(STR48)||'|'||
trim(STR49)||'|'||
trim(STR50)||'|'||
trim(ORG_KEY)||'|'||
trim(STR21)||'|'||
trim(STR22)||'|'||
trim(STR23)||'|'||
trim(STR24)||'|'||
trim(STR25)||'|'||
trim(STR26)||'|'||
trim(STR27)||'|'||
trim(STR28)||'|'||
trim(STR29)||'|'||
trim(STR30)||'|'||
trim(STR31)||'|'||
trim(STR32)||'|'||
trim(STR38)||'|'||
trim(STR39)||'|'||
trim(STR40)||'|'||
trim(STR41)||'|'||
trim(STR42)||'|'||
trim(DBFLOAT1)||'|'||
trim(DBFLOAT2)||'|'||
trim(DBFLOAT3)||'|'||
trim(DBFLOAT4)||'|'||
trim(DBFLOAT5)||'|'||
trim(AMOUNT5)||'|'||
trim(FLAG1)||'|'||
trim(FLAG2)||'|'||
trim(FLAG3)||'|'||
trim(FLAG4)||'|'||
trim(FLAG5)||'|'||
trim(INT1)||'|'||
trim(INT2)||'|'||
trim(INT3)||'|'||
trim(INT4)||'|'||
trim(INT5)||'|'||
trim(INT6)||'|'||
trim(INT7)||'|'||
trim(INT8)||'|'||
trim(INT9)||'|'||
trim(INT10)||'|'||
trim(INT11)||'|'||
trim(INT12)||'|'||
trim(INT13)||'|'||
trim(INT14)||'|'||
trim(INT15)||'|'||
trim(MLUSERFIELD1)||'|'||
trim(MLUSERFIELD2)||'|'||
trim(MLUSERFIELD3)||'|'||
trim(MLUSERFIELD4)||'|'||
trim(MLUSERFIELD5)||'|'||
trim(STR1_CODE)||'|'||
trim(STR2_CODE)||'|'||
trim(STR3_CODE)||'|'||
trim(STR4_CODE)||'|'||
trim(STR5_CODE)||'|'||
trim(CORE_CUST_ID)||'|'||
trim(CORE_CHILD_CUST_ID)||'|'||
trim(PERCENTAGE1)||'|'||
trim(PERCENTAGE2)||'|'||
trim(PERCENTAGE3)||'|'||
trim(PERCENTAGE4)||'|'||
trim(PERCENTAGE5)||'|'||
trim(BANK_ID)||'|'||
trim(STR4_ALT1)||'|'||
trim(STR4_ALT2)||'|'||
trim(STR4_ALT3)
from CU5CORP_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu5_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu5_spool_kw.sql 
-- File Name		: cu1crop.sql
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 800
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifkw/CC005.txt
select
trim(CORP_KEY)||'|'||
trim(CIF_ID)||'|'||
trim(CORP_REP_KEY)||'|'||
trim(TYPE)||'|'||
trim(STR1)||'|'||
trim(STR2)||'|'||
trim(STR3)||'|'||
trim(STR4)||'|'||
trim(STR5)||'|'||
trim(STR6)||'|'||
trim(STR7)||'|'||
trim(STR8)||'|'||
trim(STR9)||'|'||
trim(STR10)||'|'||
trim(STR11)||'|'||
trim(DATE1)||'|'||
trim(STR12)||'|'||
trim(DATE2)||'|'||
trim(AMOUNT1)||'|'||
trim(AMOUNT2)||'|'||
trim(AMOUNT3)||'|'||
trim(AMOUNT4)||'|'||
trim(SMALL_STR1)||'|'||
trim(SMALL_STR2)||'|'||
trim(SMALL_STR3)||'|'||
trim(SMALL_STR4)||'|'||
trim(SMALL_STR5)||'|'||
trim(SMALL_STR6)||'|'||
trim(SMALL_STR7)||'|'||
trim(SMALL_STR8)||'|'||
trim(SMALL_STR9)||'|'||
trim(SMALL_STR10)||'|'||
trim(MED_STR1)||'|'||
trim(MED_STR2)||'|'||
trim(MED_STR3)||'|'||
trim(MED_STR4)||'|'||
trim(MED_STR5)||'|'||
trim(MED_STR6)||'|'||
trim(MED_STR7)||'|'||
trim(MED_STR8)||'|'||
trim(MED_STR9)||'|'||
trim(MED_STR10)||'|'||
trim(LARGE_STR1)||'|'||
trim(LARGE_STR2)||'|'||
trim(LARGE_STR3)||'|'||
trim(LARGE_STR4)||'|'||
trim(LARGE_STR5)||'|'||
trim(DATE3)||'|'||
trim(DATE4)||'|'||
trim(DATE5)||'|'||
trim(DATE6)||'|'||
trim(DATE7)||'|'||
trim(DATE8)||'|'||
trim(DATE9)||'|'||
trim(DATE10)||'|'||
trim(NUMBER1)||'|'||
trim(NUMBER2)||'|'||
trim(NUMBER3)||'|'||
trim(NUMBER4)||'|'||
trim(NUMBER5)||'|'||
trim(NUMBER6)||'|'||
trim(NUMBER7)||'|'||
trim(NUMBER8)||'|'||
trim(NUMBER9)||'|'||
trim(NUMBER10)||'|'||
trim(DECIMAL1)||'|'||
trim(DECIMAL2)||'|'||
trim(DECIMAL3)||'|'||
trim(DECIMAL4)||'|'||
trim(DECIMAL5)||'|'||
trim(DECIMAL6)||'|'||
trim(DECIMAL7)||'|'||
trim(DECIMAL8)||'|'||
trim(DECIMAL9)||'|'||
trim(DECIMAL10)||'|'||
trim(ENTITYTYPE)||'|'||
trim(STR43)||'|'||
trim(STR44)||'|'||
trim(STR45)||'|'||
trim(STR46)||'|'||
trim(STR47)||'|'||
trim(STR48)||'|'||
trim(STR49)||'|'||
trim(STR50)||'|'||
trim(ORG_KEY)||'|'||
trim(STR21)||'|'||
trim(STR22)||'|'||
trim(STR23)||'|'||
trim(STR24)||'|'||
trim(STR25)||'|'||
trim(STR26)||'|'||
trim(STR27)||'|'||
trim(STR28)||'|'||
trim(STR29)||'|'||
trim(STR30)||'|'||
trim(STR31)||'|'||
trim(STR32)||'|'||
trim(STR38)||'|'||
trim(STR39)||'|'||
trim(STR40)||'|'||
trim(STR41)||'|'||
trim(STR42)||'|'||
trim(DBFLOAT1)||'|'||
trim(DBFLOAT2)||'|'||
trim(DBFLOAT3)||'|'||
trim(DBFLOAT4)||'|'||
trim(DBFLOAT5)||'|'||
trim(AMOUNT5)||'|'||
trim(FLAG1)||'|'||
trim(FLAG2)||'|'||
trim(FLAG3)||'|'||
trim(FLAG4)||'|'||
trim(FLAG5)||'|'||
trim(INT1)||'|'||
trim(INT2)||'|'||
trim(INT3)||'|'||
trim(INT4)||'|'||
trim(INT5)||'|'||
trim(INT6)||'|'||
trim(INT7)||'|'||
trim(INT8)||'|'||
trim(INT9)||'|'||
trim(INT10)||'|'||
trim(INT11)||'|'||
trim(INT12)||'|'||
trim(INT13)||'|'||
trim(INT14)||'|'||
trim(INT15)||'|'||
trim(MLUSERFIELD1)||'|'||
trim(MLUSERFIELD2)||'|'||
trim(MLUSERFIELD3)||'|'||
trim(MLUSERFIELD4)||'|'||
trim(MLUSERFIELD5)||'|'||
trim(STR1_CODE)||'|'||
trim(STR2_CODE)||'|'||
trim(STR3_CODE)||'|'||
trim(STR4_CODE)||'|'||
trim(STR5_CODE)||'|'||
trim(CORE_CUST_ID)||'|'||
trim(CORE_CHILD_CUST_ID)||'|'||
trim(PERCENTAGE1)||'|'||
trim(PERCENTAGE2)||'|'||
trim(PERCENTAGE3)||'|'||
trim(PERCENTAGE4)||'|'||
trim(PERCENTAGE5)||'|'||
trim(BANK_ID)||'|'||
trim(STR4_ALT1)||'|'||
trim(STR4_ALT2)||'|'||
trim(STR4_ALT3)
from CU5CORP_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu6_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu6_spool_kw.sql 
set head off
set feedback off
set term off
set lines 800
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifkw/CC006.txt
select
trim(FINANCIAL_DETAILS_ID)||'|'||
trim(BANK_ID)||'|'||
trim(STR4_ALT1)||'|'||
trim(FINANCIAL_ID)||'|'||
trim(FINANCEDETAIL_TYPE)||'|'||
trim(STR1)||'|'||
trim(STR2)||'|'||
trim(STR3)||'|'||
trim(STR4)||'|'||
trim(STR5)||'|'||
trim(STR6)||'|'||
trim(STR7)||'|'||
trim(STR8)||'|'||
trim(STR9)||'|'||
trim(STR10)||'|'||
trim(STR11)||'|'||
trim(STR12)||'|'||
trim(STR13)||'|'||
trim(STR14)||'|'||
trim(STR15)||'|'||
trim(STR16)||'|'||
trim(STR17)||'|'||
trim(STR18)||'|'||
trim(STR19)||'|'||
trim(STR20)||'|'||
trim(STR21)||'|'||
trim(STR22)||'|'||
trim(STR23)||'|'||
trim(STR24)||'|'||
trim(STR25)||'|'||
trim(STR26)||'|'||
trim(STR27)||'|'||
trim(STR28)||'|'||
trim(STR29)||'|'||
trim(STR30)||'|'||
trim(DATE1)||'|'||
trim(DATE2)||'|'||
trim(DATE3)||'|'||
trim(DATE4)||'|'||
trim(DATE5)||'|'||
trim(DATE6)||'|'||
trim(DATE7)||'|'||
trim(DATE8)||'|'||
trim(DATE9)||'|'||
trim(DATE10)||'|'||
trim(AMOUNT1)||'|'||
trim(AMOUNT2)||'|'||
trim(AMOUNT3)||'|'||
trim(AMOUNT4)||'|'||
trim(AMOUNT5)||'|'||
trim(AMOUNT6)||'|'||
trim(AMOUNT7)||'|'||
trim(AMOUNT8)||'|'||
trim(AMOUNT9)||'|'||
trim(AMOUNT10)||'|'||
trim(AMOUNT11)||'|'||
trim(AMOUNT12)||'|'||
trim(AMOUNT13)||'|'||
trim(AMOUNT14)||'|'||
trim(AMOUNT15)||'|'||
trim(AMOUNT16)||'|'||
trim(AMOUNT17)||'|'||
trim(AMOUNT18)||'|'||
trim(AMOUNT19)||'|'||
trim(AMOUNT20)||'|'||
trim(AMOUNT21)||'|'||
trim(AMOUNT22)||'|'||
trim(AMOUNT23)||'|'||
trim(AMOUNT24)||'|'||
trim(AMOUNT25)||'|'||
trim(AMOUNT26)||'|'||
trim(AMOUNT27)||'|'||
trim(AMOUNT28)||'|'||
trim(AMOUNT29)||'|'||
trim(AMOUNT30)||'|'||
trim(FLAG1)||'|'||
trim(FLAG2)||'|'||
trim(FLAG3)||'|'||
trim(FLAG4)||'|'||
trim(FLAG5)||'|'||
trim(INT1)||'|'||
trim(INT2)||'|'||
trim(INT3)||'|'||
trim(INT4)||'|'||
trim(INT5)||'|'||
trim(INT6)||'|'||
trim(INT7)||'|'||
trim(INT8)||'|'||
trim(INT9)||'|'||
trim(INT10)||'|'||
trim(INT11)||'|'||
trim(INT12)||'|'||
trim(INT13)||'|'||
trim(INT14)||'|'||
trim(INT15)||'|'||
trim(MLUSERFIELD1)||'|'||
trim(MLUSERFIELD2)||'|'||
trim(MLUSERFIELD3)||'|'||
trim(MLUSERFIELD4)||'|'||
trim(MLUSERFIELD5)||'|'||
trim(ENTITYID)||'|'||
trim(ENTITYKEY)||'|'||
trim(CIFTYPE)||'|'||
trim(ENTITYTYPE)||'|'||
trim(ORGKEY)||'|'||
trim(STR31)||'|'||
trim(STR32)||'|'||
trim(STR33)||'|'||
trim(STR34)||'|'||
trim(STR35)||'|'||
trim(INT16)||'|'||
trim(INT17)||'|'||
trim(INT18)||'|'||
trim(INT19)||'|'||
trim(INT20)||'|'||
trim(AMOUNT31)||'|'||
trim(AMOUNT32)||'|'||
trim(AMOUNT33)||'|'||
trim(AMOUNT34)||'|'||
trim(AMOUNT35)||'|'||
trim(DATE11)||'|'||
trim(FINYEAR)||'|'||
trim(FINMONTH)||'|'||
trim(AUDITSTATUS)||'|'||
trim(TANG_FIX_ASSETS)||'|'||
trim(SG_RECEIPTS)||'|'||
trim(GROSS_PROFIT)||'|'||
trim(PROFIT_INT_DEP_TAXES)||'|'||
trim(NET_PROFIT_RATIO)||'|'||
trim(GROSS_GEARING_RATIO)||'|'||
trim(NET_GEARING_RATIO)||'|'||
trim(FREQUENCY)||'|'||
trim(TMDATE)
from cu6corp_o_table;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu7_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu7_spool.sql 
-- File Name		: cu1crop.sql
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 800
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifuae/CC007.txt
select
trim(CORP_KEY)||'|'||
trim(CORP_REP_KEY)||'|'||
trim(BENEFICIALOWNERKEY)||'|'||
trim(ENTITYTYPE)||'|'||
trim(DOCDUEDATE)||'|'||
trim(DOCRECEIVEDDATE)||'|'||
trim(DOCEXPIRYDATE)||'|'||
trim(DOCDELFLG)||'|'||
trim(DOCREMARKS)||'|'||
trim(SCANNED)||'|'||
trim(DOCCODE)||'|'||
trim(DOCDESCR)||'|'||
trim(REFERENCENUMBER)||'|'||
trim(TYPE)||'|'||
trim(ISMANDATORY)||'|'||
trim(SCANREQUIRED)||'|'||
trim(ROLE)||'|'||
trim(DOCTYPECODE)||'|'||
trim(DOCTYPEDESCR)||'|'||
trim(MINDOCSREQD)||'|'||
trim(WAIVEDORDEFEREDDATE)||'|'||
trim(COUNTRYOFISSUE)||'|'||
trim(PLACEOFISSUE)||'|'||
trim(DOCISSUEDATE)||'|'||
trim(IDENTIFICATIONTYPE)||'|'||
trim(CORE_CUST_ID)||'|'||
trim(IS_DOCUMENT_VERIFIED)||'|'||
trim(BANK_ID)||'|'||
trim(IDISSUEORGANISATION)
from CU7CORP_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu7_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu7_spool_kw.sql 
-- File Name		: cu1crop.sql
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 800
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifkw/CC007.txt
select
trim(CORP_KEY)||'|'||
trim(CORP_REP_KEY)||'|'||
trim(BENEFICIALOWNERKEY)||'|'||
trim(ENTITYTYPE)||'|'||
trim(DOCDUEDATE)||'|'||
trim(DOCRECEIVEDDATE)||'|'||
trim(DOCEXPIRYDATE)||'|'||
trim(DOCDELFLG)||'|'||
trim(DOCREMARKS)||'|'||
trim(SCANNED)||'|'||
trim(DOCCODE)||'|'||
trim(DOCDESCR)||'|'||
trim(REFERENCENUMBER)||'|'||
trim(TYPE)||'|'||
trim(ISMANDATORY)||'|'||
trim(SCANREQUIRED)||'|'||
trim(ROLE)||'|'||
trim(DOCTYPECODE)||'|'||
trim(DOCTYPEDESCR)||'|'||
trim(MINDOCSREQD)||'|'||
trim(WAIVEDORDEFEREDDATE)||'|'||
trim(COUNTRYOFISSUE)||'|'||
trim(PLACEOFISSUE)||'|'||
trim(DOCISSUEDATE)||'|'||
trim(IDENTIFICATIONTYPE)||'|'||
trim(CORE_CUST_ID)||'|'||
trim(IS_DOCUMENT_VERIFIED)||'|'||
trim(BANK_ID)||'|'||
trim(IDISSUEORGANISATION)
from CU7CORP_O_TABLE; 
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu8_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu8_spool.sql 
-- File Name		: cu1crop.sql
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 800
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifuae/CC008.txt
select
trim(CORP_KEY)||'|'||
trim(PHONEEMAILTYPE)||'|'||
trim(PHONEOREMAIL)||'|'||
trim(PHONE_NO)||'|'||
trim(PHONENOLOCALCODE)||'|'||
trim(PHONENOCITYCODE)||'|'||
trim(PHONENOCOUNTRYCODE)||'|'||
trim(WORKEXTENSION)||'|'||
trim(EMAIL)||'|'||
trim(EMAILPALM)||'|'||
trim(URL)||'|'||
trim(PREFERRED_FLAG)||'|'||
trim(Start_Date)||'|'||
trim(End_Date)||'|'||
trim(USERFIELD1)||'|'||
trim(USERFIELD2)||'|'||
trim(USERFIELD3)||'|'||
trim(DATE1)||'|'||
trim(DATE2)||'|'||
trim(DATE3)||'|'||
trim(BANK_ID)
from CU8CORP_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu8_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu8_spool_kw.sql 
-- File Name		: cu1crop.sql
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 800
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifkw/CC008.txt
select
trim(CORP_KEY)||'|'||
trim(PHONEEMAILTYPE)||'|'||
trim(PHONEOREMAIL)||'|'||
trim(PHONE_NO)||'|'||
trim(PHONENOLOCALCODE)||'|'||
trim(PHONENOCITYCODE)||'|'||
trim(PHONENOCOUNTRYCODE)||'|'||
trim(WORKEXTENSION)||'|'||
trim(EMAIL)||'|'||
trim(EMAILPALM)||'|'||
trim(URL)||'|'||
trim(PREFERRED_FLAG)||'|'||
trim(Start_Date)||'|'||
trim(End_Date)||'|'||
trim(USERFIELD1)||'|'||
trim(USERFIELD2)||'|'||
trim(USERFIELD3)||'|'||
trim(DATE1)||'|'||
trim(DATE2)||'|'||
trim(DATE3)||'|'||
trim(BANK_ID)
from CU8CORP_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu9_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu9_spool.sql 
-- File Name		: cu9crop.sql
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 800
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifuae/CC009.txt
select 
trim(ORGKEY)||'|'||
trim(GROUPHOUSEHOLDCODE)||'|'||
trim(SHAREHOLDING_IN_PERCENTAGE)||'|'||
trim(TEXT1)||'|'||
trim(TEXT2)||'|'||
trim(TEXT3)||'|'||
trim(DATE1)||'|'||
trim(DATE2)||'|'||
trim(DATE3)||'|'||
trim(DROPDOWN1)||'|'||
trim(DROPDOWN2)||'|'||
trim(DROPDOWN3)||'|'||
trim(LOOKUP1)||'|'||
trim(LOOKUP2)||'|'||
trim(LOOKUP3)||'|'||
trim(GROUPHOUSEHOLDNAME)||'|'||
trim(BANK_ID)||'|'||
trim(GROUP_ID)||'|'||
trim(PRIMARY_GROUP_INDICATOR)
from CU9CORP_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu9_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ccu9_spool_kw.sql 
-- File Name		: cu9crop.sql
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 800
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifkw/CC009.txt
select
trim(ORGKEY)||'|'||
trim(GROUPHOUSEHOLDCODE)||'|'||         
trim(CMNE)||'|'|| 
trim(SHAREHOLDING_IN_PERCENTAGE)||'|'|| 
trim(TEXT1)||'|'||                     
trim(TEXT2)||'|'||              
trim(TEXT3)||'|'||                      
trim(DATE1)||'|'||                      
trim(DATE2)||'|'||                      
trim(DATE3)||'|'||                      
trim(DROPDOWN1)||'|'||                  
trim(DROPDOWN2)||'|'||                  
trim(DROPDOWN3)||'|'||                 
trim(LOOKUP1)||'|'||                    
trim(LOOKUP2)||'|'||                    
trim(LOOKUP3)||'|'||                    
trim(GROUPHOUSEHOLDNAME)||'|'||
trim(BANK_ID)||'|'||                    
trim(GROUP_ID)||'|'||                   
trim(PRIMARY_GROUP_INDICATOR)
from CU9CORP_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl001_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl001_spool_kw.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cla/KW/CL001.txt
select
ACC_NUM||
CUST_CREDIT_PREF_PER||
CUST_DEBIT_PREF_PER||
ACCT_ID_CREDIT_PREF_PER||
ACCT_ID_DEBIT_PREF_PER||
PEGGED_FLAG||
PEG_FREQ_IN_MONTHS||
PEG_FREQ_IN_DAYS||
INT_ROUTE_FLAG||
ACCT_CURRENCY_CODE||
SOL_ID||
GL_SUB_HEAD_CODE||
SCHM_CODE||
CIF_ID||
ACCT_OPEN_DATE||
SANCTION_LIMIT||
LEDGER_NUM||
SECTOR_CODE||
SUB_SECTOR_CODE||
PUR_OF_ADVANCE||
NATURE_OF_ADVANCE||
F_C_3||
SANCTION_REF_NUM||
SANCTION_LIMIT_DATE||
SANCTION_LEVEL_CODE||
LIMIT_EXPIRY_DATE||
SANCTION_AUTHORITY_CODE||
LOAN_PAPER_DATE||
OPERATIVE_ACCT_ID||
OPERATIVE_CURRENCY_CODE||
OPERATIVE_SOL_ID||
DEMAND_SATISFY_METHOD||
LIEN_ON_OPERATIVE_ACCT_FLAG||
DEMAND_SATISFACTION_RATE_CODE||
INT_TABLE_CODE||
INT_ON_PRINCIPAL_FLAG||
PENAL_OVERDUE_PR_DEMAND_FLAG||
PRI_DEM_OD_END_MONTH_FLAG||
INT_ON_INT_DEMAND_FLAG||
PENAL_OVERDUE_INT_DEMAND_FLAG||
INT_DEM_OD_END_MONTH_FLAG||
TRANSFER_EFFECTIVE_DATE||
CUMUL_NORMAL_INT_AMOUNT||
CUMUL_PENAL_INT_AMOUNT||
CUMUL_ADD_INT_AMOUNT||
LIAB_AS_ON_TRANSFER_EFF_DATE||
DISB_IN_PRES_SCHEDULE||
LAST_INT_POSTED_DATE||
REPAYMENT_SCHEDULE_DATE||
REPAYMENT_PERIOD_IN_MONTHS||
REPAYMENT_PERIOD_IN_DAYS||
PAST_DUE_FLAG||
PAST_DUE_DATE||
NORMAL_GL_SUBHEAD_CODE||
NORMAL_INT_SUSPENSE_AMOUNT||
PENAL_INT_SUSPENSE_AMOUNT||
CHARGE_OFF_FLAG||
CHARGE_OFF_DATE||
CHARGED_OFF_PRINCIPAL_AMOUNT||
CHARGED_OFF_INT_AMOUNT||
PRINCIPAL_REC||
INT_REC||
SOURCE_DEALER_CODE||
DISBURSE_DEALER_CODE||
APPLY_LATE_FEE_FLAG||
LT_FEE_GPERIOD_MONTHS||
LT_FEE_GPERIOD_DAYS||
DAYS_PAST_DUE_COUNTER||
SUM_PRI_DEM_AMT||
PAYOFF_FLAG||
EXCLUDE_FOR_COMBINED_ST||
ST_CIF_ID||
TRANSFER_CYCLE_STRING||
VALUE_OF_ASSET||
OCC_CODE_OF_THE_CUST||
BORROWER_CATEGORY_CODE||
MODE_OF_ADVANCE||
TYPE_OF_ADVANCE||
GUARANTEE_COVERAGE_CODE||
INDUSTRY_TYPE||
F_C_1||
F_C_2||
F_C_4||
F_C_5||
F_C_6||
F_C_7||
F_C_8||
F_C_9||
F_C_10||
ACCT_LOCATION_CODE||
CREDIT_FILE_REF_ID||
LAST_COMPOUND_DATE||
DAILY_COMPOUND_INT_FLAG||
EI_PERIOD_START_DATE||
EI_PERIOD_END_DATE||
CHARGE_ROUTE_FLAG||
TOTAL_NUM_OF_DEFERMENTS||
DEF_IN_CURR_SCHEDULE||
DRAW_DOWN_LVL_RATE_FLAG||
EI_FLAG||
INSTALLMENT_DATE_EXTD||
EXTENDED_OVERDUE_DATE||
DEF_APP_INT_RATE_FLAG||
DEF_APP_INT_RATE||
DEFERRED_INT_AMOUNT||
LAST_PREPAYMENT_DATE||
RF_END_DATE||
RF_REF_NUM||
CHARGE_OFF_TYPE||
CRY_REQD||
CRY_CURRENCY||
CONTRACT_DATE||
CRYS_A_C||
ACC_STATUS||
COMM_FEE_METHODS||
SHIFT_INSTALLMENT_FLAG||
PARENT_CIF_ID||
PEG_REVIEW_DATE||
RF_REF_NUM1||
PENAL_INT_BASED_ON_OUTSTANDING||
DEL_RESCHEDULE_METHOD_FLAG||
PROBATION_PERIOD_IN_MONTHS||
PROBATION_PERIOD_IN_DAYS||
TOTAL_NUM_OF_SWITCH_OVER||
NON_STARTER_FLAG||
REPRICING_PLAN||
FIXED_RATE_TERM_IN_MONTHS||
FIXED_RATE_TERM_IN_YEARS||
FLOATING_INT_TABLE_CODE||
FL_REP_FREQ||
FL_REP_FREQ_IN_DAYS||
AUTO_RESCHEDULE_NOT_ALLOWED||
RES_OD_PRINCIPAL||
RES_OD_INT||
LOAN_TYPE||
PAY_OFF_REASON_CODE||
RF_SANCTION_DATE||
RF_AMOUNT||
SUB_ACCT_ID||
SUB_AGENCY||
SUB_CLAIMED_DATE||
SUB_ACTIVITY_CODE||
DEBIT_ACKNOWLEDGEMENT_TYPE||
RF_SANCTION_NUM||
RF_CLAIMED_DATE||
SUB_AMOUNT||
SUB_RECEIVED_DATE||
COMP_REST_IND_FLAG||
COLLECT_INT_FLAG||
DESPATCH_MODE||
ACCT_MANAGER||
MODE_OF_OPER_CODE||
ST_FREQUENCY_TYPE||
WEEK_NUM_FOR_ST_DATE||
WEEK_DAY_FOR_ST_DATE||
START_DATE_FOR_ACC_ST||
ST_FREQ_HOLIDAYS||
ST_OF_THE_ACC||
NEXT_PRINT_DATE||
MIN_INT_PER_DEB||
MAX_INT_PER_DEB||
PRODUCT_GROUP||
FREE_TEXT||
PENAL_PROD_MTHD__FLG||
PENAL_RATE_MTHD__FLG||
IBAN_NUM||
IAS_CLASSIFICATION_CODE||
INT_RULE_CODE||
RECALL_FLAG||
RECALL_DATE||
DIF_PS_FREQ_FOR_REL_PARTY||
DIF_SWIFT_FREQ_FOR_REL_PARTY||
PENAL_INT_TABLE_CODE||
PENAL_PREFERENTIAL_PERCENT||
INT_TABLE_VERSION||
ADDRESS_TYPE||
RELATED_PARTY_PHONE_TYPE||
RELATED_PARTY_EMAIL_TYPE||
ADVANCE_INT_AMOUNT||
AMORTISED_AMOUNT||
ADV_INT_COLL_UPTO_DATE||
ACCR_RATE||
ACCR_PENAL_INT_REC||
PENAL_INT_REC||
COLL_INT_REC||
COLL_PENAL_INTT_REC||
MARKUP_INT_RATE_APPL_FLG||
PREFERRED_CAL_BASE||
AC_LEVEL_SPREAD||
INT_RATE_PRD_IN_MONTHS||
INT_RATE_PRD_IN_DAYS||
ACCT_TYPE||
INT_PEN_BREAKUP_REQD_FLG||
CUMM_COMPINT_INT||
CUMM_PENALINT_INT||
CUMM_PENALPRNC_INT||
CUMM_COMPPRNC_INT||
APPLY_INT_ON_PYMT||
CCY_HOL_TREATMENT_FLG||
FIRST_DRDN_VAL_DATE_INT_RATE||
INTERPOLATION_METHOD||
SYN_ACCOUNT_TYPE||
TRANCHE_ID||
SYN_AGENT_REF_NUM||
INTERPOL_REQD_CURHOL_BRKN_PRD||
INT_RATE_REF_CRNCY_CODE||
PROJECT_CRNCY_CODE||
RATE_FIXING_METHOD||
SECURITY_INDICATOR||
DEBT_SENIORITY||
SECURITY_CODE
from Cl001_O_TABLE
left join (select foracid from tbaadm.gam where bank_id=get_param('BANK_ID')) a on foracid = trim(Acc_Num)
where foracid is null;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl001_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl001_spool_uae.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cla/UAE/CL001.txt
select
ACC_NUM||
CUST_CREDIT_PREF_PER||
CUST_DEBIT_PREF_PER||
ACCT_ID_CREDIT_PREF_PER||
ACCT_ID_DEBIT_PREF_PER||
PEGGED_FLAG||
PEG_FREQ_IN_MONTHS||
PEG_FREQ_IN_DAYS||
INT_ROUTE_FLAG||
ACCT_CURRENCY_CODE||
SOL_ID||
GL_SUB_HEAD_CODE||
SCHM_CODE||
CIF_ID||
ACCT_OPEN_DATE||
SANCTION_LIMIT||
LEDGER_NUM||
SECTOR_CODE||
SUB_SECTOR_CODE||
PUR_OF_ADVANCE||
NATURE_OF_ADVANCE||
F_C_3||
SANCTION_REF_NUM||
SANCTION_LIMIT_DATE||
SANCTION_LEVEL_CODE||
LIMIT_EXPIRY_DATE||
SANCTION_AUTHORITY_CODE||
LOAN_PAPER_DATE||
OPERATIVE_ACCT_ID||
OPERATIVE_CURRENCY_CODE||
OPERATIVE_SOL_ID||
DEMAND_SATISFY_METHOD||
LIEN_ON_OPERATIVE_ACCT_FLAG||
DEMAND_SATISFACTION_RATE_CODE||
INT_TABLE_CODE||
INT_ON_PRINCIPAL_FLAG||
PENAL_OVERDUE_PR_DEMAND_FLAG||
PRI_DEM_OD_END_MONTH_FLAG||
INT_ON_INT_DEMAND_FLAG||
PENAL_OVERDUE_INT_DEMAND_FLAG||
INT_DEM_OD_END_MONTH_FLAG||
TRANSFER_EFFECTIVE_DATE||
CUMUL_NORMAL_INT_AMOUNT||
CUMUL_PENAL_INT_AMOUNT||
CUMUL_ADD_INT_AMOUNT||
LIAB_AS_ON_TRANSFER_EFF_DATE||
DISB_IN_PRES_SCHEDULE||
LAST_INT_POSTED_DATE||
REPAYMENT_SCHEDULE_DATE||
REPAYMENT_PERIOD_IN_MONTHS||
REPAYMENT_PERIOD_IN_DAYS||
PAST_DUE_FLAG||
PAST_DUE_DATE||
NORMAL_GL_SUBHEAD_CODE||
NORMAL_INT_SUSPENSE_AMOUNT||
PENAL_INT_SUSPENSE_AMOUNT||
CHARGE_OFF_FLAG||
CHARGE_OFF_DATE||
CHARGED_OFF_PRINCIPAL_AMOUNT||
CHARGED_OFF_INT_AMOUNT||
PRINCIPAL_REC||
INT_REC||
SOURCE_DEALER_CODE||
DISBURSE_DEALER_CODE||
APPLY_LATE_FEE_FLAG||
LT_FEE_GPERIOD_MONTHS||
LT_FEE_GPERIOD_DAYS||
DAYS_PAST_DUE_COUNTER||
SUM_PRI_DEM_AMT||
PAYOFF_FLAG||
EXCLUDE_FOR_COMBINED_ST||
ST_CIF_ID||
TRANSFER_CYCLE_STRING||
VALUE_OF_ASSET||
OCC_CODE_OF_THE_CUST||
BORROWER_CATEGORY_CODE||
MODE_OF_ADVANCE||
TYPE_OF_ADVANCE||
GUARANTEE_COVERAGE_CODE||
INDUSTRY_TYPE||
F_C_1||
F_C_2||
F_C_4||
F_C_5||
F_C_6||
F_C_7||
F_C_8||
F_C_9||
F_C_10||
ACCT_LOCATION_CODE||
CREDIT_FILE_REF_ID||
LAST_COMPOUND_DATE||
DAILY_COMPOUND_INT_FLAG||
EI_PERIOD_START_DATE||
EI_PERIOD_END_DATE||
CHARGE_ROUTE_FLAG||
TOTAL_NUM_OF_DEFERMENTS||
DEF_IN_CURR_SCHEDULE||
DRAW_DOWN_LVL_RATE_FLAG||
EI_FLAG||
INSTALLMENT_DATE_EXTD||
EXTENDED_OVERDUE_DATE||
DEF_APP_INT_RATE_FLAG||
DEF_APP_INT_RATE||
DEFERRED_INT_AMOUNT||
LAST_PREPAYMENT_DATE||
RF_END_DATE||
RF_REF_NUM||
CHARGE_OFF_TYPE||
CRY_REQD||
CRY_CURRENCY||
CONTRACT_DATE||
CRYS_A_C||
ACC_STATUS||
COMM_FEE_METHODS||
SHIFT_INSTALLMENT_FLAG||
PARENT_CIF_ID||
PEG_REVIEW_DATE||
RF_REF_NUM1||
PENAL_INT_BASED_ON_OUTSTANDING||
DEL_RESCHEDULE_METHOD_FLAG||
PROBATION_PERIOD_IN_MONTHS||
PROBATION_PERIOD_IN_DAYS||
TOTAL_NUM_OF_SWITCH_OVER||
NON_STARTER_FLAG||
REPRICING_PLAN||
FIXED_RATE_TERM_IN_MONTHS||
FIXED_RATE_TERM_IN_YEARS||
FLOATING_INT_TABLE_CODE||
FL_REP_FREQ||
FL_REP_FREQ_IN_DAYS||
AUTO_RESCHEDULE_NOT_ALLOWED||
RES_OD_PRINCIPAL||
RES_OD_INT||
LOAN_TYPE||
PAY_OFF_REASON_CODE||
RF_SANCTION_DATE||
RF_AMOUNT||
SUB_ACCT_ID||
SUB_AGENCY||
SUB_CLAIMED_DATE||
SUB_ACTIVITY_CODE||
DEBIT_ACKNOWLEDGEMENT_TYPE||
RF_SANCTION_NUM||
RF_CLAIMED_DATE||
SUB_AMOUNT||
SUB_RECEIVED_DATE||
COMP_REST_IND_FLAG||
COLLECT_INT_FLAG||
DESPATCH_MODE||
ACCT_MANAGER||
MODE_OF_OPER_CODE||
ST_FREQUENCY_TYPE||
WEEK_NUM_FOR_ST_DATE||
WEEK_DAY_FOR_ST_DATE||
START_DATE_FOR_ACC_ST||
ST_FREQ_HOLIDAYS||
ST_OF_THE_ACC||
NEXT_PRINT_DATE||
MIN_INT_PER_DEB||
MAX_INT_PER_DEB||
PRODUCT_GROUP||
FREE_TEXT||
PENAL_PROD_MTHD__FLG||
PENAL_RATE_MTHD__FLG||
IBAN_NUM||
IAS_CLASSIFICATION_CODE||
INT_RULE_CODE||
RECALL_FLAG||
RECALL_DATE||
DIF_PS_FREQ_FOR_REL_PARTY||
DIF_SWIFT_FREQ_FOR_REL_PARTY||
PENAL_INT_TABLE_CODE||
PENAL_PREFERENTIAL_PERCENT||
INT_TABLE_VERSION||
ADDRESS_TYPE||
RELATED_PARTY_PHONE_TYPE||
RELATED_PARTY_EMAIL_TYPE||
ADVANCE_INT_AMOUNT||
AMORTISED_AMOUNT||
ADV_INT_COLL_UPTO_DATE||
ACCR_RATE||
ACCR_PENAL_INT_REC||
PENAL_INT_REC||
COLL_INT_REC||
COLL_PENAL_INTT_REC||
MARKUP_INT_RATE_APPL_FLG||
PREFERRED_CAL_BASE||
AC_LEVEL_SPREAD||
INT_RATE_PRD_IN_MONTHS||
INT_RATE_PRD_IN_DAYS||
ACCT_TYPE||
INT_PEN_BREAKUP_REQD_FLG||
CUMM_COMPINT_INT||
CUMM_PENALINT_INT||
CUMM_PENALPRNC_INT||
CUMM_COMPPRNC_INT||
APPLY_INT_ON_PYMT||
CCY_HOL_TREATMENT_FLG||
FIRST_DRDN_VAL_DATE_INT_RATE||
INTERPOLATION_METHOD||
SYN_ACCOUNT_TYPE||
TRANCHE_ID||
SYN_AGENT_REF_NUM||
INTERPOL_REQD_CURHOL_BRKN_PRD||
INT_RATE_REF_CRNCY_CODE||
PROJECT_CRNCY_CODE||
RATE_FIXING_METHOD||
SECURITY_INDICATOR||
DEBT_SENIORITY||
SECURITY_CODE
from Cl001_O_TABLE
left join (select foracid from tbaadm.gam where bank_id=get_param('BANK_ID')) a on foracid = trim(Acc_Num)
where foracid is null;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl002_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl002_spool_kw.sql 
set head off
set feedback off
set term off
set linesize 6000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cla/KW/CL002.txt
select
ACC_NUM||
FLOW_ID||
FLOW_START_DATE||
FREQ_TYPE||
FREQ_WEEK_NUMBER_FOR_PRI||
FREQ_WEEK_DAY_FOR_PRI||
FREQ_START_DD_FOR_PRI||
FREQ_MONTHS_FOR_PRI||
FREQ_DAYS_FOR_PRI||
FREQ_HOL_ST_PRL||
NUMBER_OF_FLOWS||
INST_AMT||
INST_PER||
NUMBER_OF_DEM_RSD||
NEXT_INS_DT||
NEXT_INT_INS_DT||
FREQ_TYPE_FOR_INT||
FREQ_WEEK_NUMBER_FOR_INT||
FREQ_WEEK_DAY_FOR_INT||
FREQ_START_DD_FOR_INT||
FREQ_MONTHS_FOR_INT||
FREQ_DAYS_FOR_INT||
FREQ_HOL_ST_INT||
INST_IND
from Cl002_O_TABLE
order by ACC_NUM,flow_id,to_date(flow_start_date,'DD-MM-YYYY');
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl002_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl002_spool_uae.sql 
set head off
set feedback off
set term off
set linesize 6000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cla/UAE/CL002.txt
select
ACC_NUM||
FLOW_ID||
FLOW_START_DATE||
FREQ_TYPE||
FREQ_WEEK_NUMBER_FOR_PRI||
FREQ_WEEK_DAY_FOR_PRI||
FREQ_START_DD_FOR_PRI||
FREQ_MONTHS_FOR_PRI||
FREQ_DAYS_FOR_PRI||
FREQ_HOL_ST_PRL||
NUMBER_OF_FLOWS||
INST_AMT||
INST_PER||
NUMBER_OF_DEM_RSD||
NEXT_INS_DT||
NEXT_INT_INS_DT||
FREQ_TYPE_FOR_INT||
FREQ_WEEK_NUMBER_FOR_INT||
FREQ_WEEK_DAY_FOR_INT||
FREQ_START_DD_FOR_INT||
FREQ_MONTHS_FOR_INT||
FREQ_DAYS_FOR_INT||
FREQ_HOL_ST_INT||
INST_IND
from Cl002_O_TABLE
order by ACC_NUM;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl007_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl007_spool_kw.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cla/KW/CL007.txt
select
TRANS_TYPE||
TRANS_SUB_TYPE||
ACC_NUM||
CURR||
SOL_ID||
TRANS_AMT||
PART_TRAN_TYPE||
TYPE_OF_DEMANDS||
VALUE_DATE||
FLOW_ID||
DEMAND_DATE||
LAST_PART_TRAN_FLAG||
TRANS_END_IND||
ADV_PAY_FLAG||
PREPAY_TYPE||
INT_COLL_ON_PREPAY_FLAG||
TRANS_REMARKS||
TRANS_PART||';CLAT_'||trim(SOL_ID)||'_'||CURR||'.txt' 
from Cl007_O_TABLE
order by CURR,SOL_ID,TRANS_PART,LAST_PART_TRAN_FLAG;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl007_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl007_spool_uae.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cla/UAE/CL007.txt
select
TRANS_TYPE||
TRANS_SUB_TYPE||
ACC_NUM||
CURR||
SOL_ID||
TRANS_AMT||
PART_TRAN_TYPE||
TYPE_OF_DEMANDS||
VALUE_DATE||
FLOW_ID||
DEMAND_DATE||
LAST_PART_TRAN_FLAG||
TRANS_END_IND||
ADV_PAY_FLAG||
PREPAY_TYPE||
INT_COLL_ON_PREPAY_FLAG||
TRANS_REMARKS||
TRANS_PART||';CLAT_'||trim(SOL_ID)||'_'||CURR||'.txt' 
from Cl007_O_TABLE
order by CURR,SOL_ID,LAST_PART_TRAN_FLAG ;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl008_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl008_spool_kw.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cla/KW/CL008.txt
select
TRAN_TYPE||
TRAN_SUB_TYPE||
FORACID||
TRAN_CRNCY_CODE||
SOL_ID||
TRAN_AMT||
PART_TRAN_TYPE||
TYPE_OF_DMDS||
VALUE_DATE||
FLOW_ID||
DMD_DATE||
LAST_TRAN_FLG||
NA||
ADV_PAY_FLG||
PREPAY_TYPE||
INT_COLL_ON_PREP_FLG||
TRAN_RMKS||
TRAN_PARTICULAR
from Cl008_O_TABLE
order by TRAN_CRNCY_CODE,SOL_ID,TRAN_PARTICULAR,LAST_TRAN_FLG;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl008_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl008_spool_uae.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cla/UAE/CL008.txt
select
TRAN_TYPE||
TRAN_SUB_TYPE||
FORACID||
TRAN_CRNCY_CODE||
SOL_ID||
TRAN_AMT||
PART_TRAN_TYPE||
TYPE_OF_DMDS||
VALUE_DATE||
FLOW_ID||
DMD_DATE||
LAST_TRAN_FLG||
NA||
ADV_PAY_FLG||
PREPAY_TYPE||
INT_COLL_ON_PREP_FLG||
TRAN_RMKS||
TRAN_PARTICULAR
from Cl008_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl009_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl009_spool_kw.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cla/KW/CL009.txt
select
ACC_ID||
DEMAND_DATE||
DEMAND_EFF_DATE||
DEMAND_ID||
DEMAND_AMT||
LATE_FEE_APP||
LATE_FEE_AMT||
LATE_FEE_DATE||
STATUS_OF_LATE_FEE||
LATE_FEE_CURR_CODE||
DEMAND_OVERDUE_DATE||
ACC_PENAL_INT_AMT||
IBAN_NUMBER
from Cl009_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl009_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl009_spool_uae.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cla/UAE/CL009.txt
select
ACC_ID||
DEMAND_DATE||
DEMAND_EFF_DATE||
DEMAND_ID||
DEMAND_AMT||
LATE_FEE_APP||
LATE_FEE_AMT||
LATE_FEE_DATE||
STATUS_OF_LATE_FEE||
LATE_FEE_CURR_CODE||
DEMAND_OVERDUE_DATE||
ACC_PENAL_INT_AMT||
IBAN_NUMBER
from Cl009_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl014_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl014_spool_kw.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cla/KW/CL014.txt
select
ACCOUNT_NUMBER||'|'||
CURRENCY_CODE||'|'||
SOL_ID||'|'||
CR_INT_TRAN_AMT||'|'||
CR_INT_CALC_UPTO||'|'||
CR_INT_ACC_UPTO||'|'||
CR_INT_BOOKED_UPTO||'|'||
DEB_INT_TRANS_AMT||'|'||
DEB_INT_CALC_UPTO||'|'||
DEB_INT_ACCRUED_UPTO||'|'||
DEB_INT_BOOK_UPTO
from Cl014_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl014_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cl014_spool_uae.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cla/UAE/CL014.txt
select
ACCOUNT_NUMBER||'|'||
CURRENCY_CODE||'|'||
SOL_ID||'|'||
CR_INT_TRAN_AMT||'|'||
CR_INT_CALC_UPTO||'|'||
CR_INT_ACC_UPTO||'|'||
CR_INT_BOOKED_UPTO||'|'||
DEB_INT_TRANS_AMT||'|'||
DEB_INT_CALC_UPTO||'|'||
DEB_INT_ACCRUED_UPTO||'|'||
DEB_INT_BOOK_UPTO
from Cl014_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
collateral_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
collateral_spool.sql 
-- File Name		: Collateral_SPOOL
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : ABK
-- Created On		: 23-10-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 5000 
set page size 0
set pages 0
#set trimspool on
set trimspool on
spool $MIG_PATH/output/finacle/collatreal/COLL_MASTER.txt
select
record_indicator||
account_number||
currency_code||
security_code||
security_group_code||
security_class_code||
drawing_power_indicator||
penal_int_applicable||
lien_acid||
certificate_alpha||
certificate_no||
unit_value||
no_of_units||
security_value||
maximum_ceiling_limt||
margin_percent||
item_freq_type||
item_freq_week_num||
item_freq_week_day||
item_freq_start_day||
item_freq_holiday_status||
item_due_date||
received_date||
remarks||
debit_account_for_fees||
derived_value_indicator||
third_party_lien_amount||
assessed_value||
invoice_value||
market_value||
written_down_value||
apportioned_value||
purchase_date||
year_of_creation||
review_date||
net_value_remark1||
net_value_remark2||
net_value_remark3||
net_value_remark4||
net_value_amt1||
net_value_amt2||
net_value_amt3||
net_value_amt4||
net_value_operand1||
net_value_operand2||
net_value_operand3||
net_value_operand4||
full_benefit_flg||
lodge_date||
gross_value||
cif_id||
last_valuation_date||
seq_num||
distinctive_no_from||
distinctive_no_to||
vehicle_chassic_no||
vechicle_regis_no||
vechicle_engine_no||
property_doc_no||
property_add1||
property_add2||
property_city||
property_state||
property_pin_code||
guarantor_id||
guarantee_type||
life_insurance_policy_no||
life_insurance_policy_amt
from collateral_o_table;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
col_account_linkage_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
col_account_linkage_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/collateral/UAE/COL_ACCOUNT_LINKAGE.txt
SELECT    RPAD (COLLATERAL_CODE, 13, ' ')
       || RPAD (APPORTIONED_VALUE, 20, ' ')
       || RPAD (FORACID, 16, ' ')
       || RPAD (MARGIN_PERCENT, 9, ' ')
       || RPAD (PRIMARY_SECONDARY, 1, ' ')
  FROM COLL_ACCOUNT_LINKAGE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
col_dep_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
col_dep_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/collateral/COL_DEP.txt
select 
TRIM(COL_TYPE) ||'|'||
TRIM(COL_CODE) ||'|'||
TRIM(COL_CLASS) ||'|'||
TRIM(COL_GROUP) ||'|'||
TRIM(CEILING_LIMIT) ||'|'||
TRIM(MARGIN) ||'|'||
TRIM(DR_ACC_FOR_FEES) ||'|'||
TRIM(LTV_PCNT) ||'|'||
TRIM(LAST_VALUATION_DT) ||'|'||
TRIM(REASON_CODE) ||'|'||
TRIM(DEPOSIT_ACCOUNT_NUMBER) ||'|'||
TRIM(APPORTIONED_VALUE) ||'|'||
TRIM(REVIEW_DATE) ||'|'||
TRIM(DENOMINATION_NUMBER_1) ||'|'||
TRIM(DENOMINATION_NUMBER_2) ||'|'||
TRIM(FULL_BENEFIT_FLAG) ||'|'||
TRIM(RECEIVED_DATE) ||'|'||
TRIM(CEILING_LIMIT) ||'|'||
TRIM(DUE_DATE) ||'|'||
TRIM(LODGED_DATE) ||'|'||
TRIM(CIF_ID) ||'|'||
TRIM(NOTES) ||'|'||
TRIM(LINKAGE_TYPE) ||'|'||
TRIM(COLL_STATUS ) ||'|'||
TRIM(DEPOSIT_ACCOUNT_NUMBER) ||'|'||
TRIM(DP_CONTRBTN ) ||'|'||
TRIM(LIMIT_PREFIX) ||'|'||
TRIM(LIMIT_SUFFIX) ||'|'||
TRIM(UPLOAD_STATUS ) ||'|'||
TRIM(get_param('BANK_ID')) ||'|'||
TRIM(SERIAL_NUMBER) ||'|'||
TRIM(FORACID_COLL_VALUE ) ||'|'||
TRIM(SERIAL_NUMBER) ||'|'||
TRIM(CC_FINONE_ACCNT) 
from col_dep_o_table ;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
col_g_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
col_g_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/collateral/COL_GUA.txt
select  
TRIM(COL_TYPE) ||'|'||
TRIM(COL_CODE) ||'|'||
TRIM(COL_CLASS) ||'|'||
TRIM(COL_GROUP) ||'|'||
TRIM(CEILING_LIMIT) ||'|'||
TRIM(MARGIN_PCNT) ||'|'||
TRIM(DR_ACC_FOR_FEES) ||'|'||
TRIM(LTV_PCNT) ||'|'||
TRIM(LAST_VALUATION_DT) ||'|'||
TRIM(GUARANTOR_TYPE) ||'|'||
TRIM(GUARANTOR_ID) ||'|'||
TRIM(GUARANTOR_NAME) ||'|'||--GUARANTOR_NAME
TRIM(GUARANTEE_TYPE) ||'|'||
TRIM(REVIEW_DT) ||'|'||
TRIM(GUARANTEE_PCNT) ||'|'||
TRIM(GUARANTEE_AMT) ||'|'||
TRIM(RECEIVED_DT) ||'|'||
TRIM(COL_VALUE) ||'|'||
TRIM(DUE_DATE) ||'|'||
TRIM(ADDRESS_LINE1) ||'|'||
TRIM(ADDRESS_LINE2) ||'|'||
TRIM(CITY_CODE) ||'|'||
TRIM(STATE_CODE) ||'|'||
TRIM(COUNTRY_CODE) ||'|'||
TRIM(POSTAL_CODE) ||'|'||
TRIM(LODGED_DATE) ||'|'||--LODGED_DATE
TRIM(GUARANTOR_ID) ||'|'||
TRIM(NOTES) ||'|'||
TRIM(LINKAGE_TYPE) ||'|'||
TRIM(COLL_STATUS) ||'|'||--COLL_STATUS
TRIM(FORACID ) ||'|'||--FORACID
TRIM(DP_CONTRBTN) ||'|'||--DP_CONTRBTN
TRIM(LIMIT_PREFIX) ||'|'||
TRIM(LIMIT_SUFFIX) ||'|'||
TRIM(UPLOAD_STATUS) ||'|'||--UPLOAD_STATUS
TRIM(get_param('BANK_ID')) ||'|'||
TRIM(SERIAL_NUMBER) ||'|'||
TRIM(FORACID_COLL_VALUE) ||'|'||--FORACID_COLL_VALUE
TRIM(SERIAL_NUMBER) ||'|'||
TRIM(CC_FINONE_ACCNT )--CC_FINONE_ACCNT
from col_g_o_table;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
col_ins_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
col_ins_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/others/COL10.txt
select
TRIM(COL_TYPE) ||'|'||
TRIM(COL_CODE) ||'|'||
TRIM(COL_CLASS) ||'|'||
TRIM(COL_GROUP) ||'|'||
TRIM(CEILING_LIMIT) ||'|'||
TRIM(MARGIN) ||'|'||
TRIM(DR_ACC_FOR_FEES) ||'|'||
TRIM(LTV_PCNT) ||'|'||
TRIM(LAST_VALUATION_DT) ||'|'||
TRIM(REVIEW_DATE) ||'|'||
TRIM(RECEIVED_DATE) ||'|'||
TRIM(DUE_DATE) ||'|'||
TRIM(CIF_ID) ||'|'||
TRIM(NOTES) ||'|'||
TRIM(POLICY_AMOUNT) ||'|'||
TRIM(INS_POLICY_NUMBER) ||'|'||
TRIM(RISK_COVER_END_DATE) ||'|'||
TRIM(LAST_PREMIUM_PAID_DATE) ||'|'||
TRIM(LINKAGE_TYPE) ||'|'||
TRIM(ACCOUNT_TO_BE_LINKED) ||'|'||
TRIM(LIMIT_PREFIX) ||'|'||
TRIM(LIMIT_SUFFIX) ||'|'||
TRIM(SERIAL_NUMBER) ||'|'||
TRIM(MODEL) ||'|'||
TRIM(YEAR_OF_MANUFACTURE) ||'|'||
TRIM(NOTES0) ||'|'||
TRIM(ADDRESSLINE_1) ||'|'||
TRIM(ADDRESLINE_2) ||'|'||
TRIM(CITY_CODE) ||'|'||
TRIM(STATE_CODE) ||'|'||
TRIM(ZIP_CODE) ||'|'||
TRIM(TELEPHONE_NUMBER) ||'|'||
TRIM(INSPECTED_EMP_ID) ||'|'||
TRIM(NOTES1) ||'|'||
TRIM(NOTES2) ||'|'||
TRIM(INSURANCE_TYPE) ||'|'||
TRIM(INSURER_DETAILS) ||'|'||
TRIM(INSURANCE_POLICY_NUMBER) ||'|'||
TRIM(INSURANCE_POLICY_AMOUNT) ||'|'||
TRIM(RISK_COVER_START_DATE) ||'|'||
TRIM(PREMIUM_AMOUNT) ||'|'||
TRIM(FREQUENCY_OF_THE_STATEMENT) ||'|'||
TRIM(ITEMS_INSURED) ||'|'||
TRIM(NOTES3) 
from col_ins_o_table;
spool off;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
col_ip_lhr_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
col_ip_lhr_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/others/COL2.txt
select 
trim(COL_TYPE)   ||'|'||
trim(COL_CODE)   ||'|'||
trim(CEILING_LIMIT)   ||'|'||
trim(COL_CLASS)   ||'|'||
trim(COL_GROUP)   ||'|'||
trim(MARGIN)   ||'|'||
trim(LTV_PCNT)   ||'|'||
trim(DR_ACC_FOR_FEES)   ||'|'||
trim(LAST_VALUATION_DT)   ||'|'||
trim(REASON_CODE)   ||'|'||
trim(NATURE_OF_CHARGE)   ||'|'||
trim(THIRD_PARTY_LIEN_VALUE)   ||'|'||
trim(DERIVE_VALUE_FROM)   ||'|'||
trim(ASSESSED_VALUE)   ||'|'||
trim(INVOICE_VALUE)   ||'|'||
trim(MARKET_VALUE)   ||'|'||
trim(WRITTEN_DOWN_VALUE)   ||'|'||
trim(APPORTIONED_VALUE)   ||'|'||
trim(COLLATERAL_VALUE)   ||'|'||
trim(PROPERTY_DOCUMENT_NO)   ||'|'||
trim(LODGED_DATE)   ||'|'||
trim(REVIEW_DATE)   ||'|'||
trim(RECEIVED_DATE)   ||'|'||
trim(DUE_DATE)   ||'|'||
trim(DATE_OF_PURCHASE)   ||'|'||
trim(BUILT_AREA)   ||'|'||
trim(UNIT_OF_MEASUREMENT_1)   ||'|'||
trim(LAND_AREA)   ||'|'||
trim(UNIT_OF_MEASUREMENT_2)   ||'|'||
trim(BUILDER_NAME)   ||'|'||
trim(PROPERTY_RATING)   ||'|'||
trim(YEAR_OF_CONSTRUCTION)   ||'|'||
trim(ADDRESSLINE_1)   ||'|'||
trim(ADDRESSLINE_2)   ||'|'||
trim(CITY_CODE_1)   ||'|'||
trim(STATE_CODE_1)   ||'|'||
trim(COUNTRY_CODE_1)   ||'|'||
trim(PIN_CODE)   ||'|'||
trim(PROPERTY_OWNER)   ||'|'||
trim(LEASED)   ||'|'||
trim(LEASE_EXPIRY_DATE)   ||'|'||
trim(CIF_ID)   ||'|'||
trim(AGE_OF_BUILDING)   ||'|'||
trim(NOTES0)   ||'|'||
trim(INSPECTION_TYPE)   ||'|'||
trim(ADDRESS_LINE1)   ||'|'||
trim(ADDRESS_LINE2)   ||'|'||
trim(CITY_CODE_2)   ||'|'||
trim(STATE_CODE_2)   ||'|'||
trim(ZIP_CODE_2)   ||'|'||
trim(TELEPHONE_NUMBER)   ||'|'||
trim(DATE_OF_VISIT)   ||'|'||
trim(DUE_DATE_OF_VISIT)   ||'|'||
trim(INSPECTED_VALUE)   ||'|'||
trim(INSPECTED_EMP_ID)   ||'|'||
trim(NOTES1)   ||'|'||
trim(NOTES2)   ||'|'||
trim(DUMMY_FIELD)   ||'|'||
trim(INSURANCE_TYPE)   ||'|'||
trim(INSURER_DETAILS)   ||'|'||
trim(INSURANCE_POLICY_NUMBER)   ||'|'||
trim(INSURANCE_POLICY_AMOUNT)   ||'|'||
trim(RISK_COVER_START_DATE)   ||'|'||
trim(RISK_COVER_END_DATE)   ||'|'||
trim(LAST_PREMIUM_PAID_DATE)   ||'|'||
trim(PREMIUM_AMOUNT)   ||'|'||
trim(FREQUENCY_OF_THE_STATEMENT)   ||'|'||
trim(ITEMS_INSURED)   ||'|'||
trim(NOTES)   ||'|'||
trim(COLLATERAL_STATUS)   
from COL_IP_LHR_O_TABLE;
exit;

 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
col_ip_re_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
col_ip_re_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/collateral/COL_IP_RE.txt
select 
TRIM(COL_TYPE) ||'|'||
TRIM(COL_CODE) ||'|'||
TRIM(CEILING_LIMIT) ||'|'||
TRIM(COL_CLASS) ||'|'||
TRIM(COL_GROUP) ||'|'||
TRIM(MARGIN) ||'|'||
TRIM(LTV_PCNT) ||'|'||
TRIM(DR_ACC_FOR_FEES) ||'|'||
TRIM(LAST_VALUATION_DT) ||'|'||
TRIM(REASON_CODE) ||'|'||
TRIM(NATURE_OF_CHARGE) ||'|'||
TRIM(THIRD_PARTY_LIEN_VALUE) ||'|'||
TRIM(DERIVE_VALUE_FROM) ||'|'||
TRIM(ASSESSED_VALUE) ||'|'||
TRIM(INVOICE_VALUE) ||'|'||
TRIM(MARKET_VALUE) ||'|'||
TRIM(WRITTEN_DOWN_VALUE) ||'|'||
TRIM(APPORTIONED_VALUE) ||'|'||
TRIM(COLLATERAL_VALUE) ||'|'||
TRIM(PROPERTY_DOCUMENT_NO) ||'|'||
TRIM(LODGED_DATE) ||'|'||
TRIM(REVIEW_DATE) ||'|'||
TRIM(RECEIVED_DATE) ||'|'||
TRIM(DUE_DATE) ||'|'||
TRIM(DATE_OF_PURCHASE) ||'|'||
TRIM(BUILT_AREA) ||'|'||
TRIM(UNIT_OF_MEASUREMENT_1) ||'|'||
TRIM(LAND_AREA) ||'|'||
TRIM(UNIT_OF_MEASUREMENT_2) ||'|'||
TRIM(BUILDER_NAME) ||'|'||
TRIM(PROPERTY_RATING) ||'|'||
TRIM(YEAR_OF_CONSTRUCTION) ||'|'||
TRIM(ADDRESSLINE_1) ||'|'||
TRIM(ADDRESSLINE_2) ||'|'||
TRIM(CITY_CODE_1) ||'|'||
TRIM(STATE_CODE_1) ||'|'||
TRIM(COUNTRY_CODE_1) ||'|'||
TRIM(PIN_CODE) ||'|'||
TRIM(PROPERTY_OWNER) ||'|'||
TRIM(LEASED) ||'|'||
TRIM(LEASE_EXPIRY_DATE) ||'|'||
TRIM(CIF_ID) ||'|'||
TRIM(AGE_OF_BUILDING) ||'|'||
TRIM(NOTES0) ||'|'||
TRIM(INSPECTION_TYPE) ||'|'||
TRIM(ADDRESS_LINE1) ||'|'||
TRIM(ADDRESS_LINE2) ||'|'||
TRIM(CITY_CODE_2) ||'|'||
TRIM(STATE_CODE_2) ||'|'||
TRIM(ZIP_CODE_2) ||'|'||
TRIM(TELEPHONE_NUMBER) ||'|'||
TRIM(DATE_OF_VISIT) ||'|'||
TRIM(DUE_DATE_OF_VISIT) ||'|'||
TRIM(INSPECTED_VALUE) ||'|'||
TRIM(INSPECTED_EMP_ID) ||'|'||
TRIM(NOTES1) ||'|'||
TRIM(NOTES2) ||'|'||
TRIM(DUMMY_FIELD) ||'|'||
TRIM(INSURANCE_TYPE) ||'|'||
TRIM(INSURER_DETAILS) ||'|'||
TRIM(INSURANCE_POLICY_NUMBER) ||'|'||
TRIM(INSURANCE_POLICY_AMOUNT) ||'|'||
TRIM(RISK_COVER_START_DATE) ||'|'||
TRIM(RISK_COVER_END_DATE) ||'|'||
TRIM(LAST_PREMIUM_PAID_DATE) ||'|'||
TRIM(PREMIUM_AMOUNT) ||'|'||
TRIM(FREQUENCY_OF_THE_STATEMENT) ||'|'||
TRIM(ITEMS_INSURED) ||'|'||--ITEMS_INSURED
TRIM(NOTES) ||'|'||
TRIM(COLLATERAL_STATUS) ||'|'||
TRIM(LINKAGE_TYPE) ||'|'||
TRIM(ACCOUNT_TO_BE_LINKED) ||'|'||
TRIM(LIMIT_PREFIX) ||'|'||
TRIM(LIMIT_SUFFIX) ||'|'||
TRIM(SERIAL_NUMBER) ||'|'|| 
TRIM(FORACID_COLL_VALUE) ||'|'||
TRIM(CC_FINONE_ACCNT) ||'|'||
TRIM(SERIAL_NUMBER) ||'|'||
TRIM(UPLOAD_STATUS) ||'|'||
TRIM(get_param('BANK_ID'))
from COL_IP_RE_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
col_mach_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
col_mach_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/others/COL_MACH.txt
select 
TRIM(COL_TYPE) ||'|'||
TRIM(COL_CODE) ||'|'||
TRIM(CEILING_LIMIT) ||'|'||
TRIM(COL_CLASS) ||'|'||
TRIM(COL_GROUP) ||'|'||
TRIM(MARGIN) ||'|'||
TRIM(LTV_PCNT) ||'|'||
TRIM(DR_ACC_FOR_FEES) ||'|'||
TRIM(STATUS) ||'|'||
TRIM(LAST_VALUATION_DT) ||'|'||
TRIM(REASON_CODE) ||'|'||
TRIM(NATURE_OF_CHARGE) ||'|'||
TRIM(THIRD_PARTY_LIEN_VALUE) ||'|'||
TRIM(DERIVE_VALUE) ||'|'||
TRIM(ASSESSED_VALUE) ||'|'||
TRIM(INVOICE_VALUE) ||'|'||
TRIM(MARKET_VALUE) ||'|'||
TRIM(WRITTEN_DOWN_VALUE) ||'|'||
TRIM(APPORTIONED_VALUE) ||'|'||
TRIM(COLLATERAL_VALUE) ||'|'||
TRIM(MANUFACTURER) ||'|'||
TRIM(MACHINE_NUMBER) ||'|'||
TRIM(REVIEW_DATE) ||'|'||
TRIM(RECEIVED_DATE) ||'|'||
TRIM(DUE_DATE) ||'|'||
TRIM(DATE_OF_PURCHASE) ||'|'||
TRIM(LODGED_DATE) ||'|'||
TRIM(CIF_ID) ||'|'||
TRIM(MODEL) ||'|'||
TRIM(YEAR_OF_MANUFACTURE) ||'|'||
TRIM(NOTES0) ||'|'||
TRIM(INSPECTION_TYPE) ||'|'||
TRIM(ADDRESSLINE_1) ||'|'||
TRIM(ADDRESSLINE_2) ||'|'||
TRIM(CITY_CODE) ||'|'||
TRIM(STATE_CODE) ||'|'||
TRIM(ZIP_CODE) ||'|'||
TRIM(TELEPHONE_NUMBER) ||'|'||
TRIM(DATE_OF_VISIT) ||'|'||
TRIM(DUE_DATE_OF_VISIT) ||'|'||
TRIM(INSPECTED_VALUE) ||'|'||
TRIM(INSPECTED_EMP_ID) ||'|'||
TRIM(NOTES1) ||'|'||
TRIM(NOTES2) ||'|'||
TRIM(INSURANCE_TYPE) ||'|'||
TRIM(INSURER_DETAILS) ||'|'||
TRIM(INSURANCE_POLICY_NUMBER) ||'|'||
TRIM(INSURANCE_POLICY_AMOUNT) ||'|'||
TRIM(RISK_COVER_START_DATE) ||'|'||
TRIM(RISK_COVER_END_DATE) ||'|'||
TRIM(LAST_PREMIUM_PAID_DATE) ||'|'||
TRIM(PREMIUM_AMOUNT) ||'|'||
TRIM(FREQUENCY_OF_THE_STATEMENT) ||'|'||
TRIM(ITEMS_INSURED) ||'|'||
TRIM(NOTES) ||'|'||
TRIM(LINKAGE_TYPE) ||'|'||
TRIM(ACCOUNT_TO_BE_LINKED) ||'|'||
TRIM(LIMIT_PREFIX) ||'|'||
TRIM(LIMIT_SUFFIX) ||'|'||
TRIM(SERIAL_NUMBER) 
from col_mach_o_table;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
col_others_ins_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
col_others_ins_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/others/COL_OTH_INS.txt
select 
TRIM(COL_TYPE) ||'|'||
TRIM(COL_CODE) ||'|'||
TRIM(CEILING_LIMIT) ||'|'||
TRIM(COL_CLASS) ||'|'||
TRIM(COL_GROUP) ||'|'||
TRIM(MARGIN) ||'|'||
TRIM(LTV_PCNT) ||'|'||
TRIM(DR_ACC_FOR_FEES) ||'|'||
TRIM(LAST_VALUATION_DT) ||'|'||
TRIM(REASON_CODE) ||'|'||
TRIM(NATURE_OF_CHARGE) ||'|'||
TRIM(COL_VALUE) ||'|'||
TRIM(REVIEW_DATE) ||'|'||
TRIM(RECEIVED_DATE) ||'|'||
TRIM(DUE_DATE) ||'|'||
TRIM(LODGED_DATE) ||'|'||
TRIM(CIF_ID) ||'|'||
TRIM(NOTES0) ||'|'||
TRIM(INSPECTION_TYPE) ||'|'||
TRIM(ADDRESSLINE_1) ||'|'||
TRIM(ADDRESLINE_2) ||'|'||
TRIM(CITY_CODE) ||'|'||
TRIM(STATE_CODE) ||'|'||
TRIM(ZIP_CODE) ||'|'||
TRIM(TELEPHONE_NUMBER) ||'|'||
TRIM(DATE_OF_VISIT) ||'|'||
TRIM(DUE_DATE_OF_VISIT) ||'|'||
TRIM(INSPECTED_VALUE) ||'|'||
TRIM(INSPECTED_EMP_ID) ||'|'||
TRIM(NOTES1) ||'|'||
TRIM(NOTES2) ||'|'||
TRIM(INSURANCE_TYPE) ||'|'||
TRIM(INSURER_DETAILS) ||'|'||
TRIM(INSURANCE_POLICY_NUMBER) ||'|'||
TRIM(INSURANCE_POLICY_AMOUNT) ||'|'||
TRIM(RISK_COVER_START_DATE) ||'|'||
TRIM(RISK_COVER_END_DATE) ||'|'||
TRIM(LAST_PREMIUM_PAID_DATE) ||'|'||
TRIM(PREMIUM_AMOUNT) ||'|'||
TRIM(FREQUENCY_OF_THE_STATEMENT) ||'|'||
TRIM(ITEMS_INSURED) ||'|'||
TRIM(NOTES) ||'|'||
TRIM(LINKAGE_TYPE) ||'|'||
TRIM(ACCOUNT_TO_BE_LINKED) ||'|'||
TRIM(LIMIT_PREFIX) ||'|'||
TRIM(LIMIT_SUFFIX) ||'|'||
TRIM(SERIAL_NUMBER) 
from col_others_ins_o_table;
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
col_others_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
col_others_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/collateral/COL_OTH.txt
select 
TRIM(COL_TYPE) ||'|'||
TRIM(COL_CODE) ||'|'||
TRIM(CEILING_LIMIT) ||'|'||
TRIM(COL_CLASS) ||'|'||
TRIM(COL_GROUP) ||'|'||
TRIM(LTV_PCNT) ||'|'||
TRIM(DR_ACC_FOR_FEES) ||'|'||
TRIM(LAST_VALUATION_DT) ||'|'||
TRIM(REASON_CODE) ||'|'||
TRIM(NATURE_OF_CHARGE) ||'|'||
TRIM(COL_VALUE) ||'|'||
TRIM(REVIEW_DATE) ||'|'||
TRIM(RECEIVED_DATE) ||'|'||
TRIM(DUE_DATE) ||'|'||
TRIM(LODGED_DATE) ||'|'||
TRIM(CIF_ID) ||'|'||
TRIM(NOTES0) ||'|'||
TRIM(INSPECTION_TYPE) ||'|'||
TRIM(ADDRESSLINE_1) ||'|'||
TRIM(ADDRESLINE_2) ||'|'||
TRIM(CITY_CODE) ||'|'||
TRIM(STATE_CODE) ||'|'||
TRIM(ZIP_CODE) ||'|'||
TRIM(TELEPHONE_NUMBER) ||'|'||
TRIM(DATE_OF_VISIT) ||'|'||
TRIM(DUE_DATE_OF_VISIT) ||'|'||
TRIM(INSPECTED_VALUE) ||'|'||
TRIM(INSPECTED_EMP_ID) ||'|'||
TRIM(NOTES1) ||'|'||
TRIM(NOTES2) ||'|'||
TRIM(INSURANCE_TYPE) ||'|'||
TRIM(INSURER_DETAILS) ||'|'||
TRIM(INSURANCE_POLICY_NUMBER) ||'|'||
TRIM(INSURANCE_POLICY_AMOUNT) ||'|'||
TRIM(RISK_COVER_START_DATE) ||'|'||
TRIM(RISK_COVER_END_DATE) ||'|'||
TRIM(LAST_PREMIUM_PAID_DATE) ||'|'||
TRIM(PREMIUM_AMOUNT) ||'|'||
TRIM(FREQUENCY_OF_THE_STATEMENT) ||'|'||
TRIM(ITEMS_INSURED) ||'|'||
TRIM(NOTES) ||'|'||
TRIM(LINKAGE_TYPE) ||'|'||
TRIM(COLL_STATUS) ||'|'||--COLL_STATUS         
TRIM(ACCOUNT_TO_BE_LINKED) ||'|'||
TRIM(DP_CONTRBTN) ||'|'||--DP_CONTRBTN         
TRIM(MARGIN) ||'|'||
TRIM(LIMIT_PREFIX) ||'|'||
TRIM(LIMIT_SUFFIX) ||'|'||
TRIM(UPLOAD_STATUS) ||'|'||--UPLOAD_STATUS       
TRIM(get_param('BANK_ID')) ||'|'||
TRIM(PRIMARYSECNDRY) ||'|'||--PRIMARYSECNDRY      
TRIM(SERIAL_NUMBER) ||'|'|| 
TRIM(FORACID_COLL_VALUE) ||'|'||--FORACID_COLL_VALUE      
TRIM(SERIAL_NUMBER) ||'|'||  
TRIM(CC_FINONE_ACCNT)--CC_FINONE_ACCNT  
from col_others_o_table;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
col_tradable_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
col_tradable_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/collateral/COL_TRAD.txt
select 
TRIM(COL_TYPE) ||'|'||
TRIM(COL_CODE) ||'|'||
TRIM(CEILING_LIMIT) ||'|'||
TRIM(COL_CLASS) ||'|'||
TRIM(COL_GROUP) ||'|'||
TRIM(MARGIN) ||'|'||
TRIM(LTV_PCNT) ||'|'||
TRIM(DR_ACC_FOR_FEES) ||'|'||
TRIM(LAST_VALUATION_DT) ||'|'||
TRIM(FROM_DISTINCTIVE_NO) ||'|'||
TRIM(TO_DISTINCTIVE_NO) ||'|'||
TRIM(NO_OF_UNITS) ||'|'||
TRIM(UNIT_VALUE) ||'|'||
TRIM(TOTAL_COLLATERAL_VALUE) ||'|'||
TRIM(NOTES) ||'|'||
TRIM(CIF_ID) ||'|'||
TRIM(NATURE_OF_CHARGE) ||'|'||
TRIM(REVIEW_DATE) ||'|'||
TRIM(DUE_DATE) ||'|'||
TRIM(CLIENT_ID) ||'|'||
TRIM(DP_ID) ||'|'||
TRIM(HOLDING_PATTERN) ||'|'||
TRIM(WITHDRAW) ||'|'||
TRIM(DEL) ||'|'||
TRIM(REASON_CODE) ||'|'||
TRIM(BROKER_NAME) ||'|'||
TRIM(SENT_FOR_SALE_ON) ||'|'||
TRIM(SALES_REVIEW_DATE) ||'|'||--SALES_REVIEW_DATE
TRIM(SALES_DUE_DATE) ||'|'||--SALES_DUE_DATE
TRIM(EXPECTED_MIN_PRICE) ||'|'||
TRIM(PROCEEDS_RECEIVED_ON) ||'|'||
TRIM(SALES_PROCEEDS_RECEIVED) ||'|'||
TRIM(STOCK_EXCHANGE) ||'|'||
TRIM(NOTES_1) ||'|'||
TRIM(NOTES_2) ||'|'||
TRIM(COLLATERAL_STATUS) ||'|'||--COLLATERAL_STATUS
TRIM(LINKAGE_TYPE) ||'|'||
TRIM(ACCOUNT_TO_BE_LINKED) ||'|'||
TRIM(LIMIT_PREFIX) ||'|'||
TRIM(LIMIT_SUFFIX) ||'|'||
TRIM(SERIAL_NUMBER) ||'|'||  
TRIM(FORACID_COLL_VALUE) ||'|'||--FORACID_COLL_VALUE
TRIM(CC_FINONE_ACCNT) ||'|'||--CC_FINONE_ACCNT
TRIM(SERIAL_NUMBER) ||'|'||  
TRIM(UPLOAD_STATUS) ||'|'||  
TRIM(get_param('BANK_ID'))
from COL_TRADEABLE_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
contact_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
contact_spool_kw.sql 
-- File Name                       : Contacts.sql
-- File Created for            : Spooling
-- Created By                     : Jagadeesh M
-- Client                                    : ABK Kuwait
-- Created On                    : 30-04-2017
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1100
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifkw/CON001.txt
select
trim(CONTACTID                    )||'|'||
trim(BANK_ID                      )||'|'||
trim(ENABLE_ALERTS                )||'|'||
trim(DEFAULTCHANNEL_ALERT         )||'|'||
trim(PREFERRED_MOBILE_ALERT_NO    )||'|'||
trim(PREFERRED_MOBILE_ALERT_TYPE  )||'|'||
trim(UNIQUEIDNUMBER               )||'|'||
trim(SENCITIZENCONVERSIONFLAG     )||'|'||
trim(SENCITIZENAPPLICABLEDATE     )||'|'||
trim(SENIORCITIZEN                )||'|'||
trim(NAME_ALT1                    )||'|'||
trim(CONTACT_LAST_NAME_ALT1       )||'|'||
trim(CONTACT_FIRST_NAME_ALT1      )||'|'||
trim(CONTACT_MIDDLE_NAME_ALT1     )||'|'||
trim(CREATEDBYSYSTEMID            )||'|'||
trim(MODIFIEDBYSYSTEMID           )||'|'||
trim(CONTACTSKEY                  )||'|'||
trim(ORGKEY                       )||'|'||
trim(ORGID                        )||'|'||
trim(PREFERREDCHANNELID           )||'|'||
trim(CONTACTTYPE                  )||'|'||
trim(IDTYPER1                     )||'|'||
trim(IDTYPER2                     )||'|'||
trim(IDTYPER3                     )||'|'||
trim(IDTYPER4                     )||'|'||
trim(IDTYPER5                     )||'|'||
trim(NAT_ID_CARD_NUM              )||'|'||
trim(SALUTATION                   )||'|'||
trim(CONTACT_LAST_NAME            )||'|'||
trim(CONTACT_FIRST_NAME           )||'|'||
trim(CONTACT_MIDDLE_NAME          )||'|'||
trim(BIRTH_DAY                    )||'|'||
trim(BIRTH_MONTH                  )||'|'||
trim(BIRTH_YEAR                   )||'|'||
trim(CONTACT_DOB                  )||'|'||
trim(GENDER                       )||'|'||
trim(PHONE_HOME1                  )||'|'||
trim(PHONE_HOME2                  )||'|'||
trim(PHONE_WORK                   )||'|'||
trim(EXTN                         )||'|'||
trim(PHONE_CELL                   )||'|'||
trim(FAX_HOME                     )||'|'||
trim(FAX_WORK                     )||'|'||
trim(EMAIL_HOME                   )||'|'||
trim(EMAIL_WORK                   )||'|'||
trim(EMAIL_PALM                   )||'|'||
trim(CITY                         )||'|'||
trim(PAN                          )||'|'||
trim(PASSPORTNO                   )||'|'||
trim(LICENCENO                    )||'|'||
trim(CIN                          )||'|'||
trim(EDUCATION                    )||'|'||
trim(CONTACT_LANGUAGE             )||'|'||
trim(CONTACT_STAFF_STATUS         )||'|'||
trim(PERSONTYPE                   )||'|'||
trim(OCCUPATION                   )||'|'||
trim(DESIGNATION                  )||'|'||
trim(ASSISTANT                    )||'|'||
trim(MANAGER                      )||'|'||
trim(ISCUSTOMER                   )||'|'||
trim(NOTES                        )||'|'||
trim(CREATEDUSERID                )||'|'||
trim(OWNEDUSERID                  )||'|'||
trim(XMLDATA                      )||'|'||
trim(EXTENSIONID                  )||'|'||
trim(CONTACTNREFLG                )||'|'||
trim(CONTACTMINOR                 )||'|'||
trim(COMBINEDSTATEMENTFLG         )||'|'||
trim(CONTACTTRADE                 )||'|'||
trim(STAFFEMPLOYEEID              )||'|'||
trim(RELATIONSHIPFIELD1           )||'|'||
trim(RELATIONSHIPFIELD2           )||'|'||
trim(RELATIONSHIPFIELD3           )||'|'||
trim(RELATIONSHIPOFFER1           )||'|'||
trim(RELATIONSHIPOFFER2           )||'|'||
trim(DELINQUENCYFLG               )||'|'||
trim(CREDITBUREAUSCOREVALIDITY    )||'|'||
trim(CREDITBUREAUSCORE            )||'|'||
trim(CREDITBUREAUREQUESTDATE      )||'|'||
trim(CREDITBUREAUDESCRIPTION      )||'|'||
trim(MAIDENNAMEOFMOTHER           )||'|'||
trim(ANNUALREVENUE                )||'|'||
trim(REVENUEUNITS                 )||'|'||
trim(TICKERSYMBOL                 )||'|'||
trim(AUTOAPPROVAL                 )||'|'||
trim(CATEGORY                     )||'|'||
trim(NUMBEROFPRODUCTS             )||'|'||
trim(RELATIONSHIPMGRID            )||'|'||
trim(RELATIONSHIPCREATEDBYID      )||'|'||
trim(FUTUREPROCESS                )||'|'||
trim(INTWFID                      )||'|'||
trim(URL                          )||'|'||
trim(STATUS                       )||'|'||
trim(INDUSTRY                     )||'|'||
trim(COMPETITOR                   )||'|'||
trim(CUSTOMERRELATIONSHIPNO       )||'|'||
trim(FREEZEPRODUCTSALE            )||'|'||
trim(INTERNALSCORE                )||'|'||
trim(RATING                       )||'|'||
trim(REGION                       )||'|'||
trim(RELATIONSHIPOPENINGDATE      )||'|'||
trim(RELATIONSHIPVALUE            )||'|'||
trim(SICCODE                      )||'|'||
trim(PLACEOFBIRTH                 )||'|'||
trim(COUNTRYOFBIRTH               )||'|'||
trim(PROOFOFAGEFLAG               )||'|'||
trim(PROOFOFAGEDOCUMENT           )||'|'||
trim(STAFFFLAG                    )||'|'||
trim(NAMESUFFIX                   )||'|'||
trim(MAIDENNAME                   )||'|'||
trim(HOUSEHOLDID                  )||'|'||
trim(CURRENTCREXPOSURE            )||'|'||
trim(TOTALCREXPOSURE              )||'|'||
trim(POTENTIALCRLINE              )||'|'||
trim(AVAILABLECRLIMIT             )||'|'||
trim(CREDITSCOREREQUESTEDFLAG     )||'|'||
trim(CREDITHISTORYREQUESTEDFLAG   )||'|'||
trim(SSN                          )||'|'||
trim(STRFIELD1                    )||'|'||
trim(STRFIELD2                    )||'|'||
trim(STRFIELD3                    )||'|'||
trim(STRFIELD4                    )||'|'||
trim(STRFIELD5                    )||'|'||
trim(STRFIELD6                    )||'|'||
trim(STRFIELD7                    )||'|'||
trim(STRFIELD8                    )||'|'||
trim(STRFIELD9                    )||'|'||
trim(STRFIELD10                   )||'|'||
trim(STRFIELD11                   )||'|'||
trim(STRFIELD12                   )||'|'||
trim(STRFIELD13                   )||'|'||
trim(STRFIELD14                   )||'|'||
trim(STRFIELD15                   )||'|'||
trim(DTDATE1                      )||'|'||
trim(DTDATE2                      )||'|'||
trim(DTDATE3                      )||'|'||
trim(DTDATE4                      )||'|'||
trim(DTDATE5                      )||'|'||
trim(DTDATE6                      )||'|'||
trim(DTDATE7                      )||'|'||
trim(DTDATE8                      )||'|'||
trim(DTDATE9                      )||'|'||
trim(AMOUNT1                      )||'|'||
trim(AMOUNT2                      )||'|'||
trim(AMOUNT3                      )||'|'||
trim(AMOUNT4                      )||'|'||
trim(AMOUNT5                      )||'|'||
trim(FLG1                         )||'|'||
trim(FLG2                         )||'|'||
trim(FLG3                         )||'|'||
trim(ALERT1                       )||'|'||
trim(ALERT2                       )||'|'||
trim(ALERT3                       )||'|'||
trim(USERFLAG1                    )||'|'||
trim(USERFLAG2                    )||'|'||
trim(USERFLAG3                    )||'|'||
trim(USERFLAG4                    )||'|'||
trim(MLUSERFIELD1                 )||'|'||
trim(MLUSERFIELD2                 )||'|'||
trim(MLUSERFIELD3                 )||'|'||
trim(MLUSERFIELD4                 )||'|'||
trim(MLUSERFIELD5                 )||'|'||
trim(MLUSERFIELD6                 )||'|'||
trim(MLUSERFIELD7                 )||'|'||
trim(MLUSERFIELD8                 )||'|'||
trim(MLUSERFIELD9                 )||'|'||
trim(MLUSERFIELD10                )||'|'||
trim(MLUSERFIELD11                )||'|'||
trim(DATEOFBECOMINGNRE            )||'|'||
trim(BODATECREATED                )||'|'||
trim(BOCREATEDBY                  )||'|'||
trim(BODATEMODIFIED               )||'|'||
trim(BOMODIFIEDBY                 )||'|'||
trim(CONCURDETECT_X               )||'|'||
trim(BOACLID                      )||'|'||
trim(GOLDMINEKEY                  )||'|'||
trim(SECURITYILHINT               )||'|'||
trim(SECURITYIUHINT               )||'|'||
trim(SECURITYGLHINT               )||'|'||
trim(SECURITYGUHINT               )||'|'||
trim(CREATED_FROM                 )||'|'||
trim(CONSTITUTION_CODE            )||'|'||
trim(STRFIELD16                   )||'|'||
trim(STRFIELD17                   )||'|'||
trim(STRFIELD18                   )||'|'||
trim(STRFIELD19                   )||'|'||
trim(STRFIELD20                   )||'|'||
trim(STRFIELD21                   )||'|'||
trim(STRFIELD22                   )||'|'||
trim(AMOUNT6                      )||'|'||
trim(AMOUNT7                      )||'|'||
trim(AMOUNT8                      )||'|'||
trim(AMOUNT9                      )||'|'||
trim(AMOUNT10                     )||'|'||
trim(AMOUNT11                     )||'|'||
trim(AMOUNT12                     )||'|'||
trim(INTFIELD1                    )||'|'||
trim(INTFIELD2                    )||'|'||
trim(INTFIELD3                    )||'|'||
trim(INTFIELD4                    )||'|'||
trim(INTFIELD5                    )||'|'||
trim(ASSIGNEDTO                   )||'|'||
trim(RECORDSTATUS                 )||'|'||
trim(PROCESSID                    )||'|'||
trim(CURRENTSTEP                  )||'|'||
trim(PROCESSSTATUS                )||'|'||
trim(BLACKLISTED                  )||'|'||
trim(NEGATED                      )||'|'||
trim(SUSPENDED                    )||'|'||
trim(PREFERREDNAME                )||'|'||
trim(BLACKLIST_NOTES              )||'|'||
trim(BLACKLIST_REASON             )||'|'||
trim(NEGATED_NOTES                )||'|'||
trim(NEGATED_REASON               )||'|'||
trim(DOCUMENT_RECEIVED            )||'|'||
trim(SEGMENTATION_CLASS           )||'|'||
trim(CURRSTEPDUEDATE              )||'|'||
trim(STARTDATE                    )||'|'||
trim(STAGENAME                    )||'|'||
trim(ASSIGNEDTOGROUP              )||'|'||
trim(ADD1_FIRST_NAME              )||'|'||
trim(ADD1_MIDDLE_NAME             )||'|'||
trim(ADD1_LAST_NAME               )||'|'||
trim(ADD2_FIRST_NAME              )||'|'||
trim(ADD2_MIDDLE_NAME             )||'|'||
trim(ADD2_LAST_NAME               )||'|'||
trim(ADD3_FIRST_NAME              )||'|'||
trim(ADD3_MIDDLE_NAME             )||'|'||
trim(ADD3_LAST_NAME               )||'|'||
trim(ADD4_FIRST_NAME              )||'|'||
trim(ADD4_MIDDLE_NAME             )||'|'||
trim(ADD4_LAST_NAME               )||'|'||
trim(ADD5_FIRST_NAME              )||'|'||
trim(ADD5_MIDDLE_NAME             )||'|'||
trim(ADD5_LAST_NAME               )||'|'||
trim(DUAL_FIRST_NAME              )||'|'||
trim(DUAL_MIDDLE_NAME             )||'|'||
trim(DUAL_LAST_NAME               )||'|'||
trim(CONVFLAG                     )||'|'||
trim(CONVDATE                     )||'|'||
trim(NEWENTITYID                  )||'|'||
trim(INCREMENTALDATE              )||'|'||
trim(PROCESSGROUPID               )||'|'||
trim(ASSIGNEDBYUSERID             )||'|'||
trim(TRANSFERREDBYUSERID          )||'|'||
trim(PREVSTEPENDDATE              )||'|'||
trim(FIRST_PRODUCT_PROCESSOR      )||'|'||
trim(INTERFACE_REFERENCE_ID       )||'|'||
trim(HOUSEHOLDNAME                )||'|'||
trim(HSHLDUFLAG                   )||'|'||
trim(CORPREPCOUNT                 )||'|'||
trim(ISCORPREP                    )||'|'||
trim(CONTACT_FIRST_NAME_NATIVE    )||'|'||
trim(CONTACT_MIDDLE_NAME_NATIVE   )||'|'||
trim(CONTACT_LAST_NAME_NATIVE     )||'|'||
trim(CONTACT_FIRST_NAME_NATIVE1   )||'|'||
trim(CONTACT_MIDDLE_NAME_NATIVE1  )||'|'||
trim(CONTACT_LAST_NAME_NATIVE1    )||'|'||
trim(SECONDARYRM_ID               )||'|'||
trim(ISEBANKINGENABLED            )||'|'||
trim(ISSMSBANKINGENABLED          )||'|'||
trim(TERTIARYRM_ID                )||'|'||
trim(SUBSEGMENT                   )||'|'||
trim(ISWAPBANKINGENABLED          )||'|'||
trim(SMSBANKINGMOBILENUMBER       )||'|'||
trim(ACCESSOWNERGROUP             )||'|'||
trim(ACCESSOWNERSEGMENT           )||'|'||
trim(ACCESSOWNERBC                )||'|'||
trim(ACCESSOWNERAGENT             )||'|'||
trim(ACCESSASSIGNEEAGENT          )||'|'||
trim(TABVALIDATOR                 )||'|'||
trim(LASTEDITEDPAGE               )||'|'||
trim(CHARGELEVELCODE              )||'|'||
trim(SEGUPDATEDATE                )||'|'||
trim(INTUSERFIELD1                )||'|'||
trim(INTUSERFIELD2                )||'|'||
trim(INTUSERFIELD3                )||'|'||
trim(INTUSERFIELD4                )||'|'||
trim(INTUSERFIELD5                )||'|'||
trim(STRUSERFIELD1                )||'|'||
trim(STRUSERFIELD2                )||'|'||
trim(STRUSERFIELD3                )||'|'||
trim(STRUSERFIELD4                )||'|'||
trim(STRUSERFIELD5                )||'|'||
trim(STRUSERFIELD6                )||'|'||
trim(STRUSERFIELD7                )||'|'||
trim(STRUSERFIELD8                )||'|'||
trim(STRUSERFIELD9                )||'|'||
trim(STRUSERFIELD10               )||'|'||
trim(STRUSERFIELD11               )||'|'||
trim(STRUSERFIELD12               )||'|'||
trim(STRUSERFIELD13               )||'|'||
trim(STRUSERFIELD14               )||'|'||
trim(STRUSERFIELD15               )||'|'||
trim(STRUSERFIELD16               )||'|'||
trim(STRUSERFIELD17               )||'|'||
trim(STRUSERFIELD18               )||'|'||
trim(STRUSERFIELD19               )||'|'||
trim(STRUSERFIELD20               )||'|'||
trim(STRUSERFIELD21               )||'|'||
trim(STRUSERFIELD22               )||'|'||
trim(STRUSERFIELD23               )||'|'||
trim(STRUSERFIELD24               )||'|'||
trim(STRUSERFIELD25               )||'|'||
trim(STRUSERFIELD26               )||'|'||
trim(STRUSERFIELD27               )||'|'||
trim(STRUSERFIELD28               )||'|'||
trim(STRUSERFIELD29               )||'|'||
trim(STRUSERFIELD30               )||'|'||
trim(DATEUSERFIELD1               )||'|'||
trim(DATEUSERFIELD2               )||'|'||
trim(DATEUSERFIELD3               )||'|'||
trim(DATEUSERFIELD4               )||'|'||
trim(DATEUSERFIELD5               )||'|'||
trim(LASTOPERPERFORMED            )||'|'||
trim(ISTAMPERED                   )||'|'||
trim(CHECKSUM                     )||'|'||
trim(ASSIGNEDLOCATIONID           )||'|'||
trim(OWNEDLOCATIONID              )||'|'||
trim(ISROUTED                     )||'|'||
trim(ESC_DUE_TIME                 )||'|'||
trim(ESC_LEVEL                    )||'|'||
trim(CREATEDLOCATIONID            )||'|'||
trim(EDITEDLOCATIONID             )||'|'||
trim(NOCURSTEPASSIGN              )||'|'||
trim(ROUTEDTIME                   )||'|'||
trim(PROCESCDUETIME               )||'|'||
trim(STOPESCALATION               )||'|'||
trim(FIRSTGRASSIGNOWNID           )||'|'||
trim(FIRSTBCASSIGNOWNID           )||'|'||
trim(FIRSTUSERASSIGNOWNID         )||'|'||
trim(CURRNUMPOSESC                )||'|'||
trim(CURRNUMNEGESC                )||'|'||
trim(NUMOFPOSESC                  )||'|'||
trim(NUMOFNEGESC                  )||'|'||
trim(PROCESCLEVEL                 )||'|'||
trim(MANUALROUTING                )||'|'||
trim(SLALEVEL                     )||'|'||
trim(ROUTERULENUM                 )||'|'||
trim(ESCRULENUM                   )||'|'||
trim(ESCALATIONATTR1              )||'|'||
trim(ESCALATIONATTR2              )||'|'||
trim(ESCALATIONATTR3              )||'|'||
trim(OWNERGROUP                   )||'|'||
trim(ROUTERULEFORGROUP            )||'|'||
trim(ROUTERULEFORBC               )||'|'||
trim(ROUTERULEFORUSER             )||'|'||
trim(TATDURATION                  )||'|'||
trim(STOPPROCESCALATION           )||'|'||
trim(DUEDATE                      )||'|'||
trim(NATIVELANGCODE               )||'|'||
trim(CONT_HLTH                    )||'|'||
trim(CONT_SWIFT_CODE_DESC         )||'|'||
trim(ENTITY_CRE_FLAG              )||'|'||
trim(LASTSUBMITTEDDATE            )||'|'||
trim(RISK_PROFILE_SCORE           )||'|'||
trim(RISK_PROFILE_EXPIRY_DATE     )||'|'||
trim(ISMCEDITED                   )||'|'||
trim(PREFERREDADDRESSTYPE         )||'|'||
trim(PREFERREDPHONETYPE           )||'|'||
trim(PREFERREDEMAILTYPE           )||'|'||
trim(PREFERREDPHONE               )||'|'||
trim(PREFERREDEMAIL               )||'|'||
trim(NAME                         )||'|'||
trim(UNIQUEID                     )||'|'||
trim(UNIQUEIDTYPE                 )||'|'||
trim(PRIMARYSOLID                 )||'|'||
trim(TMDATE                       )
from CONTACTS_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
contra_rev.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
contra_rev.sql 
-- File Name		: spool TTUM2
-- File Created for	: Creation of source table
-- Created By		: Alavudeen B.S
-- Client		: EmiratesNBD Bank
-- Created On		: 01-06-2014
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ttum/contra_rev.txt
select Account_Number||
		Currency_Code||
		SOL_ID||
		Part_Tran_Type||
		Transaction_Amount||
		Transaction_Particular||
		Account_Report_Code||
		Reference_Number||
		Instrument_Type||
		Instrument_Date||
		Instrument_Alpha||
		Actual_Instrument_Number||
		Navigation_Flag_For_HO_Trans||
		Reference_Amount||
		Reference_Currency_Code||
		Rate_Code||
		Rate||
		Value_date||
		GL_date||
		Category_Code||
		To__From_Bank_Code||
		To__From_Branch_Code||
		Advc_Extension_Counter_Code||
		BAR_Advice_Gen_Indicator||
		BAR_Advice_Number||
		BAR_Advice_Date||
		Bill_Number||
		Header_Text_Code||
		Header_Free_Text||
		Particulars_Line_1||
		Particulars_Line_2||
		Particulars_Line_3||
		Particulars_Line_4||
		Particulars_Line_5||
		Amount_Line_1||
		Amount_Line_2||
		Amount_Line_3||
		Amount_Line_4||
		Amount_Line_5||
		Remarks||
		Payee_Account_Number||
		Received_BAR_Advice_Number||
		Received_BAR_Advice_Date||
		Original_Transaction_Date||
		Original_Transaction_ID||
		Original_Part_Txn_Serial_No||
		IBAN_Number||
		Free_text||
		Entity_ID||
		Entity_Type||
		Flow_ID
from temp order by sol_id,currency_code,part_tran_type asc;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core01_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core01_spool_kw.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 5000 
set page size 0
set pages 0
#set trimspool on
set trimspool on
spool $MIG_PATH/output/finacle/core/KW/CORE001.txt
select Account_Number||With_holding_tax_flg||With_holding_tax_Amt_scope_flg||With_holding_tax_percent||
With_holding_tax_floor_limit||CIF_ID||Customer_Cr_Pref_Percent||Customer_Dr_Pref_Percent||Account_Cr_Pref_Percent||
Account_Dr_Pref_Percent||Channel_Cr_Pref||Channel_Dr_Pref||Pegged_Flag||Peg_Frequency_in_Mnth||Peg_Frequency_in_Days||Int_freq_type_Credit||
Int_freq_week_num_Credit||Int_freq_week_day_Credit||Int_freq_start_dd_Credit||Int_freq_hldy_stat_Credit||Next_Cr_interest_run_date||Int_freq_type_Debit||
Int_freq_week_num_Debit||Int_freq_week_day_Debit||Int_freq_start_dd_Debit||Int_freq_hldy_stat_Debit||Next_Debit_interest_run_dt||Ledger_Number||
Employee_Id||Account_Open_Date||Mode_of_Operation_Code||Gl_Sub_Head_Code||Scheme_Code||Cheque_Allowed_Flag||Pass_Book_Pass_Sheet_Code||Freeze_Code||
Freeze_Reason_Code||Free_Text||Account_Dormant_Flag||Free_Code_1||Free_Code_2||Free_Code_3||Free_Code_4||Free_Code_5||Free_Code_6||Free_Code_7||Free_Code_8||
Free_Code_9||Free_Code_10||Interest_Table_Code||Account_Location_Code||Currency_Code||Service_Outlet||Account_Mgr_User_Id||Account_Name||Swift_Allowed_Flg||
Last_Transaction_Date||Last_Transaction_any_date||Exclude_for_combined_statement||Statement_CIF_ID||charge_Level_Code||PBF_download_Flag||wtax_level_flg||
Sanction_Limit||Drawing_Power||DACC_ABSOLUTE_LIMIT||DACC_PERCENT_LIMIT||Maximum_Allowed_Limit||Health_Code||Sanction_Level_Code||Sanction_Reference_Number||
Limit_Sanction_Date||Limit_Expiring_Date||Account_Review_Date||Loan_Paper_Date||Sanction_Authority_Code||Last_Compound_date||Daily_compounding_of_int_flag||
Comp_rest_day_flag||Use_discount_rate_flg||Dummy||Account_status_date||Iban_number||Ias_code||channel_id||channel_level_code||int_suspense_amt||
penal_int_suspense_amt||chrge_off_flg||pd_flg||pd_xfer_date||chrge_off_date||chrge_off_principal||pending_interest||principal_recovery||interest_recovery||
charge_off_type||Master_acct_num||ps_diff_freq_rel_party_flg||swift_diff_freq_rel_party_flg||Address_Type||Phone_Type||Email_Type||Alternate_Account_Name||
Interest_Rate_Period_Months||Interest_Rate_Period_Days||Interpolation_Method||Is_Account_hedged_Flag|| Used_for_netting_off_flag||Security_Indicator||Debt_Security||
Security_Code||Debit_int_Method||Service_Chrge_Coll_Flg||Last_Purge_Date||Total_Profit_Amt||  Min_Age_Not_Met_Amt||Br_Per_Prof_Paid_Flg||
Br_Per_Prof_Paid_Amt||Prof_To_Be_Recovered||Prof_Distr_Upto_Date||Nxt_Profit_Distr_Date||unclaim_status||unclaim_status_date||orig_gl_sub_head_code 
from AC1SBCA_O_TABLE
--this works for full spool as well for incremental spool if needed. 
left join (select foracid from tbaadm.gam where bank_id=get_param('BANK_ID')) gam on foracid = trim(account_number)
where  foracid is null
ORDER BY TO_NUMBER(TRIM(Service_Outlet)); 
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core01_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core01_spool_uae.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 5000 
set page size 0
set pages 0
#set trimspool on
set trimspool on
spool $MIG_PATH/output/finacle/core/UAE/CORE001.txt
select Account_Number||With_holding_tax_flg||With_holding_tax_Amt_scope_flg||With_holding_tax_percent||
With_holding_tax_floor_limit||CIF_ID||Customer_Cr_Pref_Percent||Customer_Dr_Pref_Percent||Account_Cr_Pref_Percent||
Account_Dr_Pref_Percent||Channel_Cr_Pref||Channel_Dr_Pref||Pegged_Flag||Peg_Frequency_in_Mnth||Peg_Frequency_in_Days||Int_freq_type_Credit||
Int_freq_week_num_Credit||Int_freq_week_day_Credit||Int_freq_start_dd_Credit||Int_freq_hldy_stat_Credit||Next_Cr_interest_run_date||Int_freq_type_Debit||
Int_freq_week_num_Debit||Int_freq_week_day_Debit||Int_freq_start_dd_Debit||Int_freq_hldy_stat_Debit||Next_Debit_interest_run_dt||Ledger_Number||
Employee_Id||Account_Open_Date||Mode_of_Operation_Code||Gl_Sub_Head_Code||Scheme_Code||Cheque_Allowed_Flag||Pass_Book_Pass_Sheet_Code||Freeze_Code||
Freeze_Reason_Code||Free_Text||Account_Dormant_Flag||Free_Code_1||Free_Code_2||Free_Code_3||Free_Code_4||Free_Code_5||Free_Code_6||Free_Code_7||Free_Code_8||
Free_Code_9||Free_Code_10||Interest_Table_Code||Account_Location_Code||Currency_Code||Service_Outlet||Account_Mgr_User_Id||Account_Name||Swift_Allowed_Flg||
Last_Transaction_Date||Last_Transaction_any_date||Exclude_for_combined_statement||Statement_CIF_ID||charge_Level_Code||PBF_download_Flag||wtax_level_flg||
Sanction_Limit||Drawing_Power||DACC_ABSOLUTE_LIMIT||DACC_PERCENT_LIMIT||Maximum_Allowed_Limit||Health_Code||Sanction_Level_Code||Sanction_Reference_Number||
Limit_Sanction_Date||Limit_Expiring_Date||Account_Review_Date||Loan_Paper_Date||Sanction_Authority_Code||Last_Compound_date||Daily_compounding_of_int_flag||
Comp_rest_day_flag||Use_discount_rate_flg||Dummy||Account_status_date||Iban_number||Ias_code||channel_id||channel_level_code||int_suspense_amt||
penal_int_suspense_amt||chrge_off_flg||pd_flg||pd_xfer_date||chrge_off_date||chrge_off_principal||pending_interest||principal_recovery||interest_recovery||
charge_off_type||Master_acct_num||ps_diff_freq_rel_party_flg||swift_diff_freq_rel_party_flg||Address_Type||Phone_Type||Email_Type||Alternate_Account_Name||
Interest_Rate_Period_Months||Interest_Rate_Period_Days||Interpolation_Method||Is_Account_hedged_Flag|| Used_for_netting_off_flag||Security_Indicator||Debt_Security||
Security_Code||Debit_int_Method||Service_Chrge_Coll_Flg||Last_Purge_Date||Total_Profit_Amt||  Min_Age_Not_Met_Amt||Br_Per_Prof_Paid_Flg||
Br_Per_Prof_Paid_Amt||Prof_To_Be_Recovered||Prof_Distr_Upto_Date||Nxt_Profit_Distr_Date||unclaim_status||unclaim_status_date||orig_gl_sub_head_code 
from AC1SBCA_O_TABLE
--this works for full spool as well for incremental spool if needed. 
left join (select foracid from tbaadm.gam where bank_id=get_param('BANK_ID')) gam on foracid = trim(account_number)
where  foracid is null
ORDER BY TO_NUMBER(TRIM(Service_Outlet)); 
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core02_spool_oda_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core02_spool_oda_kw.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
--------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/KW/CORE002_ODA.txt
select 
Account_Number||
With_holding_tax_flg||
With_holding_tax_Amt_scope_flg||
With_holding_tax_percent||
With_holding_tax_floor_limit||
CIF_ID||
Customer_Cr_Pref_Percent||
Customer_Dr_Pref_Percent||
Account_Cr_Pref_Percent||
Account_Dr_Pref_Percent||
Channel_Cr_Pref||
Channel_Dr_Pref||
Pegged_Flag||
Peg_Frequency_in_Mnth||
Peg_Frequency_in_Days||
Int_freq_type_Credit||
Int_freq_week_num_Credit||
Int_freq_week_day_Credit||
Int_freq_start_dd_Credit||
Int_freq_hldy_stat_Credit||
Next_Cr_interest_run_date||
Int_freq_type_Debit||
Int_freq_week_num_Debit||
Int_freq_week_day_Debit||
Int_freq_start_dd_Debit||
Int_freq_hldy_stat_Debit||
Next_Debit_interest_run_dt||
Ledger_Number||
Employee_Id||
Account_Open_Date||
Mode_of_Operation_Code||
Gl_Sub_Head_Code||
Scheme_Code||
Cheque_Allowed_Flag||
Pass_Book_Pass_Sheet_Code||
Freeze_Code||
Freeze_Reason_Code||
Free_Text||
Account_Dormant_Flag||
Free_Code_1||
Free_Code_2||
Free_Code_3||
Free_Code_4||
Free_Code_5||
Free_Code_6||
Free_Code_7||
Free_Code_8||
Free_Code_9||
Free_Code_10||
Interest_Table_Code||
Account_Location_Code||
Currency_Code||
Service_Outlet||
Account_Mgr_User_Id||
Account_Name||
Swift_Allowed_Flg||
Last_Transaction_Date||
Last_Transaction_any_date||
Exclude_for_combined_statement||
Statement_CIF_ID||
charge_Level_Code||
PBF_download_Flag||
wtax_level_flg||
Sector_Code||
Sub_Sector_Code||
Purpose_of_Advn_Code||
Nature_Of_Advn_Code||
Industry_Type_Code||
Debit_Interest_Account_flg||
Debit_Interest_Account||
Sanction_Limit||
Drawing_Power||
DACC_ABSOLUTE_LIMIT||
DACC_PERCENT_LIMIT||
Maximum_Allowed_Limit||
Health_Code||
Sanction_Level_Code||
Sanction_Reference_Number||
Limit_Sanction_Date||
Limit_Expiring_Date||
Account_Review_Date||
Loan_Paper_Date||
Sanction_Authority_Code||
ECGC_Applicable_Flag||
ECGC_Account||
Due_Date||
RPC_Account_Flag||
Disbursement_Indicator||
Last_Compound_date||
Daily_compounding_of_int_flg||
Comp_rest_day_flag||
Use_discount_rate_flg||
Dummy||
Account_Status_Date||
Iban_number||
Ias_code||
Channel_id||
Channel_level_code||
int_suspense_amt||
penal_int_suspense_amt||
chrge_off_flg||
pd_flg||
pd_xfer_date||
chrge_off_date||
chrge_off_principal||
pending_interest||
principal_recovery||
interest_recovery||
charge_off_type||
master_acct_num||
penal_prod_mthd_flg||
penal_rate_mthd_flg||
waive_min_coll_int||
rule_code||
ps_diff_freq_rel_party_flg||
swift_diff_freq_rel_party_flg||
Address_Type||
Phone_Type||
Email_Type||
accrued_penal_int_recovery||
penal_int_recovery||
coll_int_recovery||
coll_penal_int_recovery||
pending_penal_interest||
pending_penal_booked_interest||
int_rate_prd_in_months ||
int_rate_prd_in_days||
penal_int_tbl_code||
penal_pref_pcnt||
interpolation_method||
Is_account_hedged_flag||
used_for_netting_of_flag||
Alternate_account_name||
Security_Indicator||
Debt_seniority||
Security_Code||
Debit_int_Method||
Service_Chrge_Coll_Flg||
Last_Purge_Date
from AC1ODCC_O_TABLE WHERE  TRIM(SCHEME_CODE) <> 'LDADV';
--this works for full spool as well for incremental spool if needed. 
--left join (select foracid from tbaadm.gam where bank_id=get_param('BANK_ID')) gam on foracid = trim(account_number)
--where foracid is null; 
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core02_spool_oda_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core02_spool_oda_uae.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
--------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/UAE/CORE002_ODA.txt
select 
Account_Number||
With_holding_tax_flg||
With_holding_tax_Amt_scope_flg||
With_holding_tax_percent||
With_holding_tax_floor_limit||
CIF_ID||
Customer_Cr_Pref_Percent||
Customer_Dr_Pref_Percent||
Account_Cr_Pref_Percent||
Account_Dr_Pref_Percent||
Channel_Cr_Pref||
Channel_Dr_Pref||
Pegged_Flag||
Peg_Frequency_in_Mnth||
Peg_Frequency_in_Days||
Int_freq_type_Credit||
Int_freq_week_num_Credit||
Int_freq_week_day_Credit||
Int_freq_start_dd_Credit||
Int_freq_hldy_stat_Credit||
Next_Cr_interest_run_date||
Int_freq_type_Debit||
Int_freq_week_num_Debit||
Int_freq_week_day_Debit||
Int_freq_start_dd_Debit||
Int_freq_hldy_stat_Debit||
Next_Debit_interest_run_dt||
Ledger_Number||
Employee_Id||
Account_Open_Date||
Mode_of_Operation_Code||
Gl_Sub_Head_Code||
Scheme_Code||
Cheque_Allowed_Flag||
Pass_Book_Pass_Sheet_Code||
Freeze_Code||
Freeze_Reason_Code||
Free_Text||
Account_Dormant_Flag||
Free_Code_1||
Free_Code_2||
Free_Code_3||
Free_Code_4||
Free_Code_5||
Free_Code_6||
Free_Code_7||
Free_Code_8||
Free_Code_9||
Free_Code_10||
Interest_Table_Code||
Account_Location_Code||
Currency_Code||
Service_Outlet||
Account_Mgr_User_Id||
Account_Name||
Swift_Allowed_Flg||
Last_Transaction_Date||
Last_Transaction_any_date||
Exclude_for_combined_statement||
Statement_CIF_ID||
charge_Level_Code||
PBF_download_Flag||
wtax_level_flg||
Sector_Code||
Sub_Sector_Code||
Purpose_of_Advn_Code||
Nature_Of_Advn_Code||
Industry_Type_Code||
Debit_Interest_Account_flg||
Debit_Interest_Account||
Sanction_Limit||
Drawing_Power||
DACC_ABSOLUTE_LIMIT||
DACC_PERCENT_LIMIT||
Maximum_Allowed_Limit||
Health_Code||
Sanction_Level_Code||
Sanction_Reference_Number||
Limit_Sanction_Date||
Limit_Expiring_Date||
Account_Review_Date||
Loan_Paper_Date||
Sanction_Authority_Code||
ECGC_Applicable_Flag||
ECGC_Account||
Due_Date||
RPC_Account_Flag||
Disbursement_Indicator||
Last_Compound_date||
Daily_compounding_of_int_flg||
Comp_rest_day_flag||
Use_discount_rate_flg||
Dummy||
Account_Status_Date||
A.Iban_number||
Ias_code||
Channel_id||
Channel_level_code||
int_suspense_amt||
penal_int_suspense_amt||
chrge_off_flg||
pd_flg||
pd_xfer_date||
chrge_off_date||
chrge_off_principal||
pending_interest||
principal_recovery||
interest_recovery||
charge_off_type||
master_acct_num||
penal_prod_mthd_flg||
penal_rate_mthd_flg||
waive_min_coll_int||
rule_code||
ps_diff_freq_rel_party_flg||
swift_diff_freq_rel_party_flg||
Address_Type||
Phone_Type||
Email_Type||
accrued_penal_int_recovery||
penal_int_recovery||
coll_int_recovery||
coll_penal_int_recovery||
pending_penal_interest||
pending_penal_booked_interest||
int_rate_prd_in_months ||
int_rate_prd_in_days||
penal_int_tbl_code||
penal_pref_pcnt||
interpolation_method||
Is_account_hedged_flag||
used_for_netting_of_flag||
Alternate_account_name||
Security_Indicator||
Debt_seniority||
Security_Code||
Debit_int_Method||
Service_Chrge_Coll_Flg||
Last_Purge_Date
from AC1ODCC_O_TABLE  A
inner join map_acc on trim(account_number)=fin_acc_num
--this works for full spool as well for incremental spool if needed. 
left join (select foracid from tbaadm.gam where bank_id=get_param('BANK_ID')) gam on foracid = trim(account_number)
where foracid is null and map_acc.schm_type='ODA'; 
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core02_spool_pca_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core02_spool_pca_kw.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
--------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/KW/CORE002_PCA.txt
select 
Account_Number||
With_holding_tax_flg||
With_holding_tax_Amt_scope_flg||
With_holding_tax_percent||
With_holding_tax_floor_limit||
CIF_ID||
Customer_Cr_Pref_Percent||
Customer_Dr_Pref_Percent||
Account_Cr_Pref_Percent||
Account_Dr_Pref_Percent||
Channel_Cr_Pref||
Channel_Dr_Pref||
Pegged_Flag||
Peg_Frequency_in_Mnth||
Peg_Frequency_in_Days||
Int_freq_type_Credit||
Int_freq_week_num_Credit||
Int_freq_week_day_Credit||
Int_freq_start_dd_Credit||
Int_freq_hldy_stat_Credit||
Next_Cr_interest_run_date||
Int_freq_type_Debit||
Int_freq_week_num_Debit||
Int_freq_week_day_Debit||
Int_freq_start_dd_Debit||
Int_freq_hldy_stat_Debit||
Next_Debit_interest_run_dt||
Ledger_Number||
Employee_Id||
Account_Open_Date||
Mode_of_Operation_Code||
Gl_Sub_Head_Code||
Scheme_Code||
Cheque_Allowed_Flag||
Pass_Book_Pass_Sheet_Code||
Freeze_Code||
Freeze_Reason_Code||
Free_Text||
Account_Dormant_Flag||
Free_Code_1||
Free_Code_2||
Free_Code_3||
Free_Code_4||
Free_Code_5||
Free_Code_6||
Free_Code_7||
Free_Code_8||
Free_Code_9||
Free_Code_10||
Interest_Table_Code||
Account_Location_Code||
Currency_Code||
Service_Outlet||
Account_Mgr_User_Id||
Account_Name||
Swift_Allowed_Flg||
Last_Transaction_Date||
Last_Transaction_any_date||
Exclude_for_combined_statement||
Statement_CIF_ID||
charge_Level_Code||
PBF_download_Flag||
wtax_level_flg||
Sector_Code||
Sub_Sector_Code||
Purpose_of_Advn_Code||
Nature_Of_Advn_Code||
Industry_Type_Code||
Debit_Interest_Account_flg||
Debit_Interest_Account||
Sanction_Limit||
Drawing_Power||
DACC_ABSOLUTE_LIMIT||
DACC_PERCENT_LIMIT||
Maximum_Allowed_Limit||
Health_Code||
Sanction_Level_Code||
Sanction_Reference_Number||
Limit_Sanction_Date||
Limit_Expiring_Date||
Account_Review_Date||
Loan_Paper_Date||
Sanction_Authority_Code||
ECGC_Applicable_Flag||
ECGC_Account||
Due_Date||
RPC_Account_Flag||
Disbursement_Indicator||
Last_Compound_date||
Daily_compounding_of_int_flg||
Comp_rest_day_flag||
Use_discount_rate_flg||
Dummy||
Account_Status_Date||
Iban_number||
Ias_code||
Channel_id||
Channel_level_code||
int_suspense_amt||
penal_int_suspense_amt||
chrge_off_flg||
pd_flg||
pd_xfer_date||
chrge_off_date||
chrge_off_principal||
pending_interest||
principal_recovery||
interest_recovery||
charge_off_type||
master_acct_num||
penal_prod_mthd_flg||
penal_rate_mthd_flg||
waive_min_coll_int||
rule_code||
ps_diff_freq_rel_party_flg||
swift_diff_freq_rel_party_flg||
Address_Type||
Phone_Type||
Email_Type||
accrued_penal_int_recovery||
penal_int_recovery||
coll_int_recovery||
coll_penal_int_recovery||
pending_penal_interest||
pending_penal_booked_interest||
int_rate_prd_in_months ||
int_rate_prd_in_days||
penal_int_tbl_code||
penal_pref_pcnt||
interpolation_method||
Is_account_hedged_flag||
used_for_netting_of_flag||
Alternate_account_name||
Security_Indicator||
Debt_seniority||
Security_Code||
Debit_int_Method||
Service_Chrge_Coll_Flg||
Last_Purge_Date
from AC1ODCC_O_TABLE WHERE  TRIM(SCHEME_CODE) = 'LDADV';
--this works for full spool as well for incremental spool if needed. 
--left join (select foracid from tbaadm.gam where bank_id=get_param('BANK_ID')) gam on foracid = trim(account_number)
--where foracid is null; 
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core02_spool_pca_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core02_spool_pca_uae.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
--------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/UAE/CORE002_PCA.txt
select 
Account_Number||
With_holding_tax_flg||
With_holding_tax_Amt_scope_flg||
With_holding_tax_percent||
With_holding_tax_floor_limit||
CIF_ID||
Customer_Cr_Pref_Percent||
Customer_Dr_Pref_Percent||
Account_Cr_Pref_Percent||
Account_Dr_Pref_Percent||
Channel_Cr_Pref||
Channel_Dr_Pref||
Pegged_Flag||
Peg_Frequency_in_Mnth||
Peg_Frequency_in_Days||
Int_freq_type_Credit||
Int_freq_week_num_Credit||
Int_freq_week_day_Credit||
Int_freq_start_dd_Credit||
Int_freq_hldy_stat_Credit||
Next_Cr_interest_run_date||
Int_freq_type_Debit||
Int_freq_week_num_Debit||
Int_freq_week_day_Debit||
Int_freq_start_dd_Debit||
Int_freq_hldy_stat_Debit||
Next_Debit_interest_run_dt||
Ledger_Number||
Employee_Id||
Account_Open_Date||
Mode_of_Operation_Code||
Gl_Sub_Head_Code||
Scheme_Code||
Cheque_Allowed_Flag||
Pass_Book_Pass_Sheet_Code||
Freeze_Code||
Freeze_Reason_Code||
Free_Text||
Account_Dormant_Flag||
Free_Code_1||
Free_Code_2||
Free_Code_3||
Free_Code_4||
Free_Code_5||
Free_Code_6||
Free_Code_7||
Free_Code_8||
Free_Code_9||
Free_Code_10||
Interest_Table_Code||
Account_Location_Code||
Currency_Code||
Service_Outlet||
Account_Mgr_User_Id||
Account_Name||
Swift_Allowed_Flg||
Last_Transaction_Date||
Last_Transaction_any_date||
Exclude_for_combined_statement||
Statement_CIF_ID||
charge_Level_Code||
PBF_download_Flag||
wtax_level_flg||
Sector_Code||
Sub_Sector_Code||
Purpose_of_Advn_Code||
Nature_Of_Advn_Code||
Industry_Type_Code||
Debit_Interest_Account_flg||
Debit_Interest_Account||
Sanction_Limit||
Drawing_Power||
DACC_ABSOLUTE_LIMIT||
DACC_PERCENT_LIMIT||
Maximum_Allowed_Limit||
Health_Code||
Sanction_Level_Code||
Sanction_Reference_Number||
Limit_Sanction_Date||
Limit_Expiring_Date||
Account_Review_Date||
Loan_Paper_Date||
Sanction_Authority_Code||
ECGC_Applicable_Flag||
ECGC_Account||
Due_Date||
RPC_Account_Flag||
Disbursement_Indicator||
Last_Compound_date||
Daily_compounding_of_int_flg||
Comp_rest_day_flag||
Use_discount_rate_flg||
Dummy||
Account_Status_Date||
A.Iban_number||
Ias_code||
Channel_id||
Channel_level_code||
int_suspense_amt||
penal_int_suspense_amt||
chrge_off_flg||
pd_flg||
pd_xfer_date||
chrge_off_date||
chrge_off_principal||
pending_interest||
principal_recovery||
interest_recovery||
charge_off_type||
master_acct_num||
penal_prod_mthd_flg||
penal_rate_mthd_flg||
waive_min_coll_int||
rule_code||
ps_diff_freq_rel_party_flg||
swift_diff_freq_rel_party_flg||
Address_Type||
Phone_Type||
Email_Type||
accrued_penal_int_recovery||
penal_int_recovery||
coll_int_recovery||
coll_penal_int_recovery||
pending_penal_interest||
pending_penal_booked_interest||
int_rate_prd_in_months ||
int_rate_prd_in_days||
penal_int_tbl_code||
penal_pref_pcnt||
interpolation_method||
Is_account_hedged_flag||
used_for_netting_of_flag||
Alternate_account_name||
Security_Indicator||
Debt_seniority||
Security_Code||
Debit_int_Method||
Service_Chrge_Coll_Flg||
Last_Purge_Date
from AC1ODCC_O_TABLE  A
inner join map_acc on trim(account_number)=fin_acc_num
left join (select foracid from tbaadm.gam where bank_id=get_param('BANK_ID')) gam on foracid = trim(account_number)
where foracid is null and map_acc.schm_type='PCA' ; 
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core03_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core03_spool_kw.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/KW/CORE003.txt
select 
AC2_O_TABLE.Account_Number||
AC2_O_TABLE.Currency||
AC2_O_TABLE.Service_Outlet||
AC2_O_TABLE.Record_Type||
AC2_O_TABLE.Name||
AC2_O_TABLE.Designation||
AC2_O_TABLE.Amount_allowed||
AC2_O_TABLE.Start_Date||
AC2_O_TABLE.End_Date||
AC2_O_TABLE.CIF_ID||
AC2_O_TABLE.Relation_Code||
AC2_O_TABLE.Pass_Sheet_flag||
AC2_O_TABLE.Standing_Instruction_ad_flag||
AC2_O_TABLE.TD_Maturity_Notice_Flag||
AC2_O_TABLE.Loan_Overdue_Notice_Flag||
AC2_O_TABLE.Communication_Address_1||
AC2_O_TABLE.Communication_Address_2||
AC2_O_TABLE.Communication_Address_3||
AC2_O_TABLE.Communication_City_Code||
AC2_O_TABLE.Communication_State_Code||
AC2_O_TABLE.Communication_Pin_Code||
AC2_O_TABLE.Communication_Country||
AC2_O_TABLE.Communication_Phone_Number||
AC2_O_TABLE.Communication_FAX_Number||
AC2_O_TABLE.Communication_Telex_Number||
AC2_O_TABLE.Communication_Email_Id||
AC2_O_TABLE.Exclude_for_combined_statement||
AC2_O_TABLE.Statement_CIF_Id||
AC2_O_TABLE.Customer_Title_Code||
AC2_O_TABLE.Incert_print_flag||
AC2_O_TABLE.Incert_adv_flag||
AC2_O_TABLE.Guarantor_liab_Pcnt||
AC2_O_TABLE.Guarantor_liab_sequence||
AC2_O_TABLE.PS_freq_type||
AC2_O_TABLE.PS_freq_week_num||
AC2_O_TABLE.PS_freq_week_day||
AC2_O_TABLE.PS_Freq_Start_month||
AC2_O_TABLE.PS_freq_holiday_status||
AC2_O_TABLE.SWIFT_statement_serial_num||
AC2_O_TABLE.PS_despatch_mode||
AC2_O_TABLE.SWIFT_frequency_type||
AC2_O_TABLE.SWIFT_freq_week_number||
AC2_O_TABLE.SWIFT_freq_week_day||
AC2_O_TABLE.Swift_Freq_Start_Day||
AC2_O_TABLE.SWIFT_freq_holiday_status||
AC2_O_TABLE.SWIFT_message_type||
AC2_O_TABLE.SWIFT_message_receiver_bic||
AC2_O_TABLE.Address_type||
AC2_O_TABLE.Phone_type||
AC2_O_TABLE.Email_type||
AC2_O_TABLE.Alt_Auth_Sign_Name
from AC2_O_TABLE ;
--inner join (select acid,foracid from tbaadm.gam) gam on foracid = trim(account_number)
--left join tbaadm.aas on gam.acid=aas.acid and trim(RECORD_TYPE)= ACCT_POA_AS_REC_TYPE 
--where aas.acid||ACCT_POA_AS_REC_TYPE  is null
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core03_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core03_spool_uae.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/UAE/CORE003.txt
select 
AC2_O_TABLE.Account_Number||
AC2_O_TABLE.Currency||
AC2_O_TABLE.Service_Outlet||
AC2_O_TABLE.Record_Type||
AC2_O_TABLE.Name||
AC2_O_TABLE.Designation||
AC2_O_TABLE.Amount_allowed||
AC2_O_TABLE.Start_Date||
AC2_O_TABLE.End_Date||
AC2_O_TABLE.CIF_ID||
AC2_O_TABLE.Relation_Code||
AC2_O_TABLE.Pass_Sheet_flag||
AC2_O_TABLE.Standing_Instruction_ad_flag||
AC2_O_TABLE.TD_Maturity_Notice_Flag||
AC2_O_TABLE.Loan_Overdue_Notice_Flag||
AC2_O_TABLE.Communication_Address_1||
AC2_O_TABLE.Communication_Address_2||
AC2_O_TABLE.Communication_Address_3||
AC2_O_TABLE.Communication_City_Code||
AC2_O_TABLE.Communication_State_Code||
AC2_O_TABLE.Communication_Pin_Code||
AC2_O_TABLE.Communication_Country||
AC2_O_TABLE.Communication_Phone_Number||
AC2_O_TABLE.Communication_FAX_Number||
AC2_O_TABLE.Communication_Telex_Number||
AC2_O_TABLE.Communication_Email_Id||
AC2_O_TABLE.Exclude_for_combined_statement||
AC2_O_TABLE.Statement_CIF_Id||
AC2_O_TABLE.Customer_Title_Code||
AC2_O_TABLE.Incert_print_flag||
AC2_O_TABLE.Incert_adv_flag||
AC2_O_TABLE.Guarantor_liab_Pcnt||
AC2_O_TABLE.Guarantor_liab_sequence||
AC2_O_TABLE.PS_freq_type||
AC2_O_TABLE.PS_freq_week_num||
AC2_O_TABLE.PS_freq_week_day||
AC2_O_TABLE.PS_Freq_Start_month||
AC2_O_TABLE.PS_freq_holiday_status||
AC2_O_TABLE.SWIFT_statement_serial_num||
AC2_O_TABLE.PS_despatch_mode||
AC2_O_TABLE.SWIFT_frequency_type||
AC2_O_TABLE.SWIFT_freq_week_number||
AC2_O_TABLE.SWIFT_freq_week_day||
AC2_O_TABLE.Swift_Freq_Start_Day||
AC2_O_TABLE.SWIFT_freq_holiday_status||
AC2_O_TABLE.SWIFT_message_type||
AC2_O_TABLE.SWIFT_message_receiver_bic||
AC2_O_TABLE.Address_type||
AC2_O_TABLE.Phone_type||
AC2_O_TABLE.Email_type||
AC2_O_TABLE.Alt_Auth_Sign_Name
from AC2_O_TABLE;
--inner join (select acid,foracid from tbaadm.gam) gam on foracid = trim(account_number)
--left join tbaadm.aas on gam.acid=aas.acid and trim(RECORD_TYPE)= ACCT_POA_AS_REC_TYPE 
--where aas.acid||ACCT_POA_AS_REC_TYPE  is null
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core05_CAA_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core05_CAA_spool_kw.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/KW/CORE005_CAA.txt
select INDICATOR||ACCOUNT_NUMBER||AMOUNT||TRANSACTION_DATE||CURRENCY_CODE||SERVICE_OUTLET||DUMMY||';CAA_'||trim(SERVICE_OUTLET)||'_'||currency_code||'.txt' 
from AC_BALANCE_O_TABLE
left join tbaadm.gam on foracid=trim(account_number)  
where trim(DUMMY) = 'CAA'  and clr_bal_amt <> trim(amount) and  bank_id=get_param('BANK_ID')
--and trim(ACCOUNT_NUMBER) not in('0633488789001','0633502819001','0633509277135','0636475332001','0638533198001','0639510030001','0639535465001','0640511078001','0640545984001','0900136066201')
order by SERVICE_OUTLET,currency_code;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core05_CAA_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core05_CAA_spool_uae.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/UAE/CORE005_CAA.txt
select INDICATOR||ACCOUNT_NUMBER||AMOUNT||TRANSACTION_DATE||CURRENCY_CODE||SERVICE_OUTLET||DUMMY||';CAA_'||trim(SERVICE_OUTLET)||'_'||currency_code||'.txt' 
from AC_BALANCE_O_TABLE
left join tbaadm.gam on foracid=trim(account_number)  
where trim(DUMMY) = 'CAA'  and clr_bal_amt <> trim(amount) and  bank_id=get_param('BANK_ID')
order by SERVICE_OUTLET,currency_code;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core05_ODA_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core05_ODA_spool_kw.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/KW/CORE005_ODA.txt
select INDICATOR||ACCOUNT_NUMBER||AMOUNT||TRANSACTION_DATE||CURRENCY_CODE||SERVICE_OUTLET||DUMMY||';ODA_'||trim(SERVICE_OUTLET)||'_'||currency_code||'.txt' 
from AC_BALANCE_O_TABLE
left join tbaadm.gam on foracid=trim(account_number)  
where trim(DUMMY) = 'ODA'  
and clr_bal_amt <> trim(amount) and  bank_id=get_param('BANK_ID') 
order by SERVICE_OUTLET,currency_code;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core05_ODA_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core05_ODA_spool_uae.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/UAE/CORE005_ODA.txt
select INDICATOR||ACCOUNT_NUMBER||AMOUNT||TRANSACTION_DATE||CURRENCY_CODE||SERVICE_OUTLET||DUMMY||';ODA_'||trim(SERVICE_OUTLET)||'_'||currency_code||'.txt' 
from AC_BALANCE_O_TABLE
left join tbaadm.gam on foracid=trim(account_number)  
where trim(DUMMY) = 'ODA'  and clr_bal_amt <> trim(amount) and  bank_id=get_param('BANK_ID') 
order by SERVICE_OUTLET,currency_code;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core05_PCA_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core05_PCA_spool_kw.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: R.Alavudeen Ali Badusha 
-- Client		    : ABK
-- Created On		: 09-07-2017
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/KW/CORE005_PCA.txt
select INDICATOR||ACCOUNT_NUMBER||AMOUNT||TRANSACTION_DATE||CURRENCY_CODE||SERVICE_OUTLET||DUMMY||';ODA_'||trim(SERVICE_OUTLET)||'_'||currency_code||'.txt' 
from AC_BALANCE_O_TABLE
left join tbaadm.gam on foracid=trim(account_number)  
where trim(DUMMY) = 'PCA'  and clr_bal_amt <> trim(amount) and  bank_id=get_param('BANK_ID') 
order by SERVICE_OUTLET,currency_code;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core05_SBA_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core05_SBA_spool_kw.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/KW/CORE005_SBA.txt
select INDICATOR||ACCOUNT_NUMBER||AMOUNT||TRANSACTION_DATE||CURRENCY_CODE||SERVICE_OUTLET||DUMMY||';SBA_'||trim(SERVICE_OUTLET)||'_'||currency_code||'.txt' 
from AC_BALANCE_O_TABLE
left join tbaadm.gam on foracid=trim(account_number)  
where trim(DUMMY) = 'SBA'  and clr_bal_amt <> trim(amount) and  bank_id=get_param('BANK_ID')
order by SERVICE_OUTLET,currency_code;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core05_SBA_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core05_SBA_spool_uae.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/UAE/CORE005_SBA.txt
select INDICATOR||ACCOUNT_NUMBER||AMOUNT||TRANSACTION_DATE||CURRENCY_CODE||SERVICE_OUTLET||DUMMY||';SBA_'||trim(SERVICE_OUTLET)||'_'||currency_code||'.txt' 
from AC_BALANCE_O_TABLE
left join tbaadm.gam on foracid=trim(account_number)  
where trim(DUMMY) = 'SBA'  and clr_bal_amt <> trim(amount) and  bank_id=get_param('BANK_ID')
order by SERVICE_OUTLET,currency_code;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core05_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core05_spool_kw.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/KW/CORE005.txt
select INDICATOR||ACCOUNT_NUMBER||AMOUNT||TRANSACTION_DATE||CURRENCY_CODE||SERVICE_OUTLET||DUMMY from AC_BALANCE_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core05_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core05_spool_uae.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/UAE/CORE005.txt
select INDICATOR||ACCOUNT_NUMBER||AMOUNT||TRANSACTION_DATE||CURRENCY_CODE||SERVICE_OUTLET||DUMMY from AC_BALANCE_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core06_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core06_spool_kw.sql 
-- File Name		: spool CA06
-- File Created for	: Creation of Account intrest
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/KW/CORE006.txt
select 
ACCOUNT_NUMBER||
CRNCY_CODE||
SOL_ID||
NORMAL_CREDIT_ACCRUED_AMT||
LAST_CR_INT_APPLICATION_DT||
CREDIT_INT_ACCRUED_UPTO_DT||
CREDIT_INT_BOOKED_UPTO_DT||
NORMAL_DEBIT_ACCRUED_AMT||
LAST_DR_INT_APPLICATION_DT||
DEBIT_INT_ACCRUED_UPTO_DATE||
DEBIT_INT_BOOKED_UPTO_DATE||
DUMMY
from AC_INTEREST_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core06_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core06_spool_uae.sql 
-- File Name		: spool CA06
-- File Created for	: Creation of Account intrest
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/UAE/CORE006.txt
select 
ACCOUNT_NUMBER||
CRNCY_CODE||
SOL_ID||
NORMAL_CREDIT_ACCRUED_AMT||
LAST_CR_INT_APPLICATION_DT||
CREDIT_INT_ACCRUED_UPTO_DT||
CREDIT_INT_BOOKED_UPTO_DT||
NORMAL_DEBIT_ACCRUED_AMT||
LAST_DR_INT_APPLICATION_DT||
DEBIT_INT_ACCRUED_UPTO_DATE||
DEBIT_INT_BOOKED_UPTO_DATE||
DUMMY
from AC_INTEREST_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core07_dest_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core07_dest_spool_kw.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/KW/CORE007_DEST.txt
select INDICATOR||ACCOUNT_NUMBER||CURRENCY_CODE||BEGIN_CHEQUE_NUMBER||NUMBER_OF_CHEQUE_LEAVES||DATE_OF_ISSUE||CHEQUE_LEAF_STATUS||BEGIN_CHEQUE_ALPHA||DUMMY
from CBS_DEST_O_TABLE 
order by to_number(NUMBER_OF_CHEQUE_LEAVES) desc;
--inner join tbaadm.gam b on trim(account_number) = foracid
--left join  tbaadm.cbt c on b.acid = c.acid and to_number(begin_cheque_number) = begin_chq_num
--where c.acid is null order by to_number(NUMBER_OF_CHEQUE_LEAVES) desc
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core07_dest_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core07_dest_spool_uae.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/UAE/CORE007_DEST.txt
select INDICATOR||ACCOUNT_NUMBER||CURRENCY_CODE||BEGIN_CHEQUE_NUMBER||NUMBER_OF_CHEQUE_LEAVES||DATE_OF_ISSUE||CHEQUE_LEAF_STATUS||BEGIN_CHEQUE_ALPHA||DUMMY
from CBS_DEST_O_TABLE 
order by to_number(NUMBER_OF_CHEQUE_LEAVES) desc;
--inner join tbaadm.gam b on trim(account_number) = foracid
--left join  tbaadm.cbt c on b.acid = c.acid and to_number(begin_cheque_number) = begin_chq_num
--where c.acid is null order by to_number(NUMBER_OF_CHEQUE_LEAVES) desc
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core07_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core07_spool_kw.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/KW/CORE007.txt
select INDICATOR||ACCOUNT_NUMBER||CURRENCY_CODE||BEGIN_CHEQUE_NUMBER||NUMBER_OF_CHEQUE_LEAVES||DATE_OF_ISSUE||CHEQUE_LEAF_STATUS||BEGIN_CHEQUE_ALPHA||DUMMY
from cbs_o_table
--inner join (select * from tbaadm.gam where bank_id=get_param('BANK_ID')) b on trim(account_number) = foracid
--left join  (select * from tbaadm.cbt where bank_id=get_param('BANK_ID')) c on b.acid = c.acid and to_number(begin_cheque_number) = begin_chq_num
--where c.acid is null 
order by to_number(NUMBER_OF_CHEQUE_LEAVES) desc;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core07_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core07_spool_uae.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/UAE/CORE007.txt
select INDICATOR||ACCOUNT_NUMBER||CURRENCY_CODE||BEGIN_CHEQUE_NUMBER||NUMBER_OF_CHEQUE_LEAVES||DATE_OF_ISSUE||CHEQUE_LEAF_STATUS||BEGIN_CHEQUE_ALPHA||DUMMY
from CBS_O_TABLE 
--inner join (select * from tbaadm.gam where bank_id=get_param('BANK_ID')) b on trim(account_number) = foracid
--left join  (select * from tbaadm.cbt where bank_id=get_param('BANK_ID')) c on b.acid = c.acid and to_number(begin_cheque_number) = begin_chq_num
--where c.acid is null order by to_number(NUMBER_OF_CHEQUE_LEAVES) desc
;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core08_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core08_spool_kw.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/KW/CORE008.txt
select ACCOUNT_NUMBER||BEGIN_CHEQUE_NUMBER||SP_ACCEPTANCE_DATE||CHEQUE_DATE||CHEQUE_AMOUNT||SPT_O_TABLE.PAYEE_NAME||NO_OF_LEAVES||CHEQUE_ALPHA_CODE||REASON_CODE_FOR_STOP_PAYMENT||ACCOUNT_BALANCE||CURRENCY_CODE
from SPT_O_TABLE;
--inner join (select * from tbaadm.gam where bank_id=get_param('BANK_ID')) gam on gam.foracid=trim(account_number) 
--left join  (select * from tbaadm.spt where bank_id=get_param('BANK_ID')) spt on gam.acid=spt.acid and to_number(trim(begin_cheque_number))=spt.begin_chq_num 
--where  spt.begin_chq_num is null;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core08_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core08_spool_uae.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/UAE/CORE008.txt
select ACCOUNT_NUMBER||BEGIN_CHEQUE_NUMBER||SP_ACCEPTANCE_DATE||CHEQUE_DATE||CHEQUE_AMOUNT||SPT_O_TABLE.PAYEE_NAME||NO_OF_LEAVES||CHEQUE_ALPHA_CODE||REASON_CODE_FOR_STOP_PAYMENT||ACCOUNT_BALANCE||CURRENCY_CODE
from SPT_O_TABLE
--inner join (select * from tbaadm.gam where bank_id=get_param('BANK_ID')) gam on gam.foracid=trim(account_number) 
--left join  (select * from tbaadm.spt where bank_id=get_param('BANK_ID')) spt on gam.acid=spt.acid and to_number(trim(begin_cheque_number))=spt.begin_chq_num 
--where  spt.begin_chq_num is null
;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core09_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core09_spool_kw.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/KW/CORE009.txt
select 
ACCOUNT_NUMBER||
LIEN_AMOUNT||
a.CRNCY_CODE||
a.LIEN_REASON_CODE||
a.LIEN_START_DATE||
a.LIEN_EXPIRY_DATE||
LIEN_TYPE||
ACCOUNT_ID||
SI_CERTIFICATE_NUMBER||
LIMIT_PREFIX||
LIMIT_SUFFIX||
DC_NUMBER||
BG_NUMBER||
a.SOL_ID||
a.LIEN_REMARKS||
a.REQUESTED_BY_DESC||
REQUESTED_DEPARTMENT||
a.CONTACT_NUM
from LIEN_O_TABLE a
--inner join tbaadm.gam on foracid=trim(account_number) and gam.bank_id='01'
--left join tbaadm.alt on alt.bank_id='01' and alt.acid=gam.acid and to_number(lien_amount)=alt.lien_amt+FUTURE_ULIEN_AMT and trim(USER_ID)='MIG3'  and to_date(a.LIEN_START_DATE,'DD-MM-YYYY')=alt.LIEN_START_DATE and trim(a.LIEN_REASON_CODE)=alt.LIEN_REASON_CODE and trim(a.LIEN_REMARKS)=alt.LIEN_REMARKS
--where alt.acid is null
order by trim(a.ACCOUNT_NUMBER),to_date(a.LIEN_START_DATE,'DD-MM-YYYY');
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core09_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core09_spool_uae.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/UAE/CORE009.txt
select 
ACCOUNT_NUMBER||
LIEN_AMOUNT||
CRNCY_CODE||
LIEN_REASON_CODE||
LIEN_START_DATE||
LIEN_EXPIRY_DATE||
LIEN_TYPE||
ACCOUNT_ID||
SI_CERTIFICATE_NUMBER||
LIMIT_PREFIX||
LIMIT_SUFFIX||
DC_NUMBER||
BG_NUMBER||
SOL_ID||
LIEN_REMARKS||
REQUESTED_BY_DESC||
REQUESTED_DEPARTMENT||
CONTACT_NUM
from LIEN_O_TABLE
order by trim(ACCOUNT_NUMBER),to_date(trim(LIEN_START_DATE),'DD-MM-YYYY');
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core10_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core10_spool_kw.sql 
-- File Name		: spool memopad
-- File Created for	: Spool file of memopad
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/KW/CORE010.txt
select 
MEMO_PAD_TITLE||
FUNCTION_CODE||
INTENT||
SECURITY||
TEXT_MESSAGE||
ACCOUNT_NO||
TRANSACTION_ID||
TRANSACTION_DATE||
TRX_SERIAL_NO||
CIF_ID||
STANDING_ORDER_SERIAL_NO||
INSTRUMENT_TYPE||
INSTRUMENT_ID||
EMPLOYEE_ID||
SIGNATORY||
INVENTORY_CLASS||
INVENTORY_TYPE||
INVENTORY_SERIAL_NO||
INVENTORY_LOCATION_CLASS||
INVENTORY_LOCATION_CODE||
KEY_WORD||
AUDIT_REF_NO||
SOL_ID||
TEXT_MESSAGE_IN_THE_ALT_LANG||
MEMO_PAD_TITLE_IN_ALT_LANG
from MEMOPAD_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core10_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core10_spool_uae.sql 
-- File Name		: spool memopad
-- File Created for	: Spool file of memopad
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/UAE/CORE010.txt
select 
MEMO_PAD_TITLE||
FUNCTION_CODE||
INTENT||
SECURITY||
TEXT_MESSAGE||
ACCOUNT_NO||
TRANSACTION_ID||
TRANSACTION_DATE||
TRX_SERIAL_NO||
CIF_ID||
STANDING_ORDER_SERIAL_NO||
INSTRUMENT_TYPE||
INSTRUMENT_ID||
EMPLOYEE_ID||
SIGNATORY||
INVENTORY_CLASS||
INVENTORY_TYPE||
INVENTORY_SERIAL_NO||
INVENTORY_LOCATION_CLASS||
INVENTORY_LOCATION_CODE||
KEY_WORD||
AUDIT_REF_NO||
SOL_ID||
TEXT_MESSAGE_IN_THE_ALT_LANG||
MEMO_PAD_TITLE_IN_ALT_LANG
from MEMOPAD_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core12_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core12_spool_kw.sql 
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/KW/CORE012.txt
select 
Account_Number||
tod_Amount||
TOD_Grant_Date||
TOD_Expiry_Date||
TOD_Penal_Start_Date||
TOD_Advance_Type||
TOD_Advance_Category||
TOD_Level_Interest_Flag||
TOD_Normal_Interest_Percent||
TOD_Penal_Interest_Percent||
TOD_Availed_Amount||
TOD_Regularized_Amount||
SOL_ID||
CRNCY_CODE||
Entity_Type||
Free_Text
from tod_o_table;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core12_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core12_spool_uae.sql 
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/UAE/CORE012.txt
select 
Account_Number||
tod_Amount||
TOD_Grant_Date||
TOD_Expiry_Date||
TOD_Penal_Start_Date||
TOD_Advance_Type||
TOD_Advance_Category||
TOD_Level_Interest_Flag||
TOD_Normal_Interest_Percent||
TOD_Penal_Interest_Percent||
TOD_Availed_Amount||
TOD_Regularized_Amount||
SOL_ID||
CRNCY_CODE||
Entity_Type||
Free_Text
from tod_o_table;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core13_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core13_spool_kw.sql 
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/KW/CORE013.txt
select 
Account_Number		||
Start_Date||
Crncy_Code||
End_Date		||
Total_No_of_Days_Debit||
Total_No_of_Days_Credit||
Total_Debit_Balance||
Total_Credit_Balance||
Highest_Debit_Balance	||
Highest_Credit_Balance||
Total_Debits			||
Total_Credits||
Total_Credit_Clearing_Balance||
No_of_Instruments_Clearing||
Total_No_of_TODs_Granted||
Interest_Collected||
Interest_Paid||
Time_taken_to_clear_TODs||
No_of_Regular_TODs||
No_of_Inward_Chq_Returned||
No_of_Outward_Chq_Returned||
No_of_Debit_Transactions||
No_of_Credit_Transactions||
Credit_Interest_Accrued||
Debit_Interest_Accrued||
Lowest_Credit_Balance||
Lowest_Debit_Balance||
Inward_Clg_Cheque_Return_Amt||
Outward_Clg_Cheque_Return_Amt
from ato_o_table;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core13_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core13_spool_uae.sql 
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/UAE/CORE013.txt
select 
Account_Number		||
Start_Date||
Crncy_Code||
End_Date		||
Total_No_of_Days_Debit||
Total_No_of_Days_Credit||
Total_Debit_Balance||
Total_Credit_Balance||
Highest_Debit_Balance	||
Highest_Credit_Balance||
Total_Debits			||
Total_Credits||
Total_Credit_Clearing_Balance||
No_of_Instruments_Clearing||
Total_No_of_TODs_Granted||
Interest_Collected||
Interest_Paid||
Time_taken_to_clear_TODs||
No_of_Regular_TODs||
No_of_Inward_Chq_Returned||
No_of_Outward_Chq_Returned||
No_of_Debit_Transactions||
No_of_Credit_Transactions||
Credit_Interest_Accrued||
Debit_Interest_Accrued||
Lowest_Credit_Balance||
Lowest_Debit_Balance||
Inward_Clg_Cheque_Return_Amt||
Outward_Clg_Cheque_Return_Amt
from ato_o_table;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core14_cccy_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core14_cccy_spool_kw.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 1033
set page size 0
set pages 0
set trimspool off
spool $MIG_PATH/output/finacle/core/KW/CORE014_cccy.txt
select 
SOL_ID||
SI_Freq_Type||
SI_Freq_Week_num||
SI_Freq_Week_Day||
SI_Freq_Start_DD||
SI_Freq_Hldy_Stat||
SI_Execution_code||
SI_end_date||
SI_Next_Execution_Date||
Target_Account||
Balance_Indicator||
Excess_Short_Indicator||
Target_Balance||
Auto_Post_Flag||
Carry_Forward_Allowed_Flag||
Validate_Crncy_Holiday_Flag||
Delete_Trn_if_not_Posted||
Carry_Forward_Limit||
SI_Class||
CIF_ID||
Remarks||
Closure_remarks||
Execution_charge_code||
Failure_charge_code||
Charge_rate_code||
Charge_debit_account_number||
Amount_Indicator||
Create_Memo_Pad_Entry||
Currency_Code||
Fixed_Amount||
Part_Tran_Type||
Balance_Indicator1||
Excess_Short_Indicator1||
Account_Number||
Account_Balance||
Percentage||
Amount_multiple||
ADM_Account_No||
Round_off_Type||
Round_off_Value||
Collect_Charges||
Report_Code||
Reference_Number||
Tran_particular||
Tran_remarks||
Intent_Code||
DD_payable_bank_code||
DD_payable_branch_code||
Payee_name||
Purchase_Account_Number||
Purchase_Name||
cr_adv_pymnt_flg||
Amount_Indicator1||
Create_Memo_Pad_Entry1||
ADM_Account_No1||
Round_off_Type1||
Round_off_Value1||
Collect_Charges1||
Report_Code1||
Reference_Number1||
Tran_particular1||
Tran_remarks1||
Intent_Code1||
SI_Priority||
si_freq_cal_base||
cr_ceiling_amt||
cr_cumulative_amt||
dr_ceiling_amt||
dr_cumulative_amt||
SI_freq_days_num||
Script_File_Name||
rate_code||
Cr_Rate_code
from SIU_CCCY_O_TABLE;
--where adm_account_no not like '000%' and adm_account_no1 not like '000%';
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core14_cccy_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core14_cccy_spool_uae.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 1033
set page size 0
set pages 0
set trimspool off
spool $MIG_PATH/output/finacle/core/UAE/CORE014_cccy.txt
select 
SOL_ID||
SI_Freq_Type||
SI_Freq_Week_num||
SI_Freq_Week_Day||
SI_Freq_Start_DD||
SI_Freq_Hldy_Stat||
SI_Execution_code||
SI_end_date||
SI_Next_Execution_Date||
Target_Account||
Balance_Indicator||
Excess_Short_Indicator||
Target_Balance||
Auto_Post_Flag||
Carry_Forward_Allowed_Flag||
Validate_Crncy_Holiday_Flag||
Delete_Trn_if_not_Posted||
Carry_Forward_Limit||
SI_Class||
CIF_ID||
Remarks||
Closure_remarks||
Execution_charge_code||
Failure_charge_code||
Charge_rate_code||
Charge_debit_account_number||
Amount_Indicator||
Create_Memo_Pad_Entry||
Currency_Code||
Fixed_Amount||
Part_Tran_Type||
Balance_Indicator1||
Excess_Short_Indicator1||
Account_Number||
Account_Balance||
Percentage||
Amount_multiple||
ADM_Account_No||
Round_off_Type||
Round_off_Value||
Collect_Charges||
Report_Code||
Reference_Number||
Tran_particular||
Tran_remarks||
Intent_Code||
DD_payable_bank_code||
DD_payable_branch_code||
Payee_name||
Purchase_Account_Number||
Purchase_Name||
cr_adv_pymnt_flg||
Amount_Indicator1||
Create_Memo_Pad_Entry1||
ADM_Account_No1||
Round_off_Type1||
Round_off_Value1||
Collect_Charges1||
Report_Code1||
Reference_Number1||
Tran_particular1||
Tran_remarks1||
Intent_Code1||
SI_Priority||
si_freq_cal_base||
cr_ceiling_amt||
cr_cumulative_amt||
dr_ceiling_amt||
dr_cumulative_amt||
SI_freq_days_num||
Script_File_Name||
rate_code||
Cr_Rate_code
from SIU_CCCY_O_TABLE;
--where adm_account_no not like '000%' and adm_account_no1 not like '000%';
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core14_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core14_spool_kw.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/KW/CORE014.txt
select 
SOL_ID||
SI_Freq_Type||
SI_Freq_Week_num||
SI_Freq_Week_Day||
SI_Freq_Start_DD||
SI_Freq_Hldy_Stat||
SI_Execution_code||
SI_end_date||
SI_Next_Execution_Date||
Target_Account||
Balance_Indicator||
Excess_Short_Indicator||
Target_Balance||
Auto_Post_Flag||
Carry_Forward_Allowed_Flag||
Validate_Crncy_Holiday_Flag||
Delete_Trn_if_not_Posted||
Carry_Forward_Limit||
SI_Class||
CIF_ID||
Remarks||
Closure_remarks||
Execution_charge_code||
Failure_charge_code||
Charge_rate_code||
Charge_debit_account_number||
Amount_Indicator||
Create_Memo_Pad_Entry||
Currency_Code||
Fixed_Amount||
Part_Tran_Type||
Balance_Indicator1||
Excess_Short_Indicator1||
Account_Number||
Account_Balance||
Percentage||
Amount_multiple||
ADM_Account_No||
Round_off_Type||
Round_off_Value||
Collect_Charges||
Report_Code||
Reference_Number||
Tran_particular||
Tran_remarks||
Intent_Code||
DD_payable_bank_code||
DD_payable_branch_code||
Payee_name||
Purchase_Account_Number||
Purchase_Name||
cr_adv_pymnt_flg||
Amount_Indicator1||
Create_Memo_Pad_Entry1||
ADM_Account_No1||
Round_off_Type1||
Round_off_Value1||
Collect_Charges1||
Report_Code1||
Reference_Number1||
Tran_particular1||
Tran_remarks1||
Intent_Code1||
SI_Priority||
si_freq_cal_base||
cr_ceiling_amt||
cr_cumulative_amt||
dr_ceiling_amt||
dr_cumulative_amt||
SI_freq_days_num||
Script_File_Name
from siu_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core14_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core14_spool_uae.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/UAE/CORE014.txt
select 
SOL_ID||
SI_Freq_Type||
SI_Freq_Week_num||
SI_Freq_Week_Day||
SI_Freq_Start_DD||
SI_Freq_Hldy_Stat||
SI_Execution_code||
SI_end_date||
SI_Next_Execution_Date||
Target_Account||
Balance_Indicator||
Excess_Short_Indicator||
Target_Balance||
Auto_Post_Flag||
Carry_Forward_Allowed_Flag||
Validate_Crncy_Holiday_Flag||
Delete_Trn_if_not_Posted||
Carry_Forward_Limit||
SI_Class||
CIF_ID||
Remarks||
Closure_remarks||
Execution_charge_code||
Failure_charge_code||
Charge_rate_code||
Charge_debit_account_number||
Amount_Indicator||
Create_Memo_Pad_Entry||
Currency_Code||
Fixed_Amount||
Part_Tran_Type||
Balance_Indicator1||
Excess_Short_Indicator1||
Account_Number||
Account_Balance||
Percentage||
Amount_multiple||
ADM_Account_No||
Round_off_Type||
Round_off_Value||
Collect_Charges||
Report_Code||
Reference_Number||
Tran_particular||
Tran_remarks||
Intent_Code||
DD_payable_bank_code||
DD_payable_branch_code||
Payee_name||
Purchase_Account_Number||
Purchase_Name||
cr_adv_pymnt_flg||
Amount_Indicator1||
Create_Memo_Pad_Entry1||
ADM_Account_No1||
Round_off_Type1||
Round_off_Value1||
Collect_Charges1||
Report_Code1||
Reference_Number1||
Tran_particular1||
Tran_remarks1||
Intent_Code1||
SI_Priority||
si_freq_cal_base||
cr_ceiling_amt||
cr_cumulative_amt||
dr_ceiling_amt||
dr_cumulative_amt||
SI_freq_days_num||
Script_File_Name
from siu_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core19_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core19_spool_kw.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/KW/CORE019.txt
select 
DD_Issued_Branch_Code||
DD_Number||
DD_Issue_Date||
DD_Issued_Bank_Code||
DD_Currency||
Scheme_Code||
Issue_Extn_Cntr_Code||
Status||
Status_Update_Date||
DD_Amount||
Payee_Branch_Code||
Payee_Bank_Code||
Instrument_No||
DD_Revalidation_Date||
Print_Advice_Flag||
Print_Remarks||
Paying_Branch_Code||
Paying_Bank_Code||
Routing_Branch_Code||
Routing_Bank_Code||
Instrument_Type||
Instrument_Alpha||
Purchasers_Name||
Payees_Name||
Print_Option||
Print_Flag||
Print_Count||
Duplicate_Issue_Count||
Duplicate_Issue_Date||
Rectified_Count||
Cautioned_Status||
Reason_for_Caution||
Paid_Ex_Advice||
Inventory_Serial_No||
Paid_Advice_Flag||
Advice_Received_Date
from dds_o_table;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core19_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core19_spool_uae.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/UAE/CORE019.txt
select 
DD_Issued_Branch_Code||
DD_Number||
DD_Issue_Date||
DD_Issued_Bank_Code||
DD_Currency||
Scheme_Code||
Issue_Extn_Cntr_Code||
Status||
Status_Update_Date||
DD_Amount||
Payee_Branch_Code||
Payee_Bank_Code||
Instrument_No||
DD_Revalidation_Date||
Print_Advice_Flag||
Print_Remarks||
Paying_Branch_Code||
Paying_Bank_Code||
Routing_Branch_Code||
Routing_Bank_Code||
Instrument_Type||
Instrument_Alpha||
Purchasers_Name||
Payees_Name||
Print_Option||
Print_Flag||
Print_Count||
Duplicate_Issue_Count||
Duplicate_Issue_Date||
Rectified_Count||
Cautioned_Status||
Reason_for_Caution||
Paid_Ex_Advice||
Inventory_Serial_No||
Paid_Advice_Flag||
Advice_Received_Date
from dds_o_table;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core20_cccy_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core20_cccy_spool_kw.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 1033
set page size 0
set pages 0
set trimspool off
spool $MIG_PATH/output/finacle/core/KW/CORE020_cccy.txt
select 
SOL_ID||
SI_Freq_Type||
SI_Freq_Week_num||
SI_Freq_Week_Day||
SI_Freq_Start_DD||
SI_Freq_Hldy_Stat||
SI_Execution_code||
SI_end_date||
SI_Next_Execution_Date||
Target_Account||
Balance_Indicator||
Excess_Short_Indicator||
Target_Balance||
Auto_Post_Flag||
Carry_Forward_Allowed_Flag||
Validate_Crncy_Holiday_Flag||
Delete_Trn_if_not_Posted||
Carry_Forward_Limit||
SI_Class||
CIF_ID||
Remarks||
Closure_remarks||
Execution_charge_code||
Failure_charge_code||
Charge_rate_code||
Charge_debit_account_number||
Amount_Indicator||
Create_Memo_Pad_Entry||
Currency_Code||
Fixed_Amount||
Part_Tran_Type||
Balance_Indicator1||
Excess_Short_Indicator1||
Account_Number||
Account_Balance||
Percentage||
Amount_multiple||
ADM_Account_No||
Round_off_Type||
Round_off_Value||
Collect_Charges||
Report_Code||
Reference_Number||
Tran_particular||
Tran_remarks||
Intent_Code||
DD_payable_bank_code||
DD_payable_branch_code||
Payee_name||
Purchase_Account_Number||
Purchase_Name||
cr_adv_pymnt_flg||
Amount_Indicator1||
Create_Memo_Pad_Entry1||
ADM_Account_No1||
Round_off_Type1||
Round_off_Value1||
Collect_Charges1||
Report_Code1||
Reference_Number1||
Tran_particular1||
Tran_remarks1||
Intent_Code1||
SI_Priority||
si_freq_cal_base||
cr_ceiling_amt||
cr_cumulative_amt||
dr_ceiling_amt||
dr_cumulative_amt||
SI_freq_days_num||
Script_File_Name||
rate_code||
Cr_Rate_code
from bo_cccy_o_table;
--where adm_account_no not like '000%';
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core20_cccy_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core20_cccy_spool_uae.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 1033
set page size 0
set pages 0
set trimspool off
spool $MIG_PATH/output/finacle/core/UAE/CORE020_cccy.txt
select 
SOL_ID||
SI_Freq_Type||
SI_Freq_Week_num||
SI_Freq_Week_Day||
SI_Freq_Start_DD||
SI_Freq_Hldy_Stat||
SI_Execution_code||
SI_end_date||
SI_Next_Execution_Date||
Target_Account||
Balance_Indicator||
Excess_Short_Indicator||
Target_Balance||
Auto_Post_Flag||
Carry_Forward_Allowed_Flag||
Validate_Crncy_Holiday_Flag||
Delete_Trn_if_not_Posted||
Carry_Forward_Limit||
SI_Class||
CIF_ID||
Remarks||
Closure_remarks||
Execution_charge_code||
Failure_charge_code||
Charge_rate_code||
Charge_debit_account_number||
Amount_Indicator||
Create_Memo_Pad_Entry||
Currency_Code||
Fixed_Amount||
Part_Tran_Type||
Balance_Indicator1||
Excess_Short_Indicator1||
Account_Number||
Account_Balance||
Percentage||
Amount_multiple||
ADM_Account_No||
Round_off_Type||
Round_off_Value||
Collect_Charges||
Report_Code||
Reference_Number||
Tran_particular||
Tran_remarks||
Intent_Code||
DD_payable_bank_code||
DD_payable_branch_code||
Payee_name||
Purchase_Account_Number||
Purchase_Name||
cr_adv_pymnt_flg||
Amount_Indicator1||
Create_Memo_Pad_Entry1||
ADM_Account_No1||
Round_off_Type1||
Round_off_Value1||
Collect_Charges1||
Report_Code1||
Reference_Number1||
Tran_particular1||
Tran_remarks1||
Intent_Code1||
SI_Priority||
si_freq_cal_base||
cr_ceiling_amt||
cr_cumulative_amt||
dr_ceiling_amt||
dr_cumulative_amt||
SI_freq_days_num||
Script_File_Name||
rate_code||
Cr_Rate_code
from bo_cccy_o_table;
--where adm_account_no not like '000%';
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core20_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core20_spool_kw.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/KW/CORE020.txt
select 
SOL_ID||
SI_Freq_Type||
SI_Freq_Week_num||
SI_Freq_Week_Day||
SI_Freq_Start_DD||
SI_Freq_Hldy_Stat||
SI_Execution_code||
SI_end_date||
SI_Next_Execution_Date||
Target_Account||
Balance_Indicator||
Excess_Short_Indicator||
Target_Balance||
Auto_Post_Flag||
Carry_Forward_Allowed_Flag||
Validate_Crncy_Holiday_Flag||
Delete_Trn_if_not_Posted||
Carry_Forward_Limit||
SI_Class||
CIF_ID||
Remarks||
Closure_remarks||
Execution_charge_code||
Failure_charge_code||
Charge_rate_code||
Charge_debit_account_number||
Amount_Indicator||
Create_Memo_Pad_Entry||
Currency_Code||
Fixed_Amount||
Part_Tran_Type||
Balance_Indicator1||
Excess_Short_Indicator1||
Account_Number||
Account_Balance||
Percentage||
Amount_multiple||
ADM_Account_No||
Round_off_Type||
Round_off_Value||
Collect_Charges||
Report_Code||
Reference_Number||
Tran_particular||
Tran_remarks||
Intent_Code||
DD_payable_bank_code||
DD_payable_branch_code||
Payee_name||
Purchase_Account_Number||
Purchase_Name||
cr_adv_pymnt_flg||
Amount_Indicator1||
Create_Memo_Pad_Entry1||
ADM_Account_No1||
Round_off_Type1||
Round_off_Value1||
Collect_Charges1||
Report_Code1||
Reference_Number1||
Tran_particular1||
Tran_remarks1||
Intent_Code1||
SI_Priority||
si_freq_cal_base||
cr_ceiling_amt||
cr_cumulative_amt||
dr_ceiling_amt||
dr_cumulative_amt||
SI_freq_days_num||
Script_File_Name
from bo_o_table;
--where adm_account_no not like '000%';
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core20_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
core20_spool_uae.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/UAE/CORE020.txt
select 
SOL_ID||
SI_Freq_Type||
SI_Freq_Week_num||
SI_Freq_Week_Day||
SI_Freq_Start_DD||
SI_Freq_Hldy_Stat||
SI_Execution_code||
SI_end_date||
SI_Next_Execution_Date||
Target_Account||
Balance_Indicator||
Excess_Short_Indicator||
Target_Balance||
Auto_Post_Flag||
Carry_Forward_Allowed_Flag||
Validate_Crncy_Holiday_Flag||
Delete_Trn_if_not_Posted||
Carry_Forward_Limit||
SI_Class||
CIF_ID||
Remarks||
Closure_remarks||
Execution_charge_code||
Failure_charge_code||
Charge_rate_code||
Charge_debit_account_number||
Amount_Indicator||
Create_Memo_Pad_Entry||
Currency_Code||
Fixed_Amount||
Part_Tran_Type||
Balance_Indicator1||
Excess_Short_Indicator1||
Account_Number||
Account_Balance||
Percentage||
Amount_multiple||
ADM_Account_No||
Round_off_Type||
Round_off_Value||
Collect_Charges||
Report_Code||
Reference_Number||
Tran_particular||
Tran_remarks||
Intent_Code||
DD_payable_bank_code||
DD_payable_branch_code||
Payee_name||
Purchase_Account_Number||
Purchase_Name||
cr_adv_pymnt_flg||
Amount_Indicator1||
Create_Memo_Pad_Entry1||
ADM_Account_No1||
Round_off_Type1||
Round_off_Value1||
Collect_Charges1||
Report_Code1||
Reference_Number1||
Tran_particular1||
Tran_remarks1||
Intent_Code1||
SI_Priority||
si_freq_cal_base||
cr_ceiling_amt||
cr_cumulative_amt||
dr_ceiling_amt||
dr_cumulative_amt||
SI_freq_days_num||
Script_File_Name
from bo_o_table
;
--where adm_account_no not like '000%';
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
corp_user_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
corp_user_spool.sql 
-- File Name		: user_account_access_spool.sql
-- File Created for	: user account access
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 18-06-2017
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 3000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ebanking/corporate_e_banking_user.txt
select
TRIM(REC_NUM) ||'|'||
TRIM(CUST_ID) ||'|'||
TRIM(USER_TYPE) ||'|'||
TRIM(CORP_USER) ||'|'||
TRIM(SALUTATION) ||'|'||
TRIM(C_L_NAME) ||'|'||
TRIM(C_M_NAME) ||'|'||
TRIM(C_F_NAME) ||'|'||
TRIM(C_EMAIL_ID) ||'|'||
TRIM(C_ADDR1) ||'|'||
TRIM(C_ADDR2) ||'|'||
TRIM(C_ADDR3) ||'|'||
TRIM(C_CITY) ||'|'||
TRIM(C_STATE) ||'|'||
TRIM(C_CNTRY) ||'|'||
TRIM(C_ZIP) ||'|'||
TRIM(C_PHONE_NO) ||'|'||
TRIM(C_M_PHONE_NO) ||'|'||
TRIM(C_FAX_NO) ||'|'||
TRIM(PRIM_ACID) ||'|'||
TRIM(P_BRANCH_ID) ||'|'||
TRIM(C_GENDER) ||'|'||
TRIM(to_char(DATE_OF_BIRTH,'DD-Mon-YYYY')) ||'|'||
TRIM(MARITAL_STATUS) ||'|'||
TRIM(to_char(ANNIVERSARY_DATE,'DD-Mon-YYYY')) ||'|'||
TRIM(OCCUPATION) ||'|'||
TRIM(PASSPORT_NUMBER) ||'|'||
TRIM(PASSPORT_ISSUE_DATE) ||'|'||
TRIM(PASSPORT_DETAILS) ||'|'||
TRIM(PASSPORT_EXPIRY_DATE) ||'|'||
TRIM(PAN_NATIONAL_ID) ||'|'||
TRIM(PRINCIPAL_ID) ||'|'||
TRIM(BAY_USER_ID) ||'|'||
TRIM(LANG_ID) ||'|'||
TRIM(SMS_ENABLED) ||'|'||
TRIM(SMS_MOBILE_NO) ||'|'||
TRIM(IS_MASTER_CIF)||'|'||
trim(SERVICE_PROVIDER)
from CORP_E_BANKING_USER_O_TABLE
ORDER BY REC_NUM;
  exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
credit_card_cif_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
credit_card_cif_spool.sql 
-- File Name		: spool Credit Card
-- File Created for	: Credit Card CIF Details.
-- Created By		: Kumaresan.B
-- Client		    : ENBD
-- Created On		: 16-02-2015
-------------------------------------------------------------------
--alter session set "_hash_join_enabled" = true;
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/credit/CREDITCARDCIF.txt
select 
seq_no||
card_no||
fin_cif_id
from CREDIT_CARD_CIF_O_TABLE 
order by seq_no;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
credit_card_dd_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
credit_card_dd_spool.sql 
-- File Name		: spool Credit Card Account
-- File Created for	: Credit Card CIF Details.
-- Created By		: Kumaresan.B
-- Client		    : ENBD
-- Created On		: 18-02-2015
-------------------------------------------------------------------
--alter session set "_hash_join_enabled" = true;
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/credit/CREDITCARDDD.txt
select
SEQ_NO||
ACCOUNT_NO||
FIN_ACC_NUM||
FIN_SOL_ID
from credit_card_dd_o_table
order by to_number(SEQ_NO);
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu1_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu1_spool.sql 
--FileName          :SCU1.sql
--FileCreatedfor    :spooldatatofile
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1200
set page size 0
set pages 0
set trimspool on
CHARACTERSET UTF8
spool $MIG_PATH/output/finacle/cifuae/RC001.txt
select 
trim(ORGKEY)||'|'||
trim(CIF_ID)||'|'||
trim(ENTITYTYPE)||'|'||
trim(CUST_TYPE_CODE)||'|'||
trim(SALUTATION_CODE)||'|'||
trim(CUST_FIRST_NAME)||'|'||
trim(CUST_MIDDLE_NAME)||'|'||
trim(CUST_LAST_NAME)||'|'||
trim(PREFERREDNAME)||'|'||
trim(SHORT_NAME)||'|'||
trim(CUST_DOB)||'|'||
trim(GENDER)||'|'||
trim(OCCUPATION_CODE)||'|'||
trim(NATIONALITY)||'|'||
trim(NATIVELANG_TITLE)||'|'||
trim(NATIVELANG_NAME)||'|'||
trim(DOCUMENT_RECIEVED)||'|'||
trim(STAFF_FLAG)||'|'||
trim(STAFFEMPLOYEEID)||'|'||
trim(MANAGER)||'|'||
trim(CUSTOMERNRE_FLAG)||'|'||
trim(DATEOFBECOMINGNRE)||'|'||
trim(CUSTOMER_MINOR)||'|'||
trim(CUSTOMER_GUARDIAN_ID)||'|'||
trim(MINOR_GUARD_CODE)||'|'||
trim(MINOR_GUARD_NAME)||'|'||
trim(REGION)||'|'||
trim(PRIMARY_SERVICE_CENTRE)||'|'||
trim(RELATIONSHIPOPENINGDATE)||'|'||
trim(STATUS_CODE)||'|'||
trim(CUSTSTATUSCHGDATE)||'|'||
trim(HOUSEHOLD_ID)||'|'||
trim(HOUSEHOLD_NAME)||'|'||
trim(CRNCY_CODE_RETAIL)||'|'||
trim(RATING_CODE)||'|'||
trim(RATING_DATE)||'|'||
trim(CUST_PREF_TILL_DATE)||'|'||
trim(TDS_TBL_CODE)||'|'||
trim(INTRODUCER_ID)||'|'||
trim(INTRODUCER_SALUTATION)||'|'||
trim(INTRODUCER_NAME)||'|'||
trim(INTRODUCER_STATUS_CODE)||'|'||
trim(OFFLINE_CUM_DEBIT_LIMIT)||'|'||
trim(CUST_TOT_TOD_ALWD_TIMES)||'|'||
trim(CUST_COMMU_CODE)||'|'||
trim(CARD_HOLDER)||'|'||
trim(CUST_HLTH)||'|'||
trim(CUST_HLTH_CODE)||'|'||
trim(TFPARTYFLAG)||'|'||
trim(PRIMARY_SOL_ID)||'|'||
trim(CONSTITUTION_REF_CODE)||'|'||
trim(CUSTOTHERBANKCODE)||'|'||
trim(CUST_FIRST_ACCT_DATE)||'|'||
trim(CHARGE_LEVEL_CODE)||'|'||
trim(CHRG_DR_FORACID)||'|'||
trim(CHRG_DR_SOL_ID)||'|'||
trim(CUST_CHRG_HISTORY_FLG)||'|'||
trim(COMBINED_STMT_REQD)||'|'||
trim(LOANS_STMT_TYPE)||'|'||
trim(TD_STMT_TYPE)||'|'||
trim(COMB_STMT_CHRG_CODE)||'|'||
trim(DESPATCH_MODE)||'|'||
trim(CS_LAST_PRINTED_DATE)||'|'||
trim(CS_NEXT_DUE_DATE)||'|'||
trim(ALLOW_SWEEPS)||'|'||
trim(PS_FREQ_TYPE)||'|'||
trim(PS_FREQ_WEEK_NUM)||'|'||
trim(PS_FREQ_WEEK_DAY)||'|'||
trim(PS_FREQ_START_DD)||'|'||
trim(PS_FREQ_HLDY_STAT)||'|'||
trim(ENTITY_TYPE)||'|'||
trim(LINKEDRETAILCIF)||'|'||
trim(HSHLDU_FLAG)||'|'||
trim(SMALL_STR1)||'|'||
trim(SMALL_STR2)||'|'||
trim(SMALL_STR3)||'|'||
trim(SMALL_STR4)||'|'||
trim(SMALL_STR5)||'|'||
trim(SMALL_STR6)||'|'||
trim(SMALL_STR7)||'|'||
trim(SMALL_STR8)||'|'||
trim(SMALL_STR9)||'|'||
trim(SMALL_STR10)||'|'||
trim(MED_STR1)||'|'||
trim(MED_STR2)||'|'||
trim(MED_STR3)||'|'||
trim(MED_STR4)||'|'||
trim(MED_STR5)||'|'||
trim(MED_STR6)||'|'||
trim(MED_STR7)||'|'||
trim(MED_STR8)||'|'||
trim(MED_STR9)||'|'||
trim(MED_STR10)||'|'||
trim(LARGE_STR1)||'|'||
trim(LARGE_STR2)||'|'||
trim(LARGE_STR3)||'|'||
trim(LARGE_STR4)||'|'||
trim(LARGE_STR5)||'|'||
trim(DATE1)||'|'||
trim(DATE2)||'|'||
trim(DATE3)||'|'||
trim(DATE4)||'|'||
trim(DATE5)||'|'||
trim(DATE6)||'|'||
trim(DATE7)||'|'||
trim(DATE8)||'|'||
trim(DATE9)||'|'||
trim(DATE10)||'|'||
trim(NUMBER1)||'|'||
trim(NUMBER2)||'|'||
trim(NUMBER3)||'|'||
trim(NUMBER4)||'|'||
trim(NUMBER5)||'|'||
trim(NUMBER6)||'|'||
trim(NUMBER7)||'|'||
trim(NUMBER8)||'|'||
trim(NUMBER9)||'|'||
trim(NUMBER10)||'|'||
trim(DECIMAL1)||'|'||
trim(DECIMAL2)||'|'||
trim(DECIMAL3)||'|'||
trim(DECIMAL4)||'|'||
trim(DECIMAL5)||'|'||
trim(DECIMAL6)||'|'||
trim(DECIMAL7)||'|'||
trim(DECIMAL8)||'|'||
trim(DECIMAL9)||'|'||
trim(DECIMAL10)||'|'||
trim(CORE_CUST_ID)||'|'||
trim(PERSON_TYPE)||'|'||
trim(CUST_LANGUAGE)||'|'||
trim(CUST_STAFF_STATUS)||'|'||
trim(PHONE)||'|'||
trim(EXTENSION)||'|'||
trim(FAX)||'|'||
trim(FAX_HOME)||'|'||
trim(PHONE_HOME)||'|'||
trim(PHONE_HOME2)||'|'||
trim(PHONE_CELL)||'|'||
trim(EMAIL_HOME)||'|'||
trim(EMAIL_PALM)||'|'||
trim(EMAIL)||'|'||
trim(CITY)||'|'||
trim(PREFERRED_CHANNEL_ID)||'|'||
trim(CUSTOMER_RELATIONSHIP_no)||'|'||
trim(RELATIONSHIP_VALUE)||'|'||
trim(CATEGORY)||'|'||
trim(NUMBEROFPRODUCTS)||'|'||
trim(RELATIONSHIP_MANAGER_ID)||'|'||
trim(RELATIONSHIP_CREATED_BY_ID)||'|'||
trim(URL)||'|'||
trim(STATUS)||'|'||
trim(INDUSTRY)||'|'||
trim(PARENTORG)||'|'||
trim(COMPETITOR)||'|'||
trim(SIC_CODE)||'|'||
trim(CIN)||'|'||
trim(DESIGNATION)||'|'||
trim(ASSISTANT)||'|'||
trim(INTERNAL_SCORE)||'|'||
trim(CREDIT_BUREAU_SCORE_VALIDITY)||'|'||
trim(CREDIT_BUREAU_SCORE)||'|'||
trim(CREDIT_BUREAU_REQUEST_DATE)||'|'||
trim(CREDIT_BUREAU_DESCRIPTION)||'|'||
trim(MAIDEN_MOTHER_NAME)||'|'||
trim(ANNUAL_REVENUE)||'|'||
trim(REVENUE_UNITS)||'|'||
trim(TICKER_SYMBOL)||'|'||
trim(AUTO_APRPOVAL)||'|'||
trim(FREEZE_PRODUCT_SALE)||'|'||
trim(RELATIONSHIP_FIELD_1)||'|'||
trim(RELATIONSHIP_FIELD_2)||'|'||
trim(RELATIONSHIP_FIELD_3)||'|'||
trim(DELINQUENCY_FLAG)||'|'||
trim(CUSTOMER_NRE_FLAG)||'|'||
trim(COMBINED_STMT_FLAG)||'|'||
trim(CUSTOMER_TRADE)||'|'||
trim(PLACE_OF_BIRTH)||'|'||
trim(COUNTRY_OF_BIRTH)||'|'||
trim(PROOF_OF_AGE_FLAG)||'|'||
trim(PROOF_OF_AGE_DOCUMENT)||'|'||
trim(NAME_SUFFIX)||'|'||
trim(MAIDEN_NAME)||'|'||
trim(CUSTOMER_PROFITABILITY)||'|'||
trim(CURRENT_CR_EXPOSURE)||'|'||
trim(TOTAL_CREDIT_EXOPSURE)||'|'||
trim(POTENTIAL_CREDIT_LINE)||'|'||
trim(AVAILABLE_CREDI_LIMIT)||'|'||
trim(CREDIT_SCORE_REQUESTED_FLAG)||'|'||
trim(CREDIRT_HISTORY_REQUESTED_FLG)||'|'||
trim(GROUP_ID)||'|'||
trim(FLG1)||'|'||
trim(FLG2)||'|'||
trim(FLG3)||'|'||
trim(ALERT1)||'|'||
trim(ALERT2)||'|'||
trim(ALERT3)||'|'||
trim(RELATIONSHIP_OFFICER_1)||'|'||
trim(RELATIONSHIP_OFFICER_2)||'|'||
trim(DTDATE1)||'|'||
trim(DTDATE2)||'|'||
trim(DTDATE3)||'|'||
trim(DTDATE4)||'|'||
trim(DTDATE5)||'|'||
trim(DTDATE6)||'|'||
trim(DTDATE7)||'|'||
trim(DTDATE8)||'|'||
trim(DTDATE9)||'|'||
trim(Amount1)||'|'||
trim(Amount2)||'|'||
trim(Amount3)||'|'||
trim(Amount4)||'|'||
trim(Amount5)||'|'||
trim(strfield1)||'|'||
trim(strfield2)||'|'||
trim(strfield3)||'|'||
trim(strfield4)||'|'||
trim(strfield5)||'|'||
trim(strfield6)||'|'||
trim(strfield7)||'|'||
trim(strfield8)||'|'||
trim(strfield9)||'|'||
trim(strfield10)||'|'||
trim(strfield11)||'|'||
trim(strfield12)||'|'||
trim(strfield13)||'|'||
trim(strfield14)||'|'||
trim(strfield15)||'|'||
trim(UserFlag1)||'|'||
trim(UserFlag2)||'|'||
trim(UserFlag3)||'|'||
trim(UserFlag4)||'|'||
trim(MLUserField1)||'|'||
trim(MLUserField2)||'|'||
trim(MLUserField3)||'|'||
trim(MLUserField4)||'|'||
trim(MLUserField5)||'|'||
trim(MLUserField6)||'|'||
trim(MLUserField7)||'|'||
trim(MLUserField8)||'|'||
trim(MLUserField9)||'|'||
trim(MLUserField10)||'|'||
trim(MLUserField11)||'|'||
trim(Notes)||'|'||
trim(Priority_Code)||'|'||
trim(Created_From)||'|'||
trim(Constitution_Code)||'|'||
trim(StrField16)||'|'||
trim(StrField17)||'|'||
trim(StrField18)||'|'||
trim(StrField19)||'|'||
trim(StrField20)||'|'||
trim(StrField21)||'|'||
trim(StrField22)||'|'||
trim(Amount6)||'|'||
trim(Amount7)||'|'||
trim(Amount8)||'|'||
trim(Amount9)||'|'||
trim(Amount10)||'|'||
trim(Amount11)||'|'||
trim(Amount12)||'|'||
trim(IntField1)||'|'||
trim(IntField2)||'|'||
trim(IntField3)||'|'||
trim(IntField4)||'|'||
trim(IntField5)||'|'||
trim(nick_name)||'|'||
trim(mother_name)||'|'||
trim(father_husband_name)||'|'||
trim(previous_name)||'|'||
trim(lead_source)||'|'||
trim(relationship_type)||'|'||
trim(rm_group_id)||'|'||
trim(relationship_level)||'|'||
trim(DSA_ID)||'|'||
trim(photograph_id)||'|'||
trim(Secure_id)||'|'||
trim(Deliquency_Period)||'|'||
trim(AddName1)||'|'||
trim(AddName2)||'|'||
trim(AddName3)||'|'||
trim(AddName4)||'|'||
trim(AddName5)||'|'||
trim(OldEntityCreatedOn)||'|'||
trim(OldEntityType)||'|'||
trim(OldEntityID)||'|'||
trim(Document_Received)||'|'||
trim(Suspend_Notes)||'|'||
trim(Suspend_Reason)||'|'||
trim(Blacklist_Notes)||'|'||
trim(Blacklist_Reason)||'|'||
trim(Negated_Notes)||'|'||
trim(Negated_Reason)||'|'||
trim(Segmentation_Class)||'|'||
trim(Name)||'|'||
trim(Manager_Opinion)||'|'||
trim(Introd_Status)||'|'||
trim(NativeLangCode)||'|'||
trim(MinorAttainMajorDate)||'|'||
trim(NREBecomingOrdDate)||'|'||
trim(Start_Date)||'|'||
trim(Add1_First_Name)||'|'||
trim(Add1_Middle_Name)||'|'||
trim(Add1_Last_Name)||'|'||
trim(Add2_First_Name)||'|'||
trim(Add2_Middle_Name)||'|'||
trim(Add2_Last_Name)||'|'||
trim(Add3_First_Name)||'|'||
trim(Add3_Middle_Name)||'|'||
trim(Add3_Last_Name)||'|'||
trim(Add4_First_Name)||'|'||
trim(Add4_Middle_Name)||'|'||
trim(Add4_Last_Name)||'|'||
trim(Add5_First_Name)||'|'||
trim(Add5_Middle_Name)||'|'||
trim(Add5_Last_Name)||'|'||
trim(Dual_First_Name)||'|'||
trim(Dual_Middle_Name)||'|'||
trim(Dual_Last_Name)||'|'||
trim(Cust_Community)||'|'||
trim(Core_introd_cust_id)||'|'||
trim(Introd_Salutation_code)||'|'||
trim(Tds_cust_id)||'|'||
trim(Nat_id_card_num)||'|'||
trim(Psprt_issue_date)||'|'||
trim(Psprt_det)||'|'||
trim(Psprt_exp_date)||'|'||
trim(Crncy_code)||'|'||
trim(Pref_code)||'|'||
trim(Introd_Status_Code)||'|'||
trim(NativeLangTitle_code)||'|'||
trim(Groupid_code)||'|'||
trim(Sector)||'|'||
trim(SubSector)||'|'||
trim(CustCreationMode)||'|'||
trim(First_Product_Processor)||'|'||
trim(Interface_Reference_ID)||'|'||
trim(cust_health_ref_code)||'|'||
trim(TDS_CIFID)||'|'||
trim(PREF_CODE_RCODE)||'|'||
trim(CUST_SWIFT_CODE_DESC)||'|'||
trim(IS_SWIFT_CODE_OF_BANK)||'|'||
trim(NATIVELANGCODE_CODE)||'|'||
trim(CreatedBySystemID)||'|'||
trim(PreferredEmailType)||'|'||
trim(PreferredPhone)||'|'||
trim(CUST_FIRST_NAME_NATIVE)||'|'||
trim(CUST_MIDDLE_NAME_NATIVE)||'|'||
trim(CUST_LAST_NAME_NATIVE)||'|'||
trim(SHORT_NAME_NATIVE)||'|'||
trim(CUST_FIRST_NAME_NATIVE1)||'|'||
trim(CUST_MIDDLE_NAME_NATIVE1)||'|'||
trim(CUST_LAST_NAME_NATIVE1)||'|'||
trim(SHORT_NAME_NATIVE1)||'|'||
trim(SecondaryRM_ID)||'|'||
trim(TertiaryRM_ID)||'|'||
trim(SUBSEGMENT)||'|'||
trim(ACCESSOWNERGROUP)||'|'||
trim(ACCESSOWNERSEGMENT)||'|'||
trim(ACCESSOWNERBC)||'|'||
trim(ACCESSOWNERAGENT)||'|'||
trim(ACCESSASSIGNEEAGENT)||'|'||
trim(CHARGELEVELCODE)||'|'||
trim(IntUserField1)||'|'||
trim(IntUserField2)||'|'||
trim(IntUserField3)||'|'||
trim(IntUserField4)||'|'||
trim(IntUserField5)||'|'||
trim(StrUserField1)||'|'||
trim(StrUserField2)||'|'||
trim(StrUserField3)||'|'||
trim(StrUserField4)||'|'||
trim(StrUserField5)||'|'||
trim(StrUserField6)||'|'||
trim(StrUserField7)||'|'||
trim(StrUserField8)||'|'||
trim(StrUserField9)||'|'||
trim(StrUserField10)||'|'||
trim(StrUserField11)||'|'||
trim(StrUserField12)||'|'||
trim(StrUserField13)||'|'||
trim(StrUserField14)||'|'||
trim(StrUserField15)||'|'||
trim(StrUserField16)||'|'||
trim(StrUserField17)||'|'||
trim(StrUserField18)||'|'||
trim(StrUserField19)||'|'||
trim(StrUserField20)||'|'||
trim(StrUserField21)||'|'||
trim(StrUserField22)||'|'||
trim(StrUserField23)||'|'||
trim(StrUserField24)||'|'||
trim(StrUserField25)||'|'||
trim(StrUserField26)||'|'||
trim(StrUserField27)||'|'||
trim(StrUserField28)||'|'||
trim(StrUserField29)||'|'||
trim(StrUserField30)||'|'||
trim(DateUserField1)||'|'||
trim(DateUserField2)||'|'||
trim(DateUserField3)||'|'||
trim(DateUserField4)||'|'||
trim(DateUserField5)||'|'||
trim(Back_End_ID)||'|'||
trim(RISK_PROFILE_SCORE)||'|'||
trim(RISK_PROFILE_EXPIRY_DATE)||'|'||
trim(PreferredPhoneType)||'|'||
trim(PreferredEmail)||'|'||
trim(NoOfCreditCards)||'|'||
trim(ReasonForMovingOut)||'|'||
trim(CompetitorProductID)||'|'||
trim(OCCUPATION_TYPE)||'|'||
trim(BANK_ID)||'|'||
trim(ZAKAT_DEDUCTION)||'|'||
trim(ASSET_CLASSIFICATION)||'|'||
trim(CUSTOMER_LEVEL_PROVISIONING)||'|'||
trim(ISLAMIC_BANKING_CUSTOMER)||'|'||
trim(PREFERREDCALENDER)||'|'||
trim(IDTYPER1)||'|'||
trim(IDTYPER2)||'|'||
trim(IDTYPER3)||'|'||
trim(IDTYPER4)||'|'||
trim(IDTYPER5)||'|'||
trim(CUST_LAST_NAME_ALT1)||'|'||
trim(CUST_FIRST_NAME_ALT1)||'|'||
trim(CUST_MIDDLE_NAME_ALT1)||'|'||
trim(STRFIELD6_ALT1)||'|'||
trim(NAME_ALT1)||'|'||
trim(SHORT_NAME_ALT1)||'|'||
trim(ISEBANKINGENABLED)||'|'||
trim(PURGEFLAG)||'|'||
trim(SUSPENDED)||'|'||
trim(BLACKLISTED)||'|'||
trim(NEGATED)||'|'||
trim(ACCOUNTID)||'|'||
trim(ADDRESS_LINE1)||'|'||
trim(ADDRESS_LINE2)||'|'||
trim(ADDRESS_LINE3)||'|'||
trim(STATE)||'|'||
trim(COUNTRY)||'|'||
trim(ZIP)||'|'||
trim(BOCREATEDBYLOGINID)||'|'||
trim(date_of_death)||'|'||
trim(date_of_notifi)||'|'||
trim(riskrating)
from cu1_o_table; 
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu1_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu1_spool_kw.sql 
--FileName          :SCU1.sql
--FileCreatedfor    :spooldatatofile
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1200
set page size 0
set pages 0
set trimspool on
CHARACTERSET UTF8
spool $MIG_PATH/output/finacle/cifkw/RC001.txt
select 
trim(ORGKEY)||'|'||
trim(CIF_ID)||'|'||
trim(ENTITYTYPE)||'|'||
trim(CUST_TYPE_CODE)||'|'||
trim(SALUTATION_CODE)||'|'||
trim(CUST_FIRST_NAME)||'|'||
trim(CUST_MIDDLE_NAME)||'|'||
trim(CUST_LAST_NAME)||'|'||
trim(PREFERREDNAME)||'|'||
trim(SHORT_NAME)||'|'||
trim(CUST_DOB)||'|'||
trim(GENDER)||'|'||
trim(OCCUPATION_CODE)||'|'||
trim(NATIONALITY)||'|'||
trim(NATIVELANG_TITLE)||'|'||
trim(NATIVELANG_NAME)||'|'||
trim(DOCUMENT_RECIEVED)||'|'||
trim(STAFF_FLAG)||'|'||
trim(STAFFEMPLOYEEID)||'|'||
trim(MANAGER)||'|'||
trim(CUSTOMERNRE_FLAG)||'|'||
trim(DATEOFBECOMINGNRE)||'|'||
trim(CUSTOMER_MINOR)||'|'||
trim(CUSTOMER_GUARDIAN_ID)||'|'||
trim(MINOR_GUARD_CODE)||'|'||
trim(MINOR_GUARD_NAME)||'|'||
trim(REGION)||'|'||
trim(PRIMARY_SERVICE_CENTRE)||'|'||
trim(RELATIONSHIPOPENINGDATE)||'|'||
trim(STATUS_CODE)||'|'||
trim(CUSTSTATUSCHGDATE)||'|'||
trim(HOUSEHOLD_ID)||'|'||
trim(HOUSEHOLD_NAME)||'|'||
trim(CRNCY_CODE_RETAIL)||'|'||
trim(RATING_CODE)||'|'||
trim(RATING_DATE)||'|'||
trim(CUST_PREF_TILL_DATE)||'|'||
trim(TDS_TBL_CODE)||'|'||
trim(INTRODUCER_ID)||'|'||
trim(INTRODUCER_SALUTATION)||'|'||
trim(INTRODUCER_NAME)||'|'||
trim(INTRODUCER_STATUS_CODE)||'|'||
trim(OFFLINE_CUM_DEBIT_LIMIT)||'|'||
trim(CUST_TOT_TOD_ALWD_TIMES)||'|'||
trim(CUST_COMMU_CODE)||'|'||
trim(CARD_HOLDER)||'|'||
trim(CUST_HLTH)||'|'||
trim(CUST_HLTH_CODE)||'|'||
trim(TFPARTYFLAG)||'|'||
trim(PRIMARY_SOL_ID)||'|'||
trim(CONSTITUTION_REF_CODE)||'|'||
trim(CUSTOTHERBANKCODE)||'|'||
trim(CUST_FIRST_ACCT_DATE)||'|'||
trim(CHARGE_LEVEL_CODE)||'|'||
trim(CHRG_DR_FORACID)||'|'||
trim(CHRG_DR_SOL_ID)||'|'||
trim(CUST_CHRG_HISTORY_FLG)||'|'||
trim(COMBINED_STMT_REQD)||'|'||
trim(LOANS_STMT_TYPE)||'|'||
trim(TD_STMT_TYPE)||'|'||
trim(COMB_STMT_CHRG_CODE)||'|'||
trim(DESPATCH_MODE)||'|'||
trim(CS_LAST_PRINTED_DATE)||'|'||
trim(CS_NEXT_DUE_DATE)||'|'||
trim(ALLOW_SWEEPS)||'|'||
trim(PS_FREQ_TYPE)||'|'||
trim(PS_FREQ_WEEK_NUM)||'|'||
trim(PS_FREQ_WEEK_DAY)||'|'||
trim(PS_FREQ_START_DD)||'|'||
trim(PS_FREQ_HLDY_STAT)||'|'||
trim(ENTITY_TYPE)||'|'||
trim(LINKEDRETAILCIF)||'|'||
trim(HSHLDU_FLAG)||'|'||
trim(SMALL_STR1)||'|'||
trim(SMALL_STR2)||'|'||
trim(SMALL_STR3)||'|'||
trim(SMALL_STR4)||'|'||
trim(SMALL_STR5)||'|'||
trim(SMALL_STR6)||'|'||
trim(SMALL_STR7)||'|'||
trim(SMALL_STR8)||'|'||
trim(SMALL_STR9)||'|'||
trim(SMALL_STR10)||'|'||
trim(MED_STR1)||'|'||
trim(MED_STR2)||'|'||
trim(MED_STR3)||'|'||
trim(MED_STR4)||'|'||
trim(MED_STR5)||'|'||
trim(MED_STR6)||'|'||
trim(MED_STR7)||'|'||
trim(MED_STR8)||'|'||
trim(MED_STR9)||'|'||
trim(MED_STR10)||'|'||
trim(LARGE_STR1)||'|'||
trim(LARGE_STR2)||'|'||
trim(LARGE_STR3)||'|'||
trim(LARGE_STR4)||'|'||
trim(LARGE_STR5)||'|'||
trim(DATE1)||'|'||
trim(DATE2)||'|'||
trim(DATE3)||'|'||
trim(DATE4)||'|'||
trim(DATE5)||'|'||
trim(DATE6)||'|'||
trim(DATE7)||'|'||
trim(DATE8)||'|'||
trim(DATE9)||'|'||
trim(DATE10)||'|'||
trim(NUMBER1)||'|'||
trim(NUMBER2)||'|'||
trim(NUMBER3)||'|'||
trim(NUMBER4)||'|'||
trim(NUMBER5)||'|'||
trim(NUMBER6)||'|'||
trim(NUMBER7)||'|'||
trim(NUMBER8)||'|'||
trim(NUMBER9)||'|'||
trim(NUMBER10)||'|'||
trim(DECIMAL1)||'|'||
trim(DECIMAL2)||'|'||
trim(DECIMAL3)||'|'||
trim(DECIMAL4)||'|'||
trim(DECIMAL5)||'|'||
trim(DECIMAL6)||'|'||
trim(DECIMAL7)||'|'||
trim(DECIMAL8)||'|'||
trim(DECIMAL9)||'|'||
trim(DECIMAL10)||'|'||
trim(CORE_CUST_ID)||'|'||
trim(PERSON_TYPE)||'|'||
trim(CUST_LANGUAGE)||'|'||
trim(CUST_STAFF_STATUS)||'|'||
trim(PHONE)||'|'||
trim(EXTENSION)||'|'||
trim(FAX)||'|'||
trim(FAX_HOME)||'|'||
trim(PHONE_HOME)||'|'||
trim(PHONE_HOME2)||'|'||
trim(PHONE_CELL)||'|'||
trim(EMAIL_HOME)||'|'||
trim(EMAIL_PALM)||'|'||
trim(EMAIL)||'|'||
trim(CITY)||'|'||
trim(PREFERRED_CHANNEL_ID)||'|'||
trim(CUSTOMER_RELATIONSHIP_no)||'|'||
trim(RELATIONSHIP_VALUE)||'|'||
trim(CATEGORY)||'|'||
trim(NUMBEROFPRODUCTS)||'|'||
trim(RELATIONSHIP_MANAGER_ID)||'|'||
trim(RELATIONSHIP_CREATED_BY_ID)||'|'||
trim(URL)||'|'||
trim(STATUS)||'|'||
trim(INDUSTRY)||'|'||
trim(PARENTORG)||'|'||
trim(COMPETITOR)||'|'||
trim(SIC_CODE)||'|'||
trim(CIN)||'|'||
trim(DESIGNATION)||'|'||
trim(ASSISTANT)||'|'||
trim(INTERNAL_SCORE)||'|'||
trim(CREDIT_BUREAU_SCORE_VALIDITY)||'|'||
trim(CREDIT_BUREAU_SCORE)||'|'||
trim(CREDIT_BUREAU_REQUEST_DATE)||'|'||
trim(CREDIT_BUREAU_DESCRIPTION)||'|'||
trim(MAIDEN_MOTHER_NAME)||'|'||
trim(ANNUAL_REVENUE)||'|'||
trim(REVENUE_UNITS)||'|'||
trim(TICKER_SYMBOL)||'|'||
trim(AUTO_APRPOVAL)||'|'||
trim(FREEZE_PRODUCT_SALE)||'|'||
trim(RELATIONSHIP_FIELD_1)||'|'||
trim(RELATIONSHIP_FIELD_2)||'|'||
trim(RELATIONSHIP_FIELD_3)||'|'||
trim(DELINQUENCY_FLAG)||'|'||
trim(CUSTOMER_NRE_FLAG)||'|'||
trim(COMBINED_STMT_FLAG)||'|'||
trim(CUSTOMER_TRADE)||'|'||
trim(PLACE_OF_BIRTH)||'|'||
trim(COUNTRY_OF_BIRTH)||'|'||
trim(PROOF_OF_AGE_FLAG)||'|'||
trim(PROOF_OF_AGE_DOCUMENT)||'|'||
trim(NAME_SUFFIX)||'|'||
trim(MAIDEN_NAME)||'|'||
trim(CUSTOMER_PROFITABILITY)||'|'||
trim(CURRENT_CR_EXPOSURE)||'|'||
trim(TOTAL_CREDIT_EXOPSURE)||'|'||
trim(POTENTIAL_CREDIT_LINE)||'|'||
trim(AVAILABLE_CREDI_LIMIT)||'|'||
trim(CREDIT_SCORE_REQUESTED_FLAG)||'|'||
trim(CREDIRT_HISTORY_REQUESTED_FLG)||'|'||
trim(GROUP_ID)||'|'||
trim(FLG1)||'|'||
trim(FLG2)||'|'||
trim(FLG3)||'|'||
trim(ALERT1)||'|'||
trim(ALERT2)||'|'||
trim(ALERT3)||'|'||
trim(RELATIONSHIP_OFFICER_1)||'|'||
trim(RELATIONSHIP_OFFICER_2)||'|'||
trim(DTDATE1)||'|'||
trim(DTDATE2)||'|'||
trim(DTDATE3)||'|'||
trim(DTDATE4)||'|'||
trim(DTDATE5)||'|'||
trim(DTDATE6)||'|'||
trim(DTDATE7)||'|'||
trim(DTDATE8)||'|'||
trim(DTDATE9)||'|'||
trim(Amount1)||'|'||
trim(Amount2)||'|'||
trim(Amount3)||'|'||
trim(Amount4)||'|'||
trim(Amount5)||'|'||
trim(strfield1)||'|'||
trim(strfield2)||'|'||
trim(strfield3)||'|'||
trim(strfield4)||'|'||
trim(strfield5)||'|'||
trim(strfield6)||'|'||
trim(strfield7)||'|'||
trim(strfield8)||'|'||
trim(strfield9)||'|'||
trim(strfield10)||'|'||
trim(strfield11)||'|'||
trim(strfield12)||'|'||
trim(strfield13)||'|'||
trim(strfield14)||'|'||
trim(strfield15)||'|'||
trim(UserFlag1)||'|'||
trim(UserFlag2)||'|'||
trim(UserFlag3)||'|'||
trim(UserFlag4)||'|'||
trim(MLUserField1)||'|'||
trim(MLUserField2)||'|'||
trim(MLUserField3)||'|'||
trim(MLUserField4)||'|'||
trim(MLUserField5)||'|'||
trim(MLUserField6)||'|'||
trim(MLUserField7)||'|'||
trim(MLUserField8)||'|'||
trim(MLUserField9)||'|'||
trim(MLUserField10)||'|'||
trim(MLUserField11)||'|'||
trim(Notes)||'|'||
trim(Priority_Code)||'|'||
trim(Created_From)||'|'||
trim(Constitution_Code)||'|'||
trim(StrField16)||'|'||
trim(StrField17)||'|'||
trim(StrField18)||'|'||
trim(StrField19)||'|'||
trim(StrField20)||'|'||
trim(StrField21)||'|'||
trim(StrField22)||'|'||
trim(Amount6)||'|'||
trim(Amount7)||'|'||
trim(Amount8)||'|'||
trim(Amount9)||'|'||
trim(Amount10)||'|'||
trim(Amount11)||'|'||
trim(Amount12)||'|'||
trim(IntField1)||'|'||
trim(IntField2)||'|'||
trim(IntField3)||'|'||
trim(IntField4)||'|'||
trim(IntField5)||'|'||
trim(nick_name)||'|'||
trim(mother_name)||'|'||
trim(father_husband_name)||'|'||
trim(previous_name)||'|'||
trim(lead_source)||'|'||
trim(relationship_type)||'|'||
trim(rm_group_id)||'|'||
trim(relationship_level)||'|'||
trim(DSA_ID)||'|'||
trim(photograph_id)||'|'||
trim(Secure_id)||'|'||
trim(Deliquency_Period)||'|'||
trim(AddName1)||'|'||
trim(AddName2)||'|'||
trim(AddName3)||'|'||
trim(AddName4)||'|'||
trim(AddName5)||'|'||
trim(OldEntityCreatedOn)||'|'||
trim(OldEntityType)||'|'||
trim(OldEntityID)||'|'||
trim(Document_Received)||'|'||
trim(Suspend_Notes)||'|'||
trim(Suspend_Reason)||'|'||
trim(Blacklist_Notes)||'|'||
trim(Blacklist_Reason)||'|'||
trim(Negated_Notes)||'|'||
trim(Negated_Reason)||'|'||
trim(Segmentation_Class)||'|'||
trim(Name)||'|'||
trim(Manager_Opinion)||'|'||
trim(Introd_Status)||'|'||
trim(NativeLangCode)||'|'||
trim(MinorAttainMajorDate)||'|'||
trim(NREBecomingOrdDate)||'|'||
trim(Start_Date)||'|'||
trim(Add1_First_Name)||'|'||
trim(Add1_Middle_Name)||'|'||
trim(Add1_Last_Name)||'|'||
trim(Add2_First_Name)||'|'||
trim(Add2_Middle_Name)||'|'||
trim(Add2_Last_Name)||'|'||
trim(Add3_First_Name)||'|'||
trim(Add3_Middle_Name)||'|'||
trim(Add3_Last_Name)||'|'||
trim(Add4_First_Name)||'|'||
trim(Add4_Middle_Name)||'|'||
trim(Add4_Last_Name)||'|'||
trim(Add5_First_Name)||'|'||
trim(Add5_Middle_Name)||'|'||
trim(Add5_Last_Name)||'|'||
trim(Dual_First_Name)||'|'||
trim(Dual_Middle_Name)||'|'||
trim(Dual_Last_Name)||'|'||
trim(Cust_Community)||'|'||
trim(Core_introd_cust_id)||'|'||
trim(Introd_Salutation_code)||'|'||
trim(Tds_cust_id)||'|'||
trim(Nat_id_card_num)||'|'||
trim(Psprt_issue_date)||'|'||
trim(Psprt_det)||'|'||
trim(Psprt_exp_date)||'|'||
trim(Crncy_code)||'|'||
trim(Pref_code)||'|'||
trim(Introd_Status_Code)||'|'||
trim(NativeLangTitle_code)||'|'||
trim(Groupid_code)||'|'||
trim(Sector)||'|'||
trim(SubSector)||'|'||
trim(CustCreationMode)||'|'||
trim(First_Product_Processor)||'|'||
trim(Interface_Reference_ID)||'|'||
trim(cust_health_ref_code)||'|'||
trim(TDS_CIFID)||'|'||
trim(PREF_CODE_RCODE)||'|'||
trim(CUST_SWIFT_CODE_DESC)||'|'||
trim(IS_SWIFT_CODE_OF_BANK)||'|'||
trim(NATIVELANGCODE_CODE)||'|'||
trim(CreatedBySystemID)||'|'||
trim(PreferredEmailType)||'|'||
trim(PreferredPhone)||'|'||
trim(CUST_FIRST_NAME_NATIVE)||'|'||
trim(CUST_MIDDLE_NAME_NATIVE)||'|'||
trim(CUST_LAST_NAME_NATIVE)||'|'||
trim(SHORT_NAME_NATIVE)||'|'||
trim(CUST_FIRST_NAME_NATIVE1)||'|'||
trim(CUST_MIDDLE_NAME_NATIVE1)||'|'||
trim(CUST_LAST_NAME_NATIVE1)||'|'||
trim(SHORT_NAME_NATIVE1)||'|'||
trim(SecondaryRM_ID)||'|'||
trim(TertiaryRM_ID)||'|'||
trim(SUBSEGMENT)||'|'||
trim(ACCESSOWNERGROUP)||'|'||
trim(ACCESSOWNERSEGMENT)||'|'||
trim(ACCESSOWNERBC)||'|'||
trim(ACCESSOWNERAGENT)||'|'||
trim(ACCESSASSIGNEEAGENT)||'|'||
trim(CHARGELEVELCODE)||'|'||
trim(IntUserField1)||'|'||
trim(IntUserField2)||'|'||
trim(IntUserField3)||'|'||
trim(IntUserField4)||'|'||
trim(IntUserField5)||'|'||
trim(StrUserField1)||'|'||
trim(StrUserField2)||'|'||
trim(StrUserField3)||'|'||
trim(StrUserField4)||'|'||
trim(StrUserField5)||'|'||
trim(StrUserField6)||'|'||
trim(StrUserField7)||'|'||
trim(StrUserField8)||'|'||
trim(StrUserField9)||'|'||
trim(StrUserField10)||'|'||
trim(StrUserField11)||'|'||
trim(StrUserField12)||'|'||
trim(StrUserField13)||'|'||
trim(StrUserField14)||'|'||
trim(StrUserField15)||'|'||
trim(StrUserField16)||'|'||
trim(StrUserField17)||'|'||
trim(StrUserField18)||'|'||
trim(StrUserField19)||'|'||
trim(StrUserField20)||'|'||
trim(StrUserField21)||'|'||
trim(StrUserField22)||'|'||
trim(StrUserField23)||'|'||
trim(StrUserField24)||'|'||
trim(StrUserField25)||'|'||
trim(StrUserField26)||'|'||
trim(StrUserField27)||'|'||
trim(StrUserField28)||'|'||
trim(StrUserField29)||'|'||
trim(StrUserField30)||'|'||
trim(DateUserField1)||'|'||
trim(DateUserField2)||'|'||
trim(DateUserField3)||'|'||
trim(DateUserField4)||'|'||
trim(DateUserField5)||'|'||
trim(Back_End_ID)||'|'||
trim(RISK_PROFILE_SCORE)||'|'||
trim(RISK_PROFILE_EXPIRY_DATE)||'|'||
trim(PreferredPhoneType)||'|'||
trim(PreferredEmail)||'|'||
trim(NoOfCreditCards)||'|'||
trim(ReasonForMovingOut)||'|'||
trim(CompetitorProductID)||'|'||
trim(OCCUPATION_TYPE)||'|'||
trim(BANK_ID)||'|'||
trim(ZAKAT_DEDUCTION)||'|'||
trim(ASSET_CLASSIFICATION)||'|'||
trim(CUSTOMER_LEVEL_PROVISIONING)||'|'||
trim(ISLAMIC_BANKING_CUSTOMER)||'|'||
trim(PREFERREDCALENDER)||'|'||
trim(IDTYPER1)||'|'||
trim(IDTYPER2)||'|'||
trim(IDTYPER3)||'|'||
trim(IDTYPER4)||'|'||
trim(IDTYPER5)||'|'||
trim(CUST_LAST_NAME_ALT1)||'|'||
trim(CUST_FIRST_NAME_ALT1)||'|'||
trim(CUST_MIDDLE_NAME_ALT1)||'|'||
trim(STRFIELD6_ALT1)||'|'||
trim(NAME_ALT1)||'|'||
trim(SHORT_NAME_ALT1)||'|'||
trim(ISEBANKINGENABLED)||'|'||
trim(PURGEFLAG)||'|'||
trim(SUSPENDED)||'|'||
trim(BLACKLISTED)||'|'||
trim(NEGATED)||'|'||
trim(ACCOUNTID)||'|'||
trim(ADDRESS_LINE1)||'|'||
trim(ADDRESS_LINE2)||'|'||
trim(ADDRESS_LINE3)||'|'||
trim(STATE)||'|'||
trim(COUNTRY)||'|'||
trim(ZIP)||'|'||
trim(BOCREATEDBYLOGINID)||'|'||
trim(DATE_OF_DEATH)||'|'||
trim(DATE_OF_NOTIFI)||'|'||
trim(RISKRATING)
from cu1_o_table; 
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu2_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu2_spool.sql 
set head off
set feedback off
set term off
set lines 1200
set pagesize 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifuae/RC002.txt
select 
  (
trim(ORGKEY)||'|'||
trim(ADDRESSCATEGORY)||'|'||
trim(START_DATE)||'|'||
trim(PHONENO1LOCALCODE)||'|'||
trim(PHONENO1CITYCODE)||'|'||
trim(PHONENO1COUNTRYCODE)||'|'||
trim(PHONENO2LOCALCODE)||'|'||
trim(PHONENO2CITYCODE)||'|'||
trim(PHONENO2COUNTRYCODE)||'|'||
trim(WORKEXTENSION)||'|'||
trim(FAXNOLOCALCODE)||'|'||
trim(FAXNOCITYCODE)||'|'||
trim(FAXNOCOUNTRYCODE)||'|'||
trim(EMAIL)||'|'||
trim(PAGERNOLOCALCODE)||'|'||
trim(PAGERNOCITYCODE)||'|'||
trim(PAGERNOCOUNTRYCODE)||'|'||
trim(TELEXLOCALCODE)||'|'||
trim(TELEXCITYCODE)||'|'||
trim(TELEXCOUNTRYCODE)||'|'||
trim(HOUSE_NO)||'|'||
trim(PREMISE_NAME)||'|'||
trim(BUILDING_LEVEL)||'|'||
trim(STREET_NO)||'|'||
trim(STREET_NAME)||'|'||
trim(SUBURB)||'|'||
trim(LOCALITY_NAME)||'|'||
trim(TOWN)||'|'||
trim(DOMICILE)||'|'||
trim(CITY_CODE)||'|'||
trim(STATE_CODE)||'|'||
trim(ZIP)||'|'||
trim(COUNTRY_CODE)||'|'||
trim(ADDRESS_LINE1)||'|'||
trim(ADDRESS_LINE2)||'|'||
trim(ADDRESS_LINE3)||'|'||
trim(END_DATE)||'|'||
trim(SMALL_STR1)||'|'||
trim(SMALL_STR2)||'|'||
trim(SMALL_STR3)||'|'||
trim(SMALL_STR4)||'|'||
trim(SMALL_STR5)||'|'||
trim(SMALL_STR6)||'|'||
trim(SMALL_STR7)||'|'||
trim(SMALL_STR8)||'|'||
trim(SMALL_STR9)||'|'||
trim(SMALL_STR10)||'|'||
trim(MED_STR1)||'|'||
trim(MED_STR2)||'|'||
trim(MED_STR3)||'|'||
trim(MED_STR4)||'|'||
trim(MED_STR5)||'|'||
trim(MED_STR6)||'|'||
trim(MED_STR7)||'|'||
trim(MED_STR8)||'|'||
trim(MED_STR9)||'|'||
trim(MED_STR10)||'|'||
trim(LARGE_STR1)||'|'||
trim(LARGE_STR2)||'|'||
trim(LARGE_STR3)||'|'||
trim(LARGE_STR4)||'|'||
trim(LARGE_STR5)||'|'||
trim(DATE1)||'|'||
trim(DATE2)||'|'||
trim(DATE3)||'|'||
trim(DATE4)||'|'||
trim(DATE5)||'|'||
trim(DATE6)||'|'||
trim(DATE7)||'|'||
trim(DATE8)||'|'||
trim(DATE9)||'|'||
trim(DATE10)||'|'||
trim(NUMBER1)||'|'||
trim(NUMBER2)||'|'||
trim(NUMBER3)||'|'||
trim(NUMBER4)||'|'||
trim(NUMBER5)||'|'||
trim(NUMBER6)||'|'||
trim(NUMBER7)||'|'||
trim(NUMBER8)||'|'||
trim(NUMBER9)||'|'||
trim(NUMBER10)||'|'||
trim(DECIMAL1)||'|'||
trim(DECIMAL2)||'|'||
trim(DECIMAL3)||'|'||
trim(DECIMAL4)||'|'||
trim(DECIMAL5)||'|'||
trim(DECIMAL6)||'|'||
trim(DECIMAL7)||'|'||
trim(DECIMAL8)||'|'||
trim(DECIMAL9)||'|'||
trim(DECIMAL10)||'|'||
trim(CIFID)||'|'||
trim(PREFERREDADDRSS)||'|'||
trim(HOLDMAILINITIATEDBY)||'|'||
trim(HOLDMAILFLAG)||'|'||
trim(BUSINESSCENTER)||'|'||
trim(HOLDMAILREASON)||'|'||
trim(PREFERREDFORMAT)||'|'||
trim(FREETEXTADDRESS)||'|'||
trim(FREETEXTLABEL)||'|'||
trim(ADDRESS_PROOF_RCVD)||'|'||
trim(LASTUPDATE_DATE)||'|'||
trim(BANK_ID)
  ) 
from cu2_o_table;
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu2_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu2_spool_kw.sql 
set head off
set feedback off
set term off
set lines 1200
set pagesize 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifkw/RC002.txt
select 
  (
trim(ORGKEY)||'|'||
trim(ADDRESSCATEGORY)||'|'||
trim(START_DATE)||'|'||
trim(PHONENO1LOCALCODE)||'|'||
trim(PHONENO1CITYCODE)||'|'||
trim(PHONENO1COUNTRYCODE)||'|'||
trim(PHONENO2LOCALCODE)||'|'||
trim(PHONENO2CITYCODE)||'|'||
trim(PHONENO2COUNTRYCODE)||'|'||
trim(WORKEXTENSION)||'|'||
trim(FAXNOLOCALCODE)||'|'||
trim(FAXNOCITYCODE)||'|'||
trim(FAXNOCOUNTRYCODE)||'|'||
trim(EMAIL)||'|'||
trim(PAGERNOLOCALCODE)||'|'||
trim(PAGERNOCITYCODE)||'|'||
trim(PAGERNOCOUNTRYCODE)||'|'||
trim(TELEXLOCALCODE)||'|'||
trim(TELEXCITYCODE)||'|'||
trim(TELEXCOUNTRYCODE)||'|'||
trim(HOUSE_NO)||'|'||
trim(PREMISE_NAME)||'|'||
trim(BUILDING_LEVEL)||'|'||
trim(STREET_NO)||'|'||
trim(STREET_NAME)||'|'||
trim(SUBURB)||'|'||
trim(LOCALITY_NAME)||'|'||
trim(TOWN)||'|'||
trim(DOMICILE)||'|'||
trim(CITY_CODE)||'|'||
trim(STATE_CODE)||'|'||
trim(ZIP)||'|'||
trim(COUNTRY_CODE)||'|'||
trim(ADDRESS_LINE1)||'|'||
trim(ADDRESS_LINE2)||'|'||
trim(ADDRESS_LINE3)||'|'||
trim(END_DATE)||'|'||
trim(SMALL_STR1)||'|'||
trim(SMALL_STR2)||'|'||
trim(SMALL_STR3)||'|'||
trim(SMALL_STR4)||'|'||
trim(SMALL_STR5)||'|'||
trim(SMALL_STR6)||'|'||
trim(SMALL_STR7)||'|'||
trim(SMALL_STR8)||'|'||
trim(SMALL_STR9)||'|'||
trim(SMALL_STR10)||'|'||
trim(MED_STR1)||'|'||
trim(MED_STR2)||'|'||
trim(MED_STR3)||'|'||
trim(MED_STR4)||'|'||
trim(MED_STR5)||'|'||
trim(MED_STR6)||'|'||
trim(MED_STR7)||'|'||
trim(MED_STR8)||'|'||
trim(MED_STR9)||'|'||
trim(MED_STR10)||'|'||
trim(LARGE_STR1)||'|'||
trim(LARGE_STR2)||'|'||
trim(LARGE_STR3)||'|'||
trim(LARGE_STR4)||'|'||
trim(LARGE_STR5)||'|'||
trim(DATE1)||'|'||
trim(DATE2)||'|'||
trim(DATE3)||'|'||
trim(DATE4)||'|'||
trim(DATE5)||'|'||
trim(DATE6)||'|'||
trim(DATE7)||'|'||
trim(DATE8)||'|'||
trim(DATE9)||'|'||
trim(DATE10)||'|'||
trim(NUMBER1)||'|'||
trim(NUMBER2)||'|'||
trim(NUMBER3)||'|'||
trim(NUMBER4)||'|'||
trim(NUMBER5)||'|'||
trim(NUMBER6)||'|'||
trim(NUMBER7)||'|'||
trim(NUMBER8)||'|'||
trim(NUMBER9)||'|'||
trim(NUMBER10)||'|'||
trim(DECIMAL1)||'|'||
trim(DECIMAL2)||'|'||
trim(DECIMAL3)||'|'||
trim(DECIMAL4)||'|'||
trim(DECIMAL5)||'|'||
trim(DECIMAL6)||'|'||
trim(DECIMAL7)||'|'||
trim(DECIMAL8)||'|'||
trim(DECIMAL9)||'|'||
trim(DECIMAL10)||'|'||
trim(CIFID)||'|'||
trim(PREFERREDADDRSS)||'|'||
trim(HOLDMAILINITIATEDBY)||'|'||
trim(HOLDMAILFLAG)||'|'||
trim(BUSINESSCENTER)||'|'||
trim(HOLDMAILREASON)||'|'||
trim(PREFERREDFORMAT)||'|'||
trim(FREETEXTADDRESS)||'|'||
trim(FREETEXTLABEL)||'|'||
trim(ADDRESS_PROOF_RCVD)||'|'||
trim(LASTUPDATE_DATE)||'|'||
trim(BANK_ID)
  ) 
from cu2_o_table;
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu3_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu3_spool.sql 
set head off
set feedback off
set term off
set lines 1200
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifuae/RC003.txt
SELECT 
trim(ORGKEY)||'|'||
trim(CIF_ID)||'|'||
trim(STRTEXT1)||'|'||
trim(STRTEXT2)||'|'||
trim(TYPE)||'|'||
trim(CUSTOMERCURRENCY)||'|'||
trim(CREDITDISCOUNTPERCENT)||'|'||
trim(DEBITDISCOUNTPERCENT)||'|'||
trim(WITHHOLDTAXPCNT)||'|'||
trim(WITHHOLDTAXFLOORLMT)||'|'||
trim(DTDATE1)||'|'||
trim(DTDATE2)||'|'||
trim(COUNTRYOFISSUE_CODE)||'|'||
trim(SMALL_STR1)||'|'||
trim(SMALL_STR2)||'|'||
trim(SMALL_STR3)||'|'||
trim(SMALL_STR4)||'|'||
trim(SMALL_STR5)||'|'||
trim(SMALL_STR6)||'|'||
trim(SMALL_STR7)||'|'||
trim(SMALL_STR8)||'|'||
trim(SMALL_STR9)||'|'||
trim(SMALL_STR10)||'|'||
trim(MED_STR1)||'|'||
trim(MED_STR2)||'|'||
trim(MED_STR3)||'|'||
trim(MED_STR4)||'|'||
trim(MED_STR5)||'|'||
trim(MED_STR6)||'|'||
trim(MED_STR7)||'|'||
trim(MED_STR8)||'|'||
trim(MED_STR9)||'|'||
trim(MED_STR10)||'|'||
trim(LARGE_STR1)||'|'||
trim(LARGE_STR2)||'|'||
trim(LARGE_STR3)||'|'||
trim(LARGE_STR4)||'|'||
trim(LARGE_STR5)||'|'||
trim(DATE1)||'|'||
trim(DATE2)||'|'||
trim(DATE3)||'|'||
trim(DATE4)||'|'||
trim(DATE5)||'|'||
trim(DATE6)||'|'||
trim(DATE7)||'|'||
trim(DATE8)||'|'||
trim(DATE9)||'|'||
trim(DATE10)||'|'||
trim(NUMBER1)||'|'||
trim(NUMBER2)||'|'||
trim(NUMBER3)||'|'||
trim(NUMBER4)||'|'||
trim(NUMBER5)||'|'||
trim(NUMBER6)||'|'||
trim(NUMBER7)||'|'||
trim(NUMBER8)||'|'||
trim(NUMBER9)||'|'||
trim(NUMBER10)||'|'||
trim(DECIMAL1)||'|'||
trim(DECIMAL2)||'|'||
trim(DECIMAL3)||'|'||
trim(DECIMAL4)||'|'||
trim(DECIMAL5)||'|'||
trim(DECIMAL6)||'|'||
trim(DECIMAL7)||'|'||
trim(DECIMAL8)||'|'||
trim(DECIMAL9)||'|'||
trim(DECIMAL10)||'|'||
trim(STRTEXT3)||'|'||
trim(STRTEXT4)||'|'||
trim(STRTEXT5)||'|'||
trim(STRTEXT6)||'|'||
trim(STRTEXT7)||'|'||
trim(STRTEXT8)||'|'||
trim(STRTEXT9)||'|'||
trim(STRTEXT10)||'|'||
trim(INTINTEGER1)||'|'||
trim(INTINTEGER2)||'|'||
trim(INTINTEGER3)||'|'||
trim(INTINTEGER4)||'|'||
trim(INTINTEGER5)||'|'||
trim(INTINTEGER6)||'|'||
trim(INTINTEGER7)||'|'||
trim(INTINTEGER8)||'|'||
trim(INTINTEGER9)||'|'||
trim(INTINTEGER10)||'|'||
trim(INTINTEGER11)||'|'||
trim(INTINTEGER12)||'|'||
trim(INTINTEGER13)||'|'||
trim(INTINTEGER14)||'|'||
trim(INTINTEGER15)||'|'||
trim(DTDATE3)||'|'||
trim(DTDATE4)||'|'||
trim(DTDATE5)||'|'||
trim(DBFLOAT1)||'|'||
trim(DBFLOAT2)||'|'||
trim(DBFLOAT3)||'|'||
trim(DBFLOAT4)||'|'||
trim(DBFLOAT5)||'|'||
trim(STRTEXT11)||'|'||
trim(STRTEXT12)||'|'||
trim(STRTEXT13)||'|'||
trim(STRTEXT14)||'|'||
trim(STRTEXT15)||'|'||
trim(STRTEXT16)||'|'||
trim(STRTEXT17)||'|'||
trim(STRTEXT18)||'|'||
trim(STRTEXT19)||'|'||
trim(STRTEXT20)||'|'||
trim(STRTEXT21)||'|'||
trim(STRTEXT22)||'|'||
trim(STRTEXT23)||'|'||
trim(STRTEXT24)||'|'||
trim(STRTEXT25)||'|'||
trim(STRTEXT26)||'|'||
trim(STRTEXT27)||'|'||
trim(EMPLOYERID)||'|'||
trim(EMPLOYEEID)||'|'||
trim(STRTEXT1_CODE)||'|'||
trim(STRTEXT2_CODE)||'|'||
trim(STRTEXT28)||'|'||
trim(BANK_ID)||'|'||
trim(STRTEXT4_ALT1)
  FROM cu3_o_table; 
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu3_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu3_spool_kw.sql 
set head off
set feedback off
set term off
set lines 1200
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifkw/RC003.txt
SELECT 
trim(ORGKEY)||'|'||
trim(CIF_ID)||'|'||
trim(STRTEXT2)||'|'||
trim(STRTEXT1)||'|'||
trim(TYPE)||'|'||
trim(CUSTOMERCURRENCY)||'|'||
trim(CREDITDISCOUNTPERCENT)||'|'||
trim(DEBITDISCOUNTPERCENT)||'|'||
trim(WITHHOLDTAXPCNT)||'|'||
trim(WITHHOLDTAXFLOORLMT)||'|'||
trim(DTDATE1)||'|'||
trim(DTDATE2)||'|'||
trim(COUNTRYOFISSUE_CODE)||'|'||
trim(SMALL_STR1)||'|'||
trim(SMALL_STR2)||'|'||
trim(SMALL_STR3)||'|'||
trim(SMALL_STR4)||'|'||
trim(SMALL_STR5)||'|'||
trim(SMALL_STR6)||'|'||
trim(SMALL_STR7)||'|'||
trim(SMALL_STR8)||'|'||
trim(SMALL_STR9)||'|'||
trim(SMALL_STR10)||'|'||
trim(MED_STR1)||'|'||
trim(MED_STR2)||'|'||
trim(MED_STR3)||'|'||
trim(MED_STR4)||'|'||
trim(MED_STR5)||'|'||
trim(MED_STR6)||'|'||
trim(MED_STR7)||'|'||
trim(MED_STR8)||'|'||
trim(MED_STR9)||'|'||
trim(MED_STR10)||'|'||
trim(LARGE_STR1)||'|'||
trim(LARGE_STR2)||'|'||
trim(LARGE_STR3)||'|'||
trim(LARGE_STR4)||'|'||
trim(LARGE_STR5)||'|'||
trim(DATE1)||'|'||
trim(DATE2)||'|'||
trim(DATE3)||'|'||
trim(DATE4)||'|'||
trim(DATE5)||'|'||
trim(DATE6)||'|'||
trim(DATE7)||'|'||
trim(DATE8)||'|'||
trim(DATE9)||'|'||
trim(DATE10)||'|'||
trim(NUMBER1)||'|'||
trim(NUMBER2)||'|'||
trim(NUMBER3)||'|'||
trim(NUMBER4)||'|'||
trim(NUMBER5)||'|'||
trim(NUMBER6)||'|'||
trim(NUMBER7)||'|'||
trim(NUMBER8)||'|'||
trim(NUMBER9)||'|'||
trim(NUMBER10)||'|'||
trim(DECIMAL1)||'|'||
trim(DECIMAL2)||'|'||
trim(DECIMAL3)||'|'||
trim(DECIMAL4)||'|'||
trim(DECIMAL5)||'|'||
trim(DECIMAL6)||'|'||
trim(DECIMAL7)||'|'||
trim(DECIMAL8)||'|'||
trim(DECIMAL9)||'|'||
trim(DECIMAL10)||'|'||
trim(STRTEXT3)||'|'||
trim(STRTEXT4)||'|'||
trim(STRTEXT5)||'|'||
trim(STRTEXT6)||'|'||
trim(STRTEXT7)||'|'||
trim(STRTEXT8)||'|'||
trim(STRTEXT9)||'|'||
trim(STRTEXT10)||'|'||
trim(INTINTEGER1)||'|'||
trim(INTINTEGER2)||'|'||
trim(INTINTEGER3)||'|'||
trim(INTINTEGER4)||'|'||
trim(INTINTEGER5)||'|'||
trim(INTINTEGER6)||'|'||
trim(INTINTEGER7)||'|'||
trim(INTINTEGER8)||'|'||
trim(INTINTEGER9)||'|'||
trim(INTINTEGER10)||'|'||
trim(INTINTEGER11)||'|'||
trim(INTINTEGER12)||'|'||
trim(INTINTEGER13)||'|'||
trim(INTINTEGER14)||'|'||
trim(INTINTEGER15)||'|'||
trim(DTDATE3)||'|'||
trim(DTDATE4)||'|'||
trim(DTDATE5)||'|'||
trim(DBFLOAT1)||'|'||
trim(DBFLOAT2)||'|'||
trim(DBFLOAT3)||'|'||
trim(DBFLOAT4)||'|'||
trim(DBFLOAT5)||'|'||
trim(STRTEXT11)||'|'||
trim(STRTEXT12)||'|'||
trim(STRTEXT13)||'|'||
trim(STRTEXT14)||'|'||
trim(STRTEXT15)||'|'||
trim(STRTEXT16)||'|'||
trim(STRTEXT17)||'|'||
trim(STRTEXT18)||'|'||
trim(STRTEXT19)||'|'||
trim(STRTEXT20)||'|'||
trim(STRTEXT21)||'|'||
trim(STRTEXT22)||'|'||
trim(STRTEXT23)||'|'||
trim(STRTEXT24)||'|'||
trim(STRTEXT25)||'|'||
trim(STRTEXT26)||'|'||
trim(STRTEXT27)||'|'||
trim(EMPLOYERID)||'|'||
trim(EMPLOYEEID)||'|'||
trim(STRTEXT1_CODE)||'|'||
trim(STRTEXT2_CODE)||'|'||
trim(STRTEXT28)||'|'||
trim(BANK_ID)||'|'||
trim(STRTEXT4_ALT1)
  FROM CU3_O_TABLE; 
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu4_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu4_spool.sql 
set head off
set feedback off
set term off
set lines 600
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifuae/RC004.txt
SELECT trim(ORGKEY)||'|'||
trim(CHILDENTITY)||'|'||
trim(CHILDENTITYID)||'|'||
trim(RELATIONSHIP)||'|'||
trim(TITLE)||'|'||
trim(FIRSTNAME)||'|'||
trim(MIDDLENAME)||'|'||
trim(LASTNAME)||'|'||
trim(DOB)||'|'||
trim(GENDER)||'|'||
trim(ISDEPENDANT)||'|'||
trim(GAURDIANTYPE)||'|'||
trim(ISPRIMARY)||'|'||
trim(HOUSE_NO)||'|'||
trim(PREMISE_NAME)||'|'||
trim(BUILDING_LEVEL)||'|'||
trim(STREET_NO)||'|'||
trim(STREET_NAME)||'|'||
trim(SUBURB)||'|'||
trim(LOCALITY_NAME)||'|'||
trim(TOWN)||'|'||
trim(DOMICILE)||'|'||
trim(CITY_CODE)||'|'||
trim(STATE_CODE)||'|'||
trim(ZIP)||'|'||
trim(COUNTRY_CODE)||'|'||
trim(STATUS_CODE)||'|'||
trim(NEWCONTACTSKEY)||'|'||
trim(CIF_ID)||'|'||
trim(START_DATE)||'|'||
trim(PERCENTAGE_BENEFITTED)||'|'||
trim(PHONENO1LOCALCODE)||'|'||
trim(PHONENO1CITYCODE)||'|'||
trim(PHONENO1COUNTRYCODE)||'|'||
trim(WORKEXTENSION)||'|'||
trim(PHONENO2LOCALCODE)||'|'||
trim(PHONENO2CITYCODE)||'|'||
trim(PHONENO2COUNTRYCODE)||'|'||
trim(TELEXLOCALCODE)||'|'||
trim(TELEXCITYCODE)||'|'||
trim(TELEXCOUNTRYCODE)||'|'||
trim(FAXNOLOCALCODE)||'|'||
trim(FAXNOCITYCODE)||'|'||
trim(FAXNOCOUNTRYCODE)||'|'||
trim(PAGERNOLOCALCODE)||'|'||
trim(PAGERNOCITYCODE)||'|'||
trim(PAGERNOCOUNTRYCODDE)||'|'||
trim(EMAIL)||'|'||
trim(CHILDENTITYTYPE)||'|'||
trim(BEN_OWN_KEY)||'|'||
trim(BANK_ID)||'|'||
trim(RELATIONSHIP_ALT1)||'|'||
trim(RELATIONSHIP_CATEGORY)
FROM CU4_O_TABLE;
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu4_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu4_spool_kw.sql 
set head off
set feedback off
set term off
set lines 1200
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifkw/RC004.txt
SELECT trim(ORGKEY)||'|'||
trim(CHILDENTITY)||'|'||
trim(CHILDENTITYID)||'|'||
trim(RELATIONSHIP)||'|'||
trim(TITLE)||'|'||
trim(FIRSTNAME)||'|'||
trim(MIDDLENAME)||'|'||
trim(LASTNAME)||'|'||
trim(DOB)||'|'||
trim(GENDER)||'|'||
trim(ISDEPENDANT)||'|'||
trim(GAURDIANTYPE)||'|'||
trim(ISPRIMARY)||'|'||
trim(HOUSE_NO)||'|'||
trim(PREMISE_NAME)||'|'||
trim(BUILDING_LEVEL)||'|'||
trim(STREET_NO)||'|'||
trim(STREET_NAME)||'|'||
trim(SUBURB)||'|'||
trim(LOCALITY_NAME)||'|'||
trim(TOWN)||'|'||
trim(DOMICILE)||'|'||
trim(CITY_CODE)||'|'||
trim(STATE_CODE)||'|'||
trim(ZIP)||'|'||
trim(COUNTRY_CODE)||'|'||
trim(STATUS_CODE)||'|'||
trim(NEWCONTACTSKEY)||'|'||
trim(CIF_ID)||'|'||
trim(START_DATE)||'|'||
trim(PERCENTAGE_BENEFITTED)||'|'||
trim(PHONENO1LOCALCODE)||'|'||
trim(PHONENO1CITYCODE)||'|'||
trim(PHONENO1COUNTRYCODE)||'|'||
trim(WORKEXTENSION)||'|'||
trim(PHONENO2LOCALCODE)||'|'||
trim(PHONENO2CITYCODE)||'|'||
trim(PHONENO2COUNTRYCODE)||'|'||
trim(TELEXLOCALCODE)||'|'||
trim(TELEXCITYCODE)||'|'||
trim(TELEXCOUNTRYCODE)||'|'||
trim(FAXNOLOCALCODE)||'|'||
trim(FAXNOCITYCODE)||'|'||
trim(FAXNOCOUNTRYCODE)||'|'||
trim(PAGERNOLOCALCODE)||'|'||
trim(PAGERNOCITYCODE)||'|'||
trim(PAGERNOCOUNTRYCODDE)||'|'||
trim(EMAIL)||'|'||
trim(CHILDENTITYTYPE)||'|'||
trim(BEN_OWN_KEY)||'|'||
trim(BANK_ID)||'|'||
trim(RELATIONSHIP_ALT1)||'|'||
trim(RELATIONSHIP_CATEGORY)
FROM cu4_o_table; 
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu5_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu5_spool.sql 
set head off
set feedback off
set term off
set lines 300
set pagesize 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifuae/RC005.txt
SELECT trim(ORGKEY)||'|'||
trim(DOCDUEDATE)||'|'||
trim(DOCRECEIVEDDATE)||'|'||
trim(DOCEXPIRYDATE)||'|'||
trim(DOCDELFLG)||'|'||
trim(DOCREMARKS)||'|'||
trim(SCANNED)||'|'||
trim(DOCCODE)||'|'||
trim(DOCDESCR)||'|'||
trim(REFERENCENUMBER)||'|'||
trim(TYPE)||'|'||
trim(ISMANDATORY)||'|'||
trim(SCANREQUIRED)||'|'||
trim(ROLE)||'|'||
trim(DOCTYPECODE)||'|'||
trim(DOCTYPEDESCR)||'|'||
trim(MINDOCSREQD)||'|'||
trim(WAIVEDORDEFEREDDATE)||'|'||
trim(COUNTRYOFISSUE)||'|'||
trim(PLACEOFISSUE)||'|'||
trim(DOCISSUEDATE)||'|'||
trim(IDENTIFICATIONTYPE)||'|'||
trim(CORE_CUST_ID)||'|'||
trim(IS_DOCUMENT_VERIFIED)||'|'||
trim(BEN_OWN_KEY)||'|'||
trim(BANK_ID)||'|'||
trim(DOCTYPEDESCR_ALT1)||'|'||
trim(DOCDESCR_ALT1)||'|'||
trim(IDISSUEORGANISATION)
FROM CU5_O_TABLE; 
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu5_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu5_spool_kw.sql 
set head off
set feedback off
set term off
set lines 300
set pagesize 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifkw/RC005.txt
SELECT trim(ORGKEY)||'|'||
trim(DOCDUEDATE)||'|'||
trim(DOCRECEIVEDDATE)||'|'||
trim(DOCEXPIRYDATE)||'|'||
trim(DOCDELFLG)||'|'||
trim(DOCREMARKS)||'|'||
trim(SCANNED)||'|'||
trim(DOCCODE)||'|'||
trim(DOCDESCR)||'|'||
trim(REFERENCENUMBER)||'|'||
trim(TYPE)||'|'||
trim(ISMANDATORY)||'|'||
trim(SCANREQUIRED)||'|'||
trim(ROLE)||'|'||
trim(DOCTYPECODE)||'|'||
trim(DOCTYPEDESCR)||'|'||
trim(MINDOCSREQD)||'|'||
trim(WAIVEDORDEFEREDDATE)||'|'||
trim(COUNTRYOFISSUE)||'|'||
trim(PLACEOFISSUE)||'|'||
trim(DOCISSUEDATE)||'|'||
trim(IDENTIFICATIONTYPE)||'|'||
trim(CORE_CUST_ID)||'|'||
trim(IS_DOCUMENT_VERIFIED)||'|'||
trim(BEN_OWN_KEY)||'|'||
trim(BANK_ID)||'|'||
trim(DOCTYPEDESCR_ALT1)||'|'||
trim(DOCDESCR_ALT1)||'|'||
trim(IDISSUEORGANISATION)
FROM CU5_O_TABLE; 
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu6_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu6_spool.sql 
set head off
set feedback off
set term off
set lines 300
set pagesize 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifuae/RC006.txt
SELECT trim(ORGKEY)||'|'||
trim(PHONEEMAILTYPE)||'|'||
trim(PHONEOREMAIL)||'|'||
trim(PHONE_NO)||'|'||
trim(PHONENOLOCALCODE)||'|'||
trim(PHONENOCITYCODE)||'|'||
trim(PHONENOCOUNTRYCODE)||'|'||
trim(WORKEXTENSION)||'|'||
trim(EMAIL)||'|'||
trim(EMAILPALM)||'|'||
trim(URL)||'|'||
trim(PREFERRED_FLAG)||'|'||
trim(START_DATE)||'|'||
trim(END_DATE)||'|'||
trim(USERFIELD1)||'|'||
trim(USERFIELD2)||'|'||
trim(USERFIELD3)||'|'||
trim(DATE1)||'|'||
trim(DATE2)||'|'||
trim(DATE3)||'|'||
trim(BANK_ID)
FROM CU6_O_TABLE;
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu6_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu6_spool_kw.sql 
set head off
set feedback off
set term off
set lines 300
set pagesize 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifkw/RC006.txt
SELECT trim(ORGKEY)||'|'||
trim(PHONEEMAILTYPE)||'|'||
trim(PHONEOREMAIL)||'|'||
trim(PHONE_NO)||'|'||
trim(PHONENOLOCALCODE)||'|'||
trim(PHONENOCITYCODE)||'|'||
trim(PHONENOCOUNTRYCODE)||'|'||
trim(WORKEXTENSION)||'|'||
trim(EMAIL)||'|'||
trim(EMAILPALM)||'|'||
trim(URL)||'|'||
trim(PREFERRED_FLAG)||'|'||
trim(START_DATE)||'|'||
trim(END_DATE)||'|'||
trim(USERFIELD1)||'|'||
trim(USERFIELD2)||'|'||
trim(USERFIELD3)||'|'||
trim(DATE1)||'|'||
trim(DATE2)||'|'||
trim(DATE3)||'|'||
trim(BANK_ID)
FROM CU6_O_TABLE;
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu8_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu8_spool.sql 
set head off
set feedback off
set term off
set lines 400
set pagesize 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifuae/RC008.txt
SELECT trim(ORGKEY)||'|'||
trim(MARITAL_STATUS_CODE)||'|'||
trim(EMPLOYMENT_STATUS)||'|'||
trim(ANNUAL_SALARY_INCOME)||'|'||
trim(TDSEXCEMPTENDDATE)||'|'||
trim(TDSEXCEMPTSUBMITDATE)||'|'||
trim(TDSEXCEMPTREFNUM)||'|'||
trim(TDSEXCEMPTREMARKS)||'|'||
trim(CUSTCASTE)||'|'||
trim(CUSTBUSINESSASSETS)||'|'||
trim(CUSTPROPERTYASSETS)||'|'||
trim(CUSTINVESTMENTS)||'|'||
trim(CUSTNETWORTH)||'|'||
trim(CUSTDEPOSITSINOTHERBANKS)||'|'||
trim(ADVANCEASONDATE)||'|'||
trim(TOTALFUNDBASE)||'|'||
trim(TOTALNONFUNDBASE)||'|'||
trim(CUSTFINYEARENDMONTH)||'|'||
trim(NATIONALITY_CODE)||'|'||
trim(RESIDENCECOUNTRY_CODE)||'|'||
trim(NRERELATIVENAME)||'|'||
trim(NRECOUNTRYTYPE)||'|'||
trim(DEMOGRAPHICTYPE)||'|'||
trim(PHONE_HOME)||'|'||
trim(PHONE_WORK)||'|'||
trim(EXTENSION)||'|'||
trim(PHONE_CELL)||'|'||
trim(FAX_WORK)||'|'||
trim(EMAIL_HOME)||'|'||
trim(EMAIL_WORK)||'|'||
trim(EMAIL_PALM)||'|'||
trim(URL)||'|'||
trim(CUSTOMER_SEGMENT)||'|'||
trim(CUSTOMER_TYPE)||'|'||
trim(NATIONALITY)||'|'||
trim(RESIDENCE_COUNTRY)||'|'||
trim(RESIDENCE_SINCE)||'|'||
trim(MARITAL_STATUS)||'|'||
trim(ANNIVERSARY_DATE)||'|'||
trim(INCOME_NATURE)||'|'||
trim(PAYMENT_MODE)||'|'||
trim(ANNUAL_RENTAL_INCOME)||'|'||
trim(ANNUAL_STOCK_BOND_INCOME)||'|'||
trim(ANNUAL_OTHERS_INCOME)||'|'||
trim(ANNUAL_TOTAL_INCOME)||'|'||
trim(REFERENCE_CURRENCY_INCOME)||'|'||
trim(BASE_CURRENCY_INCOME)||'|'||
trim(ANNUAL_OPERATING_EXP)||'|'||
trim(ANNUAL_LOAN_INSTAL)||'|'||
trim(ANNUAL_INTPROD_EXP)||'|'||
trim(ANNUAL_EXTPROD_EXP)||'|'||
trim(ANNUAL_COMMIT_EXP)||'|'||
trim(ANNUAL_OTHER_EXP)||'|'||
trim(REFERENCE_CURRENCY_EXP)||'|'||
trim(BASE_CURRENCY_EXP)||'|'||
trim(ANNUAL_TOTAL_EXP)||'|'||
trim(HOMEPHONEOPTIONALCOUNTRYCODE)||'|'||
trim(HOMEPHONEOPTIONALCITYCODE)||'|'||
trim(HOMEPHONEOPTIONALLOCALCODE)||'|'||
trim(WORKPHONEOPTIONALCOUNTRYCODE)||'|'||
trim(WORKPHONEOPTIONALCITYCODE)||'|'||
trim(WORKPHONEOPTIONALLOCALCODE)||'|'||
trim(CELLPHONEOPTIONALCOUNTRYCODE)||'|'||
trim(CELLPHONEOPTIONALCITYCODE)||'|'||
trim(CELLPHONEOPTIONALLOCALCODE)||'|'||
trim(FAXOPTIONALCOUNTRYCODE)||'|'||
trim(FAXOPTIONALCITYCODE)||'|'||
trim(FAXOPTIONALLOCALCODE)||'|'||
trim(PAGEROPTIONAL)||'|'||
trim(PAGEROPTIONALCOUNTRYCODE)||'|'||
trim(PAGEROPTIONALAREACODE)||'|'||
trim(PAGEROPTIONALLOCALCODE)||'|'||
trim(SALALLOWANCES)||'|'||
trim(SALPRORATAMONTHLYINCENTIVE)||'|'||
trim(SALINTERESTSUBSIDY)||'|'||
trim(SALOTHERINCOME2)||'|'||
trim(SALOTHERINCOME3)||'|'||
trim(TOTALESTACCOUNTVALUE)||'|'||
trim(TOTALINVESTMENT)||'|'||
trim(TOTALMONTHLYDEBTSERVICEAMT)||'|'||
trim(SELFEMPTAXRETURNFIELD)||'|'||
trim(SELFEMPGROSSRECIPTCURRENTYR)||'|'||
trim(SELFEMPGROSSRECEIPTPRIORYEAR)||'|'||
trim(SELFEMPNETPROFITCURRENTYR)||'|'||
trim(SELFEMPNETPROFITPRIORYR)||'|'||
trim(SELFEMPDEPRECIATIONCURRENTY)||'|'||
trim(SELFEMPDEPRECIATIONPRIORYEAR)||'|'||
trim(SELFEMPAVERAGEANNUALTURNOVER)||'|'||
trim(TOTALHOUSEHOLDINCM)||'|'||
trim(DOOPTIONALTMAILFLAG)||'|'||
trim(DOOPTIONALTCALLFLAG)||'|'||
trim(HOLDMAILFLAG)||'|'||
trim(HOLDMAILDESCRIPTION)||'|'||
trim(DONOTSENDEMAILFLG)||'|'||
trim(HOLDMAILSTARTDATE)||'|'||
trim(HOLDMAILENDDATE)||'|'||
trim(PREFCONTTIME)||'|'||
trim(PREFDAYTIMECONTOPTIONAL)||'|'||
trim(PREFDAYTIMECONTOPTIONALLOCAL)||'|'||
trim(PREFDAYTIMECONTOPTIONALAREA)||'|'||
trim(PREFDAYTIMECONTOPTIONALCOUN)||'|'||
trim(PHONEOTHER)||'|'||
trim(PHONEOTHERLOCAL)||'|'||
trim(PHONEOTHERAREA)||'|'||
trim(PHONEOTHERCOUNTRY)||'|'||
trim(CU_ANNUAL_SALARY_INCOME)||'|'||
trim(CU_ANNUAL_RENTAL_INCOME)||'|'||
trim(CU_ANNUAL_STOCK_BOND_INCOME)||'|'||
trim(CU_ANNUAL_OTHERS_INCOME)||'|'||
trim(CU_ANNUAL_TOTAL_INCOME)||'|'||
trim(CU_ANNUAL_OPERATING_EXP)||'|'||
trim(CU_ANNUAL_LOAN_INSTAL)||'|'||
trim(CU_ANNUAL_INTPROD_EXP)||'|'||
trim(CU_ANNUAL_EXTPROD_EXP)||'|'||
trim(CU_ANNUAL_COMMIT_EXP)||'|'||
trim(CU_ANNUAL_OTHER_EXP)||'|'||
trim(CU_ANNUAL_TOTAL_EXP)||'|'||
trim(CU_SALALLOWANCES)||'|'||
trim(CU_SALPRORATAMONTHLYINCENTI)||'|'||
trim(CU_SALINTERESTSUBSIDY)||'|'||
trim(CU_SALOTHERINCOME2)||'|'||
trim(CU_SALOTHERINCOME3)||'|'||
trim(CU_TOTALESTACCOUNTVALUE)||'|'||
trim(CU_TOTALINVESTMENT)||'|'||
trim(CU_TOTALMONTHLYDEBTSERVICE)||'|'||
trim(CU_SELFEMPTAXRETURNFIELD)||'|'||
trim(CU_SELFEMPGROSSRECIPTCURREN)||'|'||
trim(CU_SELFEMPGROSSRECEIPTPRIOR)||'|'||
trim(CU_SELFEMPNETPROFITCURRENTY)||'|'||
trim(CU_SELFEMPNETPROFITPRIORYR)||'|'||
trim(CU_SELFEMPDEPRCURRYR)||'|'||
trim(CU_SELFEMPDEPRPRIORYR)||'|'||
trim(CU_SELFEMPAVGANNUALTUROPTIO)||'|'||
trim(CU_TOTALHOUSEHOLDINCM)||'|'||
trim(CU_INVESTMENTSHARESANDUNITS)||'|'||
trim(USERFIELD1)||'|'||
trim(USERFIELD2)||'|'||
trim(USERFIELD3)||'|'||
trim(USERFLAG1)||'|'||
trim(USERFLAG2)||'|'||
trim(ALERT1)||'|'||
trim(ALERT2)||'|'||
trim(ALERT3)||'|'||
trim(ALERT4)||'|'||
trim(ALERT5)||'|'||
trim(BANK_DEFINED_DEMO_VAR1)||'|'||
trim(BANK_DEFINED_DEMO_VAR2)||'|'||
trim(BANK_DEFINED_DEMO_VAR3)||'|'||
trim(BANK_DEFINED_DEMO_VAR4)||'|'||
trim(BANK_DEFINED_DEMO_VAR5)||'|'||
trim(BANK_DEFINED_DEMO_VAR6)||'|'||
trim(BANK_DEFINED_DEMO_VAR7)||'|'||
trim(BANK_DEFINED_DEMO_VAR8)||'|'||
trim(BANK_DEFINED_DEMO_VAR9)||'|'||
trim(BANK_DEFINED_DEMO_DATE1)||'|'||
trim(BANK_DEFINED_DEMO_DATE2)||'|'||
trim(BANK_DEFINED_DEMO_DATE3)||'|'||
trim(BANK_DEFINED_DEMO_DATE4)||'|'||
trim(BANK_DEFINED_DEMO_DATE5)||'|'||
trim(BANK_DEFINED_DEMO_DATE6)||'|'||
trim(BANK_DEFINED_DEMO_DATE7)||'|'||
trim(USERFIELD4)||'|'||
trim(USERFIELD5)||'|'||
trim(USERFIELD6)||'|'||
trim(USERFIELD7)||'|'||
trim(USERFIELD8)||'|'||
trim(USERFIELD9)||'|'||
trim(USERFIELD10)||'|'||
trim(AMOUNT1)||'|'||
trim(AMOUNT2)||'|'||
trim(AMOUNT3)||'|'||
trim(AMOUNT4)||'|'||
trim(AMOUNT5)||'|'||
trim(AMOUNT6)||'|'||
trim(AMOUNT7)||'|'||
trim(INTFIELD1)||'|'||
trim(INTFIELD2)||'|'||
trim(INTFIELD3)||'|'||
trim(INTFIELD4)||'|'||
trim(INTFIELD5)||'|'||
trim(TOTAL_DEDUCTIONS)||'|'||
trim(CU_TOTAL_DEDUCTIONS)||'|'||
trim(NET_SAVINGS)||'|'||
trim(CU_NET_SAVINGS)||'|'||
trim(NET_HOUSEHOLD_INCOME)||'|'||
trim(CU_NETHOUSEHOLDINCOME)||'|'||
trim(SHAREHOLDERTYPE)||'|'||
trim(SHAREHOLDEREFFECTIVEDATE)||'|'||
trim(TOTALSHARESVALUE)||'|'||
trim(CU_TOTALSHARESVALUE)||'|'||
trim(NUMBEROFSHARES)||'|'||
trim(CUSTOTHERBANKCODE)||'|'||
trim(CU_CUSTDEPOSITSIOPTHERBANKS)||'|'||
trim(CU_CUSTBUSINESSASSETS)||'|'||
trim(CU_CUSTPROPERTYASSETS)||'|'||
trim(CU_CUSTINVESTMENTS)||'|'||
trim(CU_CUSTNETWORTH)||'|'||
trim(CUSTASSETSASONDATE)||'|'||
trim(CU_CUSTASSETSASONDATE)||'|'||
trim(EMPLOYERSNAME)||'|'||
trim(SOURCEOFINCOME)||'|'||
trim(CU_TOTALFUNDBASE)||'|'||
trim(CU_TOTALOPTIONALNFUNDBASE)||'|'||
trim(OTHERLIMITS)||'|'||
trim(CU_OTHERLIMITS)||'|'||
trim(TDSTABLECODE)||'|'||
trim(TDSTABLE)||'|'||
trim(TDSCUSTID)||'|'||
trim(EMPLOYERID)||'|'||
trim(NRERELATIVECODE)||'|'||
trim(NRERELATIVE)||'|'||
trim(EMPLOYERID_CODE)||'|'||
trim(CHANNELSACCESSED)||'|'||
trim(OUTSTANDING_MORTAGE)||'|'||
trim(CU_OUTSTANDING_MORTGAGE)||'|'||
trim(BANK_ID)||'|'||
trim(EMPLOYERSNAME_ALT1)||'|'||
trim(NRERELATIVENAME_ALT1)
FROM CU8_O_TABLE;
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu8_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu8_spool_kw.sql 
set head off
set feedback off
set term off
set lines 400
set pagesize 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifkw/RC008.txt
SELECT trim(ORGKEY)||'|'||
trim(MARITAL_STATUS_CODE)||'|'||
trim(EMPLOYMENT_STATUS)||'|'||
trim(ANNUAL_SALARY_INCOME)||'|'||
trim(TDSEXCEMPTENDDATE)||'|'||
trim(TDSEXCEMPTSUBMITDATE)||'|'||
trim(TDSEXCEMPTREFNUM)||'|'||
trim(TDSEXCEMPTREMARKS)||'|'||
trim(CUSTCASTE)||'|'||
trim(CUSTBUSINESSASSETS)||'|'||
trim(CUSTPROPERTYASSETS)||'|'||
trim(CUSTINVESTMENTS)||'|'||
trim(CUSTNETWORTH)||'|'||
trim(CUSTDEPOSITSINOTHERBANKS)||'|'||
trim(ADVANCEASONDATE)||'|'||
trim(TOTALFUNDBASE)||'|'||
trim(TOTALNONFUNDBASE)||'|'||
trim(CUSTFINYEARENDMONTH)||'|'||
trim(NATIONALITY_CODE)||'|'||
trim(RESIDENCECOUNTRY_CODE)||'|'||
trim(NRERELATIVENAME)||'|'||
trim(NRECOUNTRYTYPE)||'|'||
trim(DEMOGRAPHICTYPE)||'|'||
trim(PHONE_HOME)||'|'||
trim(PHONE_WORK)||'|'||
trim(EXTENSION)||'|'||
trim(PHONE_CELL)||'|'||
trim(FAX_WORK)||'|'||
trim(EMAIL_HOME)||'|'||
trim(EMAIL_WORK)||'|'||
trim(EMAIL_PALM)||'|'||
trim(URL)||'|'||
trim(CUSTOMER_SEGMENT)||'|'||
trim(CUSTOMER_TYPE)||'|'||
trim(NATIONALITY)||'|'||
trim(RESIDENCE_COUNTRY)||'|'||
trim(RESIDENCE_SINCE)||'|'||
trim(MARITAL_STATUS)||'|'||
trim(ANNIVERSARY_DATE)||'|'||
trim(INCOME_NATURE)||'|'||
trim(PAYMENT_MODE)||'|'||
trim(ANNUAL_RENTAL_INCOME)||'|'||
trim(ANNUAL_STOCK_BOND_INCOME)||'|'||
trim(ANNUAL_OTHERS_INCOME)||'|'||
trim(ANNUAL_TOTAL_INCOME)||'|'||
trim(REFERENCE_CURRENCY_INCOME)||'|'||
trim(BASE_CURRENCY_INCOME)||'|'||
trim(ANNUAL_OPERATING_EXP)||'|'||
trim(ANNUAL_LOAN_INSTAL)||'|'||
trim(ANNUAL_INTPROD_EXP)||'|'||
trim(ANNUAL_EXTPROD_EXP)||'|'||
trim(ANNUAL_COMMIT_EXP)||'|'||
trim(ANNUAL_OTHER_EXP)||'|'||
trim(REFERENCE_CURRENCY_EXP)||'|'||
trim(BASE_CURRENCY_EXP)||'|'||
trim(ANNUAL_TOTAL_EXP)||'|'||
trim(HOMEPHONEOPTIONALCOUNTRYCODE)||'|'||
trim(HOMEPHONEOPTIONALCITYCODE)||'|'||
trim(HOMEPHONEOPTIONALLOCALCODE)||'|'||
trim(WORKPHONEOPTIONALCOUNTRYCODE)||'|'||
trim(WORKPHONEOPTIONALCITYCODE)||'|'||
trim(WORKPHONEOPTIONALLOCALCODE)||'|'||
trim(CELLPHONEOPTIONALCOUNTRYCODE)||'|'||
trim(CELLPHONEOPTIONALCITYCODE)||'|'||
trim(CELLPHONEOPTIONALLOCALCODE)||'|'||
trim(FAXOPTIONALCOUNTRYCODE)||'|'||
trim(FAXOPTIONALCITYCODE)||'|'||
trim(FAXOPTIONALLOCALCODE)||'|'||
trim(PAGEROPTIONAL)||'|'||
trim(PAGEROPTIONALCOUNTRYCODE)||'|'||
trim(PAGEROPTIONALAREACODE)||'|'||
trim(PAGEROPTIONALLOCALCODE)||'|'||
trim(SALALLOWANCES)||'|'||
trim(SALPRORATAMONTHLYINCENTIVE)||'|'||
trim(SALINTERESTSUBSIDY)||'|'||
trim(SALOTHERINCOME2)||'|'||
trim(SALOTHERINCOME3)||'|'||
trim(TOTALESTACCOUNTVALUE)||'|'||
trim(TOTALINVESTMENT)||'|'||
trim(TOTALMONTHLYDEBTSERVICEAMT)||'|'||
trim(SELFEMPTAXRETURNFIELD)||'|'||
trim(SELFEMPGROSSRECIPTCURRENTYR)||'|'||
trim(SELFEMPGROSSRECEIPTPRIORYEAR)||'|'||
trim(SELFEMPNETPROFITCURRENTYR)||'|'||
trim(SELFEMPNETPROFITPRIORYR)||'|'||
trim(SELFEMPDEPRECIATIONCURRENTY)||'|'||
trim(SELFEMPDEPRECIATIONPRIORYEAR)||'|'||
trim(SELFEMPAVERAGEANNUALTURNOVER)||'|'||
trim(TOTALHOUSEHOLDINCM)||'|'||
trim(DOOPTIONALTMAILFLAG)||'|'||
trim(DOOPTIONALTCALLFLAG)||'|'||
trim(HOLDMAILFLAG)||'|'||
trim(HOLDMAILDESCRIPTION)||'|'||
trim(DONOTSENDEMAILFLG)||'|'||
trim(HOLDMAILSTARTDATE)||'|'||
trim(HOLDMAILENDDATE)||'|'||
trim(PREFCONTTIME)||'|'||
trim(PREFDAYTIMECONTOPTIONAL)||'|'||
trim(PREFDAYTIMECONTOPTIONALLOCAL)||'|'||
trim(PREFDAYTIMECONTOPTIONALAREA)||'|'||
trim(PREFDAYTIMECONTOPTIONALCOUN)||'|'||
trim(PHONEOTHER)||'|'||
trim(PHONEOTHERLOCAL)||'|'||
trim(PHONEOTHERAREA)||'|'||
trim(PHONEOTHERCOUNTRY)||'|'||
trim(CU_ANNUAL_SALARY_INCOME)||'|'||
trim(CU_ANNUAL_RENTAL_INCOME)||'|'||
trim(CU_ANNUAL_STOCK_BOND_INCOME)||'|'||
trim(CU_ANNUAL_OTHERS_INCOME)||'|'||
trim(CU_ANNUAL_TOTAL_INCOME)||'|'||
trim(CU_ANNUAL_OPERATING_EXP)||'|'||
trim(CU_ANNUAL_LOAN_INSTAL)||'|'||
trim(CU_ANNUAL_INTPROD_EXP)||'|'||
trim(CU_ANNUAL_EXTPROD_EXP)||'|'||
trim(CU_ANNUAL_COMMIT_EXP)||'|'||
trim(CU_ANNUAL_OTHER_EXP)||'|'||
trim(CU_ANNUAL_TOTAL_EXP)||'|'||
trim(CU_SALALLOWANCES)||'|'||
trim(CU_SALPRORATAMONTHLYINCENTI)||'|'||
trim(CU_SALINTERESTSUBSIDY)||'|'||
trim(CU_SALOTHERINCOME2)||'|'||
trim(CU_SALOTHERINCOME3)||'|'||
trim(CU_TOTALESTACCOUNTVALUE)||'|'||
trim(CU_TOTALINVESTMENT)||'|'||
trim(CU_TOTALMONTHLYDEBTSERVICE)||'|'||
trim(CU_SELFEMPTAXRETURNFIELD)||'|'||
trim(CU_SELFEMPGROSSRECIPTCURREN)||'|'||
trim(CU_SELFEMPGROSSRECEIPTPRIOR)||'|'||
trim(CU_SELFEMPNETPROFITCURRENTY)||'|'||
trim(CU_SELFEMPNETPROFITPRIORYR)||'|'||
trim(CU_SELFEMPDEPRCURRYR)||'|'||
trim(CU_SELFEMPDEPRPRIORYR)||'|'||
trim(CU_SELFEMPAVGANNUALTUROPTIO)||'|'||
trim(CU_TOTALHOUSEHOLDINCM)||'|'||
trim(CU_INVESTMENTSHARESANDUNITS)||'|'||
trim(USERFIELD1)||'|'||
trim(USERFIELD2)||'|'||
trim(USERFIELD3)||'|'||
trim(USERFLAG1)||'|'||
trim(USERFLAG2)||'|'||
trim(ALERT1)||'|'||
trim(ALERT2)||'|'||
trim(ALERT3)||'|'||
trim(ALERT4)||'|'||
trim(ALERT5)||'|'||
trim(BANK_DEFINED_DEMO_VAR1)||'|'||
trim(BANK_DEFINED_DEMO_VAR2)||'|'||
trim(BANK_DEFINED_DEMO_VAR3)||'|'||
trim(BANK_DEFINED_DEMO_VAR4)||'|'||
trim(BANK_DEFINED_DEMO_VAR5)||'|'||
trim(BANK_DEFINED_DEMO_VAR6)||'|'||
trim(BANK_DEFINED_DEMO_VAR7)||'|'||
trim(BANK_DEFINED_DEMO_VAR8)||'|'||
trim(BANK_DEFINED_DEMO_VAR9)||'|'||
trim(BANK_DEFINED_DEMO_DATE1)||'|'||
trim(BANK_DEFINED_DEMO_DATE2)||'|'||
trim(BANK_DEFINED_DEMO_DATE3)||'|'||
trim(BANK_DEFINED_DEMO_DATE4)||'|'||
trim(BANK_DEFINED_DEMO_DATE5)||'|'||
trim(BANK_DEFINED_DEMO_DATE6)||'|'||
trim(BANK_DEFINED_DEMO_DATE7)||'|'||
trim(USERFIELD4)||'|'||
trim(USERFIELD5)||'|'||
trim(USERFIELD6)||'|'||
trim(USERFIELD7)||'|'||
trim(USERFIELD8)||'|'||
trim(USERFIELD9)||'|'||
trim(USERFIELD10)||'|'||
trim(AMOUNT1)||'|'||
trim(AMOUNT2)||'|'||
trim(AMOUNT3)||'|'||
trim(AMOUNT4)||'|'||
trim(AMOUNT5)||'|'||
trim(AMOUNT6)||'|'||
trim(AMOUNT7)||'|'||
trim(INTFIELD1)||'|'||
trim(INTFIELD2)||'|'||
trim(INTFIELD3)||'|'||
trim(INTFIELD4)||'|'||
trim(INTFIELD5)||'|'||
trim(TOTAL_DEDUCTIONS)||'|'||
trim(CU_TOTAL_DEDUCTIONS)||'|'||
trim(NET_SAVINGS)||'|'||
trim(CU_NET_SAVINGS)||'|'||
trim(NET_HOUSEHOLD_INCOME)||'|'||
trim(CU_NETHOUSEHOLDINCOME)||'|'||
trim(SHAREHOLDERTYPE)||'|'||
trim(SHAREHOLDEREFFECTIVEDATE)||'|'||
trim(TOTALSHARESVALUE)||'|'||
trim(CU_TOTALSHARESVALUE)||'|'||
trim(NUMBEROFSHARES)||'|'||
trim(CUSTOTHERBANKCODE)||'|'||
trim(CU_CUSTDEPOSITSIOPTHERBANKS)||'|'||
trim(CU_CUSTBUSINESSASSETS)||'|'||
trim(CU_CUSTPROPERTYASSETS)||'|'||
trim(CU_CUSTINVESTMENTS)||'|'||
trim(CU_CUSTNETWORTH)||'|'||
trim(CUSTASSETSASONDATE)||'|'||
trim(CU_CUSTASSETSASONDATE)||'|'||
trim(EMPLOYERSNAME)||'|'||
trim(SOURCEOFINCOME)||'|'||
trim(CU_TOTALFUNDBASE)||'|'||
trim(CU_TOTALOPTIONALNFUNDBASE)||'|'||
trim(OTHERLIMITS)||'|'||
trim(CU_OTHERLIMITS)||'|'||
trim(TDSTABLECODE)||'|'||
trim(TDSTABLE)||'|'||
trim(TDSCUSTID)||'|'||
trim(EMPLOYERID)||'|'||
trim(NRERELATIVECODE)||'|'||
trim(NRERELATIVE)||'|'||
trim(EMPLOYERID_CODE)||'|'||
trim(CHANNELSACCESSED)||'|'||
trim(OUTSTANDING_MORTAGE)||'|'||
trim(CU_OUTSTANDING_MORTGAGE)||'|'||
trim(BANK_ID)||'|'||
trim(EMPLOYERSNAME_ALT1)||'|'||
trim(NRERELATIVENAME_ALT1)
FROM CU8_O_TABLE;
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu9_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu9_spool.sql 
set head off
set feedback off
set term off
set lines 600
set pagesize 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifuae/RC009.txt
SELECT trim(ORGKEY)||'|'||
trim(COMMUNICATION_LANGUAGE)||'|'||
trim(PREFERRED_ADDRESS_MODE)||'|'||
trim(BEHAVIOURAL_SCORE)||'|'||
trim(RISK_BEHAVIOUR)||'|'||
trim(OTHER_BEHAVIOURAL_PROFILE)||'|'||
trim(LIFE_CYCLE_STAGE)||'|'||
trim(SERVICE_PERSONALISE)||'|'||
trim(PSYCHOGRAPHICTYPE)||'|'||
trim(PRIORITY_IDENTIFIER)||'|'||
trim(HOUSEHOLD_NUMBER)||'|'||
trim(PREFERRED_REP)||'|'||
trim(SEGMENTATION_CLASS)||'|'||
trim(PREFERREDNAME)||'|'||
trim(NUMBEROFDEPENDANTS)||'|'||
trim(NUMBEROFDEPENDANTCHILDREN)||'|'||
trim(STMTDATEFORCOMBSTMT)||'|'||
trim(SUBSEGMENT)||'|'||
trim(HOBBYFIELD1)||'|'||
trim(HOBBYFIELD2)||'|'||
trim(HOBBYFIELD3)||'|'||
trim(HOBBYFIELD4)||'|'||
trim(HOBBYFIELD5)||'|'||
trim(HOBBYFIELD6)||'|'||
trim(PROFILE_FIELD1)||'|'||
trim(PROFILE_FIELD2)||'|'||
trim(PROFILE_FIELD3)||'|'||
trim(PROFILE_FIELD4)||'|'||
trim(ALERT1)||'|'||
trim(ALERT2)||'|'||
trim(ALERT3)||'|'||
trim(ALERT4)||'|'||
trim(ALERT5)||'|'||
trim(FLAG1)||'|'||
trim(FLAG2)||'|'||
trim(FLAG3)||'|'||
trim(FLAG4)||'|'||
trim(FLAG5)||'|'||
trim(BANK_DEFINED_PREFER_VAR1)||'|'||
trim(BANK_DEFINED_PREFER_VAR2)||'|'||
trim(BANK_DEFINED_PREFER_VAR3)||'|'||
trim(BANK_DEFINED_PREFER_DATE1)||'|'||
trim(BANK_DEFINED_PREFER_DATE2)||'|'||
trim(BANK_DEFINED_PREFER_DATE3)||'|'||
trim(USERFIELD1)||'|'||
trim(USERFIELD2)||'|'||
trim(USERFIELD3)||'|'||
trim(USERFIELD4)||'|'||
trim(USERFIELD5)||'|'||
trim(USERFIELD6)||'|'||
trim(SPSERVICEREQUIRED1)||'|'||
trim(SPSERVICEREQUIRED2)||'|'||
trim(SPSERVICEREQUIRED3)||'|'||
trim(SPSERVICEREQUIRED4)||'|'||
trim(SPSERVICEREQUIRED5)||'|'||
trim(USERFLAG1)||'|'||
trim(USERFLAG2)||'|'||
trim(PREFRELSHIPDISCOUNT1)||'|'||
trim(PREFRELSHIPDISCOUNT2)||'|'||
trim(PREFRELSHIPDISCOUNTPERCENT1)||'|'||
trim(PREFRELSHIPDISCOUNTPERCENT2)||'|'||
trim(USERFIELD7)||'|'||
trim(USERFIELD8)||'|'||
trim(USERFIELD9)||'|'||
trim(USERFIELD10)||'|'||
trim(USERFIELD11)||'|'||
trim(USERFIELD12)||'|'||
trim(USERFIELD13)||'|'||
trim(AMOUNT1)||'|'||
trim(AMOUNT2)||'|'||
trim(AMOUNT3)||'|'||
trim(AMOUNT4)||'|'||
trim(AMOUNT5)||'|'||
trim(AMOUNT6)||'|'||
trim(AMOUNT7)||'|'||
trim(INTFIELD1)||'|'||
trim(INTFIELD2)||'|'||
trim(INTFIELD3)||'|'||
trim(INTFIELD4)||'|'||
trim(INTFIELD5)||'|'||
trim(STATEMENTTYPE)||'|'||
trim(STATEMENTFREQUENCY)||'|'||
trim(STMTDATEWEEKDAY)||'|'||
trim(STMTMONTHLYSTARTDATE)||'|'||
trim(ACTIONDURINGHOLIDAY)||'|'||
trim(DESPATCHMODE)||'|'||
trim(CALENDERTYPE)||'|'||
trim(DISCOUNTAVAILED)||'|'||
trim(DISCOUNTTYPE)||'|'||
trim(PREFEFFECTIVEDATE)||'|'||
trim(PREFEXPIRYDATE)||'|'||
trim(LASTCONTACTEDDATE)||'|'||
trim(LASTCONTACTEDCHANNEL)||'|'||
trim(FAMILYTYPE)||'|'||
trim(NOOFEARNERS)||'|'||
trim(REMARKS)||'|'||
trim(COMMUNITY)||'|'||
trim(LTVINDICATOR)||'|'||
trim(ASSETCLASSIFICATION)||'|'||
trim(ASSETCLASSIFICATIONDESC)||'|'||
trim(ASSETCLASSIFIEDON)||'|'||
trim(CUSTHEALTHCODE)||'|'||
trim(CREDITDISCOUNTPERCENT)||'|'||
trim(DEBITDISCOUNTPERCENT)||'|'||
trim(PREFERRENTIALEXPIRYDATE)||'|'||
trim(INTERESTDESCRIPTION)||'|'||
trim(STMTWEEKOFMONTH)||'|'||
trim(CUSTCHARGECODE)||'|'||
trim(CUSTCHARGE)||'|'||
trim(CHARGEDEBITFORACID)||'|'||
trim(CHARGEDEBITSOLID)||'|'||
trim(CHARGEHISTORYFLAG)||'|'||
trim(CUSTOMERCURRENCY)||'|'||
trim(LOANSSTATEMENTTYPE)||'|'||
trim(TDSSTATEMENTTYPE)||'|'||
trim(COMBSTMTCHARGECODE)||'|'||
trim(TDSCUSTFLOORLIMIT)||'|'||
trim(COMMUNITY_CODE)||'|'||
trim(CUST_HEALTH_REF_CODE)||'|'||
trim(CUST_PREF_TILL_DATE)||'|'||
trim(CU_TDSCUSTFLOORLIMIT)||'|'||
trim(CHECKSUM1)||'|'||
trim(PREFERRED_LOCALE)||'|'||
trim(BANK_ID)||'|'||
trim(NATURE_OF_ACT)
FROM CU9_O_TABLE;
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu9_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cu9_spool_kw.sql 
set head off
set feedback off
set term off
set lines 600
set pagesize 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifkw/RC009.txt
SELECT trim(ORGKEY)||'|'||
trim(COMMUNICATION_LANGUAGE)||'|'||
trim(PREFERRED_ADDRESS_MODE)||'|'||
trim(BEHAVIOURAL_SCORE)||'|'||
trim(RISK_BEHAVIOUR)||'|'||
trim(OTHER_BEHAVIOURAL_PROFILE)||'|'||
trim(LIFE_CYCLE_STAGE)||'|'||
trim(SERVICE_PERSONALISE)||'|'||
trim(PSYCHOGRAPHICTYPE)||'|'||
trim(PRIORITY_IDENTIFIER)||'|'||
trim(HOUSEHOLD_NUMBER)||'|'||
trim(PREFERRED_REP)||'|'||
trim(SEGMENTATION_CLASS)||'|'||
trim(PREFERREDNAME)||'|'||
trim(NUMBEROFDEPENDANTS)||'|'||
trim(NUMBEROFDEPENDANTCHILDREN)||'|'||
trim(STMTDATEFORCOMBSTMT)||'|'||
trim(SUBSEGMENT)||'|'||
trim(HOBBYFIELD1)||'|'||
trim(HOBBYFIELD2)||'|'||
trim(HOBBYFIELD3)||'|'||
trim(HOBBYFIELD4)||'|'||
trim(HOBBYFIELD5)||'|'||
trim(HOBBYFIELD6)||'|'||
trim(PROFILE_FIELD1)||'|'||
trim(PROFILE_FIELD2)||'|'||
trim(PROFILE_FIELD3)||'|'||
trim(PROFILE_FIELD4)||'|'||
trim(ALERT1)||'|'||
trim(ALERT2)||'|'||
trim(ALERT3)||'|'||
trim(ALERT4)||'|'||
trim(ALERT5)||'|'||
trim(FLAG1)||'|'||
trim(FLAG2)||'|'||
trim(FLAG3)||'|'||
trim(FLAG4)||'|'||
trim(FLAG5)||'|'||
trim(BANK_DEFINED_PREFER_VAR1)||'|'||
trim(BANK_DEFINED_PREFER_VAR2)||'|'||
trim(BANK_DEFINED_PREFER_VAR3)||'|'||
trim(BANK_DEFINED_PREFER_DATE1)||'|'||
trim(BANK_DEFINED_PREFER_DATE2)||'|'||
trim(BANK_DEFINED_PREFER_DATE3)||'|'||
trim(USERFIELD1)||'|'||
trim(USERFIELD2)||'|'||
trim(USERFIELD3)||'|'||
trim(USERFIELD4)||'|'||
trim(USERFIELD5)||'|'||
trim(USERFIELD6)||'|'||
trim(SPSERVICEREQUIRED1)||'|'||
trim(SPSERVICEREQUIRED2)||'|'||
trim(SPSERVICEREQUIRED3)||'|'||
trim(SPSERVICEREQUIRED4)||'|'||
trim(SPSERVICEREQUIRED5)||'|'||
trim(USERFLAG1)||'|'||
trim(USERFLAG2)||'|'||
trim(PREFRELSHIPDISCOUNT1)||'|'||
trim(PREFRELSHIPDISCOUNT2)||'|'||
trim(PREFRELSHIPDISCOUNTPERCENT1)||'|'||
trim(PREFRELSHIPDISCOUNTPERCENT2)||'|'||
trim(USERFIELD7)||'|'||
trim(USERFIELD8)||'|'||
trim(USERFIELD9)||'|'||
trim(USERFIELD10)||'|'||
trim(USERFIELD11)||'|'||
trim(USERFIELD12)||'|'||
trim(USERFIELD13)||'|'||
trim(AMOUNT1)||'|'||
trim(AMOUNT2)||'|'||
trim(AMOUNT3)||'|'||
trim(AMOUNT4)||'|'||
trim(AMOUNT5)||'|'||
trim(AMOUNT6)||'|'||
trim(AMOUNT7)||'|'||
trim(INTFIELD1)||'|'||
trim(INTFIELD2)||'|'||
trim(INTFIELD3)||'|'||
trim(INTFIELD4)||'|'||
trim(INTFIELD5)||'|'||
trim(STATEMENTTYPE)||'|'||
trim(STATEMENTFREQUENCY)||'|'||
trim(STMTDATEWEEKDAY)||'|'||
trim(STMTMONTHLYSTARTDATE)||'|'||
trim(ACTIONDURINGHOLIDAY)||'|'||
trim(DESPATCHMODE)||'|'||
trim(CALENDERTYPE)||'|'||
trim(DISCOUNTAVAILED)||'|'||
trim(DISCOUNTTYPE)||'|'||
trim(PREFEFFECTIVEDATE)||'|'||
trim(PREFEXPIRYDATE)||'|'||
trim(LASTCONTACTEDDATE)||'|'||
trim(LASTCONTACTEDCHANNEL)||'|'||
trim(FAMILYTYPE)||'|'||
trim(NOOFEARNERS)||'|'||
trim(REMARKS)||'|'||
trim(COMMUNITY)||'|'||
trim(LTVINDICATOR)||'|'||
trim(ASSETCLASSIFICATION)||'|'||
trim(ASSETCLASSIFICATIONDESC)||'|'||
trim(ASSETCLASSIFIEDON)||'|'||
trim(CUSTHEALTHCODE)||'|'||
trim(CREDITDISCOUNTPERCENT)||'|'||
trim(DEBITDISCOUNTPERCENT)||'|'||
trim(PREFERRENTIALEXPIRYDATE)||'|'||
trim(INTERESTDESCRIPTION)||'|'||
trim(STMTWEEKOFMONTH)||'|'||
trim(CUSTCHARGECODE)||'|'||
trim(CUSTCHARGE)||'|'||
trim(CHARGEDEBITFORACID)||'|'||
trim(CHARGEDEBITSOLID)||'|'||
trim(CHARGEHISTORYFLAG)||'|'||
trim(CUSTOMERCURRENCY)||'|'||
trim(LOANSSTATEMENTTYPE)||'|'||
trim(TDSSTATEMENTTYPE)||'|'||
trim(COMBSTMTCHARGECODE)||'|'||
trim(TDSCUSTFLOORLIMIT)||'|'||
trim(COMMUNITY_CODE)||'|'||
trim(CUST_HEALTH_REF_CODE)||'|'||
trim(CUST_PREF_TILL_DATE)||'|'||
trim(CU_TDSCUSTFLOORLIMIT)||'|'||
trim(CHECKSUM1)||'|'||
trim(PREFERRED_LOCALE)||'|'||
trim(BANK_ID)||'|'||
trim(NATURE_OF_ACT)
FROM CU9_O_TABLE;
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
customer_payee_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
customer_payee_spool.sql 
-- File Name		: customer_payee_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 800
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ebanking/customer_payee.txt
select
TRIM(PAYEE_LIST_ID) ||'|'||
TRIM(BANK_ID) ||'|'||
TRIM(USER_ID) ||'|'||
TRIM(DB_TS) ||'|'||
TRIM(CORP_ID) ||'|'||
TRIM(BNF_ID) ||'|'||
TRIM(BNF_NIC_NAME) ||'|'||
TRIM(FREE_FIELD_1) ||'|'||
TRIM(FREE_FIELD_2) ||'|'||
TRIM(FREE_FIELD_3) ||'|'||
TRIM(FREE_FLG1) ||'|'||
TRIM(FREE_FLG2) ||'|'||
TRIM(DEL_FLG) ||'|'||
TRIM(R_MOD_ID) ||'|'||
TRIM(TO_CHAR(R_MOD_TIME,'DD-Mon-YYYY')) ||'|'||
TRIM(R_CRE_ID) ||'|'||
TRIM(TO_CHAR(R_CRE_TIME,'DD-Mon-YYYY')) ||'|'||
TRIM(CONSUMER_CD) ||'|'||
TRIM(RECEIVE_BILLS_FLG) ||'|'||
TRIM(AUTOPAY_FLG) ||'|'||
TRIM(AUTOPAY_AMT) ||'|'||
TRIM(AUTOPAY_CRN) ||'|'||
TRIM(AUTOPAY_ACID) ||'|'||
TRIM(AUTOPAY_BRCH_ID) ||'|'||
TRIM(AUTOPAY_MODE) ||'|'||
TRIM(SUBSCRIPTION_START_DATE) ||'|'||
TRIM(ADHOC_PAYEE) ||'|'||
TRIM(NICKNAME_CRE_ID) ||'|'||
TRIM(BNF_PYMT_DETAILS_1) ||'|'||
TRIM(BNF_PYMT_DETAILS_2) ||'|'||
TRIM(BNF_PYMT_DETAILS_3) ||'|'||
TRIM(BNF_PYMT_DETAILS_4) ||'|'||
TRIM(NOTIFICATION_REF_NO) ||'|'||
TRIM(MAX_AMT_IN_HOMECRN) ||'|'||
TRIM(REG_ACTIVE_FLG) ||'|'||
TRIM(CUSTOMER_ID) ||'|'||
TRIM(FILE_SEQN_NUM) ||'|'||
TRIM(FU_REC_NUM)
from CUSTOMER_PAYEE_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_acct_closed_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_acct_closed_spool.sql 
-- File Name		: custom_acct_closed.sql
-- File Created for	: Spooling file for closed Accounts
-- Created By		: R.Alavudeen Ali Badusha 
-- Client		    : ABK
-- Created On		: 26-12-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1100
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/custom/account_closed.txt
select 
distinct 
FIN_ACC_NUM||'|'||
Acct_cls_flg||'|'||
Acct_cls_date 
from custom_acct_closed;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_advance_int_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_advance_int_spool.sql 
-- File Name		: custom_acct_closed.sql
-- File Created for	: Spooling file for closed Accounts
-- Created By		: R.Alavudeen Ali Badusha 
-- Client		    : ABK
-- Created On		: 26-12-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/custom/advance_int.txt
select 
distinct 
ACCOUNT_ID||
START_DATE||
END_DATE||
SCH_BAL||
INT_AMOUNT
from custom_advance_int;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_blocked_office_acc.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_blocked_office_acc.sql 
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/custom/custom_blocked_off_acc.txt
select 
distinct 
foracid||
frez_code||
frez_reason_code||
system_only_acct_flg||
anw_non_cust_alwd_flg
from CUSTOM_OFFICE_ACC_BLOCK;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_cla_drawdownint_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_cla_drawdownint_spool.sql 
-- File Name		: custom_pool_spool_kw.sql
-- File Created for	: Spooling file for sweeps pool upload
-- Created By		: R.Alavudeen Ali Badusha
-- Client		    : ABK
-- Created On		: 27-12-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 292
set page size 0
set pages 0
#set trimspool on
spool $MIG_PATH/output/finacle/cla/KW/custom_cla_drawdown_int.txt
select 
ACCOUNT_NUMBER||
DRAW_DOWN_DATE ||  
DRAW_DOWN_AMOUNT || 
EFFECTIVE_INT_RATE||
EVENT_FLAG        
from draw_down_int_o_table;
spool off;
 exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_cla_drawdownsh_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_cla_drawdownsh_spool.sql 
-- File Name		: custom_pool_spool_kw.sql
-- File Created for	: Spooling file for sweeps pool upload
-- Created By		: R.Alavudeen Ali Badusha
-- Client		    : ABK
-- Created On		: 27-12-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 292
set page size 0
set pages 0
#set trimspool on
spool $MIG_PATH/output/finacle/cla/KW/custom_cla_drawdown_sch.txt
select 
ACCOUNT_NUMBER||
START_DATE||                
END_DATE||                  
SCHEDULED_DRAW_DOWN_AMOUNT||
DRAW_DOWN_CURRENCY||        
CREDIT_ACCOUNT_NUM||        
ECS_MANDATE_SERIAL||        
MODE_OF_DRAW_DOWN||         
ACTUAL_DRAW_DOWN_AMOUNT||
REMARKS||                   
PAYSYS_ID  
from draw_down_o_table;
spool off;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_col_advent_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_col_advent_spool.sql 
-- File Name		: CUSTOM_COL_LINKAGE_spool.sql
-- File Created for	: Upload file for col
-- Created By		: Revathi
-- Client		    : Emirates Islamic Bank
-- Created On		: 28-12-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/custom/coladvent.txt
select 
trim(CIF_ID)    ||'|'||
trim(INSTR_CODE)    ||'|'||
trim(INSTR_DESC)    ||'|'||
trim(INSTR_NAME)    ||'|'||
trim(INSTR_REF_CRNCY)    ||'|'||
trim(ISIN_OR_TICKER)    ||'|'||
trim(UNIT_PRICE)    ||'|'||
trim(QUANTITY)    ||'|'||
trim(BANK_ID)    ||'|'||
trim(ENTITY_CRE_FLG)    ||'|'||
trim(DEL_FLG)    
from custom_Col_Advent_o_table ;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_col_eifb_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_col_eifb_spool.sql 
-- File Name		: CUSTOM_COL_LINKAGE_spool.sql
-- File Created for	: Upload file for col
-- Created By		: Revathi
-- Client		    : Emirates Islamic Bank
-- Created On		: 28-12-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/custom/coleifb.txt
select 
trim(CIF_ID)    ||'|'||
trim(EIFB_CLNT_ID)    ||'|'||
trim(HOLDING_VALUE)    ||'|'||
trim(REMARKS)    ||'|'||
trim(BANK_ID)    ||'|'||
trim(ENTITY_CRE_FLG)    ||'|'||
trim(DEL_FLG)   
from custom_Col_eifb_o_table;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_col_guarantee_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_col_guarantee_spool.sql 
-- File Name		: CUSTOM_COL_LINKAGE_spool.sql
-- File Created for	: Upload file for col
-- Created By		: Revathi
-- Client		    : Emirates Islamic Bank
-- Created On		: 28-12-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/custom/colguarantee.txt
select 
trim(SECU_LINKAGE_TYPE)    ||'|'||
trim(SECU_SRL_NUM)    ||'|'||
trim(BANK_ID)    ||'|'||
trim(ENTITY_CRE_FLG)    ||'|'||
trim(DEL_FLG)    ||'|'||
trim(FREE_FIELD1)    ||'|'||
trim(FREE_FIELD2)    ||'|'||
trim(FREE_FIELD3)    ||'|'||
trim(FREE_FIELD4)    ||'|'||
trim(JOINT_INDIVIDUAL)    ||'|'||
trim(LIMITED)    ||'|'||
trim(GUARANTOR_ID)    ||'|'||
trim(GUARANTOR_NAME1)    ||'|'||
trim(GUARANTOR_NAME2)    ||'|'||
trim(GUARANTOR_NAME3)    ||'|'||
trim(GUARANTOR_NAME4)    ||'|'||
trim(GUARANTOR_NAME5)    ||'|'||
trim(GUARANTOR_NAME6)    ||'|'||
trim(GUARANTOR_NAME7)    ||'|'||
trim(GUARANTOR_NAME8)    ||'|'||
trim(GUARANTOR_NAME9)    ||'|'||
trim(GUARANTOR_NAME10)    ||'|'||
trim(BOARD_RES)    ||'|'||
trim(ATTESTATIONBY)    ||'|'||
trim(COLLATERAL_TYPE_VALUE)    
from CUSTOM_COL_GUARANTEE_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_col_ins_company_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_col_ins_company_spool.sql 
-- File Name		: CUSTOM_COL_LINKAGE_spool.sql
-- File Created for	: Upload file for col
-- Created By		: Revathi
-- Client		    : Emirates Islamic Bank
-- Created On		: 28-12-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/custom/colinscompany.txt
select 
trim(INSURANCE_COMPANY)    ||'|'||
trim(BANK_ID)    ||'|'||
trim(DEL_FLG)    
from custom_col_ins_company_o_table;
exit;

 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_col_linkage_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_col_linkage_spool.sql 
-- File Name		: CUSTOM_COL_LINKAGE_spool.sql
-- File Created for	: Upload file for col
-- Created By		: Revathi
-- Client		    : Emirates Islamic Bank
-- Created On		: 28-12-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/custom/collinkage_new.txt
select 
trim(SECU_LINKAGE_TYPE)    ||'|'||
trim(SECU_SRL_NUM)    ||'|'||
trim(BANK_ID)    ||'|'||
trim(COLLATERAL_TYPE_VALUE)    ||'|'||
trim(ENTITY_CRE_FLG)    ||'|'||
trim(DEL_FLG)    ||'|'||
trim(FREE_FIELD1)    ||'|'||
trim(FREE_FIELD2)    ||'|'||
trim(FREE_FIELD3)    ||'|'||
trim(FREE_FIELD4)    ||'|'||
trim(HOLDER)    ||'|'||
trim(HOLDER_NAME)    ||'|'||
trim(SHARED_OTHER_CUST)    ||'|'||
trim(TYPE_PROP)    ||'|'||
trim(RESI_COMM)    ||'|'||
trim(TITLE_DEED)    ||'|'||
trim(VALUE_ON_COST_AED)    ||'|'||
trim(APPROVED_FLG)    ||'|'||
trim(VALUATION_FREQ)    ||'|'||
trim(TYPE_ASSET)    ||'|'||
trim(NOTORIZED)    ||'|'||
trim(FORCED_SALE_VALUE)    ||'|'||
trim(VALUATOR_NAME)    ||'|'||
trim(TYPE_OF_INV)    ||'|'||
trim(NO_UNITS)    ||'|'||
trim(UNIT_VALUE)    ||'|'||
trim(NAV)    ||'|'||
trim(LETTER_INS_TO_EREF)    ||'|'||
trim(HOLDER_ACCT)    ||'|'||
trim(DETAIL_ASSETS)    ||'|'||
trim(EIFB_CLIENTID)    ||'|'||
trim(COVER_RATIO)    ||'|'||
trim(TRADING_ACCOUNT)    ||'|'||
trim(CASH_AMOUNT_AED)    ||'|'||
trim(HOLDING_VALUE_AED)    ||'|'||
trim(DEVELOPER_NAME)    ||'|'||
trim(PROP_OWNER_NAME)    ||'|'||
trim(FLATPLOTNO)    ||'|'||
trim(BUILDING_NAME)    ||'|'||
trim(AREA)    ||'|'||
trim(EMIRATE)    ||'|'||
trim(TRIPARTITE_EXEC_DATE)    ||'|'||
trim(TRIPARTITE_EXPIRY_DATE)    ||'|'||
trim(TRIPARTITE_AMOUNT)    ||'|'||
trim(PROPERTY_VAL_DATE)    ||'|'||
trim(REFERENCENO)    ||'|'||
trim(TYPE_FACILITY_LETTER)    ||'|'||
trim(BENEFICARY)    ||'|'||
trim(GUARANTEE_TYPE)    ||'|'||
trim(GUARANTEE_ISSUE_DATE)    ||'|'||
trim(GURANTEE_AMT)    ||'|'||
trim(GURANTEE_AMT_AED)    ||'|'||
trim(NAME_CONTRACTOR)    ||'|'||
trim(CONTRACT_REFNO)    ||'|'||
trim(CONTRACT_DETAILS)    ||'|'||
trim(RENTAL_AMT)    ||'|'||
trim(DRAWNON_BANK)    ||'|'||
trim(ACCT_TITLE)    ||'|'||
trim(CHQNO)    ||'|'||
trim(INSURANCE_COMPANY)    ||'|'||
trim(ASSIGN_TYPE)    ||'|'||
trim(ASSIGN_AMOUNT)    ||'|'||
trim(AMOUNT_EIB)    ||'|'||
trim(PREM_RECEIPT)    ||'|'||
trim(COMPANY_NAME)    ||'|'||
trim(COMPANY_COUNTRY)    ||'|'||
trim(NOTARIZEDBY)    ||'|'||
trim(NAME_INSURER)    ||'|'||
trim(TYPE_INSURANCE)    ||'|'||
trim(PREM_PAY_FREQ)    ||'|'||
trim(NEXT_PREM_DUE)    ||'|'||
trim(TANGIBLE)    ||'|'||
trim(RM)    ||'|'||
trim(CREDIT_MANAGER)    ||'|'||
trim(MAINCLASSIFICATION)    ||'|'||
trim(SUBCLASSIFICATION)    ||'|'||
trim(COLLATERAL_STATUS)    ||'|'||
trim(DOC_DATE)    ||'|'||
trim(EXPEC_DATE)    ||'|'||
trim(APPR_DATE)    ||'|'||
trim(REC_DATE)    ||'|'||
trim(APPR_BY)    ||'|'||
trim(REMARKS)    
from CUSTOM_COL_LINKAGE_O_TABLE 
where COL_DOC_ID in ('34','35','36','37','38','39','40','41','42','43','46','47','48','49','50','51','52','53','32','33','30','31');
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_col_lombard_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_col_lombard_spool.sql 
-- File Name		: CUSTOM_COL_LINKAGE_spool.sql
-- File Created for	: Upload file for col
-- Created By		: Revathi
-- Client		    : Emirates Islamic Bank
-- Created On		: 28-12-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/custom/collombard.txt
select 
trim(SECU_LINKAGE_TYPE)    ||'|'||
trim(SECU_SRL_NUM)    ||'|'||
trim(BANK_ID)    ||'|'||
trim(ENTITY_CRE_FLG)    ||'|'||
trim(DEL_FLG)    ||'|'||
trim(FREE_FIELD1)    ||'|'||
trim(FREE_FIELD2)    ||'|'||
trim(FREE_FIELD3)    ||'|'||
trim(FREE_FIELD4)    ||'|'||
trim(COLL_PROVIDERNO)    ||'|'||
trim(TICKER_ISIN)    ||'|'||
trim(ALLOTTED_QTY)    ||'|'||
trim(SECURITY_VALUE)    ||'|'||
trim(COLLATERAL_TYPE_VALUE)    
from CUSTOM_COL_LOMBARD_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_col_secu_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_col_secu_spool.sql 
-- File Name		: CUSTOM_COL_LINKAGE_spool.sql
-- File Created for	: Upload file for col
-- Created By		: Revathi
-- Client		    : Emirates Islamic Bank
-- Created On		: 28-12-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/custom/colsecurity.txt
select 
trim(SECU_CODE)    ||'|'||
trim(SECU_TYPE)    ||'|'||
trim(COLLATERAL_TYPE_VALUE)    ||'|'||
trim(BANK_ID)    ||'|'||
trim(DEL_FLG)    ||'|'||
trim(ENTITY_CRE_FLG)    ||'|'||
trim(FREE_FIELD1)    ||'|'||
trim(FREE_FIELD2)    ||'|'||
trim(FREE_FIELD3)    ||'|'||
trim(FREE_FIELD4)    
from CUSTOM_COL_SECU_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_col_valuator_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_col_valuator_spool.sql 
-- File Name		: CUSTOM_COL_LINKAGE_spool.sql
-- File Created for	: Upload file for col
-- Created By		: Revathi
-- Client		    : Emirates Islamic Bank
-- Created On		: 28-12-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/custom/colvaluator.txt
select 
trim(VALUATOR_NAME)    ||'|'||
trim(BANK_ID)    ||'|'||
trim(DEL_FLG)    
from custom_col_valuator_o_table;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_freetext_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_freetext_spool.sql 
-- File Name		: custom_freetext_spool.sql
-- File Created for	: Upload file for freetext
-- Created By		: Sharanappa
-- Client		    : ABK
-- Created On		: 06-06-2017
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/custom/freetext.txt
select 
ACID||
FREE_TEXT_1||
FREE_TEXT_2||
FREE_TEXT_3||
FREE_TEXT_4||
FREE_TEXT_5||
FREE_TEXT_6||
FREE_TEXT_7||
FREE_TEXT_8||
FREE_TEXT_9||
FREE_TEXT_10||
FREE_TEXT_11||
FREE_TEXT_12||
FREE_TEXT_13||
FREE_TEXT_14||
FREE_TEXT_15
from FREETEXT_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_lcu001_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_lcu001_spool.sql 
-- File Name		: custom_cchot01_spool.sql
-- File Created for	: Spooling file for Lockers details customization.
-- Created By		: Revathi
-- Client		    : EIB
-- Created On		: 29-11-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1500
set page size 0
set pages 0
#set trimspool on
column filename new_value filename;
select '/output/finacle/locker/custom_lcu001_'||param_value||'_'||to_char(sysdate,'DDMMYYYY_HHMISS') filename from system_config where param_name='COUNTRY_CODE';
spool $MIG_PATH&filename..txt;
--#spool $MIG_PATH/output/finacle/locker/custom_lcu001.txt
select
SOL_ID      ||
CIF_ID      ||
CUSTOMER_NAME      ||
LOCKER_TYPE      ||
LOCKER_NO      ||
JOINT_HOLDERNAME_1      ||
JOINT_HOLDER_CIF_ID_1      ||
JOINT_HOLDER_RELATION_1      ||
JOINT_HOLDER_NAME_2      ||
JOINT_HOLDER_CIF_ID_2      ||
JOINT_HOLDER_RELATION_2      ||
JOINT_HOLDER_NAME_3      ||
JOINT_HOLDER_CIF_ID_3      ||
JOINT_HOLDER_RELATION_3      ||
OPACC      ||
SDACC      ||
CODE_WORD      ||
OPEN_DATE      ||
CLOSED_DATE      ||
FREQUENCY      ||
TOTAL_RENT      ||
REMARKS      ||
LAST_RENT_DATE      ||
DUE_DATE      ||
DUE_NOTICE_DATE      ||
DUE_RENT      ||
DELETE_FLAG      ||
FREE_TEXT_1      ||
FREE_TEXT_2      ||
PAYMENT_MODE      ||
PAYMENT_DATE      ||
RENT_PAID      ||
PREFERABLE_LANGUAGE_CODE      ||
CUSTOMER_NAMEIN_PREF_LANG_CODE      ||
MODE_OF_OPER_CODE
from custom_lcu001_o_table;
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_limit_link_acct_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_limit_link_acct_spool.sql 
-- File Name		: custom_limit_link_acct_spool.sql
-- File Created for	: Spooling file for Limit linking to account spool
-- Created By		: Kumaresan.B
-- Client		    : EIB
-- Created On		: 10-01-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1100
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/custom/custom_limit_link_acct.txt
select 
OLD_CIF||'|'||
FIN_CIF_ID||'|'||
FIN_ACC_NUM||'|'||
EFFECTIVE_DATE||'|'||
LIMIT_PREFIX||'|'||
SUFFIX 
from custom_limit_link_acct;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_lku001_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_lku001_spool.sql 
-- File Name		: custom_cchot01_spool.sql
-- File Created for	: Spooling file for Lockers details customization.
-- Created By		: Revathi
-- Client		    : EIB
-- Created On		: 29-11-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 292
set page size 0
set pages 0
#set trimspool on
spool $MIG_PATH/output/finacle/custom/CCLKU.txt
select 
SOL_ID      ||
LOCKER_TYPE      ||
LOCKER_NO      ||
KEY_NO      ||
OCCUPIED_FLAG      ||
FREEZE_CODE      ||
FREEZE_REASON      ||
PURPOSE_USED      ||
REMARKS      ||
DELETE_FLAG      ||
PREFERABLE_LANG_CODE      ||
PREFERABLE_LANG_FREEZE_REASON      
from custom_lku001_o_table;
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_lnu001_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_lnu001_spool.sql 
-- File Name		: custom_cchot01_spool.sql
-- File Created for	: Spooling file for Lockers details customization.
-- Created By		: Revathi
-- Client		    : EIB
-- Created On		: 29-11-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1100
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/custom/CCLNU.txt
trim(CIF_ID)      ||'|'||
trim(SOL_ID)      ||'|'||
trim(LOCKER_TYPE)      ||'|'||
trim(LOCKER_NO)      ||'|'||
trim(NOMINEE_NAME)      ||'|'||
trim(NOMINEE_CUSTOMER_ID)      ||'|'||
trim(REGISTRATION_NO)      ||'|'||
trim(RELATION)      ||'|'||
trim(ADDRESS_LINE_1)      ||'|'||
trim(ADDRESS_LINE_2)      ||'|'||
trim(ADDRESS_LINE_3)      ||'|'||
trim(CITY_CODE)      ||'|'||
trim(STATE_CODE)      ||'|'||
trim(COUNTRY_CODE)      ||'|'||
trim(PIN_CODE)      ||'|'||
trim(DATE_OF_BIRTH)      ||'|'||
trim(MINOR_FLAG)      ||'|'||
trim(CODE_WORD)      ||'|'||
trim(REMARKS)      ||'|'||
trim(DELETE_FLAG)      ||'|'||
trim(FREE_TEXT_1)      ||'|'||
trim(FREE_TEXT_2)      ||'|'||
trim(PREFERABLE_LANGUAGE_CODE)      ||'|'||
trim(ALTERNATE_NOMINEE_NAME)      ||'|'||
trim(GUARDIAN_NAME)      ||'|'||
trim(GUARDIAN_CODE)      ||'|'||
trim(GUARDIAN_ADDRESS1)      ||'|'||
trim(GUARDIAN_ADDRESS2)      ||'|'||
trim(GUARDIAN_CITY_CODE)      ||'|'||
trim(GUARDIAN_STATE_CODE)      ||'|'||
trim(GUARDIAN_COUNTRY_CODE)      ||'|'||
trim(GUARDIAN_PIN_CODE)      
from custom_lnu001_o_table;
spool off;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_lockers_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_lockers_spool.sql 
-- File Name		: custom_cchot01_spool.sql
-- File Created for	: Spooling file for Lockers details customization.
-- Created By		: Revathi
-- Client		    : EIB
-- Created On		: 15-12-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1100
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/custom/custlockers.txt
select
trim(SOL_ID) ||'|'||
trim(LOCKER_TYPE) ||'|'||
trim(LOCKER_NO) ||'|'||
trim(CIF_ID) ||'|'||
trim(JOINT_HOLDER_CIF_4) ||'|'||
trim(JOINT_HOLDER_CIF_5) ||'|'||
trim(JOINT_HOLDER_CIF_6) ||'|'||
trim(JOINT_HOLDER_CIF_7) ||'|'||
trim(JOINT_HOLDER_CIF_8) ||'|'||
trim(JOINT_HOLDER_CIF_9) ||'|'||
trim(JOINT_HOLDER_CIF_10) ||'|'||
trim(JOINT_HOLDER_CIF_11) ||'|'||
trim(JOINT_HOLDER_CIF_12) ||'|'||
trim(JOINT_HOLDER_CIF_13) ||'|'||
trim(JOINT_HOLDER_CIF_14) ||'|'||
trim(JOINT_HOLDER_CIF_15) ||'|'||
trim(JOINT_HOLDER_CIF_16) ||'|'||
trim(JOINT_HOLDER_CIF_17) ||'|'||
trim(JOINT_HOLDER_CIF_18) ||'|'||
trim(JOINT_HOLDER_CIF_19) ||'|'||
trim(JOINT_HOLDER_CIF_20) ||'|'||
trim(ENTITY_CRE_FLG) ||'|'||
trim(DEL_FLG) ||'|'||
trim(BANK_ID) 
from custom_lockers_o_table;
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_ltu001_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_ltu001_spool.sql 
-- File Name		: custom_cchot01_spool.sql
-- File Created for	: Spooling file for Lockers details customization.
-- Created By		: Revathi
-- Client		    : EIB
-- Created On		: 29-11-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 169
set page size 0
set pages 0
--#set trimspool on
column filename new_value filename;
select '/output/finacle/locker/custom_ltu001_'||param_value||'_'||to_char(sysdate,'DDMMYYYY_HHMISS') filename from system_config where param_name='COUNTRY_CODE';
spool $MIG_PATH&filename..txt;
--#spool $MIG_PATH/output/finacle/locker/custom_ltu001.txt
select
SOL_ID    ||
LOCKER_TYPE    ||
BRANCH_CLASSIFICATION    ||
REMARKS    ||
START_DATE    ||
END_DATE    ||
DELETE_FLAG    ||
RENT_EVENT_ID    
from custom_ltu001_o_table;
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_nominated_acct_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_nominated_acct_spool.sql 
-- File Name		: custom_nominated_acct.sql
-- File Created for	: Spooling file for nominated Accounts
-- Created By		: Kumaresan.B
-- Client		    : EIB
-- Created On		: 10-01-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1100
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/custom/custom_nominated_acct.txt
select 
distinct 
FIN_ACC_NUM||'|'||
OPERATIVE_ACC_NUM 
from custom_nominatted_acct;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_operation_codes_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_operation_codes_spool.sql 
-- File Name		: custom_operation_codes_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : ABK
-- Created On		: 15-05-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1100
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/custom/operation_codes.txt
select
trim(REASON_CODE_DESC)    ||'|'||
trim(OPERATION)    ||'|'||
trim(REASON_CODE)    ||'|'||
trim(REASON_DESC)    ||'|'||
trim(REASON_CODE_REMOVED)    ||'|'||
trim(START_DATE)    ||'|'||
trim(EXPIRY_DATE)    ||'|'||
trim(USERFIELD1)    ||'|'||
trim(USERFIELD2)    ||'|'||
trim(USERFIELD3)    ||'|'||
trim(USERFIELD4)    ||'|'||
trim(USERFIELD5)    ||'|'||
trim(USERFIELD6)    ||'|'||
trim(USERFIELD7)    ||'|'||
trim(ORGKEY)    ||'|'||
trim(BANK_ID)
from CUSTOM_OPERATION_REASON_CODES;
spool off;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_pdc_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_pdc_spool.sql 
-- File Name		: custom_pdc_spool.sql
-- File Created for	: Creation of PDC spool file
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 13-01-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 623
set page size 0
set pages 0
#set trimspool on
spool $MIG_PATH/output/finacle/custom/custom_pdc.txt
select
ACCOUNT_NUMBER||
NEXT_PDC_DATE||
PDC_TYPE||
PDC_PAYMENT_TYPE||
START_PDC_NUMBER||
NO_OF_PDCS||
PDC_LEAVES_STATUS||
PDC_AMT||
BANK_CODE||
BRANCH_CODE||
BANK_MICR_CODE||
TRANSFER_OPERATING_ACCT||
REMARKS||
PDC_FREQUENCY_TYPE||
PDC_CURRENCY_CODE||
DP_MARGIN_PERCENT||
CHARG_EVENT_ID||
PD_PRESENTATION_DATE||
FUNDING_FLAG||
ISSUER_CIF_ID||
ISSUER_NAME||
issuer_business_id||
IBAN_ACCOUN_NO||
PDC_CLEARING_FLAG_TYPE||
PDCT_FREE_TEXT1||
PDCT_FREE_TEXT2||
PDCT_FREE_TEXT3
from PDC_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_pool_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_pool_spool_kw.sql 
-- File Name		: custom_pool_spool_kw.sql
-- File Created for	: Spooling file for sweeps pool upload
-- Created By		: R.Alavudeen Ali Badusha
-- Client		    : ABK
-- Created On		: 27-12-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 292
set page size 0
set pages 0
#set trimspool on
spool $MIG_PATH/output/finacle/custom/custom_pool.txt
select 
Pool_Number||            
Account_Number||
Pool_Desc||              
Suspend_Flag||           
Suspend_Date||           
Order_of_Utilization||   
Alternate_Pool_Desc||    
Pool_Type||              
Auto_Regularize         
from custom_pool_o_table order by to_number(pool_number),ORDER_OF_UTILIZATION;
spool off;
 exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_provision_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_provision_spool.sql 
set head off
set feedback off
set term off
set lines 292
set page size 0
set pages 0
#set trimspool on
spool $MIG_PATH/output/finacle/custom/custom_provision.txt
select
rpad(nvl(trim(Account_ID),' '),16,' ')||
lpad(nvl(trim(Principal_Outstanding_Amount),' '),17,' ')||
lpad(nvl(trim(Effective_Collateral_Value),' '),17,' ')||
lpad(nvl(trim(Effective_Provision_Amount),' '),17,' ')||
lpad(nvl(trim(Adhoc_Provisional_Amount),' '),17,' ')||
lpad(nvl(trim(Last_Provisional_Date),' '),16,' ')||
lpad(nvl(trim(IAS_Provisional_Amount),' '),17,' ')||
lpad(nvl(trim(Discount_IAS_Provis_Amt),' '),17,' ')
from custom_provision_o_table;
spool off;
 exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_rollover.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
custom_rollover.sql 
-- File Name		: custom_pool_spool_kw.sql
-- File Created for	: Spooling file for sweeps pool upload
-- Created By		: R.Alavudeen Ali Badusha
-- Client		    : ABK
-- Created On		: 27-12-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 292
set page size 0
set pages 0
#set trimspool on
spool $MIG_PATH/output/finacle/custom/custom_rollover.txt
select 
ACCOUNT_ID ||                  
ROLLOVER_MONTHS ||               
ROLLOVER_DAYS ||               
ROLLOVER_TYPE ||   
ROLLOVER_PRINCIPAL_AMOUNT ||    
PENDING_INTEREST_DEMANDS ||      
INT_PAY_AFTER_ROLLOVER ||
MAX_NUM_TIMES_ROLLOVER_ALLOWED ||
DEFERRED_INTEREST ||     
TENOR_FOR_INTEREST_RATE ||
SUSPEND_ROLLOVER ||
NUMBER_OF_TIME_ROLLOVER_DONE ||
ONLINE_BATCH_ROLLOVER ||  
ADVANCE_INT_RECOVERY_AC_ID ||
TRAN_EXCHANGE_RATE ||
TRAN_RATE ||          
TRAN_TREASURY_RATE ||            
TREASURY_REF_NO  ||              
ROLLOVER_EVENT 
from rollover_o_Table;
spool off;
 exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
dubact_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
dubact_spool.sql 
-- File Name		: ACCOUNT_fax_held_spool.sql
-- File Created for	: Spooling file for Account fax held.
-- Created By		: Kumaresan.B
-- Client		    : EIB
-- Created On		: 19-10-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1100
set page size 0
set pages 0
set trimspool off
spool $MIG_PATH/output/finacle/dubdatafiles/dubact.txt
SELECT
C5ATP||
C5ATD||
C5LVS||
C5HVS
FROM  DUBACT ;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
dubav_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
dubav_spool.sql 
-- File Name		: DUBAV_spool.sql
-- File Created for	: Spooling file for Account fax held.
-- Created By		: Kumaresan.B
-- Client		    : EIB
-- Created On		: 19-10-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1100
set page size 0
set pages 0
set trimspool off
spool $MIG_PATH/output/finacle/dubdatafiles/dubav.txt
SELECT
AVINTACCNO||
AVEXTACCNO||
AVNAME||
AVACT||
AVCCY||
AVMTDFC||
AVMTDKD||
AVYTDFC||
AVYTDKD  
FROM  DUBAV;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
dubccy_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
dubccy_spool.sql 
-- File Name		: ACCOUNT_fax_held_spool.sql
-- File Created for	: Spooling file for Account fax held.
-- Created By		: Kumaresan.B
-- Client		    : EIB
-- Created On		: 19-10-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1100
set page size 0
set pages 0
set trimspool off
spool $MIG_PATH/output/finacle/dubdatafiles/dubccy.txt
SELECT
C8CCY||
C8CUR||
C8CCYN||
C8CED||
C8SPT||
C8SEI
FROM  DUBCCY ;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
dubcust_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
dubcust_spool.sql 
-- File Name		: ACCOUNT_fax_held_spool.sql
-- File Created for	: Spooling file for Account fax held.
-- Created By		: Kumaresan.B
-- Client		    : EIB
-- Created On		: 19-10-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1100
set page size 0
set pages 0
set trimspool off
spool $MIG_PATH/output/finacle/dubdatafiles/dubcust.txt
SELECT
  BRANCH||
  GFCUS||
  GFCPNC||
  GFCUN||
  BGDID1|| 
  BGDID2||
  BGCSNO||
  BGDTOB||
  BGGRCD||
  GFSAC||
  GFACO||
  GFCA2||
  GFCNAP||
  GFCNAL||
  GFC1R||
  GFC2R||
  GFC3R||
  GFC4R||
  GFC5R||
  GFP1R||
  GFP2R||
  GFP3R||
  GFP4R||
  GFP5R
  FROM DUBCUST;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
dubdatafd_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
dubdatafd_spool.sql 
-- File Name		: ACCOUNT_fax_held_spool.sql
-- File Created for	: Spooling file for Account fax held.
-- Created By		: Kumaresan.B
-- Client		    : EIB
-- Created On		: 19-10-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 297
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/dubdatafiles/dubdatafd.txt
SELECT
AINTACCNO||
AEXTACCNO||
ASEQNO||
ASHRNAME||
ACBKC||
AACT||
AACL||
ACTP||
AANL||
ANATC||
ARESC||
ACCYC||
ACBAL||
AKBAL||
ANDEC||
ADSTR||
ADMAT||
ADFMAT||
ADRT||
AOFC||
AOFCE||
ACRDTE||
ACRLIM||
AACRFC||
AACRKD||
AORGAM||
AORGDT||
ADLP||
ADLR||
ALCD||
ANCD||
ACLO||
APRA||
AWLST||
AWOFF||
APRV||
ADDATE
FROM  DUBDATAFD_OTP ;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
dubdeals_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
dubdeals_spool.sql 
-- File Name		: DUBDEALS_spool.sql
-- File Created for	: Spooling file for Account fax held.
-- Created By		: Kumaresan.B
-- Client		    : EIB
-- Created On		: 19-10-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1100
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/dubdatafiles/dubdeals.txt
SELECT
EXT_ACC||
INT_ACC||
SHORT_NAME||
DEAL_TYPE||
DEAL_REF||
CUST_TYPE||
ACC_TYPE||
OFFICER||
CCY||
START_DATE||
FIELD_13||
MATURITY_DATE||
DEAL_AMOUNT||
DEAL_AMOUNT_KWD||
INTEREST||
INTEREST_KWD||
INTEREST_RATE         
FROM DUBDEALS_OTP;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
dubinex_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
dubinex_spool.sql 
-- File Name		: DUBINEX_spool.sql
-- File Created for	: Spooling file for Account fax held.
-- Created By		: Kumaresan.B
-- Client		    : EIB
-- Created On		: 19-10-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1100
set page size 0
set pages 0
set trimspool off
spool $MIG_PATH/output/finacle/dubdatafiles/dubinex.txt
SELECT
IEINTACCNO ||
IEEXTACCNO||
IENAME||
IEACT||
IECCY||
IEMTDFC||
IEMTDKD||
IEYTDFC||
IEYTDKD
FROM  DUBINEX;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
dubloans_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
dubloans_spool.sql 
-- File Name		: DUBLOANS_spool.sql
-- File Created for	: Spooling file for Account fax held.
-- Created By		: Kumaresan.B
-- Client		    : EIB
-- Created On		: 19-10-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1100
set page size 0
set pages 0
set trimspool off
spool $MIG_PATH/output/finacle/dubdatafiles/dubloans.txt
SELECT
INTACCNO||
EXTACCNO||
SCSHN||
SCCTP||
SCCNAL||
SCCNAP||
SCACT||
SCACD||
SCCCY||
BALINKD||
SCC2R||
SCAI81||
SCAI83||
SCAI84||
SCAI86||
SCAIG4
FROM DUBLOANS_OTP;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
dubofc_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
dubofc_spool.sql 
-- File Name		: DUBLOANS_spool.sql
-- File Created for	: Spooling file for Account fax held.
-- Created By		: Kumaresan.B
-- Client		    : EIB
-- Created On		: 19-10-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1100
set page size 0
set pages 0
set trimspool off
spool $MIG_PATH/output/finacle/dubdatafiles/dubofc.txt
SELECT
C2ACO||
C2RNM||
FILLER
FROM DUBOFC;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
dummy_acct_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
dummy_acct_spool_uae.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 5000 
set page size 0
set pages 0
#set trimspool on
set trimspool on
spool $MIG_PATH/output/finacle/core/UAE/DUMMY_ACCT.txt
select Account_Number||With_holding_tax_flg||With_holding_tax_Amt_scope_flg||With_holding_tax_percent||
With_holding_tax_floor_limit||CIF_ID||Customer_Cr_Pref_Percent||Customer_Dr_Pref_Percent||Account_Cr_Pref_Percent||
Account_Dr_Pref_Percent||Channel_Cr_Pref||Channel_Dr_Pref||Pegged_Flag||Peg_Frequency_in_Mnth||Peg_Frequency_in_Days||Int_freq_type_Credit||
Int_freq_week_num_Credit||Int_freq_week_day_Credit||Int_freq_start_dd_Credit||Int_freq_hldy_stat_Credit||Next_Cr_interest_run_date||Int_freq_type_Debit||
Int_freq_week_num_Debit||Int_freq_week_day_Debit||Int_freq_start_dd_Debit||Int_freq_hldy_stat_Debit||Next_Debit_interest_run_dt||Ledger_Number||
Employee_Id||Account_Open_Date||Mode_of_Operation_Code||Gl_Sub_Head_Code||Scheme_Code||Cheque_Allowed_Flag||Pass_Book_Pass_Sheet_Code||Freeze_Code||
Freeze_Reason_Code||Free_Text||Account_Dormant_Flag||Free_Code_1||Free_Code_2||Free_Code_3||Free_Code_4||Free_Code_5||Free_Code_6||Free_Code_7||Free_Code_8||
Free_Code_9||Free_Code_10||Interest_Table_Code||Account_Location_Code||Currency_Code||Service_Outlet||Account_Mgr_User_Id||Account_Name||Swift_Allowed_Flg||
Last_Transaction_Date||Last_Transaction_any_date||Exclude_for_combined_statement||Statement_CIF_ID||charge_Level_Code||PBF_download_Flag||wtax_level_flg||
Sanction_Limit||Drawing_Power||DACC_ABSOLUTE_LIMIT||DACC_PERCENT_LIMIT||Maximum_Allowed_Limit||Health_Code||Sanction_Level_Code||Sanction_Reference_Number||
Limit_Sanction_Date||Limit_Expiring_Date||Account_Review_Date||Loan_Paper_Date||Sanction_Authority_Code||Last_Compound_date||Daily_compounding_of_int_flag||
Comp_rest_day_flag||Use_discount_rate_flg||Dummy||Account_status_date||Iban_number||Ias_code||channel_id||channel_level_code||int_suspense_amt||
penal_int_suspense_amt||chrge_off_flg||pd_flg||pd_xfer_date||chrge_off_date||chrge_off_principal||pending_interest||principal_recovery||interest_recovery||
charge_off_type||Master_acct_num||ps_diff_freq_rel_party_flg||swift_diff_freq_rel_party_flg||Address_Type||Phone_Type||Email_Type||Alternate_Account_Name||
Interest_Rate_Period_Months||Interest_Rate_Period_Days||Interpolation_Method||Is_Account_hedged_Flag|| Used_for_netting_off_flag||Security_Indicator||Debt_Security||
Security_Code||Debit_int_Method||Service_Chrge_Coll_Flg||Last_Purge_Date||Total_Profit_Amt||  Min_Age_Not_Met_Amt||Br_Per_Prof_Paid_Flg||
Br_Per_Prof_Paid_Amt||Prof_To_Be_Recovered||Prof_Distr_Upto_Date||Nxt_Profit_Distr_Date||unclaim_status||unclaim_status_date||orig_gl_sub_head_code 
from dummy_accountS_o_Table
left join (select foracid from tbaadm.gam where bank_id=get_param('BANK_ID')) gam on foracid = trim(account_number)
where  foracid is null
ORDER BY TO_NUMBER(TRIM(Service_Outlet)); 
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
etfs_mapping_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
etfs_mapping_spool.sql 
-- File Name		: ETFS Mapping
-- File Created for	: ETFS Mapping
-- Created By		: Aditya Sharma
-- Client		    : ENBD
-- Created On		: 24-03-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/subsystem/Etfs_Mapping.txt
select
'old_cif'||'|'||
'new_cif_id'||'|'||
'Branch'  ||'|'||
'old_account_number'||'|'||
'Currency'||'|'||
'New_account_number'||'|'||
'segment_code' ||'|'||
'sub_segment'||'|'||
'Analysis_code'
from dual
union all
select 
distinct to_char(leg_cust_number) 	||'|'||
to_char(a.FIN_CIF_ID) 	||'|'||
to_char(LEG_BRANCH_ID) 	||'|'||
to_char(b.LEG_ACC_NUM) 	||'|'||
to_char(case when CURRENCY='DH' then 'AED' else CURRENCY end) 	||'|'||
to_char(b.FIN_ACC_NUM) 	||'|'||
to_char(SEGMENT) 	||'|'||
to_char(SUBSEGMENT)	||'|'||
to_char(scacd) 
from map_cif a
inner join (select * from map_acc_rep where schm_type in('SBA','ODA','TDA','TUA')) b on a.FIN_CIF_ID=b.fin_cif_id
inner join crmuser.corporate on corp_key=a.FIN_CIF_ID
inner join scpf on scab||scan||scas=leg_branch_id||leg_scan||leg_scas
where a.DEL_FLG<>'Y' and a.INDIVIDUAL='N' 
spool off;
exit;

 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
e_banking_user_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
e_banking_user_spool.sql 
-- File Name		: e_banking_user_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 800
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ebanking/e_banking_user.txt
select
TRIM(REC_NUM) ||'|'||
TRIM(CUST_ID) ||'|'||
TRIM(USER_TYPE) ||'|'||
TRIM(CORP_USER) ||'|'||
TRIM(SALUTATION) ||'|'||
TRIM(C_L_NAME) ||'|'||
TRIM(C_M_NAME) ||'|'||
TRIM(C_F_NAME) ||'|'||
TRIM(C_EMAIL_ID) ||'|'||
TRIM(C_ADDR1) ||'|'||
TRIM(C_ADDR2) ||'|'||
TRIM(C_ADDR3) ||'|'||
TRIM(C_CITY) ||'|'||
TRIM(C_STATE) ||'|'||
TRIM(C_CNTRY) ||'|'||
TRIM(C_ZIP) ||'|'||
TRIM(C_PHONE_NO) ||'|'||
TRIM(C_M_PHONE_NO) ||'|'||
TRIM(C_FAX_NO) ||'|'||
TRIM(PRIM_ACID) ||'|'||
TRIM(P_BRANCH_ID) ||'|'||
TRIM(C_GENDER) ||'|'||
TRIM(DATE_OF_BIRTH) ||'|'||
TRIM(MARITAL_STATUS) ||'|'||
TRIM(ANNIVERSARY_DATE) ||'|'||
TRIM(OCCUPATION) ||'|'||
TRIM(PASSPORT_NUMBER) ||'|'||
TRIM(PASSPORT_ISSUE_DATE) ||'|'||
TRIM(PASSPORT_DETAILS) ||'|'||
TRIM(PASSPORT_EXPIRY_DATE) ||'|'||
TRIM(PAN_NATIONAL_ID) ||'|'||
TRIM(PRINCIPAL_ID) ||'|'||
TRIM(BAY_USER_ID) ||'|'||
TRIM(LANG_ID)
from E_BANKING_USER_O_TABLE
ORDER BY REC_NUM;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
int_rate_update_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
int_rate_update_spool.sql 
-- File Name		: int_rate_update_Spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sreenivasa
-- Client		    : ABK
-- Created On		: 12-06-2016
-------------------------------------------------------------------
set head off
set feedback off   
set term off
set lines 1100
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/laa/KW/int_rate_change_update.txt
select 
 ENTITY_ID ||
 ENTITY_TYPE ||
 START_DATE ||
 END_DATE ||
 INT_TBL_CODE ||
 CUST_CR_PREF_PCNT ||
 CUST_DR_PREF_PCNT ||
 ID_CR_PREF_PCNT ||
 ID_DR_PREF_PCNT ||
 PEGGED_FLG ||
 PEG_FREQUENCY_IN_MONTHS ||
 PEG_FREQUENCY_IN_DAYS ||
 MIN_INT_PCNT_CR ||
 MIN_INT_PCNT_DR ||
 MAX_INT_PCNT_CR ||
 MAX_INT_PCNT_DR ||
 AC_LEVEL_NRML_PCNT_DR ||
 AC_LEVEL_SPREAD ||
 AC_LEVEL_COMP_INT_PCNT ||
 AC_LEVEL_COMP_PRNC_PCNT ||
 AC_LEVEL_PEN_INT_PCNT_FOR_INT ||
 AC_LEVEL_PEN_INT_PCNT_FOR_PRNC ||
 AC_LEVEL_PENAL_PCNT_DR ||
 REASON_CODE ||
 COMPOUND_PRNC_PCNT ||
 PENALTY_INT_PCNT_FOR_PRNC ||
 PENALTY_INT_PCNT_FOR_INT ||
 CHNL_DR_PREF_PCNT ||
 CHNL_CR_PREF_PCNT ||
 NEGOTIATED_RATE_DR ||
 INT_VERSION ||
 INT_RATE_PRD_IN_MONTHS ||
 INT_RATE_PRD_IN_DAYS ||
 PEG_REVIEW_DATE ||
 REVIEW_REQD_ON_START_DATE ||
 INTERPOLATION_METHOD
 from int_rate_change_update;
 exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
int_tbl_code_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
int_tbl_code_spool.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 5000 
set page size 0
set pages 0
#set trimspool on
set trimspool on
spool $MIG_PATH/output/finacle/custom/INT_TBL_CODE.txt
select entity_id             ||
entity_type                  ||
start_date                   ||
end_date                     ||
int_tbl_code                 ||
cust_cr_pref_pcnt            ||
cust_dr_pref_pcnt            ||
id_cr_pref_pcnt              ||
id_dr_pref_pcnt              ||
pegged_flg                   ||
peg_frequency_in_months      ||
peg_frequency_in_days        ||
min_int_pcnt_cr              ||
min_int_pcnt_dr              ||
max_int_pcnt_cr              ||
max_int_pcnt_dr              ||
ac_level_nrml_pcnt_dr        ||
ac_level_spread              ||
ac_level_comp_int_pcnt       ||
ac_level_comp_prnc_pcnt      ||
ac_level_pen_int_pcnt_for_int||
ac_level_pen_int_pcnt_for_prn||
ac_level_penal_pcnt_dr       ||
reason_code                  ||
compound_prnc_pcnt           ||
compound_int_pcnt            ||
penalty_int_pcnt_for_prnc    ||
penalty_int_pcnt_for_int     ||
chnl_dr_pref_pcnt            ||
chnl_cr_pref_pcnt            ||
negotiated_rate_dr           ||
int_version                  ||
int_rate_prd_in_months       ||
int_rate_prd_in_days         ||
peg_review_date              ||
review_reqd_on_start_date    ||
interpolation_method         
from int_tbl_code; 
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
lam_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
lam_spool_kw.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/laa/KW/RL001.txt
select 
Account_Number		||
Customer_Credit_Pref_Percent	||
Customer_Debit_Pref_Percent||
Acct_ID_Credit_Pref_Percent||
Acct_ID_Debit_Pref_Percent	||
Repricing_Plan		||
Pegging_Frequency_in_Months	||
Pegging_Frequency_in_Days||
Interest_Route_Flag||
Acct_Currency_Code||
Sol_ID||
GL_Sub_Head_Code||
Schm_Code||
CIF_ID||
Acct_Open_Date||
Sanction_Limit||
Ledger_Number||
Sector_Code||
Sub_Sector_Code||
Purpose_of_Advance||
Nature_of_Advance||
Free_Code_3||
Sanction_Reference_Number||
Sanction_Limit_Date||
Sanction_Level_Code||
Limit_Expiry_Date||
Sanction_Authority_Code||
Loan_Paper_Date||
Operative_Acct_ID||
Operative_Currency_Code||
Operative_Sol_ID||
Demand_Satisfy_Method||
Lien_on_Operative_Acct_Flag||
Repayment_currency_rate_code||
Interest_table_code||
Interest_on_principal_Flag||
Penal_int_ovdue_princ_dmd_Flg||
Princ_Dmd_Ovdue_end_month_Flg||
Int_On_Int_Demand_Flag||
penal_int_overdue_int_dmd_Flg||
Int_Demand_Ovdue_End_Mnth_Flg||
Transfer_Effective_Date||
Cumulative_Normal_int_amt||
Cumulative_penal_int_amt||
cumulative_additional_int_amt||
Liab_Transfer_Effective_date||
Disbursement_Previous_Sche||
Debit_Int_Calc_upto_date||
Repayment_Schedule_Date||
Repayment_Period_in_months||
Repayment_Period_in_Days||
Past_Due_Flag||
Past_Due_Transfer_Date||
Prv_To_Pd_GL_Sub_Head_Code||
Interest_Suspense_Amount||
Penal_Interest_Suspense_Amt||
Charge_Off_Flag||
Charge_Off_Date||
Charge_Off_Principle||
Pending_Interest||
Principal_Recovery||
Interest_Recovery||
source_dealer_code||
Disburse_dealer_code||
Apply_late_fee_Flag||
Late_Fee_Grace_Period_Months||
Late_Fee_Grace_Period_Days||
Instal_amt_collect_upfront||
Num_of_instal_collec_upfront||
upfront_instalment_amount||
Demand_Past_Due_counter||
Sum_of_the_princ_demand_amt||
Payoff_Flag||
ExcLd_for_Combined_Statement||
Statement_CIF_ID||
Transfer_Cycle_String||
Bank_IRR_Rate||
Value_Of_Asset||
Occupation_code_customer||
Borrower_category_code||
Mode_of_the_advance||
Type_of_the_advance||
guarantee_coverage_Code||
Industry_Type||
Free_Code_1||
Free_Code_2||
Free_Code_4||
Free_Code_5||
Free_Code_6||
Free_Code_7||
Free_Code_8||
Free_Code_9||
Free_Code_10||
Acct_Location_Code||
credit_report_file_Ref_ID||
DICGC_Fee_Percent||
Last_Compound_Date||
Daily_Compound_Interest_Flag||
CalculateOverdue_Int_rate_Flg||
EI_paying_period_start_date||
EI_paying_period_end_date||
IRR_Rate||
Advance_interest_amount||
Amortised_Amount||
Debit_Booked_Upto_Date||
Adv_Int_Collection_upto_Date||
Accrual_Rate||
Int_Rate_Sanction_Limit_Flg||
Interest_Rest_Frequency||
Interest_Rest_Basis||
Charge_Route_Flag||
Final_Disbursement_Flag||
Auto_Resch_after_Holiday_Prd||
total_number_of_deferments||
num_deferments_current_repay||
End_Date||
Penal_interest_on_Outstanding||
Charge_off_type||
Deferred_appli_int_rate_flg||
Def_applicable_int_rate||
Deferred_Interest_Amount||
Auto_Reschedule_Not_Allowed||
Rescheduled_Overdue_Principal||
Reschedule_Overdue_Interest||
Loan_Type||
Pay_Off_Reason_Code||
Related_Deposit_Acct_ID||
Last_AckNowledgt_Dr_Prd_date||
Refinance_Sanction_Date||
Refinance_Amount||
Subsidy_Acct_ID||
Subsidy_Agency||
Subsidy_Claimed_Date||
Subsidy_Activity_Code||
Debit_AckNowledgement_Type||
Refinance_Sanction_Number||
Refinance_Reference_Number||
Refinance_Claimed_Date||
Subsidy_Amount||
Subsidy_Received_Date||
Preprocess_Fee||
Activity_Code||
Probation_Period_in_Months||
Probation_Period_in_Days||
Compound_Rest_Indicator_Flag||
Discounted_Int_Rate_Flag||
Collect_Interest_Flag||
Despatch_mode||
Acct_Manager||
Mode_of_Oper_Code||
Statement_Frequency_Type||
Week_num_for_Statement_Date||
Week_Day_for_Statement_Date||
Week_Dt_for_Statement_Date||
Statement_Freq_case_of_Hldys||
Statement_of_the_Account||
Next_Print_date||
Fixed_Rate_Term_in_Months||
Fixed_Rate_Term_in_Days||
Minimum_Int_Percent_Debit||
Maximum_Int_Percent_Debit||
Instalment_Income_Ratio||
Product_Group||
Free_Text||
Linked_Account_ID||
Delinquency_Resch_Method_Flg||
Total_Number_of_Switch_Over||
Non_Starter_Flag||
Floating_Interest_Table_Code||
Floating_Repricing_Frequency||
Floating_Repricing_Freq_Days||
Single_EMI_Turn_Over_Diff_Flg||
IBAN_Number||
IAS_CLASSIFICATION_CODE||
Account_Number1||
Type_of_top_up||
Negotiated_Rate_Debit_Percent||
Normal_Int_Product_Method||
Penal_Interest_Rate_Method||
Penal_Interest_Method||
hldy_prd_frm_first_disb_flg||
EI_Scheme_Flag||
EI_Method||
Ei_Formula_Flag||
Normal_Holiday_Period_in_Mnth||
Holiday_Period_Interest_Flag||
Holiday_Period_Interest_Amt||
Resche_by_Adjust_TeNor_Amt||
Auto_Reschedule_every_Disb||
Auto_Reschule_Int_Rate_Change||
Auto_Reschedule_Prepayment||
Rescheduling_Amount_flag||
Capitalize_Int_on_Rephasement||
Carry_over_Demands||
Type_Instalment_Combination||
Cap_Int_to_EMI_Flg||
Deferred_Int_Due_to_EMI_Cap||
Month_for_Deferment||
Num_Months_Deferred||
Channel_Credit_Pref_Percent||
Channel_Debit_Pref_Percent||
Channel_Id||
Channel_Level_Code||
Instalment_Effective_Flag||
Notice_Period||
Shift_Instalment_Flag||
Include_Maturity_Date||
Interest_Rule_Code||
Cumulative_Capitalize_Fees||
upfront_instalment_int_amount||
Recall_Flag||
Recall_Date||
Diff_PS_Freq_For_Rel_Party||
Diff_Swift_Freq_For_Rel_Party||
Penal_Interest_table_code||
Penal_Preferential_Percent||
RA_ref_number||
Interest_table_Version||
Address_Type||
Phone_Type||
Email_Type||
Accrued_Penal_Int_Recovery||
Penal_Interest_Recovery||
Collection_Interest_Recovery||
Collection_Penal_Int_Recovery||
Mark_Up_Applicable_Flag||
Pref_Calendar_base_processing||
Purchase_Reference||
Frez_code||
Frez_reason_code||
Bank_Profit_Share_Pcnt||
Bank_Loss_Share_Pcnt||
Next_Profit_Adj_Due_Dt||
Profit_Adj_Freq||
Week_Num_for_Profit_Adj||
Week_Day_for_Profit_Adj||
Start_Day_for_Profit_Adj||
Profit_Adj_Freq_holidays||
Adj_Freq_Calendar_Base||
Salam_Sale_Ref_ID||
Salam_Asset_Code||
Seller_Dealer_ID||
Salam_Seller_Det||
Para_Salam_Seller_Ref_ID||
Para_Salam_Asset_Code||
Buyer_Dealer_ID||
Salam_Buyer_Details||
Purchase_Price_Per_Unit||
Dealer_Id||
Asset_Code||
Margin_Money_Acc_Flag||
Margin_Money_Type||
Margin_Money_Pcnt||
Margin_Money_Amt||
Invoice_Amount||
Debit_Account_ID||
Purchase_Aqad_Amt||
Sale_Aqad_Amt||
Purc_Aqad_Ref||
Sale_Aqad_Ref||
Purc_Aqad_Date||
Purc_Aqad_DateHH||
Purc_Aqad_DateMM||
Purc_Aqad_DateSS||
Sale_Aqad_Date||
Sale_Aqad_DateHH||
Sale_Aqad_DateMM||
Sale_Aqad_DateSS||
No_Of_Units||
Asset_Particulars||
Unearned_Income||
Security_Dep_Amt||
Adj_Advance_Rent||
Repossess_Flag||
Cumu_Deposit_Amt||
Last_Dep_Date||
Istisna_with_Parallel_Istisna||
Construction_TenorMM||
SettlementTenorMM||
SettlementTenorDD||
Istisna_Contract_ID||
Cost_Of_Construction||
Unearned_Inc_for_Cons_Prd||
Unearned_Inc_for_Settle_Prd||
Const_Prd_Profit_Method||
Retention_Amt||
Retentio_Rel_Flg||
Parallel_Istisna_Delivery_Dt||
Builder_Profit||
Builder_Profit_Pcnt||
Builder_Profit_Amt||
Notes||
Builder_ACC_ID||
Is_CP_Over||
Rebate_Benefit_Amount||
Process_Rebate_on_Mat||
Print_Print_Statement||
Print_Advice_for_SI||
Print_Deposit_Notice||
Print_Loan_Notice||
Interest_Certificate||
Interest_Rate_Change_Adv||
Collect_Excess_Profit||
Carry_Forward||
Adj_Order_for_CF_PL||
Expected_Turnover_Amt||
Turn_Over_Currency||
Expected_Profit_Amt||
Profit_Currency||
Nature_of_Business||
Free_Text2||
Asset_Id||
Lease_type||
End_of_Lease_Option||
Collect_security_Deposit||
Adjust_Security_Deposit||
Agreed_Usage_Freq||
Agreed_Usage||
Collect_Tax||
Collect_Insu_Premium||
Residual_Value_type||
Guaranteed_by||
Apply_Lease_Canc_Fee||
Lease_Canc_not_acce_after_days||
Lease_Canc_not_accp_after_Mths||
Expected_Future_Value||
Carry_Over_Rents||
Rent_Dmd_OD_at_end_of_Mnth||
Rent_Dmd_OD_at_end_of_days||
Rent_OD_After_MMMDDD||
Lnk_Trade_Fin_Entity_Type||
Linked_Entity_Sol_ID||
Linked_Trade_Fin_Entity_ID||
Intend_to_Export||
Exp_Financing_Type||
Exp_Financing_Perc||
Broken_Prd_Int_Flag||
Normal_Hldy_Prd_in_Days
from lam_o_table
--left join (select foracid from tbaadm.gam where bank_id=get_param('BANK_ID')) a on foracid = trim(Account_Number)
--where foracid is null
ORDER BY Sol_ID;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
lam_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
lam_spool_uae.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/laa/UAE/RL001.txt
select 
Account_Number		||
Customer_Credit_Pref_Percent	||
Customer_Debit_Pref_Percent||
Acct_ID_Credit_Pref_Percent||
Acct_ID_Debit_Pref_Percent	||
Repricing_Plan		||
Pegging_Frequency_in_Months	||
Pegging_Frequency_in_Days||
Interest_Route_Flag||
Acct_Currency_Code||
Sol_ID||
GL_Sub_Head_Code||
Schm_Code||
CIF_ID||
Acct_Open_Date||
Sanction_Limit||
Ledger_Number||
Sector_Code||
Sub_Sector_Code||
Purpose_of_Advance||
Nature_of_Advance||
Free_Code_3||
Sanction_Reference_Number||
Sanction_Limit_Date||
Sanction_Level_Code||
Limit_Expiry_Date||
Sanction_Authority_Code||
Loan_Paper_Date||
Operative_Acct_ID||
Operative_Currency_Code||
Operative_Sol_ID||
Demand_Satisfy_Method||
Lien_on_Operative_Acct_Flag||
Repayment_currency_rate_code||
Interest_table_code||
Interest_on_principal_Flag||
Penal_int_ovdue_princ_dmd_Flg||
Princ_Dmd_Ovdue_end_month_Flg||
Int_On_Int_Demand_Flag||
penal_int_overdue_int_dmd_Flg||
Int_Demand_Ovdue_End_Mnth_Flg||
Transfer_Effective_Date||
Cumulative_Normal_int_amt||
Cumulative_penal_int_amt||
cumulative_additional_int_amt||
Liab_Transfer_Effective_date||
Disbursement_Previous_Sche||
Debit_Int_Calc_upto_date||
Repayment_Schedule_Date||
Repayment_Period_in_months||
Repayment_Period_in_Days||
Past_Due_Flag||
Past_Due_Transfer_Date||
Prv_To_Pd_GL_Sub_Head_Code||
Interest_Suspense_Amount||
Penal_Interest_Suspense_Amt||
Charge_Off_Flag||
Charge_Off_Date||
Charge_Off_Principle||
Pending_Interest||
Principal_Recovery||
Interest_Recovery||
source_dealer_code||
Disburse_dealer_code||
Apply_late_fee_Flag||
Late_Fee_Grace_Period_Months||
Late_Fee_Grace_Period_Days||
Instal_amt_collect_upfront||
Num_of_instal_collec_upfront||
upfront_instalment_amount||
Demand_Past_Due_counter||
Sum_of_the_princ_demand_amt||
Payoff_Flag||
ExcLd_for_Combined_Statement||
Statement_CIF_ID||
Transfer_Cycle_String||
Bank_IRR_Rate||
Value_Of_Asset||
Occupation_code_customer||
Borrower_category_code||
Mode_of_the_advance||
Type_of_the_advance||
guarantee_coverage_Code||
Industry_Type||
Free_Code_1||
Free_Code_2||
Free_Code_4||
Free_Code_5||
Free_Code_6||
Free_Code_7||
Free_Code_8||
Free_Code_9||
Free_Code_10||
Acct_Location_Code||
credit_report_file_Ref_ID||
DICGC_Fee_Percent||
Last_Compound_Date||
Daily_Compound_Interest_Flag||
CalculateOverdue_Int_rate_Flg||
EI_paying_period_start_date||
EI_paying_period_end_date||
IRR_Rate||
Advance_interest_amount||
Amortised_Amount||
Debit_Booked_Upto_Date||
Adv_Int_Collection_upto_Date||
Accrual_Rate||
Int_Rate_Sanction_Limit_Flg||
Interest_Rest_Frequency||
Interest_Rest_Basis||
Charge_Route_Flag||
Final_Disbursement_Flag||
Auto_Resch_after_Holiday_Prd||
total_number_of_deferments||
num_deferments_current_repay||
End_Date||
Penal_interest_on_Outstanding||
Charge_off_type||
Deferred_appli_int_rate_flg||
Def_applicable_int_rate||
Deferred_Interest_Amount||
Auto_Reschedule_Not_Allowed||
Rescheduled_Overdue_Principal||
Reschedule_Overdue_Interest||
Loan_Type||
Pay_Off_Reason_Code||
Related_Deposit_Acct_ID||
Last_AckNowledgt_Dr_Prd_date||
Refinance_Sanction_Date||
Refinance_Amount||
Subsidy_Acct_ID||
Subsidy_Agency||
Subsidy_Claimed_Date||
Subsidy_Activity_Code||
Debit_AckNowledgement_Type||
Refinance_Sanction_Number||
Refinance_Reference_Number||
Refinance_Claimed_Date||
Subsidy_Amount||
Subsidy_Received_Date||
Preprocess_Fee||
Activity_Code||
Probation_Period_in_Months||
Probation_Period_in_Days||
Compound_Rest_Indicator_Flag||
Discounted_Int_Rate_Flag||
Collect_Interest_Flag||
Despatch_mode||
Acct_Manager||
Mode_of_Oper_Code||
Statement_Frequency_Type||
Week_num_for_Statement_Date||
Week_Day_for_Statement_Date||
Week_Dt_for_Statement_Date||
Statement_Freq_case_of_Hldys||
Statement_of_the_Account||
Next_Print_date||
Fixed_Rate_Term_in_Months||
Fixed_Rate_Term_in_Days||
Minimum_Int_Percent_Debit||
Maximum_Int_Percent_Debit||
Instalment_Income_Ratio||
Product_Group||
Free_Text||
Linked_Account_ID||
Delinquency_Resch_Method_Flg||
Total_Number_of_Switch_Over||
Non_Starter_Flag||
Floating_Interest_Table_Code||
Floating_Repricing_Frequency||
Floating_Repricing_Freq_Days||
Single_EMI_Turn_Over_Diff_Flg||
IBAN_Number||
IAS_CLASSIFICATION_CODE||
Account_Number1||
Type_of_top_up||
Negotiated_Rate_Debit_Percent||
Normal_Int_Product_Method||
Penal_Interest_Rate_Method||
Penal_Interest_Method||
hldy_prd_frm_first_disb_flg||
EI_Scheme_Flag||
EI_Method||
Ei_Formula_Flag||
Normal_Holiday_Period_in_Mnth||
Holiday_Period_Interest_Flag||
Holiday_Period_Interest_Amt||
Resche_by_Adjust_TeNor_Amt||
Auto_Reschedule_every_Disb||
Auto_Reschule_Int_Rate_Change||
Auto_Reschedule_Prepayment||
Rescheduling_Amount_flag||
Capitalize_Int_on_Rephasement||
Carry_over_Demands||
Type_Instalment_Combination||
Cap_Int_to_EMI_Flg||
Deferred_Int_Due_to_EMI_Cap||
Month_for_Deferment||
Num_Months_Deferred||
Channel_Credit_Pref_Percent||
Channel_Debit_Pref_Percent||
Channel_Id||
Channel_Level_Code||
Instalment_Effective_Flag||
Notice_Period||
Shift_Instalment_Flag||
Include_Maturity_Date||
Interest_Rule_Code||
Cumulative_Capitalize_Fees||
upfront_instalment_int_amount||
Recall_Flag||
Recall_Date||
Diff_PS_Freq_For_Rel_Party||
Diff_Swift_Freq_For_Rel_Party||
Penal_Interest_table_code||
Penal_Preferential_Percent||
RA_ref_number||
Interest_table_Version||
Address_Type||
Phone_Type||
Email_Type||
Accrued_Penal_Int_Recovery||
Penal_Interest_Recovery||
Collection_Interest_Recovery||
Collection_Penal_Int_Recovery||
Mark_Up_Applicable_Flag||
Pref_Calendar_base_processing||
Purchase_Reference||
Frez_code||
Frez_reason_code||
Bank_Profit_Share_Pcnt||
Bank_Loss_Share_Pcnt||
Next_Profit_Adj_Due_Dt||
Profit_Adj_Freq||
Week_Num_for_Profit_Adj||
Week_Day_for_Profit_Adj||
Start_Day_for_Profit_Adj||
Profit_Adj_Freq_holidays||
Adj_Freq_Calendar_Base||
Salam_Sale_Ref_ID||
Salam_Asset_Code||
Seller_Dealer_ID||
Salam_Seller_Det||
Para_Salam_Seller_Ref_ID||
Para_Salam_Asset_Code||
Buyer_Dealer_ID||
Salam_Buyer_Details||
Purchase_Price_Per_Unit||
Dealer_Id||
Asset_Code||
Margin_Money_Acc_Flag||
Margin_Money_Type||
Margin_Money_Pcnt||
Margin_Money_Amt||
Invoice_Amount||
Debit_Account_ID||
Purchase_Aqad_Amt||
Sale_Aqad_Amt||
Purc_Aqad_Ref||
Sale_Aqad_Ref||
Purc_Aqad_Date||
Purc_Aqad_DateHH||
Purc_Aqad_DateMM||
Purc_Aqad_DateSS||
Sale_Aqad_Date||
Sale_Aqad_DateHH||
Sale_Aqad_DateMM||
Sale_Aqad_DateSS||
No_Of_Units||
Asset_Particulars||
Unearned_Income||
Security_Dep_Amt||
Adj_Advance_Rent||
Repossess_Flag||
Cumu_Deposit_Amt||
Last_Dep_Date||
Istisna_with_Parallel_Istisna||
Construction_TenorMM||
SettlementTenorMM||
SettlementTenorDD||
Istisna_Contract_ID||
Cost_Of_Construction||
Unearned_Inc_for_Cons_Prd||
Unearned_Inc_for_Settle_Prd||
Const_Prd_Profit_Method||
Retention_Amt||
Retentio_Rel_Flg||
Parallel_Istisna_Delivery_Dt||
Builder_Profit||
Builder_Profit_Pcnt||
Builder_Profit_Amt||
Notes||
Builder_ACC_ID||
Is_CP_Over||
Rebate_Benefit_Amount||
Process_Rebate_on_Mat||
Print_Print_Statement||
Print_Advice_for_SI||
Print_Deposit_Notice||
Print_Loan_Notice||
Interest_Certificate||
Interest_Rate_Change_Adv||
Collect_Excess_Profit||
Carry_Forward||
Adj_Order_for_CF_PL||
Expected_Turnover_Amt||
Turn_Over_Currency||
Expected_Profit_Amt||
Profit_Currency||
Nature_of_Business||
Free_Text2||
Asset_Id||
Lease_type||
End_of_Lease_Option||
Collect_security_Deposit||
Adjust_Security_Deposit||
Agreed_Usage_Freq||
Agreed_Usage||
Collect_Tax||
Collect_Insu_Premium||
Residual_Value_type||
Guaranteed_by||
Apply_Lease_Canc_Fee||
Lease_Canc_not_acce_after_days||
Lease_Canc_not_accp_after_Mths||
Expected_Future_Value||
Carry_Over_Rents||
Rent_Dmd_OD_at_end_of_Mnth||
Rent_Dmd_OD_at_end_of_days||
Rent_OD_After_MMMDDD||
Lnk_Trade_Fin_Entity_Type||
Linked_Entity_Sol_ID||
Linked_Trade_Fin_Entity_ID||
Intend_to_Export||
Exp_Financing_Type||
Exp_Financing_Perc||
Broken_Prd_Int_Flag||
Normal_Hldy_Prd_in_Days
from lam_o_table
left join (select foracid from tbaadm.gam where bank_id=get_param('BANK_ID')) a on foracid = trim(Account_Number)
where foracid is null;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
lat1_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
lat1_spool_kw.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/laa/KW/RL005.txt
select TRANSACTION_TYPE||TRANSACTION_SUB_TYPE||ACCOUNT_NUMBER||CURRENCY||SERVICE_OUTLET||AMOUNT||PART_TRAN_TYPE||TYPE_OF_DEMANDS||VALUE_DATE||FLOW_ID||DEMAND_DATE||LAST_PART_TRANSACTION_FLAG||TRAN_END_IND||ADVANCE_PAYMENT_FLAG||PREPAYMENT_TYPE||INT_COLL_ON_PREPAYMENT_FLG
||TRANSACTION_REMARKS||TRANSACTION_PARTICULARS||';LAT1_'||trim(SERVICE_OUTLET)||'_'||CURRENCY||'.txt' 
from lat1_o_table  order by currency,service_outlet,TRANSACTION_PARTICULARS,last_part_transaction_flag ;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
lat1_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
lat1_spool_uae.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/laa/UAE/RL005.txt
select TRANSACTION_TYPE||TRANSACTION_SUB_TYPE||ACCOUNT_NUMBER||CURRENCY||SERVICE_OUTLET||AMOUNT||PART_TRAN_TYPE||TYPE_OF_DEMANDS||VALUE_DATE||FLOW_ID||DEMAND_DATE||LAST_PART_TRANSACTION_FLAG||TRAN_END_IND||ADVANCE_PAYMENT_FLAG||PREPAYMENT_TYPE||INT_COLL_ON_PREPAYMENT_FLG
||TRANSACTION_REMARKS||TRANSACTION_PARTICULARS||';LAT1_'||trim(SERVICE_OUTLET)||'_'||CURRENCY||'.txt' 
from lat1_o_table  order by currency,service_outlet,last_part_transaction_flag ;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
lat_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
lat_spool_kw.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/laa/KW/RL004.txt
select TRANSACTION_TYPE||TRANSACTION_SUB_TYPE||ACCOUNT_NUMBER||CURRENCY||SERVICE_OUTLET||AMOUNT||PART_TRAN_TYPE||TYPE_OF_DEMANDS||VALUE_DATE||FLOW_ID||DEMAND_DATE||LAST_PART_TRANSACTION_FLAG||TRAN_END_IND||ADVANCE_PAYMENT_FLAG||PREPAYMENT_TYPE||INT_COLL_ON_PREPAYMENT_FLG
||TRANSACTION_REMARKS||TRANSACTION_PARTICULARS||';RL004_'||CURRENCY||'_'||trim(SERVICE_OUTLET)||'.txt' 
from lat_o_table 
--left join (select * from tbaadm.gam where bank_id='01')gam on gam.foracid=trim(TRANSACTION_PARTICULARS) 
 --where gam.CLR_BAL_AMT=0
order by currency,service_outlet,TRANSACTION_PARTICULARS,part_tran_type desc
--from lat_o_table  order by service_outlet,TRANSACTION_PARTICULARS,last_part_transaction_flag ;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
lat_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
lat_spool_uae.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/laa/UAE/RL004.txt
select TRANSACTION_TYPE||TRANSACTION_SUB_TYPE||ACCOUNT_NUMBER||CURRENCY||SERVICE_OUTLET||AMOUNT||PART_TRAN_TYPE||TYPE_OF_DEMANDS||VALUE_DATE||FLOW_ID||DEMAND_DATE||LAST_PART_TRANSACTION_FLAG||TRAN_END_IND||ADVANCE_PAYMENT_FLAG||PREPAYMENT_TYPE||INT_COLL_ON_PREPAYMENT_FLG
||TRANSACTION_REMARKS||TRANSACTION_PARTICULARS||';LAT_'||trim(SERVICE_OUTLET)||'_'||CURRENCY||'.txt' 
from lat_o_table  order by currency,service_outlet,last_part_transaction_flag ;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ldt_fee_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ldt_fee_spool_kw.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/laa/KW/RL007.txt
select
ACCOUNT_ID||DEMAND_DATE||DEMAND_EFFECTIVE_DATE||PRINCIPAL_DEMAND_ID||DEMAND_AMOUNT||LATE_FEE_APPLIED||LATE_FEE_AMOUNT||LATE_FEE_DATE||STATUS_OF_LATE_FEE||LATE_FEE_CURRENCY_CODE||DEMAND_OVERDUE_DATE||ACCRUED_PENAL_INT_AMT
from ldt_fee_o_table;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ldt_late_fee.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ldt_late_fee.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/laa/KW/RL_late_fee.txt
select
ACCOUNT_ID||CHARGE_TYPE||USER_CALC_CHARGE_AMT||CURRENCY_CODE||CHARGE_WAIVED||CHARGE_AMT_COLLECTED||AMORTIZATION_FLAG||AMORTIZED_AMOUNT||LAST_AMORTIZATION_DATE||TRANSACTION_DATE||TRANSACTION_ID||NEXT_ASSESMENT_DATE||ASSESMENT_FREQUENCY_TYPE||ASSES_FREQ_WEEK_NUM||ASSESS_FREQ_WEEK_DAY||ASSESS_FREQ_START_DATE||ASSESS_FREQ_HLDY_STATUS||NO_TIMES_ASSESSED||LAST_ASSESSMENT_DATE||DEDUCTIBLE_FLAG||EVENT_ID_PTTM||AMORT_TENOR||PENDING_AMORT_TENOR||MAX_NO_ASSESSMENTS
from ldt_fee;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ldt_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ldt_spool_kw.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/laa/KW/RL006.txt
select 
Account_ID||Demand_Date||Demand_Effective_Date||Principal_Demand_ID||Demand_Amount||Late_Fee_Applied||Late_Fee_Amount||Late_Fee_Date||Status_Of_Late_Fee||Late_Fee_Currency_Code||Demand_Overdue_Date||Accrued_Penal_Interest_Amount||IBAN_Number 
from ldt_o_table;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ldt_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ldt_spool_uae.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/laa/UAE/RL006.txt
select 
Account_ID||Demand_Date||Demand_Effective_Date||Principal_Demand_ID||Demand_Amount||Late_Fee_Applied||Late_Fee_Amount||Late_Fee_Date||Status_Of_Late_Fee||Late_Fee_Currency_Code||Demand_Overdue_Date||Accrued_Penal_Interest_Amount||IBAN_Number 
from ldt_o_table;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
limit_core_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
limit_core_spool.sql 
-- File Name		: limt_core_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 20-10-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 800
set page size 0
set pages 0
set trimspool on
column filename new_value filename;
select '/output/finacle/limit_core/limit_core_'||param_value||'_'||to_char(sysdate,'DDMMYYYY') filename from system_config where param_name='COUNTRY_CODE';
spool $MIG_PATH&filename..txt;
--spool $MIG_PATH/output/finacle/limit_core/limit_core.txt
select 
to_char(
TRIM(BORROWER_NAME) ||'|'||
TRIM(NODE_LEVEL) ||'|'||
TRIM(LIMIT_PREFIX) ||'|'||
TRIM(LIMIT_SUFFIX) ||'|'||
TRIM(LIMIT_DESC) ||'|'||
TRIM(CRNCY_CODE) ||'|'||
TRIM(PARENT_LIMIT_PREFIX) ||'|'||
TRIM(PARENT_LIMIT_SUFFIX) ||'|'||
TRIM(SANCTION_LIMIT) ||'|'||
TRIM(DRAWING_POWER_IND) ||'|'||
TRIM(LIMIT_APPROVAL_DATE) ||'|'||
TRIM(LIMIT_EXPIRY_DATE) ||'|'||
TRIM(LIMIT_REVIEW_DATE) ||'|'||
TRIM(APPROVAL_AUTH_CODE) ||'|'||
TRIM(APPROVAL_LEVEL) ||'|'||
TRIM(LIMIT_APPROVAL_REF) ||'|'||
TRIM(NOTES) ||'|'||
TRIM(TERMS_AND_CONDITIONS) ||'|'||
TRIM(LIMIT_TYPE) ||'|'||
TRIM(LOAN_TYPE) ||'|'||
TRIM(MASTER_LIMIT_NODE) ||'|'||
TRIM(MIN_COLL_VALUE_BASED_ON) ||'|'||
TRIM(DRWNG_POWER_PCNT) ||'|'||
TRIM(PATTERN_OF_FUNDING) ||'|'||
TRIM(DEBIT_ACCOUNT_FOR_FEES) ||'|'||
TRIM(COMMITTED_LINES) ||'|'||
TRIM(CONTRACT_SIGN_DATE) ||'|'||
TRIM(UPLOAD_STATUS) ||'|'||
TRIM(COND_PRECEDENT_FLG) ||'|'||
TRIM(GLOBAL_LIMIT_FLG) ||'|'||
TRIM(MAIN_PRODUCT_TYPE) ||'|'||
TRIM(PROJECT_NAME) ||'|'||
TRIM(PRODUCT_NAME) ||'|'||
TRIM(PURPOSE_OF_LIMIT) ||'|'||
TRIM(BANK_ID)
)
from LIMIT_CORE_O_TABLE ;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
linked_acc_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
linked_acc_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cla/KW/linked_acc.txt
select 
Account_Number||Linked_Account_Number||Link_Type||Linked_Amount||Linked_Amount_Currency||Remarks
from LATU_o_table;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
lrs_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
lrs_spool_kw.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/laa/KW/RL003.txt
Select  
Account_Number||Flow_ID||Flow_Start_Date||Frequency_Type||Freq_Week_Num_for_Principal||Freq_Week_Day_for_Principal||Freq_Start_DD_for_Principal||Freq_Months_for_Principal||Freq_Days_for_Principal||Freq_Hldy_Status_Principal||Number_of_Flows||Installment_Amount||Installment_Percentage||Number_of_Demands_Raised||Next_Installment_Date||Next_Int_Installment_Date||Frequency_Type_for_Interest||Frequency_Week_Number_for_Int||Frequency_Week_day_for_Int||Frequency_Start_DD_for_Int||Freq_Months_for_Int||Freq_Days_for_Int||Freq_Holiday_Status_for_Int||Installment_Indicator 
FROM LRS_O_TABLE 
--WHERE TRIM(ACCOUNT_NUMBER) IN (
--SELECT FORACID FROM TBAADM.GAM WHERE BANK_ID='01' AND SCHM_TYPE='LAA' AND ACID NOT IN (SELECT ACID FROM TBAADM.LRS))
order by account_number,flow_id,to_date(flow_start_date,'DD-MM-YYYY');
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
lrs_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
lrs_spool_uae.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/laa/UAE/RL003.txt
Select  Account_Number||Flow_ID||Flow_Start_Date||Frequency_Type||Freq_Week_Num_for_Principal||Freq_Week_Day_for_Principal||Freq_Start_DD_for_Principal||Freq_Months_for_Principal||Freq_Days_for_Principal||Freq_Hldy_Status_Principal||Number_of_Flows||Installment_Amount||Installment_Percentage||Number_of_Demands_Raised||Next_Installment_Date||Next_Int_Installment_Date||Frequency_Type_for_Interest||Frequency_Week_Number_for_Int||Frequency_Week_day_for_Int||Frequency_Start_DD_for_Int||Freq_Months_for_Int||Freq_Days_for_Int||Freq_Holiday_Status_for_Int||Installment_Indicator from lrs_o_table order by account_number,flow_id,to_date(Flow_Start_Date,'DD-MM-YYYY');
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ogl_acc_mapping_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ogl_acc_mapping_spool.sql 
-- File Name		: Ogl Mapping
-- File Created for	: Ogl old acc to new acc Mapping
-- Created By		: Aditya Sharma
-- Client		    : ENBD
-- Created On		: 23-03-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/subsystem/Ogl_Mapping.txt
select
'Bank_Name'||'|'||
'Branch_Name'||'|'||
'Customer_Name'  ||'|'||
'Type_of_Account'||'|'||
'Old_Account_Number'||'|'||
'Currency'||'|'||
'New_Account_number'
from dual
union all
select 
distinct 'EIB' ||'|'||
c.CABRN ||'|'||
trim(GFCUN) ||'|'||
b.SCACT ||'|'||
SCAB||SCAN||SCAS ||'|'||
case when b.SCCCY='DH' then 'AED'
else b.SCCCY end ||'|'||
to_char(a.FIN_ACC_NUM)
from map_acc a
inner join scpf b on LEG_BRANCH_ID||LEG_SCAN||LEG_SCAS=SCAB||SCAN||SCAS
inner join capf c on SCAB=CABBN
inner join gfpf on gfcpnc=scan
where SCHM_TYPE in ('ODA','SBA')
union all
select 
distinct 'EIB' ||'|'||
f.CABRN ||'|'||
GFCUN ||'|'||
e.SCACT ||'|'||
SCAB||SCAN||SCAS ||'|'||
case when e.SCCCY='DH' then 'AED'
else e.SCCCY end ||'|'||
to_char(d.FIN_ACC_NUM)
from map_off_acc d
inner join scpf e on LEG_ACC_NUM=SCAB||SCAN||SCAS
inner join capf f on SCAB=CABBN
inner join gfpf on gfcpnc=scan;
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
payee_master_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
payee_master_spool.sql 
-- File Name		: payee_master_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 800
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ebanking/payee_master.txt
select
TRIM(BANK_ID) ||'~'||
TRIM(BNF_ID) ||'~'||
TRIM(DB_TS) ||'~'||
TRIM(LANG_ID) ||'~'||
TRIM(DISPLAY_ID) ||'~'||
TRIM(CORP_ID) ||'~'||
TRIM(BNF_CODE) ||'~'||
TRIM(BNF_NAME) ||'~'||
TRIM(BNF_ADDRESS_1) ||'~'||
TRIM(BNF_ADDRESS_2) ||'~'||
TRIM(BNF_ADDRESS_3) ||'~'||
TRIM(BNF_STATE) ||'~'||
TRIM(BNF_CNTRY) ||'~'||
TRIM(BNF_TEL) ||'~'||
TRIM(BNF_MOB) ||'~'||
TRIM(BNF_FAX) ||'~'||
TRIM(BNF_TYPE) ||'~'||
TRIM(OTH_BANK_REF_NO) ||'~'||
TRIM(BNF_BANK_NAME) ||'~'||
TRIM(BNF_BANK_ADDRESS) ||'~'||
TRIM(HOME_BANK_BRANCH_CODE) ||'~'||
TRIM(BNF_BANK_COUNTRY) ||'~'||
TRIM(ACCOUNT_ID) ||'~'||
TRIM(BNF_ACCT_CRN) ||'~'||
TRIM(BNF_COMM_IND) ||'~'||
TRIM(PAYEE_FORMAT) ||'~'||
TRIM(PYMT_FORMAT) ||'~'||
TRIM(TO_CHAR(EXPIRY_DATE,'DD-Mon-YYYY')) ||'~'||
TRIM(BNF_IND) ||'~'||
TRIM(FREE_FIELD_1) ||'~'||
TRIM(FREE_FIELD_2) ||'~'||
TRIM(FREE_FIELD_3) ||'~'||
TRIM(FREE_FIELD_4) ||'~'||
TRIM(FREE_FLG_1) ||'~'||
TRIM(FREE_FLG_2) ||'~'||
TRIM(FREE_FLG_3) ||'~'||
TRIM(FREE_FLG_4) ||'~'||
TRIM(FREE_IND_1) ||'~'||
TRIM(FREE_IND_2) ||'~'||
TRIM(BILL_EXPIRY_PRD) ||'~'||
TRIM(MIN_PMT_AMT) ||'~'||
TRIM(LATE_PYMT_FLG) ||'~'||
TRIM(PART_PYMT_FLG) ||'~'||
TRIM(EXS_PYMT_FLG) ||'~'||
TRIM(REAL_TIME_CREDIT_FLG) ||'~'||
TRIM(CHRG_PMT_FLG) ||'~'||
TRIM(PRENOTE_REQUIRED) ||'~'||
TRIM(DEL_FLG) ||'~'||
TRIM(GLOBAL_FLG) ||'~'||
TRIM(R_MOD_ID) ||'~'||
TRIM(TO_CHAR(R_MOD_TIME,'DD-Mon-YYYY')) ||'~'||
TRIM(R_CRE_ID) ||'~'||
TRIM(TO_CHAR(R_CRE_TIME,'DD-Mon-YYYY')) ||'~'||
TRIM(BNF_ACCT_TYPE) ||'~'||
TRIM(BNF_CITY_ZIP) ||'~'||
TRIM(BNF_BANK_CITY_ZIP) ||'~'||
TRIM(BNF_GROUP_ID) ||'~'||
TRIM(BNF_EMAIL) ||'~'||
TRIM(STD_IND_CD) ||'~'||
TRIM(DIVISION) ||'~'||
TRIM(ADDED_BANK_BRANCH_NAME) ||'~'||
TRIM(BANK_TYPE) ||'~'||
TRIM(BNF_CITY_CODE) ||'~'||
TRIM(BNF_ZIP_CODE) ||'~'||
TRIM(NETWORK_ID) ||'~'||
TRIM(BANK_IDENTIFIER) ||'~'||
TRIM(PTP_TYPE) ||'~'||
TRIM(PTP_ID) ||'~'||
TRIM(DELIVERY_MODES_SUPPORTED) ||'~'||
TRIM(FILE_SEQ_NUM) ||'~'||
TRIM(FU_REC_NUM) ||'~'||
TRIM(EXTERNAL_BILLER_ID) ||'~'||
TRIM(SERVICE_TYPE) ||'~'||
TRIM(AGGREGATOR_ID)
from PAYEE_MASTER_O_TABLE ;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
rl025_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
rl025_spool_kw.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/laa/KW/RL025.txt
select 
trim(INDICATOR)||'|'||             
trim(ACCOUNT_NUMBER)||'|'||         
trim(CURRENCY)||'|'||               
trim(SOL_ID)||'|'||                 
trim(DR_INT_ACCRUED_UPTO)||'|'||    
trim(DR_INT_BOOKED_UPTO)||'|'||     
trim(DR_INT_CALU_UPTO)||'|'||       
trim(NO_RECALC_BEFORE_DATE)||'|'||  
trim(DR_INT_ACCRUED)||'|'||         
trim(DR_INT_BOOKED)||'|'||          
trim(NEXT_INT_RUN_DATE_DR)||'|'||   
trim(PENAL_ACCRUED_AMOUNT_DR)||'|'||
trim(PENAL_BOOKED_AMOUNT_DR) 
from laa_eit;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
rl025_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
rl025_spool_uae.sql 
set head off
set feedback off
set term off
set linesize 5000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/laa/UAE/RL025.txt
select 
trim(INDICATOR)||'|'||             
trim(ACCOUNT_NUMBER)||'|'||         
trim(CURRENCY)||'|'||               
trim(SOL_ID)||'|'||                 
trim(DR_INT_ACCRUED_UPTO)||'|'||    
trim(DR_INT_BOOKED_UPTO)||'|'||     
trim(DR_INT_CALU_UPTO)||'|'||       
trim(NO_RECALC_BEFORE_DATE)||'|'||  
trim(DR_INT_ACCRUED)||'|'||         
trim(DR_INT_BOOKED)||'|'||          
trim(NEXT_INT_RUN_DATE_DR)||'|'||   
trim(PENAL_ACCRUED_AMOUNT_DR)||'|'||
trim(PENAL_BOOKED_AMOUNT_DR) 
from laa_eit;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
siu_tt_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
siu_tt_spool.sql 
-- File Name		: siu_tt_spool.sql
-- File Created for	: Spooling file for SIU TT Spool.
-- Created By		: Kumaresan.B
-- Client		    : EIB
-- Created On		: 21-10-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1100
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/core/SIU_TT.txt
select
trim(PR_SRL_NUM)||'|'||
trim(SERIAL_NUM)||'|'||
trim(ENTITY_CRE_FLG)||'|'||
trim(REG_TYPE)||'|'||
trim(REG_SUB_TYPE)||'|'||
trim(PAYSYS_ID)||'|'||
trim(OPER_CHARGE_ACCT)||'|'||
trim(REMIT_ORIGIN_REF)||'|'||
trim(REMIT_ORIGIN_TYPE)||'|'||
trim(REMIT_CRNCY)||'|'||
trim(REMIT_CNTRY_CODE)||'|'||
trim(PURPOSE_OF_REM)||'|'||
trim(RATE_CODE)||'|'||
trim(PARTY_CODE)||'|'||
trim(PARTY_NAME)||'|'||
trim(PARTY_ADDR_1)||'|'||
trim(PARTY_ADDR_2)||'|'||
trim(PARTY_ADDR_3)||'|'||
trim(PARTY_CNTRY_CODE)||'|'||
trim(OTHER_PARTY_CODE)||'|'||
trim(OTHER_PARTY_NAME)||'|'||
trim(OTHER_PARTY_ADDR_1)||'|'||
trim(OTHER_PARTY_ADDR_2)||'|'||
trim(OTHER_PARTY_ADDR_3)||'|'||
trim(OTHER_PARTY_CNTRY)||'|'||
trim(PAYEE_BANK_CODE)||'|'||
trim(PAYEE_BR_CODE)||'|'||
trim(PAYEE_BANK_NAME)||'|'||
trim(PAYEE_BANK_ADDR_1)||'|'||
trim(PAYEE_BANK_ADDR_2)||'|'||
trim(PAYEE_BANK_ADDR_3)||'|'||
trim(PAYEE_BANK_CNTRY)||'|'||
trim(LOCAL_CORRESP_BANK_CODE)||'|'||
trim(LOCAL_CORRESP_BRANCH_CODE)||'|'||
trim(RECEIVER_CORRESP_BANK_CODE)||'|'||
trim(RECEIVER_CORRESP_BRANCH_CODE)||'|'||
trim(RECEIVER_CORRES_BANK_NAME)||'|'||
trim(RECEIVER_CORRES_ADDR_1)||'|'||
trim(RECEIVER_CORRES_ADDR_2)||'|'||
trim(RECEIVER_CORRES_ADDR_3)||'|'||
trim(RECEIVER_CORRES_BANK_CNTRY)||'|'||
trim(CORR_COLL_BANK_CODE)||'|'||
trim(CORR_COLL_BR_CODE)||'|'||
trim(SERIAL_COVER_FLAG)||'|'||
trim(SLA_CATEGORY)||'|'||
trim(DTLS_OF_CHARGE)||'|'||
trim(FREE_CODE1)||'|'||
trim(FREE_CODE2)||'|'||
trim(FREE_CODE3)||'|'||
trim(FREE_CODE4)||'|'||
trim(FREE_CODE5)||'|'||
trim(LCHG_USER_ID)||'|'||
trim(LCHG_TIME)||'|'||
trim(RCRE_USER_ID)||'|'||
trim(RCRE_TIME)||'|'||
trim(TS_CNT)||'|'||
trim(DEL_FLG)||'|'||
trim(TREA_RATE_CODE)||'|'||
trim(NOSTRO_ACCT)||'|'||
trim(BANK_ID)||'|'||
trim(RECEIVER_ACCOUNT_NUMBER)||'|'||
trim(NARRATION_PAYMENT_DETAILS)
from siu_tt_o_table;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
sms_alerts_registration_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
sms_alerts_registration_spool.sql 
-- File Name		: sms_alerts_registration_spool.sql
-- File Created for	: sms_alerts_registration
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 17-11-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 800
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ebanking/sms_alerts_registration.txt
select 
TRIM(REC_IDENTIFIER                 )||'|'||          
TRIM(SUB_DEL_IDENTIFIER             )||'|'||
TRIM(BANK_ID                        )||'|'||
TRIM(CUST_ID                        )||'|'||
TRIM(CORP_ID                        )||'|'||
TRIM(RELATED_PARTY_ID               )||'|'||
TRIM(HOST_ID                        )||'|'||
TRIM(CUST_FIRST_NAME                )||'|'||
TRIM(CUST_MID_NAME                  )||'|'||
TRIM(CUST_LAST_NAME                 )||'|'||
TRIM(USER_TYPE                      )||'|'||
TRIM(USER_SUB_TYPE                  )||'|'||
TRIM(LANG_CODE                      )||'|'||
TRIM(ALT_LANG_CODE                  )||'|'||
TRIM(PREF_TIME_ZONE                 )||'|'||
TRIM(DND_DATE_FROM                  )||'|'||
TRIM(DND_DATE_TO                    )||'|'||
TRIM(DND_TIME_FROM                  )||'|'||
TRIM(DND_TIME_TO                    )||'|'||
TRIM(BUSINESS_UNIT_ID               )||'|'||
TRIM(C_ADDR1                        )||'|'||
TRIM(C_ADDR2                        )||'|'||
TRIM(C_CITY                         )||'|'||
TRIM(C_STATE                        )||'|'||
TRIM(C_COUNTRY                      )||'|'||
TRIM(C_ZIP                          )||'|'||
TRIM(C_PHONE_NO                     )||'|'||
TRIM(C_MOBILE_NO                    )||'|'||
TRIM(C_FAX_NO                       )||'|'||
TRIM(C_EMAIL_ID                     )||'|'||
TRIM(CHANNEL_ADDR5                  )||'|'||
TRIM(CHANNEL_ADDR6                  )||'|'||
TRIM(CHANNEL_ADDR7                  )||'|'||
TRIM(CHANNEL_ADDR8                  )||'|'||
TRIM(CHANNEL_ADDR9                  )||'|'||
TRIM(CHANNEL_ADDR10                 )||'|'||
TRIM(DEBIT_ACCOUNT_ID               )||'|'||
TRIM(DEBIT_BRANCH_ID                )||'|'||
TRIM(DATE_FORMAT                    )||'|'||
TRIM(AMOUNT_FORMAT                  )||'|'||
TRIM(USER_CATEGORY_NAME             )||'|'||
TRIM(SCHEME_SUBSCRIPTION_START_DATE )||'|'||
TRIM(SCHEME_SUBSCRIPTION_END_DATE   )||'|'||
TRIM(SERVICE_PROVIDER  )             
from SMS_ALERTS_REG_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
sms_alerts_subscription_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
sms_alerts_subscription_spool.sql 
-- File Name		: sms_alerts_subscription_spool.sql
-- File Created for	: sms_alerts_subscription
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 18-11-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 800
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ebanking/sms_alerts_subscription.txt
select 
TRIM(DB_TS                    )||'|'||
TRIM(BANK_ID                  )||'|'||
TRIM(ALERT_ID                 )||'|'||
TRIM(CORP_ID                  )||'|'||
TRIM(CUST_ID                  )||'|'||
TRIM(ALRT_ACCT_ID             )||'|'||
TRIM(RELATED_PARTY_ID         )||'|'||
TRIM(HOST_ID                  )||'|'||
TRIM(ENTITY_ID                )||'|'||
TRIM(ALERT_FREQ               )||'|'||
TRIM(DATA_CENTER_CODE         )||'|'||
TRIM(USER_CATEGORY_NAME       )||'|'||
TRIM(CHANNEL1                 )||'|'||
TRIM(CHANNEL2                 )||'|'||
TRIM(CHANNEL3                 )||'|'||
TRIM(CHANNEL4                 )||'|'||
TRIM(CHANNEL5                 )||'|'||
TRIM(CHANNEL6                 )||'|'||
TRIM(CHANNEL7                 )||'|'||
TRIM(CHANNEL8                 )||'|'||
TRIM(CHANNEL9                 )||'|'||
TRIM(CHANNEL10                )||'|'||
TRIM(CHANNEL11                )||'|'||
TRIM(CHANNEL12                )||'|'||
TRIM(AMOUNT1                  )||'|'||
TRIM(AMOUNT2                  )||'|'||
TRIM(AMOUNT3                  )||'|'||
TRIM(AMOUNT4                  )||'|'||
TRIM(AMOUNT5                  )||'|'||
TRIM(STRING1                  )||'|'||
TRIM(STRING2                  )||'|'||
TRIM(STRING3                  )||'|'||
TRIM(STRING4                  )||'|'||
TRIM(STRING5                  )||'|'||
TRIM(DATE1                    )||'|'||
TRIM(DATE2                    )||'|'||
TRIM(DATE3                    )||'|'||
TRIM(DATE4                    )||'|'||
TRIM(DATE5                    )||'|'||
TRIM(NUMBER1                  )||'|'||
TRIM(NUMBER2                  )||'|'||
TRIM(NUMBER3                  )||'|'||
TRIM(NUMBER4                  )||'|'||
TRIM(NUMBER5                  )||'|'||
TRIM(FREE_TEXT_1              )||'|'||
TRIM(FREE_TEXT_2              )||'|'||
TRIM(FREE_TEXT_3              )||'|'||
TRIM(ENTITY_CRE_FLG           )||'|'||
TRIM(DEL_FLG                  )||'|'||
TRIM(R_MOD_USER_ID            )||'|'||
TRIM(R_MOD_TIME               )||'|'||
TRIM(R_CRE_USER_ID            )||'|'||
TRIM(R_CRE_TIME               )||'|'||
TRIM(MKCT_REV_REF             )||'|'||
TRIM(RELATED_PARTY_HOST_ID    )||'|'||
TRIM(SUBSCRIPTION_TYPE        )||'|'||
TRIM(FREQ_ID                  )||'|'||
TRIM(FREQ_TYPE                )||'|'||
TRIM(ALERT_START_DATE         )||'|'||
TRIM(ALERT_END_DATE           )||'|'||
TRIM(NEXT_GEN_DATE            )||'|'||
TRIM(SUBSCRIPTION_NATURE      ) 
from SMS_ALERTS_suB_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
sms_and_e_banking_user_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
sms_and_e_banking_user_spool.sql 
-- File Name		: sms_and_e_banking_user_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 800
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ebanking/sms_and_e_banking_user.txt
select
TRIM(REC_NUM) ||'|'||
TRIM(CUST_ID) ||'|'||
TRIM(USER_TYPE) ||'|'||
TRIM(CORP_USER) ||'|'||
TRIM(SALUTATION) ||'|'||
TRIM(C_L_NAME) ||'|'||
TRIM(C_M_NAME) ||'|'||
TRIM(C_F_NAME) ||'|'||
TRIM(C_EMAIL_ID) ||'|'||
TRIM(C_ADDR1) ||'|'||
TRIM(C_ADDR2) ||'|'||
TRIM(C_ADDR3) ||'|'||
TRIM(C_CITY) ||'|'||
TRIM(C_STATE) ||'|'||
TRIM(C_CNTRY) ||'|'||
TRIM(C_ZIP) ||'|'||
TRIM(C_PHONE_NO) ||'|'||
TRIM(C_M_PHONE_NO) ||'|'||
TRIM(C_FAX_NO) ||'|'||
TRIM(PRIM_ACID) ||'|'||
TRIM(P_BRANCH_ID) ||'|'||
TRIM(C_GENDER) ||'|'||
TRIM(to_char(DATE_OF_BIRTH,'DD-Mon-YYYY')) ||'|'||
TRIM(MARITAL_STATUS) ||'|'||
TRIM(to_char(ANNIVERSARY_DATE,'DD-Mon-YYYY')) ||'|'||
TRIM(OCCUPATION) ||'|'||
TRIM(PASSPORT_NUMBER) ||'|'||
TRIM(PASSPORT_ISSUE_DATE) ||'|'||
TRIM(PASSPORT_DETAILS) ||'|'||
TRIM(PASSPORT_EXPIRY_DATE) ||'|'||
TRIM(PAN_NATIONAL_ID) ||'|'||
TRIM(PRINCIPAL_ID) ||'|'||
TRIM(BAY_USER_ID) ||'|'||
TRIM(LANG_ID) ||'|'||
TRIM(SMS_ENABLED) ||'|'||
TRIM(SMS_MOBILE_NO) ||'|'||
TRIM(MOBILE_ENABLED)||'|'||
TRIM(IS_DOT_CONTAIN)||'|'||
TRIM(SCHEME_CODE)
from SMS_AND_E_BANKING_USER_O_TABLE
ORDER BY REC_NUM;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
sweeps_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
sweeps_spool.sql 
-- File Name		: spool CA1
-- File Created for	: Creation of source table
-- Created By		: Kumaresan.B
-- Client		    : Emirates Islamic Bank
-- Created On		: 26-05-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 1033
set page size 0
set pages 0
set trimspool off
spool $MIG_PATH/output/finacle/core/KW/SWEEPS.txt
select 
POOL_NUMBER||
ACCOUNT_NUMBER||      
POOL_DESC||           
SUSPEND_FLAG||        
SUSPEND_DATE||        
ORDER_OF_UTILIZATION||
ALTERNATE_POOL_DESC|| 
POOL_TYPE||           
AUTO_REGULARIZE     
from custom_pool_o_table;
--from custom_pool_o_table; --where trim(pool_desc) not in (select distinct POOL_DESC from tbaadm.pft);
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tda02_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tda02_spool_kw.sql 
-- File Name		: spool TAM
-- File Created for	: SPOOLING TAM MASTER
-- Created By		: Alavudeen B.S
-- Client		: EmiratesNBD Bank
-- Created On		: 01-07-2014
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/tda/KW/TD002.txt
select EMPLOYEE_ID||CUSTOMER_CREDIT_PREF_PERCENT||CUSTOMER_DEBIT_PREF_PERCENT||ACCOUNT_CREDIT_PREF_PERCENT||
ACCOUNT_DEBIT_PREF_PERCENT||CHANNEL_CREDIT_PREF_PERCENT||CHANNEL_DEBIT_PREF_PERCENT||PEGGED_FLAG||PEG_FREQUENCY_IN_MONTHS||PEG_FREQUENCY_IN_DAYS||
SULABH_FLG||INTEREST_ACCRUAL_FLAG||PASSBOOK_SHEET_RECEIPT_IND||WITH_HOLDNG_TAX_AMT_SCOPE_FLG||WITH_HOLDING_TAX_FLAG||SAFE_CUSTODY_FLAG||
CASH_EXCP_AMOUNT_LIMIT||CLEARING_EXCP_AMOUNT_LIMIT||TRANSFER_EXCP_AMOUNT_LIMIT||CASH_CR_EXCP_AMT_LIM||CLEARING_CR_EXCP_AMT_LIM||TRANSFER_CR_EXCP_AMT_LIM||
DEPOSIT_ACCOUNT_NUMBER||CURRENCY_CODE||SOL_ID||GL_SUB_HEAD_CODE||SCHEME_CODE||CIF_ID||DEPOSIT_AMOUNT||DEPOSIT_PERIOD_MONTHS||DEPOSIT_PERIOD_DAYS||
INTEREST_TABLE_CODE||MODE_OF_OPERATION||ACCOUNT_LOCATION_CODE||AUTO_RENEWAL_FLAG||PRD_IN_MNTHS_FOR_AUTO_RENEWAL||PRD_IN_DAYS_FOR_AUTO_RENEWAL||
ACCOUNT_OPEN_DATE||OPEN_EFFECTIVE_DATE||NOMINEE_PRINT_FLAG||PRINTING_FLAG||LEDGER_NUMBER||LAST_CREDIT_INT_POSTED_DATE||LAST_CREDIT_INT_RUN_DATE||
LAST_INTEREST_PROVISION_DATE||PRINTED_DATE||CUMULATIVE_INTEREST_PAID||CUMULATIVE_INTEREST_CREDITED||CUMULATIVE_INSTALLMENTS_PAID||MATURITY_AMOUNT||
OPERATIVE_ACCOUNT_NUMBER||OPERATIVE_ACCOUNT_CRNCY_CODE||OPERATIVE_ACCOUNT_SOL||NOTICE_PRD_MNTS_FORNOTICE_DEP||NOTICE_PRD_DAYS_FORNOTICE_DEP||NOTICE_DATE||
STAMP_DUTY_BORNE_BY_CUST||STAMP_DUTY_AMOUNT||STAMP_DUTY_AMOUNT_CRNCY_CODE||ORIGINAL_DEPOSIT_AMT||ABSOLUTE_RATE_OF_INTEREST||EXCLUDE_FOR_COMBINED_STMNT||
STATEMENT_CIF_ID||MATURITY_DATE||TREASURY_RATE_MOR||RENEWAL_OPTION||RENEWAL_AMOUNT||ADDITIONAL_AMT||ADDNL_AMT_CRNCY||RENEWAL_CRNCY||ADDITIONAL_SOURCE_ACCOUNT||
ADITIONAL_SRC_ACCT_CRNCY_CODE||ADDITIONAL_AC_SOL_ID||ADDITIONAL_RATE_CODE||RENEWAL_RATE_CODE||ADDITIONAL_RATE||RENEWAL_RATE||LINK_OPERATIVE_ACCOUNT||
BREAK_IN_STEPS_OF||WTAX_LEVEL_FLG||WTAX_PCNT||WTAX_FLOOR_LIMIT||IBAN_NUMBER||IAS_CODE||CHANNEL_ID||CHANNEL_LEVEL_CODE||MASTER_ACCT_NUM||ACCT_STATUS||
ACCT_STATUS_DATE||DUMMY||PS_DIFF_FREQ_REL_PARTY_FLG||SWIFT_DIFF_FREQ_REL_PARTY_FLG||FIXED_INSTAL_AMT_AMT_TOPUP||NORMAL_INSTALLMENT_PERCENTAGE||
INSTALLMENT_BASIS||MAX_MISSED_CONTRIBUT_ALLOWED||AUTO_CLOSURE_OF_IRREGULAR_ACT||TOTAL_NUM_OF_MISSED_CONTRIBUT||ACCOUNT_IRREGULAR_STATUS||
ACCOUNT_IRREGULAR_STATUS_DATE||CUMULATIVE_NORMAL_INSTAL_PAID||CUMULATIVE_INITIAL_DEP_PAID||CUMULATIVE_TOP_UP_PAID||AUTOCLOSURE_ZERO_BAL_ACCT_MNTS||
AUTOCLOSURE_ZERO_BAL_ACCT_DAYS||LAST_BONUS_RUN_DATE||LAST_CALCULATED_BONUS_AMOUNT||BONUS_UP_TO_DATE||NEXT_BONUS_RUN_DATE||NORMAL_INT_PAID_TILLLAST_BONUS
||BONUS_CYCLE||LAST_CALC_BONUS_PERCENTAGE||PENALTY_AMOUNT||PENALTY_CHARGE_EVENT_ID||ADDRESS_TYPE||PHONE_TYPE||EMAIL_TYPE||LOCAL_DEPOSIT_PERIOD_MONTHS||
LOCAL_DEPOSIT_PERIOD_DAYS||IS_ACCOUNT_HEDGED_FLAG||USED_FOR_NETTING_OFF_FLAG||
MAX_AUTO_RENEWAL_ALLOWED||
AUTO_CLOSURE_IND||
LAST_PURGE_DATE||
PAY_PRECLS_PROFIT||
PAY_MATURITY_PROFIT||
MURABAHA_DEPOSIT_AMOUNT||
CUSTOMER_PURCHASE_ID||
TOTAL_PROFIT_AMOUNT||
MINIMUM_AGE_NOT_MET||
BROKEN_PERIOD_PROFIT_PAID||
BROKEN_PERIOD_PROFIT_AMOUNT||
PROFIT_BE_RECOVERED||
INDICATE_PROFIT_DIST_UPTO_DATE||
INDICATE_NEXT_PROFIT_DIST_DATE||
TRANSFER_IN_IND||
REPAYMENT_ACCOUNT||
REBATE_AMOUNT||
BRANCH_OFFICE||
DEFERMENT_PERIOD_MONTHS||
CONTINUATION_IND
from TDA_O_TABLE;
-- this works for full spool as well for incremental spool if needed. 
--left join (select foracid from tbaadm.gam where bank_id=get_param('BANK_ID')) gam on foracid = trim(deposit_account_number)
--where foracid is null;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tda02_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tda02_spool_uae.sql 
-- File Name		: spool TAM
-- File Created for	: SPOOLING TAM MASTER
-- Created By		: Alavudeen B.S
-- Client		: EmiratesNBD Bank
-- Created On		: 01-07-2014
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/tda/UAE/TD002.txt
select EMPLOYEE_ID||CUSTOMER_CREDIT_PREF_PERCENT||CUSTOMER_DEBIT_PREF_PERCENT||ACCOUNT_CREDIT_PREF_PERCENT||
ACCOUNT_DEBIT_PREF_PERCENT||CHANNEL_CREDIT_PREF_PERCENT||CHANNEL_DEBIT_PREF_PERCENT||PEGGED_FLAG||PEG_FREQUENCY_IN_MONTHS||PEG_FREQUENCY_IN_DAYS||
SULABH_FLG||INTEREST_ACCRUAL_FLAG||PASSBOOK_SHEET_RECEIPT_IND||WITH_HOLDNG_TAX_AMT_SCOPE_FLG||WITH_HOLDING_TAX_FLAG||SAFE_CUSTODY_FLAG||
CASH_EXCP_AMOUNT_LIMIT||CLEARING_EXCP_AMOUNT_LIMIT||TRANSFER_EXCP_AMOUNT_LIMIT||CASH_CR_EXCP_AMT_LIM||CLEARING_CR_EXCP_AMT_LIM||TRANSFER_CR_EXCP_AMT_LIM||
DEPOSIT_ACCOUNT_NUMBER||CURRENCY_CODE||SOL_ID||GL_SUB_HEAD_CODE||SCHEME_CODE||CIF_ID||DEPOSIT_AMOUNT||DEPOSIT_PERIOD_MONTHS||DEPOSIT_PERIOD_DAYS||
INTEREST_TABLE_CODE||MODE_OF_OPERATION||ACCOUNT_LOCATION_CODE||AUTO_RENEWAL_FLAG||PRD_IN_MNTHS_FOR_AUTO_RENEWAL||PRD_IN_DAYS_FOR_AUTO_RENEWAL||
ACCOUNT_OPEN_DATE||OPEN_EFFECTIVE_DATE||NOMINEE_PRINT_FLAG||PRINTING_FLAG||LEDGER_NUMBER||LAST_CREDIT_INT_POSTED_DATE||LAST_CREDIT_INT_RUN_DATE||
LAST_INTEREST_PROVISION_DATE||PRINTED_DATE||CUMULATIVE_INTEREST_PAID||CUMULATIVE_INTEREST_CREDITED||CUMULATIVE_INSTALLMENTS_PAID||MATURITY_AMOUNT||
OPERATIVE_ACCOUNT_NUMBER||OPERATIVE_ACCOUNT_CRNCY_CODE||OPERATIVE_ACCOUNT_SOL||NOTICE_PRD_MNTS_FORNOTICE_DEP||NOTICE_PRD_DAYS_FORNOTICE_DEP||NOTICE_DATE||
STAMP_DUTY_BORNE_BY_CUST||STAMP_DUTY_AMOUNT||STAMP_DUTY_AMOUNT_CRNCY_CODE||ORIGINAL_DEPOSIT_AMT||ABSOLUTE_RATE_OF_INTEREST||EXCLUDE_FOR_COMBINED_STMNT||
STATEMENT_CIF_ID||MATURITY_DATE||TREASURY_RATE_MOR||RENEWAL_OPTION||RENEWAL_AMOUNT||ADDITIONAL_AMT||ADDNL_AMT_CRNCY||RENEWAL_CRNCY||ADDITIONAL_SOURCE_ACCOUNT||
ADITIONAL_SRC_ACCT_CRNCY_CODE||ADDITIONAL_AC_SOL_ID||ADDITIONAL_RATE_CODE||RENEWAL_RATE_CODE||ADDITIONAL_RATE||RENEWAL_RATE||LINK_OPERATIVE_ACCOUNT||
BREAK_IN_STEPS_OF||WTAX_LEVEL_FLG||WTAX_PCNT||WTAX_FLOOR_LIMIT||IBAN_NUMBER||IAS_CODE||CHANNEL_ID||CHANNEL_LEVEL_CODE||MASTER_ACCT_NUM||ACCT_STATUS||
ACCT_STATUS_DATE||DUMMY||PS_DIFF_FREQ_REL_PARTY_FLG||SWIFT_DIFF_FREQ_REL_PARTY_FLG||FIXED_INSTAL_AMT_AMT_TOPUP||NORMAL_INSTALLMENT_PERCENTAGE||
INSTALLMENT_BASIS||MAX_MISSED_CONTRIBUT_ALLOWED||AUTO_CLOSURE_OF_IRREGULAR_ACT||TOTAL_NUM_OF_MISSED_CONTRIBUT||ACCOUNT_IRREGULAR_STATUS||
ACCOUNT_IRREGULAR_STATUS_DATE||CUMULATIVE_NORMAL_INSTAL_PAID||CUMULATIVE_INITIAL_DEP_PAID||CUMULATIVE_TOP_UP_PAID||AUTOCLOSURE_ZERO_BAL_ACCT_MNTS||
AUTOCLOSURE_ZERO_BAL_ACCT_DAYS||LAST_BONUS_RUN_DATE||LAST_CALCULATED_BONUS_AMOUNT||BONUS_UP_TO_DATE||NEXT_BONUS_RUN_DATE||NORMAL_INT_PAID_TILLLAST_BONUS
||BONUS_CYCLE||LAST_CALC_BONUS_PERCENTAGE||PENALTY_AMOUNT||PENALTY_CHARGE_EVENT_ID||ADDRESS_TYPE||PHONE_TYPE||EMAIL_TYPE||LOCAL_DEPOSIT_PERIOD_MONTHS||
LOCAL_DEPOSIT_PERIOD_DAYS||IS_ACCOUNT_HEDGED_FLAG||USED_FOR_NETTING_OFF_FLAG||
MAX_AUTO_RENEWAL_ALLOWED||
AUTO_CLOSURE_IND||
LAST_PURGE_DATE||
PAY_PRECLS_PROFIT||
PAY_MATURITY_PROFIT||
MURABAHA_DEPOSIT_AMOUNT||
CUSTOMER_PURCHASE_ID||
TOTAL_PROFIT_AMOUNT||
MINIMUM_AGE_NOT_MET||
BROKEN_PERIOD_PROFIT_PAID||
BROKEN_PERIOD_PROFIT_AMOUNT||
PROFIT_BE_RECOVERED||
INDICATE_PROFIT_DIST_UPTO_DATE||
INDICATE_NEXT_PROFIT_DIST_DATE||
TRANSFER_IN_IND||
REPAYMENT_ACCOUNT||
REBATE_AMOUNT||
BRANCH_OFFICE||
DEFERMENT_PERIOD_MONTHS||
CONTINUATION_IND
from TDA_O_TABLE
-- this works for full spool as well for incremental spool if needed. 
left join (select foracid from tbaadm.gam where bank_id=get_param('BANK_ID')) gam on foracid = trim(deposit_account_number)
where foracid is null;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tda04_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tda04_spool_kw.sql 
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/tda/KW/TD004.txt
select 
TRANSACTION_TYPE||
TRANSACTION_SUB_TYPE||
ACCOUNT_NUMBER||
CURRENCY_CODE||
AMOUNT||
PART_TRANSACTION_TYPE||
VALUE_DATE||
AGENT_EMPLOYEE_INDICATOR||
AGENT_EMPLOYEE_CODE||
FLOW_CODE||
TRANSACTION_END_INDICATOR||';TD004_'||sol_code||'_'||currency_code||'.txt'
from tdt_o_table
order by sol_code,currency_code,part_transaction_type,transaction_end_indicator ;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tda04_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tda04_spool_uae.sql 
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/tda/UAE/TD004.txt
select 
TRANSACTION_TYPE||
TRANSACTION_SUB_TYPE||
ACCOUNT_NUMBER||
CURRENCY_CODE||
AMOUNT||
PART_TRANSACTION_TYPE||
VALUE_DATE||
AGENT_EMPLOYEE_INDICATOR||
AGENT_EMPLOYEE_CODE||
FLOW_CODE||
TRANSACTION_END_INDICATOR||';TD004_'||sol_code||'_'||currency_code||'.txt'
from tdt_o_table order by sol_code,currency_code,part_transaction_type,transaction_end_indicator ;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tda07_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tda07_spool_kw.sql 
--FileName:SCU1.sql
--FileCreatedfor:spooldatatofile
--CreatedBy:Revathi
--Client:ENBD
--CreatedOn:03-23-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1200
set page size 0
set pages 0
set trimspool on
CHARACTERSET UTF8
spool $MIG_PATH/output/finacle/tda/KW/TD007.txt
select 
SOL_ID||
TD_ACCOUNT||
FLOW_CODE||
AMOUNT_INDICATOR||
CURRENCY_CODE||
FIXED_AMOUNT||
BALANCE_INDICATOR||
EXCESS_SHORT_IND||
ACCOUNT_NUMBER||
ACCOUNT_BALANCE||
PERCENTAGE||
AMT_ROUND_OFF_TYPE||
ROUND_OFF_VALUE||
RATE_CODE||
COLLECT_CHARGES||
REPORT_CODE||
REFERENCE_NUMBER||
TRANSACTION_PARTICULARS||
TRANSACTION_REMARKS||
INTENT_CODE||
DD_PAYABLE_BKCODE||
DD_PAYABLE_BRCODE||
PAYEE_NAME||
PURCHASE_ACCT_NUMBER||
PURCHASE_NAME
from tda07_o_table;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tda07_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tda07_spool_uae.sql 
--FileName:SCU1.sql
--FileCreatedfor:spooldatatofile
--CreatedBy:Revathi
--Client:ENBD
--CreatedOn:03-23-2015
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1200
set page size 0
set pages 0
set trimspool on
CHARACTERSET UTF8
spool $MIG_PATH/output/finacle/tda/UAE/TD007.txt
select 
SOL_ID||
TD_ACCOUNT||
FLOW_CODE||
AMOUNT_INDICATOR||
CURRENCY_CODE||
FIXED_AMOUNT||
BALANCE_INDICATOR||
EXCESS_SHORT_IND||
ACCOUNT_NUMBER||
ACCOUNT_BALANCE||
PERCENTAGE||
AMT_ROUND_OFF_TYPE||
ROUND_OFF_VALUE||
RATE_CODE||
COLLECT_CHARGES||
REPORT_CODE||
REFERENCE_NUMBER||
TRANSACTION_PARTICULARS||
TRANSACTION_REMARKS||
INTENT_CODE||
DD_PAYABLE_BKCODE||
DD_PAYABLE_BRCODE||
PAYEE_NAME||
PURCHASE_ACCT_NUMBER||
PURCHASE_NAME
from tda07_o_table;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tda08_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tda08_spool_kw.sql 
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/tda/KW/TD008.txt
select 
trim(IND)||'|'||                         
trim(ACCT_number)||'|'||                 
trim(crncy_code)||'|'||                  
trim(sol_id)||'|'||                      
trim(accrued_upto_date_cr)||'|'||        
trim(booked_upto_date_cr)||'|'||         
trim(interest_calc_upto_date_cr)||'|'||  
trim(no_recalc_before_date)||'|'||       
trim(nrml_accrued_amount_cr)||'|'||      
trim(nrml_booked_amount_cr)
from TDINTEREST_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tda08_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tda08_spool_uae.sql 
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/tda/UAE/TD008.txt
select 
trim(IND)||'|'||                         
trim(ACCT_number)||'|'||                 
trim(crncy_code)||'|'||                  
trim(sol_id)||'|'||                      
trim(accrued_upto_date_cr)||'|'||        
trim(booked_upto_date_cr)||'|'||         
trim(interest_calc_upto_date_cr)||'|'||  
trim(no_recalc_before_date)||'|'||       
trim(nrml_accrued_amount_cr)||'|'||      
trim(nrml_booked_amount_cr)
from TDINTEREST_O_TABLE;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
td_ren_prd_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
td_ren_prd_spool_kw.sql 
-- File Name		: spool TAM
-- File Created for	: SPOOLING TAM MASTER
-- Created By		: Alavudeen Ali Badusha.R
-- Client		    : EmiratesNBD Bank
-- Created On		: 15-12-2014
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/tda/KW/TD_REN_PRD.txt
select 
trim(deposit_account_number)||'|'||
trim(PRD_IN_MNTHS_FOR_AUTO_RENEWAL)||'|'||
trim(PRD_IN_DAYS_FOR_AUTO_RENEWAL)
from TD_REN_PRD;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
td_ren_prd_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
td_ren_prd_spool_uae.sql 
-- File Name		: spool TAM
-- File Created for	: SPOOLING TAM MASTER
-- Created By		: Alavudeen Ali Badusha.R
-- Client		    : EmiratesNBD Bank
-- Created On		: 15-12-2014
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/tda/UAE/TD_REN_PRD.txt
select 
trim(deposit_account_number)||'|'||
trim(PRD_IN_MNTHS_FOR_AUTO_RENEWAL)||'|'||
trim(PRD_IN_DAYS_FOR_AUTO_RENEWAL)
from TD_REN_PRD;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
testcore01_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
testcore01_spool.sql 
-- File Name        : spool CA1
-- File Created for    : Creation of source table
-- Created By        : Niranjan I O
-- Client            : ABK trial and error run
-- Created On        : 28-02-2017
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 1200
set page size 0
set pages 0
set trimspool on
CHARACTERSET UTF8
spool $MIG_PATH/output/finacle/core/UAE/TESTCORE001.txt
select leg_branch_id        ||'|'||
fin_branch_id               ||'|'||
branch_id_match_flag        ||'|'||
leg_Customer_number         ||'|'||
fin_Customer_number         ||'|'||
customer_number_match_flag  ||'|'||
leg_suffix_number           ||'|'||
fin_suffix_number           ||'|'||
suffix_matach_flag          ||'|'||
leg_currency                ||'|'||
fin_currency                ||'|'||
currenct_match_flag         ||'|'||
leg_cif_id                  ||'|'||
fin_cif_id                  ||'|'||
cif_id_match_flag           ||'|'||
leg_account_number          ||'|'||         
fin_account_number          ||'|'||
acc_num_match_flag          ||'|'||
leg_cust_type               ||'|'||
fin_cust_type               ||'|'||
cust_type_match_flag        ||'|'||
leg_account_type            ||'|'||
leg_schm_code_type          ||'|'||
fin_schm_code_type          ||'|'||         
schm_code_match_flag        ||'|'||
leg_account_status          ||'|'||
fin_account_status          ||'|'||
fin_tbl_code                ||'|'||
leg_account_open_date       ||'|'||
fin_account_open_date       ||'|'||
acount_open_date_match_flag ||'|'||
leg_last_transaction_date   ||'|'||
fin_last_transaction_date   ||'|'||
last_transaction_date_match ||'|'||
leg_current_balance_amount  ||'|'||
fin_current_balance_amount  ||'|'||
current_bal_amt_match     
from testcore01_O_TABLE;
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TESTTTT.SQL 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TESTTTT.SQL 
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF001_A_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF001_A_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/TF/MOCK5/TF001_A.txt
SELECT
FUNC_CODE,
SOL_ID,
BG_NUM,
EVENT_AMT,
BG_EXPIRY_MONTH,
BG_EXPIRY_DAYS,
BG_EXPIRY_DATE,
BG_CLAIM_EXPIRY_MONTHS,
BG_CLAIM_EXPIRY_DAYS,
BG_CLAIM_EXPIRY_DATE,
BG_CHARGES_BORNE_BY,
BG_TYPE,
BG_CURRENCY,
CIF_ID,
EVENT_DATE,
PURPOSE_OF_GUARANTEE_TEXT,
BG_CLASS,
BG_EFFECTIVE_DATE,
APPLICABLE_RULES,
APPLICABLE_SUB_RULES,
BG_FRUCTIFIED_AMOUNT,
IS_ORIGINAL_BG_RECEIVED_FLAG,
BG_REMARKS,
COUNTER_BG_NUMBER,
IMPORT_LICENSE_NUM,
LICENSE_EXPIRYDATE,
CAPITALADEQUANCYCODE,
BG_PROVISION_AMOUNT,
FREE_CODE1,
FREE_CODE2,
FREE_CODE3,
BG_OPERATIVE_ACCOUNT_ID,
APPLICANT_NAME,
APPLICANT_ADDRESS1,
APPLICANT_ADDRESS2,
APPLICANT_ADDRESS3,
APPLICANT_CITY,
APPLICANT_STATE,
APPLICANT_COUNTRY,
APPLICANT_PIN_CODE,
APPLICANT_REF_NUM,
BG_RATE_CODE,
BG_RATE,
OTHER_BANK_REF_NUM,
PAYSYS_ID,
BENEFICIARY_CIF_ID,
BENEFICIARY_NAME,
BENEFICIARY_ADDRESS1,
BENEFICIARY_ADDRESS2,
BENEFICIARY_ADDRESS3,
BENEFICIARY_CITY,
BENEFICIARY_STATE,
BENEFICIARY_COUNTRY,
BENEFICIARY_PINCODE,
BENEFICIARY_TYPE,
BG_CORRESPONDENT_BANK,
BG_CORRESPONDENT_BRANCH,
BG_CORRESPONDENT_NAME,
BG_CORRESPONDENT_ADDRESS1,
BG_CORRESPONDENT_ADDRESS2,
BG_CORRESPONDENT_ADDRESS3,
BG_CORRESPONDENT_CITY,
BG_CORRESPONDENT_STATE,
BG_CORRESPONDENT_COUNTRY,
BG_CORRESPONDENT_PINCODE,
BIC_CODE,
PARTY_IDENTIFIER,
CORR_BANK_ADDRESS_TYPE,
BG_CRNCY_CODE,
DC_REF_NUM,
SG_BILL_EQUIVALENT_CRNCY_CODE,
SG_BILL_EQUIVALENT_AMOUNT,
BG_DC_RATE_CODE,
BG_DC_RATE,
SG_CONTINGENT_CRNCY_CODE,
SG_CONTINGENT_AMOUNT,
RETAIN_MIN_CONTINGENT_AMOUNT,
CONTINGENT_REVERSAL_EVENT,
MARGIN_REVERSAL_RATE_CODE,
TRUST_RECEIPT_NUM,
NO_OF_UNITS,
UNIT_VALUE,
COMMODITY_DETAILS_DESC,
COMMODITY_REMARKS,
BILL_LADING_NUM,
CARRIER_ID,
CARRIER_NAME,
CARRIER_ADDRESS1,
CARRIER_ADDRESS2,
CARRIER_ADDRESS3,
CARRIER_CITY,
CARRIER_STATE,
CARRIER_COUNTRY,
CARRIER_PINCODE,
ORDER_OF_CONSIGNEE,
PORT_OF_DESTINATION,
ACTUAL_SHIPMENT_DATE,
LIMITPREFIX,
LIMITSUFFIX,
LIMITMARGINPCNT,
RELLIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_REMARKS,
STATUS,
AMENDINITIATEDBY,
AUTORENEWAPPLICABLEFLG,
FINALEXPIRYDATE,
AUTORENEWNEXTCYCLE,
AUTORENEWFREQTYPE,
AUTORENEWFREQDATE,
AUTORENEWFREQWEEKNUM,
AUTORENEWFREQDAY,
ISFREQDAYONHOLIDAY,
BGCOUNTERGUARANTEERATECODE,
COUNTERRATE,
ADVANCEAMTPAID,
SOLIDORDER1,
ORDERNODTLS1,
SOLIDORDER2,
ORDERNODTLS2,
SOLIDORDER3,
ORDERNODTLS3,
SOLIDORDER4,
ORDERNODTLS4,
SOLIDORDER5,
ORDERNODTLS5,
PURCHASEFORACID,
SGDOPAYABLEFORACID,
EXECADVNO1,
EXECADVNO2,
EXECADVNO3,
EXECADVNO4,
EXECADVNO5,
PROMISETOPURCHASERECV,
PROMISETOPURCHASEDATE,
PROMISETOPURCHASEREFNO,
PURCHASEACCPTADVICE,
FINANCINGFORACID,
DEBITFINANCINGFORACID,
PREFIXFINANCINGLIMITID,
SUFFIXFINANCINGLIMITID,
ISLAMICRATECODE,
ISLAMICRATE,
SECTORCODE,
EXPCIFID,
EXPNAME,
EXPADDR1,
EXPADDR2,
EXPADDR3,
EXPCITY,
EXPSTATE,
EXPCNTRY,
EXPPINCODE,
BGCOLLBANKCODE,
BGCOLLBRANCHCODE,
BGCOLLBANKNAME,
BGCOLLBANKADDR1,
BGCOLLBANKADDR2,
BGCOLLBANKADDR3,
BGCOLLBANKCITY,
BGCOLLBANKSTATE,
BGCOLLBANKCNTRY,
BGCOLLBANKPINCODE,
BGCOLLBICCODE,
BGCOLLPARTYID,
BGCOLLADDRTYPE,
INTENDTOEXPORT,
INWARDDCREFNUM
FROM TF001
WHERE FUNC_CODE='A'
order by BG_NUM,to_date(event_date,'dd-mm-yyyy');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF001_RISK_A_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF001_RISK_A_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF001_RISK_A.txt
SELECT
FUNC_CODE,
SOL_ID,
BG_NUM,
EVENT_AMT,
BG_EXPIRY_MONTH,
BG_EXPIRY_DAYS,
BG_EXPIRY_DATE,
BG_CLAIM_EXPIRY_MONTHS,
BG_CLAIM_EXPIRY_DAYS,
BG_CLAIM_EXPIRY_DATE,
BG_CHARGES_BORNE_BY,
BG_TYPE,
BG_CURRENCY,
CIF_ID,
EVENT_DATE,
PURPOSE_OF_GUARANTEE_TEXT,
BG_CLASS,
BG_EFFECTIVE_DATE,
APPLICABLE_RULES,
APPLICABLE_SUB_RULES,
BG_FRUCTIFIED_AMOUNT,
IS_ORIGINAL_BG_RECEIVED_FLAG,
BG_REMARKS,
COUNTER_BG_NUMBER,
IMPORT_LICENSE_NUM,
LICENSE_EXPIRYDATE,
CAPITALADEQUANCYCODE,
BG_PROVISION_AMOUNT,
FREE_CODE1,
FREE_CODE2,
FREE_CODE3,
BG_OPERATIVE_ACCOUNT_ID,
APPLICANT_NAME,
APPLICANT_ADDRESS1,
APPLICANT_ADDRESS2,
APPLICANT_ADDRESS3,
APPLICANT_CITY,
APPLICANT_STATE,
APPLICANT_COUNTRY,
APPLICANT_PIN_CODE,
APPLICANT_REF_NUM,
BG_RATE_CODE,
BG_RATE,
OTHER_BANK_REF_NUM,
PAYSYS_ID,
BENEFICIARY_CIF_ID,
BENEFICIARY_NAME,
BENEFICIARY_ADDRESS1,
BENEFICIARY_ADDRESS2,
BENEFICIARY_ADDRESS3,
BENEFICIARY_CITY,
BENEFICIARY_STATE,
BENEFICIARY_COUNTRY,
BENEFICIARY_PINCODE,
BENEFICIARY_TYPE,
BG_CORRESPONDENT_BANK,
BG_CORRESPONDENT_BRANCH,
BG_CORRESPONDENT_NAME,
BG_CORRESPONDENT_ADDRESS1,
BG_CORRESPONDENT_ADDRESS2,
BG_CORRESPONDENT_ADDRESS3,
BG_CORRESPONDENT_CITY,
BG_CORRESPONDENT_STATE,
BG_CORRESPONDENT_COUNTRY,
BG_CORRESPONDENT_PINCODE,
BIC_CODE,
PARTY_IDENTIFIER,
CORR_BANK_ADDRESS_TYPE,
BG_CRNCY_CODE,
DC_REF_NUM,
SG_BILL_EQUIVALENT_CRNCY_CODE,
SG_BILL_EQUIVALENT_AMOUNT,
BG_DC_RATE_CODE,
BG_DC_RATE,
SG_CONTINGENT_CRNCY_CODE,
SG_CONTINGENT_AMOUNT,
RETAIN_MIN_CONTINGENT_AMOUNT,
CONTINGENT_REVERSAL_EVENT,
MARGIN_REVERSAL_RATE_CODE,
TRUST_RECEIPT_NUM,
NO_OF_UNITS,
UNIT_VALUE,
COMMODITY_DETAILS_DESC,
COMMODITY_REMARKS,
BILL_LADING_NUM,
CARRIER_ID,
CARRIER_NAME,
CARRIER_ADDRESS1,
CARRIER_ADDRESS2,
CARRIER_ADDRESS3,
CARRIER_CITY,
CARRIER_STATE,
CARRIER_COUNTRY,
CARRIER_PINCODE,
ORDER_OF_CONSIGNEE,
PORT_OF_DESTINATION,
ACTUAL_SHIPMENT_DATE,
LIMITPREFIX,
LIMITSUFFIX,
LIMITMARGINPCNT,
RELLIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_REMARKS,
STATUS,
AMENDINITIATEDBY,
AUTORENEWAPPLICABLEFLG,
FINALEXPIRYDATE,
AUTORENEWNEXTCYCLE,
AUTORENEWFREQTYPE,
AUTORENEWFREQDATE,
AUTORENEWFREQWEEKNUM,
AUTORENEWFREQDAY,
ISFREQDAYONHOLIDAY,
BGCOUNTERGUARANTEERATECODE,
COUNTERRATE,
ADVANCEAMTPAID,
SOLIDORDER1,
ORDERNODTLS1,
SOLIDORDER2,
ORDERNODTLS2,
SOLIDORDER3,
ORDERNODTLS3,
SOLIDORDER4,
ORDERNODTLS4,
SOLIDORDER5,
ORDERNODTLS5,
PURCHASEFORACID,
SGDOPAYABLEFORACID,
EXECADVNO1,
EXECADVNO2,
EXECADVNO3,
EXECADVNO4,
EXECADVNO5,
PROMISETOPURCHASERECV,
PROMISETOPURCHASEDATE,
PROMISETOPURCHASEREFNO,
PURCHASEACCPTADVICE,
FINANCINGFORACID,
DEBITFINANCINGFORACID,
PREFIXFINANCINGLIMITID,
SUFFIXFINANCINGLIMITID,
ISLAMICRATECODE,
ISLAMICRATE,
SECTORCODE,
EXPCIFID,
EXPNAME,
EXPADDR1,
EXPADDR2,
EXPADDR3,
EXPCITY,
EXPSTATE,
EXPCNTRY,
EXPPINCODE,
BGCOLLBANKCODE,
BGCOLLBRANCHCODE,
BGCOLLBANKNAME,
BGCOLLBANKADDR1,
BGCOLLBANKADDR2,
BGCOLLBANKADDR3,
BGCOLLBANKCITY,
BGCOLLBANKSTATE,
BGCOLLBANKCNTRY,
BGCOLLBANKPINCODE,
BGCOLLBICCODE,
BGCOLLPARTYID,
BGCOLLADDRTYPE,
INTENDTOEXPORT,
INWARDDCREFNUM
FROM TF001_RISK
WHERE FUNC_CODE='A'
order by BG_NUM,to_date(event_date,'dd-mm-yyyy');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF001_RISK_U_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF001_RISK_U_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF001_RISK_U.txt
SELECT
FUNC_CODE,
SOL_ID,
BG_NUM,
EVENT_AMT,
BG_EXPIRY_MONTH,
BG_EXPIRY_DAYS,
BG_EXPIRY_DATE,
BG_CLAIM_EXPIRY_MONTHS,
BG_CLAIM_EXPIRY_DAYS,
BG_CLAIM_EXPIRY_DATE,
BG_CHARGES_BORNE_BY,
BG_TYPE,
BG_CURRENCY,
CIF_ID,
EVENT_DATE,
PURPOSE_OF_GUARANTEE_TEXT,
BG_CLASS,
BG_EFFECTIVE_DATE,
APPLICABLE_RULES,
APPLICABLE_SUB_RULES,
BG_FRUCTIFIED_AMOUNT,
IS_ORIGINAL_BG_RECEIVED_FLAG,
BG_REMARKS,
COUNTER_BG_NUMBER,
IMPORT_LICENSE_NUM,
LICENSE_EXPIRYDATE,
CAPITALADEQUANCYCODE,
BG_PROVISION_AMOUNT,
FREE_CODE1,
FREE_CODE2,
FREE_CODE3,
BG_OPERATIVE_ACCOUNT_ID,
APPLICANT_NAME,
APPLICANT_ADDRESS1,
APPLICANT_ADDRESS2,
APPLICANT_ADDRESS3,
APPLICANT_CITY,
APPLICANT_STATE,
APPLICANT_COUNTRY,
APPLICANT_PIN_CODE,
APPLICANT_REF_NUM,
BG_RATE_CODE,
BG_RATE,
OTHER_BANK_REF_NUM,
PAYSYS_ID,
BENEFICIARY_CIF_ID,
BENEFICIARY_NAME,
BENEFICIARY_ADDRESS1,
BENEFICIARY_ADDRESS2,
BENEFICIARY_ADDRESS3,
BENEFICIARY_CITY,
BENEFICIARY_STATE,
BENEFICIARY_COUNTRY,
BENEFICIARY_PINCODE,
BENEFICIARY_TYPE,
BG_CORRESPONDENT_BANK,
BG_CORRESPONDENT_BRANCH,
BG_CORRESPONDENT_NAME,
BG_CORRESPONDENT_ADDRESS1,
BG_CORRESPONDENT_ADDRESS2,
BG_CORRESPONDENT_ADDRESS3,
BG_CORRESPONDENT_CITY,
BG_CORRESPONDENT_STATE,
BG_CORRESPONDENT_COUNTRY,
BG_CORRESPONDENT_PINCODE,
BIC_CODE,
PARTY_IDENTIFIER,
CORR_BANK_ADDRESS_TYPE,
BG_CRNCY_CODE,
DC_REF_NUM,
SG_BILL_EQUIVALENT_CRNCY_CODE,
SG_BILL_EQUIVALENT_AMOUNT,
BG_DC_RATE_CODE,
BG_DC_RATE,
SG_CONTINGENT_CRNCY_CODE,
SG_CONTINGENT_AMOUNT,
RETAIN_MIN_CONTINGENT_AMOUNT,
CONTINGENT_REVERSAL_EVENT,
MARGIN_REVERSAL_RATE_CODE,
TRUST_RECEIPT_NUM,
NO_OF_UNITS,
UNIT_VALUE,
COMMODITY_DETAILS_DESC,
COMMODITY_REMARKS,
BILL_LADING_NUM,
CARRIER_ID,
CARRIER_NAME,
CARRIER_ADDRESS1,
CARRIER_ADDRESS2,
CARRIER_ADDRESS3,
CARRIER_CITY,
CARRIER_STATE,
CARRIER_COUNTRY,
CARRIER_PINCODE,
ORDER_OF_CONSIGNEE,
PORT_OF_DESTINATION,
ACTUAL_SHIPMENT_DATE,
LIMITPREFIX,
LIMITSUFFIX,
LIMITMARGINPCNT,
RELLIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_REMARKS,
STATUS,
AMENDINITIATEDBY,
AUTORENEWAPPLICABLEFLG,
FINALEXPIRYDATE,
AUTORENEWNEXTCYCLE,
AUTORENEWFREQTYPE,
AUTORENEWFREQDATE,
AUTORENEWFREQWEEKNUM,
AUTORENEWFREQDAY,
ISFREQDAYONHOLIDAY,
BGCOUNTERGUARANTEERATECODE,
COUNTERRATE,
ADVANCEAMTPAID,
SOLIDORDER1,
ORDERNODTLS1,
SOLIDORDER2,
ORDERNODTLS2,
SOLIDORDER3,
ORDERNODTLS3,
SOLIDORDER4,
ORDERNODTLS4,
SOLIDORDER5,
ORDERNODTLS5,
PURCHASEFORACID,
SGDOPAYABLEFORACID,
EXECADVNO1,
EXECADVNO2,
EXECADVNO3,
EXECADVNO4,
EXECADVNO5,
PROMISETOPURCHASERECV,
PROMISETOPURCHASEDATE,
PROMISETOPURCHASEREFNO,
PURCHASEACCPTADVICE,
FINANCINGFORACID,
DEBITFINANCINGFORACID,
PREFIXFINANCINGLIMITID,
SUFFIXFINANCINGLIMITID,
ISLAMICRATECODE,
ISLAMICRATE,
SECTORCODE,
EXPCIFID,
EXPNAME,
EXPADDR1,
EXPADDR2,
EXPADDR3,
EXPCITY,
EXPSTATE,
EXPCNTRY,
EXPPINCODE,
BGCOLLBANKCODE,
BGCOLLBRANCHCODE,
BGCOLLBANKNAME,
BGCOLLBANKADDR1,
BGCOLLBANKADDR2,
BGCOLLBANKADDR3,
BGCOLLBANKCITY,
BGCOLLBANKSTATE,
BGCOLLBANKCNTRY,
BGCOLLBANKPINCODE,
BGCOLLBICCODE,
BGCOLLPARTYID,
BGCOLLADDRTYPE,
INTENDTOEXPORT,
INWARDDCREFNUM
FROM TF001_RISK
WHERE FUNC_CODE='U' AND TRIM(EVENT_AMT) IS NOT NULL
order by BG_NUM,to_date(event_date,'dd-mm-yyyy');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF001_SPEC_A_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF001_SPEC_A_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF001_A_TEST.txt
SELECT
FUNC_CODE,
SOL_ID,
BG_NUM,
EVENT_AMT,
BG_EXPIRY_MONTH,
BG_EXPIRY_DAYS,
BG_EXPIRY_DATE,
BG_CLAIM_EXPIRY_MONTHS,
BG_CLAIM_EXPIRY_DAYS,
BG_CLAIM_EXPIRY_DATE,
BG_CHARGES_BORNE_BY,
BG_TYPE,
BG_CURRENCY,
CIF_ID,
EVENT_DATE,
PURPOSE_OF_GUARANTEE_TEXT,
BG_CLASS,
BG_EFFECTIVE_DATE,
APPLICABLE_RULES,
APPLICABLE_SUB_RULES,
BG_FRUCTIFIED_AMOUNT,
IS_ORIGINAL_BG_RECEIVED_FLAG,
BG_REMARKS,
COUNTER_BG_NUMBER,
IMPORT_LICENSE_NUM,
LICENSE_EXPIRYDATE,
CAPITALADEQUANCYCODE,
BG_PROVISION_AMOUNT,
FREE_CODE1,
FREE_CODE2,
FREE_CODE3,
BG_OPERATIVE_ACCOUNT_ID,
APPLICANT_NAME,
APPLICANT_ADDRESS1,
APPLICANT_ADDRESS2,
APPLICANT_ADDRESS3,
APPLICANT_CITY,
APPLICANT_STATE,
APPLICANT_COUNTRY,
APPLICANT_PIN_CODE,
APPLICANT_REF_NUM,
BG_RATE_CODE,
BG_RATE,
OTHER_BANK_REF_NUM,
PAYSYS_ID,
BENEFICIARY_CIF_ID,
BENEFICIARY_NAME,
BENEFICIARY_ADDRESS1,
BENEFICIARY_ADDRESS2,
BENEFICIARY_ADDRESS3,
BENEFICIARY_CITY,
BENEFICIARY_STATE,
BENEFICIARY_COUNTRY,
BENEFICIARY_PINCODE,
BENEFICIARY_TYPE,
BG_CORRESPONDENT_BANK,
BG_CORRESPONDENT_BRANCH,
BG_CORRESPONDENT_NAME,
BG_CORRESPONDENT_ADDRESS1,
BG_CORRESPONDENT_ADDRESS2,
BG_CORRESPONDENT_ADDRESS3,
BG_CORRESPONDENT_CITY,
BG_CORRESPONDENT_STATE,
BG_CORRESPONDENT_COUNTRY,
BG_CORRESPONDENT_PINCODE,
BIC_CODE,
PARTY_IDENTIFIER,
CORR_BANK_ADDRESS_TYPE,
BG_CRNCY_CODE,
DC_REF_NUM,
SG_BILL_EQUIVALENT_CRNCY_CODE,
SG_BILL_EQUIVALENT_AMOUNT,
BG_DC_RATE_CODE,
BG_DC_RATE,
SG_CONTINGENT_CRNCY_CODE,
SG_CONTINGENT_AMOUNT,
RETAIN_MIN_CONTINGENT_AMOUNT,
CONTINGENT_REVERSAL_EVENT,
MARGIN_REVERSAL_RATE_CODE,
TRUST_RECEIPT_NUM,
NO_OF_UNITS,
UNIT_VALUE,
COMMODITY_DETAILS_DESC,
COMMODITY_REMARKS,
BILL_LADING_NUM,
CARRIER_ID,
CARRIER_NAME,
CARRIER_ADDRESS1,
CARRIER_ADDRESS2,
CARRIER_ADDRESS3,
CARRIER_CITY,
CARRIER_STATE,
CARRIER_COUNTRY,
CARRIER_PINCODE,
ORDER_OF_CONSIGNEE,
PORT_OF_DESTINATION,
ACTUAL_SHIPMENT_DATE,
LIMITPREFIX,
LIMITSUFFIX,
LIMITMARGINPCNT,
RELLIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_REMARKS,
STATUS,
AMENDINITIATEDBY,
AUTORENEWAPPLICABLEFLG,
FINALEXPIRYDATE,
AUTORENEWNEXTCYCLE,
AUTORENEWFREQTYPE,
AUTORENEWFREQDATE,
AUTORENEWFREQWEEKNUM,
AUTORENEWFREQDAY,
ISFREQDAYONHOLIDAY,
BGCOUNTERGUARANTEERATECODE,
COUNTERRATE,
ADVANCEAMTPAID,
SOLIDORDER1,
ORDERNODTLS1,
SOLIDORDER2,
ORDERNODTLS2,
SOLIDORDER3,
ORDERNODTLS3,
SOLIDORDER4,
ORDERNODTLS4,
SOLIDORDER5,
ORDERNODTLS5,
PURCHASEFORACID,
SGDOPAYABLEFORACID,
EXECADVNO1,
EXECADVNO2,
EXECADVNO3,
EXECADVNO4,
EXECADVNO5,
PROMISETOPURCHASERECV,
PROMISETOPURCHASEDATE,
PROMISETOPURCHASEREFNO,
PURCHASEACCPTADVICE,
FINANCINGFORACID,
DEBITFINANCINGFORACID,
PREFIXFINANCINGLIMITID,
SUFFIXFINANCINGLIMITID,
ISLAMICRATECODE,
ISLAMICRATE,
SECTORCODE,
EXPCIFID,
EXPNAME,
EXPADDR1,
EXPADDR2,
EXPADDR3,
EXPCITY,
EXPSTATE,
EXPCNTRY,
EXPPINCODE,
BGCOLLBANKCODE,
BGCOLLBRANCHCODE,
BGCOLLBANKNAME,
BGCOLLBANKADDR1,
BGCOLLBANKADDR2,
BGCOLLBANKADDR3,
BGCOLLBANKCITY,
BGCOLLBANKSTATE,
BGCOLLBANKCNTRY,
BGCOLLBANKPINCODE,
BGCOLLBICCODE,
BGCOLLPARTYID,
BGCOLLADDRTYPE,
INTENDTOEXPORT,
INWARDDCREFNUM
FROM TF001
WHERE FUNC_CODE='A' and TRIM(BG_NUM) in ('GTE-00-000985','SBG11-04715-ABKD')
order by BG_NUM,to_date(event_date,'dd-mm-yyyy');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF001_SPEC_U_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF001_SPEC_U_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/UAE_MOCK4/TF001_U_SPEC.txt
SELECT
FUNC_CODE,
SOL_ID,
BG_NUM,
EVENT_AMT,
BG_EXPIRY_MONTH,
BG_EXPIRY_DAYS,
BG_EXPIRY_DATE,
BG_CLAIM_EXPIRY_MONTHS,
BG_CLAIM_EXPIRY_DAYS,
BG_CLAIM_EXPIRY_DATE,
BG_CHARGES_BORNE_BY,
BG_TYPE,
BG_CURRENCY,
CIF_ID,
EVENT_DATE,
PURPOSE_OF_GUARANTEE_TEXT,
BG_CLASS,
BG_EFFECTIVE_DATE,
APPLICABLE_RULES,
APPLICABLE_SUB_RULES,
BG_FRUCTIFIED_AMOUNT,
IS_ORIGINAL_BG_RECEIVED_FLAG,
BG_REMARKS,
COUNTER_BG_NUMBER,
IMPORT_LICENSE_NUM,
LICENSE_EXPIRYDATE,
CAPITALADEQUANCYCODE,
BG_PROVISION_AMOUNT,
FREE_CODE1,
FREE_CODE2,
FREE_CODE3,
BG_OPERATIVE_ACCOUNT_ID,
APPLICANT_NAME,
APPLICANT_ADDRESS1,
APPLICANT_ADDRESS2,
APPLICANT_ADDRESS3,
APPLICANT_CITY,
APPLICANT_STATE,
APPLICANT_COUNTRY,
APPLICANT_PIN_CODE,
APPLICANT_REF_NUM,
BG_RATE_CODE,
BG_RATE,
OTHER_BANK_REF_NUM,
PAYSYS_ID,
BENEFICIARY_CIF_ID,
BENEFICIARY_NAME,
BENEFICIARY_ADDRESS1,
BENEFICIARY_ADDRESS2,
BENEFICIARY_ADDRESS3,
BENEFICIARY_CITY,
BENEFICIARY_STATE,
BENEFICIARY_COUNTRY,
BENEFICIARY_PINCODE,
BENEFICIARY_TYPE,
BG_CORRESPONDENT_BANK,
BG_CORRESPONDENT_BRANCH,
BG_CORRESPONDENT_NAME,
BG_CORRESPONDENT_ADDRESS1,
BG_CORRESPONDENT_ADDRESS2,
BG_CORRESPONDENT_ADDRESS3,
BG_CORRESPONDENT_CITY,
BG_CORRESPONDENT_STATE,
BG_CORRESPONDENT_COUNTRY,
BG_CORRESPONDENT_PINCODE,
BIC_CODE,
PARTY_IDENTIFIER,
CORR_BANK_ADDRESS_TYPE,
BG_CRNCY_CODE,
DC_REF_NUM,
SG_BILL_EQUIVALENT_CRNCY_CODE,
SG_BILL_EQUIVALENT_AMOUNT,
BG_DC_RATE_CODE,
BG_DC_RATE,
SG_CONTINGENT_CRNCY_CODE,
SG_CONTINGENT_AMOUNT,
RETAIN_MIN_CONTINGENT_AMOUNT,
CONTINGENT_REVERSAL_EVENT,
MARGIN_REVERSAL_RATE_CODE,
TRUST_RECEIPT_NUM,
NO_OF_UNITS,
UNIT_VALUE,
COMMODITY_DETAILS_DESC,
COMMODITY_REMARKS,
BILL_LADING_NUM,
CARRIER_ID,
CARRIER_NAME,
CARRIER_ADDRESS1,
CARRIER_ADDRESS2,
CARRIER_ADDRESS3,
CARRIER_CITY,
CARRIER_STATE,
CARRIER_COUNTRY,
CARRIER_PINCODE,
ORDER_OF_CONSIGNEE,
PORT_OF_DESTINATION,
ACTUAL_SHIPMENT_DATE,
LIMITPREFIX,
LIMITSUFFIX,
LIMITMARGINPCNT,
RELLIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_REMARKS,
STATUS,
AMENDINITIATEDBY,
AUTORENEWAPPLICABLEFLG,
FINALEXPIRYDATE,
AUTORENEWNEXTCYCLE,
AUTORENEWFREQTYPE,
AUTORENEWFREQDATE,
AUTORENEWFREQWEEKNUM,
AUTORENEWFREQDAY,
ISFREQDAYONHOLIDAY,
BGCOUNTERGUARANTEERATECODE,
COUNTERRATE,
ADVANCEAMTPAID,
SOLIDORDER1,
ORDERNODTLS1,
SOLIDORDER2,
ORDERNODTLS2,
SOLIDORDER3,
ORDERNODTLS3,
SOLIDORDER4,
ORDERNODTLS4,
SOLIDORDER5,
ORDERNODTLS5,
PURCHASEFORACID,
SGDOPAYABLEFORACID,
EXECADVNO1,
EXECADVNO2,
EXECADVNO3,
EXECADVNO4,
EXECADVNO5,
PROMISETOPURCHASERECV,
PROMISETOPURCHASEDATE,
PROMISETOPURCHASEREFNO,
PURCHASEACCPTADVICE,
FINANCINGFORACID,
DEBITFINANCINGFORACID,
PREFIXFINANCINGLIMITID,
SUFFIXFINANCINGLIMITID,
ISLAMICRATECODE,
ISLAMICRATE,
SECTORCODE,
EXPCIFID,
EXPNAME,
EXPADDR1,
EXPADDR2,
EXPADDR3,
EXPCITY,
EXPSTATE,
EXPCNTRY,
EXPPINCODE,
BGCOLLBANKCODE,
BGCOLLBRANCHCODE,
BGCOLLBANKNAME,
BGCOLLBANKADDR1,
BGCOLLBANKADDR2,
BGCOLLBANKADDR3,
BGCOLLBANKCITY,
BGCOLLBANKSTATE,
BGCOLLBANKCNTRY,
BGCOLLBANKPINCODE,
BGCOLLBICCODE,
BGCOLLPARTYID,
BGCOLLADDRTYPE,
INTENDTOEXPORT,
INWARDDCREFNUM
FROM TF001
WHERE FUNC_CODE='U' AND TRIM(EVENT_AMT) IS NOT NULL AND EVENT_DATE='16-11-2016' AND AMENDMENT_INDICATOR='R'
order by BG_NUM,to_date(event_date,'dd-mm-yyyy');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF001_U_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF001_U_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/TF/MOCK5/TF001_U.txt
SELECT
FUNC_CODE,
SOL_ID,
BG_NUM,
EVENT_AMT,
BG_EXPIRY_MONTH,
BG_EXPIRY_DAYS,
BG_EXPIRY_DATE,
BG_CLAIM_EXPIRY_MONTHS,
BG_CLAIM_EXPIRY_DAYS,
BG_CLAIM_EXPIRY_DATE,
BG_CHARGES_BORNE_BY,
BG_TYPE,
BG_CURRENCY,
CIF_ID,
EVENT_DATE,
PURPOSE_OF_GUARANTEE_TEXT,
BG_CLASS,
BG_EFFECTIVE_DATE,
APPLICABLE_RULES,
APPLICABLE_SUB_RULES,
BG_FRUCTIFIED_AMOUNT,
IS_ORIGINAL_BG_RECEIVED_FLAG,
BG_REMARKS,
COUNTER_BG_NUMBER,
IMPORT_LICENSE_NUM,
LICENSE_EXPIRYDATE,
CAPITALADEQUANCYCODE,
BG_PROVISION_AMOUNT,
FREE_CODE1,
FREE_CODE2,
FREE_CODE3,
BG_OPERATIVE_ACCOUNT_ID,
APPLICANT_NAME,
APPLICANT_ADDRESS1,
APPLICANT_ADDRESS2,
APPLICANT_ADDRESS3,
APPLICANT_CITY,
APPLICANT_STATE,
APPLICANT_COUNTRY,
APPLICANT_PIN_CODE,
APPLICANT_REF_NUM,
BG_RATE_CODE,
BG_RATE,
OTHER_BANK_REF_NUM,
PAYSYS_ID,
BENEFICIARY_CIF_ID,
BENEFICIARY_NAME,
BENEFICIARY_ADDRESS1,
BENEFICIARY_ADDRESS2,
BENEFICIARY_ADDRESS3,
BENEFICIARY_CITY,
BENEFICIARY_STATE,
BENEFICIARY_COUNTRY,
BENEFICIARY_PINCODE,
BENEFICIARY_TYPE,
BG_CORRESPONDENT_BANK,
BG_CORRESPONDENT_BRANCH,
BG_CORRESPONDENT_NAME,
BG_CORRESPONDENT_ADDRESS1,
BG_CORRESPONDENT_ADDRESS2,
BG_CORRESPONDENT_ADDRESS3,
BG_CORRESPONDENT_CITY,
BG_CORRESPONDENT_STATE,
BG_CORRESPONDENT_COUNTRY,
BG_CORRESPONDENT_PINCODE,
BIC_CODE,
PARTY_IDENTIFIER,
CORR_BANK_ADDRESS_TYPE,
BG_CRNCY_CODE,
DC_REF_NUM,
SG_BILL_EQUIVALENT_CRNCY_CODE,
SG_BILL_EQUIVALENT_AMOUNT,
BG_DC_RATE_CODE,
BG_DC_RATE,
SG_CONTINGENT_CRNCY_CODE,
SG_CONTINGENT_AMOUNT,
RETAIN_MIN_CONTINGENT_AMOUNT,
CONTINGENT_REVERSAL_EVENT,
MARGIN_REVERSAL_RATE_CODE,
TRUST_RECEIPT_NUM,
NO_OF_UNITS,
UNIT_VALUE,
COMMODITY_DETAILS_DESC,
COMMODITY_REMARKS,
BILL_LADING_NUM,
CARRIER_ID,
CARRIER_NAME,
CARRIER_ADDRESS1,
CARRIER_ADDRESS2,
CARRIER_ADDRESS3,
CARRIER_CITY,
CARRIER_STATE,
CARRIER_COUNTRY,
CARRIER_PINCODE,
ORDER_OF_CONSIGNEE,
PORT_OF_DESTINATION,
ACTUAL_SHIPMENT_DATE,
LIMITPREFIX,
LIMITSUFFIX,
LIMITMARGINPCNT,
RELLIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_REMARKS,
STATUS,
AMENDINITIATEDBY,
AUTORENEWAPPLICABLEFLG,
FINALEXPIRYDATE,
AUTORENEWNEXTCYCLE,
AUTORENEWFREQTYPE,
AUTORENEWFREQDATE,
AUTORENEWFREQWEEKNUM,
AUTORENEWFREQDAY,
ISFREQDAYONHOLIDAY,
BGCOUNTERGUARANTEERATECODE,
COUNTERRATE,
ADVANCEAMTPAID,
SOLIDORDER1,
ORDERNODTLS1,
SOLIDORDER2,
ORDERNODTLS2,
SOLIDORDER3,
ORDERNODTLS3,
SOLIDORDER4,
ORDERNODTLS4,
SOLIDORDER5,
ORDERNODTLS5,
PURCHASEFORACID,
SGDOPAYABLEFORACID,
EXECADVNO1,
EXECADVNO2,
EXECADVNO3,
EXECADVNO4,
EXECADVNO5,
PROMISETOPURCHASERECV,
PROMISETOPURCHASEDATE,
PROMISETOPURCHASEREFNO,
PURCHASEACCPTADVICE,
FINANCINGFORACID,
DEBITFINANCINGFORACID,
PREFIXFINANCINGLIMITID,
SUFFIXFINANCINGLIMITID,
ISLAMICRATECODE,
ISLAMICRATE,
SECTORCODE,
EXPCIFID,
EXPNAME,
EXPADDR1,
EXPADDR2,
EXPADDR3,
EXPCITY,
EXPSTATE,
EXPCNTRY,
EXPPINCODE,
BGCOLLBANKCODE,
BGCOLLBRANCHCODE,
BGCOLLBANKNAME,
BGCOLLBANKADDR1,
BGCOLLBANKADDR2,
BGCOLLBANKADDR3,
BGCOLLBANKCITY,
BGCOLLBANKSTATE,
BGCOLLBANKCNTRY,
BGCOLLBANKPINCODE,
BGCOLLBICCODE,
BGCOLLPARTYID,
BGCOLLADDRTYPE,
INTENDTOEXPORT,
INWARDDCREFNUM
FROM TF001
WHERE FUNC_CODE='U' 
order by BG_NUM,to_date(event_date,'dd-mm-yyyy');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF002_A_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF002_A_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/TF/MOCK5/TF002_A.txt
SELECT 
FUNC_CODE,
SOL_ID,
BG_NUM,
EVENT_AMT,
BG_EXPIRY_MONTH,
BG_EXPIRY_DAYS,
BG_EXPIRY_DATE,
BG_CLAIM_EXPIRY_MONTHS,
BG_CLAIM_EXPIRY_DAYS,
BG_CLAIM_EXPIRY_DATE,
BG_CHARGES_BORNE_BY,
BG_TYPE,
BG_CURRENCY,
CIF_ID,
EVENT_DATE,
PURPOSE_OF_GUARANTEE_TEXT,
BG_CLASS,
APPLICABLE_RULES,
APPLICABLE_SUB_RULES,
BG_FRUCTIFIED_AMOUNT,
IS_ORIGINAL_BG_RECEIVED_FLAG,
BG_REMARKS,
BG_CLAIM_PAYABLE_BY_US,
COUNTER_BG_NUMBER,
IMPORT_LICENSE_NUM,
LICENSE_EXPIRYDATE,
CAPITALADEQUANCYCODE,
BG_PROVISION_AMOUNT,
FREE_CODE1,
FREE_CODE2,
FREE_CODE3,
BG_OPERATIVE_ACCOUNT_ID,
APPLICANT_NAME,
APPLICANT_ADDRESS1,
APPLICANT_ADDRESS2,
APPLICANT_ADDRESS3,
APPLICANT_CITY,
APPLICANT_STATE,
APPLICANT_COUNTRY,
APPLICANT_PIN_CODE,
APPLICANT_REF_NUM,
BG_RATE_CODE,
BG_RATE,
OTHER_BANK_REF_NUM,
PAYSYS_ID,
BENEFICIARY_CIF_ID,
BENEFICIARY_NAME,
BENEFICIARY_ADDRESS1,
BENEFICIARY_ADDRESS2,
BENEFICIARY_ADDRESS3,
BENEFICIARY_CITY,
BENEFICIARY_STATE,
BENEFICIARY_COUNTRY,
BENEFICIARY_PINCODE,
BENEFICIARY_TYPE,
BG_CORRESPONDENT_BANK,
BG_CORRESPONDENT_BRANCH,
BG_CORRESPONDENT_NAME,
BG_CORRESPONDENT_ADDRESS1,
BG_CORRESPONDENT_ADDRESS2,
BG_CORRESPONDENT_ADDRESS3,
BG_CORRESPONDENT_CITY,
BG_CORRESPONDENT_STATE,
BG_CORRESPONDENT_COUNTRY,
BG_CORRESPONDENT_PINCODE,
BIC_CODE,
PARTY_IDENTIFIER,
CORRES_BANK_ADD_TYPE,
BG_CRNCY_CODE,
LIMITPREFIX,
LIMITSUFFIX,
LIMITMARGINPCNT,
RELLIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_REMARKS,
STATUS,
AMENDINITIATEDBY,
AUTORENEWAPPLICABLEFLG,
FINALEXPIRYDATE,
AUTORENEWNEXTCYCLE,
AUTORENEWFREQTYPE,
AUTORENEWFREQDATE,
AUTORENEWFREQWEEKNUM,
AUTORENEWFREQDAY,
ISFREQDAYONHOLIDAY
FROM TF002
WHERE FUNC_CODE='A'
order by BG_NUM,to_date(event_date,'dd-mm-yyyy');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF002_SPEC_A_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF002_SPEC_A_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF002_A_TEST.txt
SELECT 
FUNC_CODE,
SOL_ID,
BG_NUM,
EVENT_AMT,
BG_EXPIRY_MONTH,
BG_EXPIRY_DAYS,
BG_EXPIRY_DATE,
BG_CLAIM_EXPIRY_MONTHS,
BG_CLAIM_EXPIRY_DAYS,
BG_CLAIM_EXPIRY_DATE,
BG_CHARGES_BORNE_BY,
BG_TYPE,
BG_CURRENCY,
CIF_ID,
EVENT_DATE,
PURPOSE_OF_GUARANTEE_TEXT,
BG_CLASS,
APPLICABLE_RULES,
APPLICABLE_SUB_RULES,
BG_FRUCTIFIED_AMOUNT,
IS_ORIGINAL_BG_RECEIVED_FLAG,
BG_REMARKS,
BG_CLAIM_PAYABLE_BY_US,
COUNTER_BG_NUMBER,
IMPORT_LICENSE_NUM,
LICENSE_EXPIRYDATE,
CAPITALADEQUANCYCODE,
BG_PROVISION_AMOUNT,
FREE_CODE1,
FREE_CODE2,
FREE_CODE3,
BG_OPERATIVE_ACCOUNT_ID,
APPLICANT_NAME,
APPLICANT_ADDRESS1,
APPLICANT_ADDRESS2,
APPLICANT_ADDRESS3,
APPLICANT_CITY,
APPLICANT_STATE,
APPLICANT_COUNTRY,
APPLICANT_PIN_CODE,
APPLICANT_REF_NUM,
BG_RATE_CODE,
BG_RATE,
OTHER_BANK_REF_NUM,
PAYSYS_ID,
BENEFICIARY_CIF_ID,
BENEFICIARY_NAME,
BENEFICIARY_ADDRESS1,
BENEFICIARY_ADDRESS2,
BENEFICIARY_ADDRESS3,
BENEFICIARY_CITY,
BENEFICIARY_STATE,
BENEFICIARY_COUNTRY,
BENEFICIARY_PINCODE,
BENEFICIARY_TYPE,
BG_CORRESPONDENT_BANK,
BG_CORRESPONDENT_BRANCH,
BG_CORRESPONDENT_NAME,
BG_CORRESPONDENT_ADDRESS1,
BG_CORRESPONDENT_ADDRESS2,
BG_CORRESPONDENT_ADDRESS3,
BG_CORRESPONDENT_CITY,
BG_CORRESPONDENT_STATE,
BG_CORRESPONDENT_COUNTRY,
BG_CORRESPONDENT_PINCODE,
BIC_CODE,
PARTY_IDENTIFIER,
CORRES_BANK_ADD_TYPE,
BG_CRNCY_CODE,
LIMITPREFIX,
LIMITSUFFIX,
LIMITMARGINPCNT,
RELLIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_REMARKS,
STATUS,
AMENDINITIATEDBY,
AUTORENEWAPPLICABLEFLG,
FINALEXPIRYDATE,
AUTORENEWNEXTCYCLE,
AUTORENEWFREQTYPE,
AUTORENEWFREQDATE,
AUTORENEWFREQWEEKNUM,
AUTORENEWFREQDAY,
ISFREQDAYONHOLIDAY
FROM TF002
WHERE FUNC_CODE='A' and trim(BG_NUM)='XBG11-04715-ABKD'
order by BG_NUM,to_date(event_date,'dd-mm-yyyy');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF002_SPEC_U_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF002_SPEC_U_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF002_U_TEST.txt
SELECT 
FUNC_CODE,
SOL_ID,
BG_NUM,
EVENT_AMT,
BG_EXPIRY_MONTH,
BG_EXPIRY_DAYS,
BG_EXPIRY_DATE,
BG_CLAIM_EXPIRY_MONTHS,
BG_CLAIM_EXPIRY_DAYS,
BG_CLAIM_EXPIRY_DATE,
BG_CHARGES_BORNE_BY,
BG_TYPE,
BG_CURRENCY,
CIF_ID,
EVENT_DATE,
PURPOSE_OF_GUARANTEE_TEXT,
BG_CLASS,
APPLICABLE_RULES,
APPLICABLE_SUB_RULES,
BG_FRUCTIFIED_AMOUNT,
IS_ORIGINAL_BG_RECEIVED_FLAG,
BG_REMARKS,
BG_CLAIM_PAYABLE_BY_US,
COUNTER_BG_NUMBER,
IMPORT_LICENSE_NUM,
LICENSE_EXPIRYDATE,
CAPITALADEQUANCYCODE,
BG_PROVISION_AMOUNT,
FREE_CODE1,
FREE_CODE2,
FREE_CODE3,
BG_OPERATIVE_ACCOUNT_ID,
APPLICANT_NAME,
APPLICANT_ADDRESS1,
APPLICANT_ADDRESS2,
APPLICANT_ADDRESS3,
APPLICANT_CITY,
APPLICANT_STATE,
APPLICANT_COUNTRY,
APPLICANT_PIN_CODE,
APPLICANT_REF_NUM,
BG_RATE_CODE,
BG_RATE,
OTHER_BANK_REF_NUM,
PAYSYS_ID,
BENEFICIARY_CIF_ID,
BENEFICIARY_NAME,
BENEFICIARY_ADDRESS1,
BENEFICIARY_ADDRESS2,
BENEFICIARY_ADDRESS3,
BENEFICIARY_CITY,
BENEFICIARY_STATE,
BENEFICIARY_COUNTRY,
BENEFICIARY_PINCODE,
BENEFICIARY_TYPE,
BG_CORRESPONDENT_BANK,
BG_CORRESPONDENT_BRANCH,
BG_CORRESPONDENT_NAME,
BG_CORRESPONDENT_ADDRESS1,
BG_CORRESPONDENT_ADDRESS2,
BG_CORRESPONDENT_ADDRESS3,
BG_CORRESPONDENT_CITY,
BG_CORRESPONDENT_STATE,
BG_CORRESPONDENT_COUNTRY,
BG_CORRESPONDENT_PINCODE,
BIC_CODE,
PARTY_IDENTIFIER,
CORRES_BANK_ADD_TYPE,
BG_CRNCY_CODE,
LIMITPREFIX,
LIMITSUFFIX,
LIMITMARGINPCNT,
RELLIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_REMARKS,
STATUS,
AMENDINITIATEDBY,
AUTORENEWAPPLICABLEFLG,
FINALEXPIRYDATE,
AUTORENEWNEXTCYCLE,
AUTORENEWFREQTYPE,
AUTORENEWFREQDATE,
AUTORENEWFREQWEEKNUM,
AUTORENEWFREQDAY,
ISFREQDAYONHOLIDAY
FROM TF002
WHERE FUNC_CODE='U' AND TRIM(EVENT_AMT) IS NOT NULL and trim(BG_NUM)='XBG11-04715-ABKD'
order by BG_NUM,to_date(event_date,'dd-mm-yyyy');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF002_U_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF002_U_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/TF/MOCK5/TF002_U.txt
SELECT 
FUNC_CODE,
SOL_ID,
BG_NUM,
EVENT_AMT,
BG_EXPIRY_MONTH,
BG_EXPIRY_DAYS,
BG_EXPIRY_DATE,
BG_CLAIM_EXPIRY_MONTHS,
BG_CLAIM_EXPIRY_DAYS,
BG_CLAIM_EXPIRY_DATE,
BG_CHARGES_BORNE_BY,
BG_TYPE,
BG_CURRENCY,
CIF_ID,
EVENT_DATE,
PURPOSE_OF_GUARANTEE_TEXT,
BG_CLASS,
APPLICABLE_RULES,
APPLICABLE_SUB_RULES,
BG_FRUCTIFIED_AMOUNT,
IS_ORIGINAL_BG_RECEIVED_FLAG,
BG_REMARKS,
BG_CLAIM_PAYABLE_BY_US,
COUNTER_BG_NUMBER,
IMPORT_LICENSE_NUM,
LICENSE_EXPIRYDATE,
CAPITALADEQUANCYCODE,
BG_PROVISION_AMOUNT,
FREE_CODE1,
FREE_CODE2,
FREE_CODE3,
BG_OPERATIVE_ACCOUNT_ID,
APPLICANT_NAME,
APPLICANT_ADDRESS1,
APPLICANT_ADDRESS2,
APPLICANT_ADDRESS3,
APPLICANT_CITY,
APPLICANT_STATE,
APPLICANT_COUNTRY,
APPLICANT_PIN_CODE,
APPLICANT_REF_NUM,
BG_RATE_CODE,
BG_RATE,
OTHER_BANK_REF_NUM,
PAYSYS_ID,
BENEFICIARY_CIF_ID,
BENEFICIARY_NAME,
BENEFICIARY_ADDRESS1,
BENEFICIARY_ADDRESS2,
BENEFICIARY_ADDRESS3,
BENEFICIARY_CITY,
BENEFICIARY_STATE,
BENEFICIARY_COUNTRY,
BENEFICIARY_PINCODE,
BENEFICIARY_TYPE,
BG_CORRESPONDENT_BANK,
BG_CORRESPONDENT_BRANCH,
BG_CORRESPONDENT_NAME,
BG_CORRESPONDENT_ADDRESS1,
BG_CORRESPONDENT_ADDRESS2,
BG_CORRESPONDENT_ADDRESS3,
BG_CORRESPONDENT_CITY,
BG_CORRESPONDENT_STATE,
BG_CORRESPONDENT_COUNTRY,
BG_CORRESPONDENT_PINCODE,
BIC_CODE,
PARTY_IDENTIFIER,
CORRES_BANK_ADD_TYPE,
BG_CRNCY_CODE,
LIMITPREFIX,
LIMITSUFFIX,
LIMITMARGINPCNT,
RELLIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_REMARKS,
STATUS,
AMENDINITIATEDBY,
AUTORENEWAPPLICABLEFLG,
FINALEXPIRYDATE,
AUTORENEWNEXTCYCLE,
AUTORENEWFREQTYPE,
AUTORENEWFREQDATE,
AUTORENEWFREQWEEKNUM,
AUTORENEWFREQDAY,
ISFREQDAYONHOLIDAY
FROM TF002
WHERE FUNC_CODE='U' 
order by BG_NUM,to_date(event_date,'dd-mm-yyyy');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF002_U_spool_2_REC.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF002_U_spool_2_REC.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF002_U_2_REC.txt
SELECT 
FUNC_CODE,
SOL_ID,
BG_NUM,
EVENT_AMT,
BG_EXPIRY_MONTH,
BG_EXPIRY_DAYS,
BG_EXPIRY_DATE,
BG_CLAIM_EXPIRY_MONTHS,
BG_CLAIM_EXPIRY_DAYS,
BG_CLAIM_EXPIRY_DATE,
BG_CHARGES_BORNE_BY,
BG_TYPE,
BG_CURRENCY,
CIF_ID,
EVENT_DATE,
PURPOSE_OF_GUARANTEE_TEXT,
BG_CLASS,
APPLICABLE_RULES,
APPLICABLE_SUB_RULES,
BG_FRUCTIFIED_AMOUNT,
IS_ORIGINAL_BG_RECEIVED_FLAG,
BG_REMARKS,
BG_CLAIM_PAYABLE_BY_US,
COUNTER_BG_NUMBER,
IMPORT_LICENSE_NUM,
LICENSE_EXPIRYDATE,
CAPITALADEQUANCYCODE,
BG_PROVISION_AMOUNT,
FREE_CODE1,
FREE_CODE2,
FREE_CODE3,
BG_OPERATIVE_ACCOUNT_ID,
APPLICANT_NAME,
APPLICANT_ADDRESS1,
APPLICANT_ADDRESS2,
APPLICANT_ADDRESS3,
APPLICANT_CITY,
APPLICANT_STATE,
APPLICANT_COUNTRY,
APPLICANT_PIN_CODE,
APPLICANT_REF_NUM,
BG_RATE_CODE,
BG_RATE,
OTHER_BANK_REF_NUM,
PAYSYS_ID,
BENEFICIARY_CIF_ID,
BENEFICIARY_NAME,
BENEFICIARY_ADDRESS1,
BENEFICIARY_ADDRESS2,
BENEFICIARY_ADDRESS3,
BENEFICIARY_CITY,
BENEFICIARY_STATE,
BENEFICIARY_COUNTRY,
BENEFICIARY_PINCODE,
BENEFICIARY_TYPE,
BG_CORRESPONDENT_BANK,
BG_CORRESPONDENT_BRANCH,
BG_CORRESPONDENT_NAME,
BG_CORRESPONDENT_ADDRESS1,
BG_CORRESPONDENT_ADDRESS2,
BG_CORRESPONDENT_ADDRESS3,
BG_CORRESPONDENT_CITY,
BG_CORRESPONDENT_STATE,
BG_CORRESPONDENT_COUNTRY,
BG_CORRESPONDENT_PINCODE,
BIC_CODE,
PARTY_IDENTIFIER,
CORRES_BANK_ADD_TYPE,
BG_CRNCY_CODE,
LIMITPREFIX,
LIMITSUFFIX,
LIMITMARGINPCNT,
RELLIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_REMARKS,
STATUS,
AMENDINITIATEDBY,
AUTORENEWAPPLICABLEFLG,
FINALEXPIRYDATE,
AUTORENEWNEXTCYCLE,
AUTORENEWFREQTYPE,
AUTORENEWFREQDATE,
AUTORENEWFREQWEEKNUM,
AUTORENEWFREQDAY,
ISFREQDAYONHOLIDAY
FROM TF002_SPEC
WHERE FUNC_CODE='U' AND TRIM(EVENT_AMT) IS NOT NULL
order by BG_NUM,to_date(event_date,'dd-mm-yyyy');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF003_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF003_spool.sql 
set head off
set feedback off
set term off
set lines 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF003.txt
SELECT 
FUNCCODE,
SOLID,
GUARANTEE_NO,
MARK_INVOKE_SRL_NUM,
MARK_INVOCATION_AMT,
EVENT_DATE_FOR_BG_EVENT_UPLOAD,
REMARKS,
ORIGINAL_BG_RECEIVED,
OPERATIVE_AC_ID,
LOAN_AC_ID,
INVOCATION_CREDIT_AC_ID,
RATE_CODE,
RATE,
VALUE_DATE,
SYSTEM_REMIT_MODE,
PAYSYSID,
REMITMODE,
DTLSOFCHRG,
FREE_CODE_1,
FREE_CODE_2,
FREE_CODE_3,
FREE_CODE_4,
FREE_CODE_5,
SLA_CATEGORY,
LOCAL_CORRESPONDENT_BANK,
LOCAL_CORRESPONDENT_BRANCH,
RECEIVER_CORRESPONDENT_BANK,
RECEIVER_CORRESPONDENT_BRANCH,
COLLECTION_CORRESPONDENT_BANK,
COLLECTION_CORR_BRANCH,
BENEFICIARY_CORRESPONDENT_BANK,
BENEFICIARY_CORR_BRANCH,
PAYMENT_DATE
FROM TF003
ORDER BY GUARANTEE_NO,
TO_DATE(EVENT_DATE_FOR_BG_EVENT_UPLOAD,'DD-MM-YYYY'),
MARK_INVOKE_SRL_NUM;
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF004_AMD_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF004_AMD_spool.sql 
set head off
set feedback off
set term off
set lines 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF004_amnd.txt
SELECT 
FUNC_CODE,
SOL_ID,
DC_NUM,
EVENT_AMOUNT,
EVENT_DATE,
DC_TYPE,
DC_CURRENCY_CIF_ID,
DC_CIF_ID,
DC_PARTY_NAME,
DC_PARTY_ADDRESS_1,
DC_PARTY_ADDRESS_2,
DC_PARTY_ADDRESS_3,
DC_PARTY_CITY,
DC_PARTY_STATE,
DC_PARTY_COUNTRY,
POSTAL_CODE,
DC_ACCOUNT_ID,
APPLICANT_REFERENCE_NUM,
TOLERANCE_LIMIT,
NEGATIVE_TOLERANCE_PCNT,
DC_RATE_CODE,
DC_RATE,
DC_INTEREST_PCNT,
DC_ADDITIONAL_AMT,
DC_INTEREST_REMARKS,
DC_MAX_CREDIT,
DC_PURCHASE_ORDER_NO,
DC_PORD_DATE,
DC_PUR_ORDER_LAST_AMEND_DATE,
DC_TOTAL_NUM_OF_AMENDMENTS,
PRE_ADVICE_FLAG,
PRE_ADVICE_DATE,
PRE_ADVICE_REF_NUM,
OTHER_BANK_REF_NUM,
DC_PAYSYS_ID,
DC_BENEFICIARY_CIF_ID,
DC_BENEFICIARY_NAME,
DC_BENEFICIARY_ADDRESS1,
DC_BENEFICIARY_ADDRESS2,
DC_BENEFICIARY_ADDRESS3,
DC_BENEFICIARY_CITY,
DC_BENEFICIARY_STATE,
DC_BENEFICIARY_COUNTRY,
DC_BENEFICIARY_PINCODE,
DC_APPLICANT_BRANCH,
DC_APPLICANT_BANK,
DC_APPLICANT_BANK_NAME,
DC_APPLICANT_BANK_ADDRESS1,
DC_APPLICANT_BANK_ADDRESS2,
DC_APPLICANT_BANK_ADDRESS3,
DC_APPLICANT_BANK_CITY,
DC_APPLICANT_BANK_STATE,
DC_APPLICANT_BANK_COUNTRY,
DC_APPLICANT_BANK_PINCODE,
DC_APPLICANT_BIC_CODE,
DC_PARTY_IDENTIFIER,
DC_APPLICANT_BANK_ADDRESS_TYPE,
DC_ISSUING_BRANCH,
DC_ISSUING_BANK,
DC_ISSUING_NAME,
DC_ISSUING_ADDRESS_1,
DC_ISSUING_ADDRESS_2,
DC_ISSUING_ADDRESS_3,
DC_ISSUING_CITY,
DC_ISSUING_STATE,
DC_ISSUING_COUNTRY,
DC_ISSUING_PIN_CODE,
DC_ISSUE_BIC_CODE,
DC_ISSUE_PARTY_ID,
DC_ISSUE_REF_NO,
DC_ISSUE_ADDRESS_TYPE,
DC_ADVISING_BRANCH_CODE,
DC_ADVISING_BANK_CODE,
DC_ADVISING_NAME,
DC_ADVISING_ADDRESS_1,
DC_ADVISING_ADDRESS_2,
DC_ADVISING_ADDRESS_3,
DC_ADVISING_CITY,
DC_ADVISING_STATE,
DC_ADVISING_COUNTRY,
DC_ADVISING_PIN_CODE,
DC_ADVISING_BIC_CODE,
DC_ADVISING_PARTY_ID,
DC_ADVISING_ADDRESS_TYPE,
DC_DRAWEE_BRANCH,
DC_DRAWEE_BANK,
DC_DRAWEE_NAME,
DC_DRAWEE_ADDRESS_1,
DC_DRAWEE_ADDRESS_2,
DC_DRAWEE_ADDRESS_3,
DC_DRAWEE_CITY,
DC_DRAWEE_STATE,
DC_DRAWEE_COUNTRY,
DC_DRAWEE_PIN_CODE,
DC_DRAWEE_BIC_CODE,
DC_DRAWEE_PARTY_ID,
DC_DRAWEE_ADDRESS_TYPE,
DC_AVAILABLE_WITH_BRANCH,
DC_AVAILABLE_WITH_BANK,
DC_AVAILABLE_WITH_NAME,
DC_AVAILABLE_WITH_ADDRESS_1,
DC_AVAILABLE_WITH_ADDRESS_2,
DC_AVAILABLE_WITH_ADDRESS_3,
DC_AVAILABLE_WITH_CITY,
DC_AVAILABLE_WITH_STATE,
DC_AVAILABLE_WITH_COUNTRY,
DC_AVAILABLE_WITH_PIN_CODE,
DC_AVAILABLE_WITH_BIC_CODE,
DC_AVAILABLE_WITH_PARTY_ID,
DC_AVAILABLE_BY,
DC_AVAILABLE_WITH_ADDRESS_TYPE,
DC_REIMBURSING_BRANCH,
DC_REIMBURSING_BANK,
DC_REIMBURSING_NAME,
DC_REIMBURSING_ADDRESS_1,
DC_REIMBURSING_ADDRESS_2,
DC_REIMBURSING_ADDRESS_3,
DC_REIMBURSING_CITY,
DC_REIMBURSING_STATE,
DC_REIMBURSING_COUNTRY,
DC_REIMBURSING_PIN_CODE,
DC_REIMBURSING_BIC_CODE,
DC_REIMBURSING_PARTY_ID,
DC_REIMBURSING_ADDRESS_TYPE,
DC_ADVISE_THROUGH_BRANCH,
DC_ADVISE_THROUGH_BANK,
DC_ADVISE_THROUGH_NAME,
DC_ADVISE_THROUGH_ADDRESS_1,
DC_ADVISE_THROUGH_ADDRESS_2,
DC_ADVISE_THROUGH_ADDRESS_3,
DC_ADVISE_THROUGH_CITY,
DC_ADVISE_THROUGH_STATE,
DC_ADVISE_THROUGH_COUNTRY,
DC_ADVISE_THROUGH_PIN_CODE,
DC_ADVISE_THROUGH_BIC_CODE,
DC_ADVISE_THROUGH_PARTY_ID,
DC_ADVISE_THROUGH_LOCATION,
DC_ADVISE_THROUGH_ADDRESS_TYPE,
PARTIAL_SHIPMENT_FLAG,
TRANS_SHIPMENT_FLAG,
LAST_SHIPMENT_DATE,
DC_NEGOTIATION_PERIOD,
SHIPMENT_MODE,
SHIPMENT_TERM,
DISPATCH_ORIGIN_PORT_CODE,
DISPATCH_DESTINATION_PORT_CODE,
PORT_OF_ORIGIN,
PORT_OF_DESTINATION,
HOUSE_AIR_BILL_FLAG,
SHIPMENT_DESC,
AGENT_CODE,
ORIGIN_OF_GOODS,
COMMODITY_CODE,
LICENSE_CODE,
INSURANCE_PCNT,
INSURED_AMOUNT,
INSURED_BY,
POLICY_NUM,
POLICY_DATE,
INSURED_COMPANY,
PAYABLE_AT,
PREMIUM_AMT,
DC_REIMBURSEMENT_MSG_FLAG,
DC_REIMB_APPLICABLE_RULES,
NOSTRO_ACCT_NUM,
DC_CHARGES_BORNE_BY,
DC_CONFIRMATION_INSTRUCTIONS,
DC_CONFIRMATION_REQUIRED_BY,
DC_AGENT_COMMISSION_PCNT,
CAPITAL_ADEQUACY_CODE,
REVOCABLE_FLAG,
DC_IRREVOCABLE_FLAG,
DC_TRANSFERRABLE_FLAG,
DC_STANBY_MODE_FLAG,
DC_REVOLVING_FLAG,
DC_BACK_TO_BACK_FLAG,
DEFERRED_DC_FLAG,
RED_CLAUSE_DC_FLAG,
REINSTATEMENT_TYPE,
DC_REINSTATEMENT_DAY,
MAX_REINSTATEMENTS,
REINSTATEMENT_REMARKS,
DC_BACK_TO_BACK_REF_NUM,
DC_APPLICABLE_RULE,
DC_APPLICABLE_SUB_RULE,
DC_TENOR,
DC_EXPIRY_DATE,
DC_PLACE_OF_EXPIRY,
LIMITPREFIX,
LIMIT_SUFFIX,
LIMIT_MARGIN_PCNT,
INTERNAL_LIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_STATUS,
AMENDMENT_REMARKS,
USANCE_PERIOD,
AMEND_TENOR_DETAILS,
REMITTANCESENTBY,
REMITID,
ADVAMT,
PAYMENTDATE,
ADVREMARKS,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
BENEFACCTID,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
MUDARABAHTYPE,
BKINVAMTTRANTOCUSTACCT,
MUDARABAINVSTACCT,
CUSTINVSTPCNT,
BKPRFTSHRPCNT,
BKLOSSSHRPCNT,
GOODSPURTHIRDPARTY,
THIRDPARTYCIFID,
THIRDPARTYNAME,
THIRDPARTYADDR1,
THIRDPARTYADDR2,
THIRDPARTYADDR3,
THIRDPARTYCITY,
THIRDPARTYSTATE,
THIRDPARTYCNTRY,
THIRDPARTYPINCODE,
THIRDPARTYACCTID,
INTENDTOEXPORT,
INWARDDCREFNUM,
CAPITALGOODSTRAN,
DUEDATEIND,
AUTOREINSTATEFLG,
COLLAUTOREINSCHRGS,
TENORMONTHS,
TENORDAYS
FROM TF004_AMEND;
spool off; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF004_AP_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF004_AP_spool.sql 
set head off
set feedback off
set term off
set lines 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/TF/MOCK5/TF004_AP.txt
SELECT 
FUNC_CODE,
SOL_ID,
DC_NUM,
EVENT_AMOUNT,
EVENT_DATE,
DC_TYPE,
DC_CURRENCY_CIF_ID,
DC_CIF_ID,
DC_PARTY_NAME,
DC_PARTY_ADDRESS_1,
DC_PARTY_ADDRESS_2,
DC_PARTY_ADDRESS_3,
DC_PARTY_CITY,
DC_PARTY_STATE,
DC_PARTY_COUNTRY,
POSTAL_CODE,
DC_ACCOUNT_ID,
APPLICANT_REFERENCE_NUM,
TOLERANCE_LIMIT,
NEGATIVE_TOLERANCE_PCNT,
DC_RATE_CODE,
DC_RATE,
DC_INTEREST_PCNT,
DC_ADDITIONAL_AMT,
DC_INTEREST_REMARKS,
DC_MAX_CREDIT,
DC_PURCHASE_ORDER_NO,
DC_PORD_DATE,
DC_PUR_ORDER_LAST_AMEND_DATE,
DC_TOTAL_NUM_OF_AMENDMENTS,
PRE_ADVICE_FLAG,
PRE_ADVICE_DATE,
PRE_ADVICE_REF_NUM,
OTHER_BANK_REF_NUM,
DC_PAYSYS_ID,
DC_BENEFICIARY_CIF_ID,
DC_BENEFICIARY_NAME,
DC_BENEFICIARY_ADDRESS1,
DC_BENEFICIARY_ADDRESS2,
DC_BENEFICIARY_ADDRESS3,
DC_BENEFICIARY_CITY,
DC_BENEFICIARY_STATE,
DC_BENEFICIARY_COUNTRY,
DC_BENEFICIARY_PINCODE,
DC_APPLICANT_BRANCH,
DC_APPLICANT_BANK,
DC_APPLICANT_BANK_NAME,
DC_APPLICANT_BANK_ADDRESS1,
DC_APPLICANT_BANK_ADDRESS2,
DC_APPLICANT_BANK_ADDRESS3,
DC_APPLICANT_BANK_CITY,
DC_APPLICANT_BANK_STATE,
DC_APPLICANT_BANK_COUNTRY,
DC_APPLICANT_BANK_PINCODE,
DC_APPLICANT_BIC_CODE,
DC_PARTY_IDENTIFIER,
DC_APPLICANT_BANK_ADDRESS_TYPE,
DC_ISSUING_BRANCH,
DC_ISSUING_BANK,
DC_ISSUING_NAME,
DC_ISSUING_ADDRESS_1,
DC_ISSUING_ADDRESS_2,
DC_ISSUING_ADDRESS_3,
DC_ISSUING_CITY,
DC_ISSUING_STATE,
DC_ISSUING_COUNTRY,
DC_ISSUING_PIN_CODE,
DC_ISSUE_BIC_CODE,
DC_ISSUE_PARTY_ID,
DC_ISSUE_REF_NO,
DC_ISSUE_ADDRESS_TYPE,
DC_ADVISING_BRANCH_CODE,
DC_ADVISING_BANK_CODE,
DC_ADVISING_NAME,
DC_ADVISING_ADDRESS_1,
DC_ADVISING_ADDRESS_2,
DC_ADVISING_ADDRESS_3,
DC_ADVISING_CITY,
DC_ADVISING_STATE,
DC_ADVISING_COUNTRY,
DC_ADVISING_PIN_CODE,
DC_ADVISING_BIC_CODE,
DC_ADVISING_PARTY_ID,
DC_ADVISING_ADDRESS_TYPE,
DC_DRAWEE_BRANCH,
DC_DRAWEE_BANK,
DC_DRAWEE_NAME,
DC_DRAWEE_ADDRESS_1,
DC_DRAWEE_ADDRESS_2,
DC_DRAWEE_ADDRESS_3,
DC_DRAWEE_CITY,
DC_DRAWEE_STATE,
DC_DRAWEE_COUNTRY,
DC_DRAWEE_PIN_CODE,
DC_DRAWEE_BIC_CODE,
DC_DRAWEE_PARTY_ID,
DC_DRAWEE_ADDRESS_TYPE,
DC_AVAILABLE_WITH_BRANCH,
DC_AVAILABLE_WITH_BANK,
DC_AVAILABLE_WITH_NAME,
DC_AVAILABLE_WITH_ADDRESS_1,
DC_AVAILABLE_WITH_ADDRESS_2,
DC_AVAILABLE_WITH_ADDRESS_3,
DC_AVAILABLE_WITH_CITY,
DC_AVAILABLE_WITH_STATE,
DC_AVAILABLE_WITH_COUNTRY,
DC_AVAILABLE_WITH_PIN_CODE,
DC_AVAILABLE_WITH_BIC_CODE,
DC_AVAILABLE_WITH_PARTY_ID,
DC_AVAILABLE_BY,
DC_AVAILABLE_WITH_ADDRESS_TYPE,
DC_REIMBURSING_BRANCH,
DC_REIMBURSING_BANK,
DC_REIMBURSING_NAME,
DC_REIMBURSING_ADDRESS_1,
DC_REIMBURSING_ADDRESS_2,
DC_REIMBURSING_ADDRESS_3,
DC_REIMBURSING_CITY,
DC_REIMBURSING_STATE,
DC_REIMBURSING_COUNTRY,
DC_REIMBURSING_PIN_CODE,
DC_REIMBURSING_BIC_CODE,
DC_REIMBURSING_PARTY_ID,
DC_REIMBURSING_ADDRESS_TYPE,
DC_ADVISE_THROUGH_BRANCH,
DC_ADVISE_THROUGH_BANK,
DC_ADVISE_THROUGH_NAME,
DC_ADVISE_THROUGH_ADDRESS_1,
DC_ADVISE_THROUGH_ADDRESS_2,
DC_ADVISE_THROUGH_ADDRESS_3,
DC_ADVISE_THROUGH_CITY,
DC_ADVISE_THROUGH_STATE,
DC_ADVISE_THROUGH_COUNTRY,
DC_ADVISE_THROUGH_PIN_CODE,
DC_ADVISE_THROUGH_BIC_CODE,
DC_ADVISE_THROUGH_PARTY_ID,
DC_ADVISE_THROUGH_LOCATION,
DC_ADVISE_THROUGH_ADDRESS_TYPE,
PARTIAL_SHIPMENT_FLAG,
TRANS_SHIPMENT_FLAG,
LAST_SHIPMENT_DATE,
DC_NEGOTIATION_PERIOD,
SHIPMENT_MODE,
SHIPMENT_TERM,
DISPATCH_ORIGIN_PORT_CODE,
DISPATCH_DESTINATION_PORT_CODE,
PORT_OF_ORIGIN,
PORT_OF_DESTINATION,
HOUSE_AIR_BILL_FLAG,
SHIPMENT_DESC,
AGENT_CODE,
ORIGIN_OF_GOODS,
COMMODITY_CODE,
LICENSE_CODE,
INSURANCE_PCNT,
INSURED_AMOUNT,
INSURED_BY,
POLICY_NUM,
POLICY_DATE,
INSURED_COMPANY,
PAYABLE_AT,
PREMIUM_AMT,
DC_REIMBURSEMENT_MSG_FLAG,
DC_REIMB_APPLICABLE_RULES,
NOSTRO_ACCT_NUM,
DC_CHARGES_BORNE_BY,
DC_CONFIRMATION_INSTRUCTIONS,
DC_CONFIRMATION_REQUIRED_BY,
DC_AGENT_COMMISSION_PCNT,
CAPITAL_ADEQUACY_CODE,
REVOCABLE_FLAG,
DC_IRREVOCABLE_FLAG,
DC_TRANSFERRABLE_FLAG,
DC_STANBY_MODE_FLAG,
DC_REVOLVING_FLAG,
DC_BACK_TO_BACK_FLAG,
DEFERRED_DC_FLAG,
RED_CLAUSE_DC_FLAG,
REINSTATEMENT_TYPE,
DC_REINSTATEMENT_DAY,
MAX_REINSTATEMENTS,
REINSTATEMENT_REMARKS,
DC_BACK_TO_BACK_REF_NUM,
DC_APPLICABLE_RULE,
DC_APPLICABLE_SUB_RULE,
DC_TENOR,
DC_EXPIRY_DATE,
DC_PLACE_OF_EXPIRY,
LIMITPREFIX,
LIMIT_SUFFIX,
LIMIT_MARGIN_PCNT,
INTERNAL_LIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_STATUS,
AMENDMENT_REMARKS,
USANCE_PERIOD,
AMEND_TENOR_DETAILS,
REMITTANCESENTBY,
REMITID,
ADVAMT,
PAYMENTDATE,
ADVREMARKS,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
BENEFACCTID,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
MUDARABAHTYPE,
BKINVAMTTRANTOCUSTACCT,
MUDARABAINVSTACCT,
CUSTINVSTPCNT,
BKPRFTSHRPCNT,
BKLOSSSHRPCNT,
GOODSPURTHIRDPARTY,
THIRDPARTYCIFID,
THIRDPARTYNAME,
THIRDPARTYADDR1,
THIRDPARTYADDR2,
THIRDPARTYADDR3,
THIRDPARTYCITY,
THIRDPARTYSTATE,
THIRDPARTYCNTRY,
THIRDPARTYPINCODE,
THIRDPARTYACCTID,
INTENDTOEXPORT,
INWARDDCREFNUM,
CAPITALGOODSTRAN,
DUEDATEIND,
AUTOREINSTATEFLG,
COLLAUTOREINSCHRGS,
TENORMONTHS,
TENORDAYS
FROM TF004
where FUNC_CODE!='S' AND AMENDMENT_INDICATOR='E' 
order by SOL_ID,DC_NUM,to_date(EVENT_DATE,'DD-MM-YYYY');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF004_AP_spool_new.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF004_AP_spool_new.sql 
set head off
set feedback off
set term off
set lines 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF004_AP_NEW.txt
SELECT 
FUNC_CODE,
SOL_ID,
DC_NUM,
EVENT_AMOUNT,
EVENT_DATE,
DC_TYPE,
DC_CURRENCY_CIF_ID,
DC_CIF_ID,
DC_PARTY_NAME,
DC_PARTY_ADDRESS_1,
DC_PARTY_ADDRESS_2,
DC_PARTY_ADDRESS_3,
DC_PARTY_CITY,
DC_PARTY_STATE,
DC_PARTY_COUNTRY,
POSTAL_CODE,
DC_ACCOUNT_ID,
APPLICANT_REFERENCE_NUM,
TOLERANCE_LIMIT,
NEGATIVE_TOLERANCE_PCNT,
DC_RATE_CODE,
DC_RATE,
DC_INTEREST_PCNT,
DC_ADDITIONAL_AMT,
DC_INTEREST_REMARKS,
DC_MAX_CREDIT,
DC_PURCHASE_ORDER_NO,
DC_PORD_DATE,
DC_PUR_ORDER_LAST_AMEND_DATE,
DC_TOTAL_NUM_OF_AMENDMENTS,
PRE_ADVICE_FLAG,
PRE_ADVICE_DATE,
PRE_ADVICE_REF_NUM,
OTHER_BANK_REF_NUM,
DC_PAYSYS_ID,
DC_BENEFICIARY_CIF_ID,
DC_BENEFICIARY_NAME,
DC_BENEFICIARY_ADDRESS1,
DC_BENEFICIARY_ADDRESS2,
DC_BENEFICIARY_ADDRESS3,
DC_BENEFICIARY_CITY,
DC_BENEFICIARY_STATE,
DC_BENEFICIARY_COUNTRY,
DC_BENEFICIARY_PINCODE,
DC_APPLICANT_BRANCH,
DC_APPLICANT_BANK,
DC_APPLICANT_BANK_NAME,
DC_APPLICANT_BANK_ADDRESS1,
DC_APPLICANT_BANK_ADDRESS2,
DC_APPLICANT_BANK_ADDRESS3,
DC_APPLICANT_BANK_CITY,
DC_APPLICANT_BANK_STATE,
DC_APPLICANT_BANK_COUNTRY,
DC_APPLICANT_BANK_PINCODE,
DC_APPLICANT_BIC_CODE,
DC_PARTY_IDENTIFIER,
DC_APPLICANT_BANK_ADDRESS_TYPE,
DC_ISSUING_BRANCH,
DC_ISSUING_BANK,
DC_ISSUING_NAME,
DC_ISSUING_ADDRESS_1,
DC_ISSUING_ADDRESS_2,
DC_ISSUING_ADDRESS_3,
DC_ISSUING_CITY,
DC_ISSUING_STATE,
DC_ISSUING_COUNTRY,
DC_ISSUING_PIN_CODE,
DC_ISSUE_BIC_CODE,
DC_ISSUE_PARTY_ID,
DC_ISSUE_REF_NO,
DC_ISSUE_ADDRESS_TYPE,
DC_ADVISING_BRANCH_CODE,
DC_ADVISING_BANK_CODE,
DC_ADVISING_NAME,
DC_ADVISING_ADDRESS_1,
DC_ADVISING_ADDRESS_2,
DC_ADVISING_ADDRESS_3,
DC_ADVISING_CITY,
DC_ADVISING_STATE,
DC_ADVISING_COUNTRY,
DC_ADVISING_PIN_CODE,
DC_ADVISING_BIC_CODE,
DC_ADVISING_PARTY_ID,
DC_ADVISING_ADDRESS_TYPE,
DC_DRAWEE_BRANCH,
DC_DRAWEE_BANK,
DC_DRAWEE_NAME,
DC_DRAWEE_ADDRESS_1,
DC_DRAWEE_ADDRESS_2,
DC_DRAWEE_ADDRESS_3,
DC_DRAWEE_CITY,
DC_DRAWEE_STATE,
DC_DRAWEE_COUNTRY,
DC_DRAWEE_PIN_CODE,
DC_DRAWEE_BIC_CODE,
DC_DRAWEE_PARTY_ID,
DC_DRAWEE_ADDRESS_TYPE,
DC_AVAILABLE_WITH_BRANCH,
DC_AVAILABLE_WITH_BANK,
DC_AVAILABLE_WITH_NAME,
DC_AVAILABLE_WITH_ADDRESS_1,
DC_AVAILABLE_WITH_ADDRESS_2,
DC_AVAILABLE_WITH_ADDRESS_3,
DC_AVAILABLE_WITH_CITY,
DC_AVAILABLE_WITH_STATE,
DC_AVAILABLE_WITH_COUNTRY,
DC_AVAILABLE_WITH_PIN_CODE,
DC_AVAILABLE_WITH_BIC_CODE,
DC_AVAILABLE_WITH_PARTY_ID,
DC_AVAILABLE_BY,
DC_AVAILABLE_WITH_ADDRESS_TYPE,
DC_REIMBURSING_BRANCH,
DC_REIMBURSING_BANK,
DC_REIMBURSING_NAME,
DC_REIMBURSING_ADDRESS_1,
DC_REIMBURSING_ADDRESS_2,
DC_REIMBURSING_ADDRESS_3,
DC_REIMBURSING_CITY,
DC_REIMBURSING_STATE,
DC_REIMBURSING_COUNTRY,
DC_REIMBURSING_PIN_CODE,
DC_REIMBURSING_BIC_CODE,
DC_REIMBURSING_PARTY_ID,
DC_REIMBURSING_ADDRESS_TYPE,
DC_ADVISE_THROUGH_BRANCH,
DC_ADVISE_THROUGH_BANK,
DC_ADVISE_THROUGH_NAME,
DC_ADVISE_THROUGH_ADDRESS_1,
DC_ADVISE_THROUGH_ADDRESS_2,
DC_ADVISE_THROUGH_ADDRESS_3,
DC_ADVISE_THROUGH_CITY,
DC_ADVISE_THROUGH_STATE,
DC_ADVISE_THROUGH_COUNTRY,
DC_ADVISE_THROUGH_PIN_CODE,
DC_ADVISE_THROUGH_BIC_CODE,
DC_ADVISE_THROUGH_PARTY_ID,
DC_ADVISE_THROUGH_LOCATION,
DC_ADVISE_THROUGH_ADDRESS_TYPE,
PARTIAL_SHIPMENT_FLAG,
TRANS_SHIPMENT_FLAG,
LAST_SHIPMENT_DATE,
DC_NEGOTIATION_PERIOD,
SHIPMENT_MODE,
SHIPMENT_TERM,
DISPATCH_ORIGIN_PORT_CODE,
DISPATCH_DESTINATION_PORT_CODE,
PORT_OF_ORIGIN,
PORT_OF_DESTINATION,
HOUSE_AIR_BILL_FLAG,
SHIPMENT_DESC,
AGENT_CODE,
ORIGIN_OF_GOODS,
COMMODITY_CODE,
LICENSE_CODE,
INSURANCE_PCNT,
INSURED_AMOUNT,
INSURED_BY,
POLICY_NUM,
POLICY_DATE,
INSURED_COMPANY,
PAYABLE_AT,
PREMIUM_AMT,
DC_REIMBURSEMENT_MSG_FLAG,
DC_REIMB_APPLICABLE_RULES,
NOSTRO_ACCT_NUM,
DC_CHARGES_BORNE_BY,
DC_CONFIRMATION_INSTRUCTIONS,
DC_CONFIRMATION_REQUIRED_BY,
DC_AGENT_COMMISSION_PCNT,
CAPITAL_ADEQUACY_CODE,
REVOCABLE_FLAG,
DC_IRREVOCABLE_FLAG,
DC_TRANSFERRABLE_FLAG,
DC_STANBY_MODE_FLAG,
DC_REVOLVING_FLAG,
DC_BACK_TO_BACK_FLAG,
DEFERRED_DC_FLAG,
RED_CLAUSE_DC_FLAG,
REINSTATEMENT_TYPE,
DC_REINSTATEMENT_DAY,
MAX_REINSTATEMENTS,
REINSTATEMENT_REMARKS,
DC_BACK_TO_BACK_REF_NUM,
DC_APPLICABLE_RULE,
DC_APPLICABLE_SUB_RULE,
DC_TENOR,
DC_EXPIRY_DATE,
DC_PLACE_OF_EXPIRY,
LIMITPREFIX,
LIMIT_SUFFIX,
LIMIT_MARGIN_PCNT,
INTERNAL_LIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_STATUS,
AMENDMENT_REMARKS,
USANCE_PERIOD,
AMEND_TENOR_DETAILS,
REMITTANCESENTBY,
REMITID,
ADVAMT,
PAYMENTDATE,
ADVREMARKS,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
BENEFACCTID,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
MUDARABAHTYPE,
BKINVAMTTRANTOCUSTACCT,
MUDARABAINVSTACCT,
CUSTINVSTPCNT,
BKPRFTSHRPCNT,
BKLOSSSHRPCNT,
GOODSPURTHIRDPARTY,
THIRDPARTYCIFID,
THIRDPARTYNAME,
THIRDPARTYADDR1,
THIRDPARTYADDR2,
THIRDPARTYADDR3,
THIRDPARTYCITY,
THIRDPARTYSTATE,
THIRDPARTYCNTRY,
THIRDPARTYPINCODE,
THIRDPARTYACCTID,
INTENDTOEXPORT,
INWARDDCREFNUM,
CAPITALGOODSTRAN,
DUEDATEIND,
AUTOREINSTATEFLG,
COLLAUTOREINSCHRGS,
TENORMONTHS,
TENORDAYS
FROM TF004_NEW
where FUNC_CODE!='S' AND AMENDMENT_INDICATOR='E'
order by SOL_ID,DC_NUM,to_date(EVENT_DATE,'DD-MM-YYYY');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF004_AR_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF004_AR_spool.sql 
set head off
set feedback off
set term off
set lines 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/TF/MOCK5/TF004_AR.txt
SELECT 
FUNC_CODE,
SOL_ID,
DC_NUM,
EVENT_AMOUNT,
EVENT_DATE,
DC_TYPE,
DC_CURRENCY_CIF_ID,
DC_CIF_ID,
DC_PARTY_NAME,
DC_PARTY_ADDRESS_1,
DC_PARTY_ADDRESS_2,
DC_PARTY_ADDRESS_3,
DC_PARTY_CITY,
DC_PARTY_STATE,
DC_PARTY_COUNTRY,
POSTAL_CODE,
DC_ACCOUNT_ID,
APPLICANT_REFERENCE_NUM,
TOLERANCE_LIMIT,
NEGATIVE_TOLERANCE_PCNT,
DC_RATE_CODE,
DC_RATE,
DC_INTEREST_PCNT,
DC_ADDITIONAL_AMT,
DC_INTEREST_REMARKS,
DC_MAX_CREDIT,
DC_PURCHASE_ORDER_NO,
DC_PORD_DATE,
DC_PUR_ORDER_LAST_AMEND_DATE,
DC_TOTAL_NUM_OF_AMENDMENTS,
PRE_ADVICE_FLAG,
PRE_ADVICE_DATE,
PRE_ADVICE_REF_NUM,
OTHER_BANK_REF_NUM,
DC_PAYSYS_ID,
DC_BENEFICIARY_CIF_ID,
DC_BENEFICIARY_NAME,
DC_BENEFICIARY_ADDRESS1,
DC_BENEFICIARY_ADDRESS2,
DC_BENEFICIARY_ADDRESS3,
DC_BENEFICIARY_CITY,
DC_BENEFICIARY_STATE,
DC_BENEFICIARY_COUNTRY,
DC_BENEFICIARY_PINCODE,
DC_APPLICANT_BRANCH,
DC_APPLICANT_BANK,
DC_APPLICANT_BANK_NAME,
DC_APPLICANT_BANK_ADDRESS1,
DC_APPLICANT_BANK_ADDRESS2,
DC_APPLICANT_BANK_ADDRESS3,
DC_APPLICANT_BANK_CITY,
DC_APPLICANT_BANK_STATE,
DC_APPLICANT_BANK_COUNTRY,
DC_APPLICANT_BANK_PINCODE,
DC_APPLICANT_BIC_CODE,
DC_PARTY_IDENTIFIER,
DC_APPLICANT_BANK_ADDRESS_TYPE,
DC_ISSUING_BRANCH,
DC_ISSUING_BANK,
DC_ISSUING_NAME,
DC_ISSUING_ADDRESS_1,
DC_ISSUING_ADDRESS_2,
DC_ISSUING_ADDRESS_3,
DC_ISSUING_CITY,
DC_ISSUING_STATE,
DC_ISSUING_COUNTRY,
DC_ISSUING_PIN_CODE,
DC_ISSUE_BIC_CODE,
DC_ISSUE_PARTY_ID,
DC_ISSUE_REF_NO,
DC_ISSUE_ADDRESS_TYPE,
DC_ADVISING_BRANCH_CODE,
DC_ADVISING_BANK_CODE,
DC_ADVISING_NAME,
DC_ADVISING_ADDRESS_1,
DC_ADVISING_ADDRESS_2,
DC_ADVISING_ADDRESS_3,
DC_ADVISING_CITY,
DC_ADVISING_STATE,
DC_ADVISING_COUNTRY,
DC_ADVISING_PIN_CODE,
DC_ADVISING_BIC_CODE,
DC_ADVISING_PARTY_ID,
DC_ADVISING_ADDRESS_TYPE,
DC_DRAWEE_BRANCH,
DC_DRAWEE_BANK,
DC_DRAWEE_NAME,
DC_DRAWEE_ADDRESS_1,
DC_DRAWEE_ADDRESS_2,
DC_DRAWEE_ADDRESS_3,
DC_DRAWEE_CITY,
DC_DRAWEE_STATE,
DC_DRAWEE_COUNTRY,
DC_DRAWEE_PIN_CODE,
DC_DRAWEE_BIC_CODE,
DC_DRAWEE_PARTY_ID,
DC_DRAWEE_ADDRESS_TYPE,
DC_AVAILABLE_WITH_BRANCH,
DC_AVAILABLE_WITH_BANK,
DC_AVAILABLE_WITH_NAME,
DC_AVAILABLE_WITH_ADDRESS_1,
DC_AVAILABLE_WITH_ADDRESS_2,
DC_AVAILABLE_WITH_ADDRESS_3,
DC_AVAILABLE_WITH_CITY,
DC_AVAILABLE_WITH_STATE,
DC_AVAILABLE_WITH_COUNTRY,
DC_AVAILABLE_WITH_PIN_CODE,
DC_AVAILABLE_WITH_BIC_CODE,
DC_AVAILABLE_WITH_PARTY_ID,
DC_AVAILABLE_BY,
DC_AVAILABLE_WITH_ADDRESS_TYPE,
DC_REIMBURSING_BRANCH,
DC_REIMBURSING_BANK,
DC_REIMBURSING_NAME,
DC_REIMBURSING_ADDRESS_1,
DC_REIMBURSING_ADDRESS_2,
DC_REIMBURSING_ADDRESS_3,
DC_REIMBURSING_CITY,
DC_REIMBURSING_STATE,
DC_REIMBURSING_COUNTRY,
DC_REIMBURSING_PIN_CODE,
DC_REIMBURSING_BIC_CODE,
DC_REIMBURSING_PARTY_ID,
DC_REIMBURSING_ADDRESS_TYPE,
DC_ADVISE_THROUGH_BRANCH,
DC_ADVISE_THROUGH_BANK,
DC_ADVISE_THROUGH_NAME,
DC_ADVISE_THROUGH_ADDRESS_1,
DC_ADVISE_THROUGH_ADDRESS_2,
DC_ADVISE_THROUGH_ADDRESS_3,
DC_ADVISE_THROUGH_CITY,
DC_ADVISE_THROUGH_STATE,
DC_ADVISE_THROUGH_COUNTRY,
DC_ADVISE_THROUGH_PIN_CODE,
DC_ADVISE_THROUGH_BIC_CODE,
DC_ADVISE_THROUGH_PARTY_ID,
DC_ADVISE_THROUGH_LOCATION,
DC_ADVISE_THROUGH_ADDRESS_TYPE,
PARTIAL_SHIPMENT_FLAG,
TRANS_SHIPMENT_FLAG,
LAST_SHIPMENT_DATE,
DC_NEGOTIATION_PERIOD,
SHIPMENT_MODE,
SHIPMENT_TERM,
DISPATCH_ORIGIN_PORT_CODE,
DISPATCH_DESTINATION_PORT_CODE,
PORT_OF_ORIGIN,
PORT_OF_DESTINATION,
HOUSE_AIR_BILL_FLAG,
SHIPMENT_DESC,
AGENT_CODE,
ORIGIN_OF_GOODS,
COMMODITY_CODE,
LICENSE_CODE,
INSURANCE_PCNT,
INSURED_AMOUNT,
INSURED_BY,
POLICY_NUM,
POLICY_DATE,
INSURED_COMPANY,
PAYABLE_AT,
PREMIUM_AMT,
DC_REIMBURSEMENT_MSG_FLAG,
DC_REIMB_APPLICABLE_RULES,
NOSTRO_ACCT_NUM,
DC_CHARGES_BORNE_BY,
DC_CONFIRMATION_INSTRUCTIONS,
DC_CONFIRMATION_REQUIRED_BY,
DC_AGENT_COMMISSION_PCNT,
CAPITAL_ADEQUACY_CODE,
REVOCABLE_FLAG,
DC_IRREVOCABLE_FLAG,
DC_TRANSFERRABLE_FLAG,
DC_STANBY_MODE_FLAG,
DC_REVOLVING_FLAG,
DC_BACK_TO_BACK_FLAG,
DEFERRED_DC_FLAG,
RED_CLAUSE_DC_FLAG,
REINSTATEMENT_TYPE,
DC_REINSTATEMENT_DAY,
MAX_REINSTATEMENTS,
REINSTATEMENT_REMARKS,
DC_BACK_TO_BACK_REF_NUM,
DC_APPLICABLE_RULE,
DC_APPLICABLE_SUB_RULE,
DC_TENOR,
DC_EXPIRY_DATE,
DC_PLACE_OF_EXPIRY,
LIMITPREFIX,
LIMIT_SUFFIX,
LIMIT_MARGIN_PCNT,
INTERNAL_LIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_STATUS,
AMENDMENT_REMARKS,
USANCE_PERIOD,
AMEND_TENOR_DETAILS,
REMITTANCESENTBY,
REMITID,
ADVAMT,
PAYMENTDATE,
ADVREMARKS,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
BENEFACCTID,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
MUDARABAHTYPE,
BKINVAMTTRANTOCUSTACCT,
MUDARABAINVSTACCT,
CUSTINVSTPCNT,
BKPRFTSHRPCNT,
BKLOSSSHRPCNT,
GOODSPURTHIRDPARTY,
THIRDPARTYCIFID,
THIRDPARTYNAME,
THIRDPARTYADDR1,
THIRDPARTYADDR2,
THIRDPARTYADDR3,
THIRDPARTYCITY,
THIRDPARTYSTATE,
THIRDPARTYCNTRY,
THIRDPARTYPINCODE,
THIRDPARTYACCTID,
INTENDTOEXPORT,
INWARDDCREFNUM,
CAPITALGOODSTRAN,
DUEDATEIND,
AUTOREINSTATEFLG,
COLLAUTOREINSCHRGS,
TENORMONTHS,
TENORDAYS
FROM TF004
where FUNC_CODE!='S' AND AMENDMENT_INDICATOR='R' 
order by SOL_ID,DC_NUM,to_date(EVENT_DATE,'DD-MM-YYYY');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF004_AR_spool_new.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF004_AR_spool_new.sql 
set head off
set feedback off
set term off
set lines 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF004_AR_NEW.txt
SELECT 
FUNC_CODE,
SOL_ID,
DC_NUM,
EVENT_AMOUNT,
EVENT_DATE,
DC_TYPE,
DC_CURRENCY_CIF_ID,
DC_CIF_ID,
DC_PARTY_NAME,
DC_PARTY_ADDRESS_1,
DC_PARTY_ADDRESS_2,
DC_PARTY_ADDRESS_3,
DC_PARTY_CITY,
DC_PARTY_STATE,
DC_PARTY_COUNTRY,
POSTAL_CODE,
DC_ACCOUNT_ID,
APPLICANT_REFERENCE_NUM,
TOLERANCE_LIMIT,
NEGATIVE_TOLERANCE_PCNT,
DC_RATE_CODE,
DC_RATE,
DC_INTEREST_PCNT,
DC_ADDITIONAL_AMT,
DC_INTEREST_REMARKS,
DC_MAX_CREDIT,
DC_PURCHASE_ORDER_NO,
DC_PORD_DATE,
DC_PUR_ORDER_LAST_AMEND_DATE,
DC_TOTAL_NUM_OF_AMENDMENTS,
PRE_ADVICE_FLAG,
PRE_ADVICE_DATE,
PRE_ADVICE_REF_NUM,
OTHER_BANK_REF_NUM,
DC_PAYSYS_ID,
DC_BENEFICIARY_CIF_ID,
DC_BENEFICIARY_NAME,
DC_BENEFICIARY_ADDRESS1,
DC_BENEFICIARY_ADDRESS2,
DC_BENEFICIARY_ADDRESS3,
DC_BENEFICIARY_CITY,
DC_BENEFICIARY_STATE,
DC_BENEFICIARY_COUNTRY,
DC_BENEFICIARY_PINCODE,
DC_APPLICANT_BRANCH,
DC_APPLICANT_BANK,
DC_APPLICANT_BANK_NAME,
DC_APPLICANT_BANK_ADDRESS1,
DC_APPLICANT_BANK_ADDRESS2,
DC_APPLICANT_BANK_ADDRESS3,
DC_APPLICANT_BANK_CITY,
DC_APPLICANT_BANK_STATE,
DC_APPLICANT_BANK_COUNTRY,
DC_APPLICANT_BANK_PINCODE,
DC_APPLICANT_BIC_CODE,
DC_PARTY_IDENTIFIER,
DC_APPLICANT_BANK_ADDRESS_TYPE,
DC_ISSUING_BRANCH,
DC_ISSUING_BANK,
DC_ISSUING_NAME,
DC_ISSUING_ADDRESS_1,
DC_ISSUING_ADDRESS_2,
DC_ISSUING_ADDRESS_3,
DC_ISSUING_CITY,
DC_ISSUING_STATE,
DC_ISSUING_COUNTRY,
DC_ISSUING_PIN_CODE,
DC_ISSUE_BIC_CODE,
DC_ISSUE_PARTY_ID,
DC_ISSUE_REF_NO,
DC_ISSUE_ADDRESS_TYPE,
DC_ADVISING_BRANCH_CODE,
DC_ADVISING_BANK_CODE,
DC_ADVISING_NAME,
DC_ADVISING_ADDRESS_1,
DC_ADVISING_ADDRESS_2,
DC_ADVISING_ADDRESS_3,
DC_ADVISING_CITY,
DC_ADVISING_STATE,
DC_ADVISING_COUNTRY,
DC_ADVISING_PIN_CODE,
DC_ADVISING_BIC_CODE,
DC_ADVISING_PARTY_ID,
DC_ADVISING_ADDRESS_TYPE,
DC_DRAWEE_BRANCH,
DC_DRAWEE_BANK,
DC_DRAWEE_NAME,
DC_DRAWEE_ADDRESS_1,
DC_DRAWEE_ADDRESS_2,
DC_DRAWEE_ADDRESS_3,
DC_DRAWEE_CITY,
DC_DRAWEE_STATE,
DC_DRAWEE_COUNTRY,
DC_DRAWEE_PIN_CODE,
DC_DRAWEE_BIC_CODE,
DC_DRAWEE_PARTY_ID,
DC_DRAWEE_ADDRESS_TYPE,
DC_AVAILABLE_WITH_BRANCH,
DC_AVAILABLE_WITH_BANK,
DC_AVAILABLE_WITH_NAME,
DC_AVAILABLE_WITH_ADDRESS_1,
DC_AVAILABLE_WITH_ADDRESS_2,
DC_AVAILABLE_WITH_ADDRESS_3,
DC_AVAILABLE_WITH_CITY,
DC_AVAILABLE_WITH_STATE,
DC_AVAILABLE_WITH_COUNTRY,
DC_AVAILABLE_WITH_PIN_CODE,
DC_AVAILABLE_WITH_BIC_CODE,
DC_AVAILABLE_WITH_PARTY_ID,
DC_AVAILABLE_BY,
DC_AVAILABLE_WITH_ADDRESS_TYPE,
DC_REIMBURSING_BRANCH,
DC_REIMBURSING_BANK,
DC_REIMBURSING_NAME,
DC_REIMBURSING_ADDRESS_1,
DC_REIMBURSING_ADDRESS_2,
DC_REIMBURSING_ADDRESS_3,
DC_REIMBURSING_CITY,
DC_REIMBURSING_STATE,
DC_REIMBURSING_COUNTRY,
DC_REIMBURSING_PIN_CODE,
DC_REIMBURSING_BIC_CODE,
DC_REIMBURSING_PARTY_ID,
DC_REIMBURSING_ADDRESS_TYPE,
DC_ADVISE_THROUGH_BRANCH,
DC_ADVISE_THROUGH_BANK,
DC_ADVISE_THROUGH_NAME,
DC_ADVISE_THROUGH_ADDRESS_1,
DC_ADVISE_THROUGH_ADDRESS_2,
DC_ADVISE_THROUGH_ADDRESS_3,
DC_ADVISE_THROUGH_CITY,
DC_ADVISE_THROUGH_STATE,
DC_ADVISE_THROUGH_COUNTRY,
DC_ADVISE_THROUGH_PIN_CODE,
DC_ADVISE_THROUGH_BIC_CODE,
DC_ADVISE_THROUGH_PARTY_ID,
DC_ADVISE_THROUGH_LOCATION,
DC_ADVISE_THROUGH_ADDRESS_TYPE,
PARTIAL_SHIPMENT_FLAG,
TRANS_SHIPMENT_FLAG,
LAST_SHIPMENT_DATE,
DC_NEGOTIATION_PERIOD,
SHIPMENT_MODE,
SHIPMENT_TERM,
DISPATCH_ORIGIN_PORT_CODE,
DISPATCH_DESTINATION_PORT_CODE,
PORT_OF_ORIGIN,
PORT_OF_DESTINATION,
HOUSE_AIR_BILL_FLAG,
SHIPMENT_DESC,
AGENT_CODE,
ORIGIN_OF_GOODS,
COMMODITY_CODE,
LICENSE_CODE,
INSURANCE_PCNT,
INSURED_AMOUNT,
INSURED_BY,
POLICY_NUM,
POLICY_DATE,
INSURED_COMPANY,
PAYABLE_AT,
PREMIUM_AMT,
DC_REIMBURSEMENT_MSG_FLAG,
DC_REIMB_APPLICABLE_RULES,
NOSTRO_ACCT_NUM,
DC_CHARGES_BORNE_BY,
DC_CONFIRMATION_INSTRUCTIONS,
DC_CONFIRMATION_REQUIRED_BY,
DC_AGENT_COMMISSION_PCNT,
CAPITAL_ADEQUACY_CODE,
REVOCABLE_FLAG,
DC_IRREVOCABLE_FLAG,
DC_TRANSFERRABLE_FLAG,
DC_STANBY_MODE_FLAG,
DC_REVOLVING_FLAG,
DC_BACK_TO_BACK_FLAG,
DEFERRED_DC_FLAG,
RED_CLAUSE_DC_FLAG,
REINSTATEMENT_TYPE,
DC_REINSTATEMENT_DAY,
MAX_REINSTATEMENTS,
REINSTATEMENT_REMARKS,
DC_BACK_TO_BACK_REF_NUM,
DC_APPLICABLE_RULE,
DC_APPLICABLE_SUB_RULE,
DC_TENOR,
DC_EXPIRY_DATE,
DC_PLACE_OF_EXPIRY,
LIMITPREFIX,
LIMIT_SUFFIX,
LIMIT_MARGIN_PCNT,
INTERNAL_LIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_STATUS,
AMENDMENT_REMARKS,
USANCE_PERIOD,
AMEND_TENOR_DETAILS,
REMITTANCESENTBY,
REMITID,
ADVAMT,
PAYMENTDATE,
ADVREMARKS,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
BENEFACCTID,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
MUDARABAHTYPE,
BKINVAMTTRANTOCUSTACCT,
MUDARABAINVSTACCT,
CUSTINVSTPCNT,
BKPRFTSHRPCNT,
BKLOSSSHRPCNT,
GOODSPURTHIRDPARTY,
THIRDPARTYCIFID,
THIRDPARTYNAME,
THIRDPARTYADDR1,
THIRDPARTYADDR2,
THIRDPARTYADDR3,
THIRDPARTYCITY,
THIRDPARTYSTATE,
THIRDPARTYCNTRY,
THIRDPARTYPINCODE,
THIRDPARTYACCTID,
INTENDTOEXPORT,
INWARDDCREFNUM,
CAPITALGOODSTRAN,
DUEDATEIND,
AUTOREINSTATEFLG,
COLLAUTOREINSCHRGS,
TENORMONTHS,
TENORDAYS
FROM TF004_NEW
where FUNC_CODE!='S' AND AMENDMENT_INDICATOR='R'
order by SOL_ID,DC_NUM,to_date(EVENT_DATE,'DD-MM-YYYY');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF004_SPEC_AP_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF004_SPEC_AP_spool.sql 
set head off
set feedback off
set term off
set lines 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/TF/MOCK4A/TF004_AP_SPEC.txt
SELECT 
FUNC_CODE,
SOL_ID,
DC_NUM,
EVENT_AMOUNT,
EVENT_DATE,
DC_TYPE,
DC_CURRENCY_CIF_ID,
DC_CIF_ID,
DC_PARTY_NAME,
DC_PARTY_ADDRESS_1,
DC_PARTY_ADDRESS_2,
DC_PARTY_ADDRESS_3,
DC_PARTY_CITY,
DC_PARTY_STATE,
DC_PARTY_COUNTRY,
POSTAL_CODE,
DC_ACCOUNT_ID,
APPLICANT_REFERENCE_NUM,
TOLERANCE_LIMIT,
NEGATIVE_TOLERANCE_PCNT,
DC_RATE_CODE,
DC_RATE,
DC_INTEREST_PCNT,
DC_ADDITIONAL_AMT,
DC_INTEREST_REMARKS,
DC_MAX_CREDIT,
DC_PURCHASE_ORDER_NO,
DC_PORD_DATE,
DC_PUR_ORDER_LAST_AMEND_DATE,
DC_TOTAL_NUM_OF_AMENDMENTS,
PRE_ADVICE_FLAG,
PRE_ADVICE_DATE,
PRE_ADVICE_REF_NUM,
OTHER_BANK_REF_NUM,
DC_PAYSYS_ID,
DC_BENEFICIARY_CIF_ID,
DC_BENEFICIARY_NAME,
DC_BENEFICIARY_ADDRESS1,
DC_BENEFICIARY_ADDRESS2,
DC_BENEFICIARY_ADDRESS3,
DC_BENEFICIARY_CITY,
DC_BENEFICIARY_STATE,
DC_BENEFICIARY_COUNTRY,
DC_BENEFICIARY_PINCODE,
DC_APPLICANT_BRANCH,
DC_APPLICANT_BANK,
DC_APPLICANT_BANK_NAME,
DC_APPLICANT_BANK_ADDRESS1,
DC_APPLICANT_BANK_ADDRESS2,
DC_APPLICANT_BANK_ADDRESS3,
DC_APPLICANT_BANK_CITY,
DC_APPLICANT_BANK_STATE,
DC_APPLICANT_BANK_COUNTRY,
DC_APPLICANT_BANK_PINCODE,
DC_APPLICANT_BIC_CODE,
DC_PARTY_IDENTIFIER,
DC_APPLICANT_BANK_ADDRESS_TYPE,
DC_ISSUING_BRANCH,
DC_ISSUING_BANK,
DC_ISSUING_NAME,
DC_ISSUING_ADDRESS_1,
DC_ISSUING_ADDRESS_2,
DC_ISSUING_ADDRESS_3,
DC_ISSUING_CITY,
DC_ISSUING_STATE,
DC_ISSUING_COUNTRY,
DC_ISSUING_PIN_CODE,
DC_ISSUE_BIC_CODE,
DC_ISSUE_PARTY_ID,
DC_ISSUE_REF_NO,
DC_ISSUE_ADDRESS_TYPE,
DC_ADVISING_BRANCH_CODE,
DC_ADVISING_BANK_CODE,
DC_ADVISING_NAME,
DC_ADVISING_ADDRESS_1,
DC_ADVISING_ADDRESS_2,
DC_ADVISING_ADDRESS_3,
DC_ADVISING_CITY,
DC_ADVISING_STATE,
DC_ADVISING_COUNTRY,
DC_ADVISING_PIN_CODE,
DC_ADVISING_BIC_CODE,
DC_ADVISING_PARTY_ID,
DC_ADVISING_ADDRESS_TYPE,
DC_DRAWEE_BRANCH,
DC_DRAWEE_BANK,
DC_DRAWEE_NAME,
DC_DRAWEE_ADDRESS_1,
DC_DRAWEE_ADDRESS_2,
DC_DRAWEE_ADDRESS_3,
DC_DRAWEE_CITY,
DC_DRAWEE_STATE,
DC_DRAWEE_COUNTRY,
DC_DRAWEE_PIN_CODE,
DC_DRAWEE_BIC_CODE,
DC_DRAWEE_PARTY_ID,
DC_DRAWEE_ADDRESS_TYPE,
DC_AVAILABLE_WITH_BRANCH,
DC_AVAILABLE_WITH_BANK,
DC_AVAILABLE_WITH_NAME,
DC_AVAILABLE_WITH_ADDRESS_1,
DC_AVAILABLE_WITH_ADDRESS_2,
DC_AVAILABLE_WITH_ADDRESS_3,
DC_AVAILABLE_WITH_CITY,
DC_AVAILABLE_WITH_STATE,
DC_AVAILABLE_WITH_COUNTRY,
DC_AVAILABLE_WITH_PIN_CODE,
DC_AVAILABLE_WITH_BIC_CODE,
DC_AVAILABLE_WITH_PARTY_ID,
DC_AVAILABLE_BY,
DC_AVAILABLE_WITH_ADDRESS_TYPE,
DC_REIMBURSING_BRANCH,
DC_REIMBURSING_BANK,
DC_REIMBURSING_NAME,
DC_REIMBURSING_ADDRESS_1,
DC_REIMBURSING_ADDRESS_2,
DC_REIMBURSING_ADDRESS_3,
DC_REIMBURSING_CITY,
DC_REIMBURSING_STATE,
DC_REIMBURSING_COUNTRY,
DC_REIMBURSING_PIN_CODE,
DC_REIMBURSING_BIC_CODE,
DC_REIMBURSING_PARTY_ID,
DC_REIMBURSING_ADDRESS_TYPE,
DC_ADVISE_THROUGH_BRANCH,
DC_ADVISE_THROUGH_BANK,
DC_ADVISE_THROUGH_NAME,
DC_ADVISE_THROUGH_ADDRESS_1,
DC_ADVISE_THROUGH_ADDRESS_2,
DC_ADVISE_THROUGH_ADDRESS_3,
DC_ADVISE_THROUGH_CITY,
DC_ADVISE_THROUGH_STATE,
DC_ADVISE_THROUGH_COUNTRY,
DC_ADVISE_THROUGH_PIN_CODE,
DC_ADVISE_THROUGH_BIC_CODE,
DC_ADVISE_THROUGH_PARTY_ID,
DC_ADVISE_THROUGH_LOCATION,
DC_ADVISE_THROUGH_ADDRESS_TYPE,
PARTIAL_SHIPMENT_FLAG,
TRANS_SHIPMENT_FLAG,
LAST_SHIPMENT_DATE,
DC_NEGOTIATION_PERIOD,
SHIPMENT_MODE,
SHIPMENT_TERM,
DISPATCH_ORIGIN_PORT_CODE,
DISPATCH_DESTINATION_PORT_CODE,
PORT_OF_ORIGIN,
PORT_OF_DESTINATION,
HOUSE_AIR_BILL_FLAG,
SHIPMENT_DESC,
AGENT_CODE,
ORIGIN_OF_GOODS,
COMMODITY_CODE,
LICENSE_CODE,
INSURANCE_PCNT,
INSURED_AMOUNT,
INSURED_BY,
POLICY_NUM,
POLICY_DATE,
INSURED_COMPANY,
PAYABLE_AT,
PREMIUM_AMT,
DC_REIMBURSEMENT_MSG_FLAG,
DC_REIMB_APPLICABLE_RULES,
NOSTRO_ACCT_NUM,
DC_CHARGES_BORNE_BY,
DC_CONFIRMATION_INSTRUCTIONS,
DC_CONFIRMATION_REQUIRED_BY,
DC_AGENT_COMMISSION_PCNT,
CAPITAL_ADEQUACY_CODE,
REVOCABLE_FLAG,
DC_IRREVOCABLE_FLAG,
DC_TRANSFERRABLE_FLAG,
DC_STANBY_MODE_FLAG,
DC_REVOLVING_FLAG,
DC_BACK_TO_BACK_FLAG,
DEFERRED_DC_FLAG,
RED_CLAUSE_DC_FLAG,
REINSTATEMENT_TYPE,
DC_REINSTATEMENT_DAY,
MAX_REINSTATEMENTS,
REINSTATEMENT_REMARKS,
DC_BACK_TO_BACK_REF_NUM,
DC_APPLICABLE_RULE,
DC_APPLICABLE_SUB_RULE,
DC_TENOR,
DC_EXPIRY_DATE,
DC_PLACE_OF_EXPIRY,
LIMITPREFIX,
LIMIT_SUFFIX,
LIMIT_MARGIN_PCNT,
INTERNAL_LIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_STATUS,
AMENDMENT_REMARKS,
USANCE_PERIOD,
AMEND_TENOR_DETAILS,
REMITTANCESENTBY,
REMITID,
ADVAMT,
PAYMENTDATE,
ADVREMARKS,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
BENEFACCTID,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
MUDARABAHTYPE,
BKINVAMTTRANTOCUSTACCT,
MUDARABAINVSTACCT,
CUSTINVSTPCNT,
BKPRFTSHRPCNT,
BKLOSSSHRPCNT,
GOODSPURTHIRDPARTY,
THIRDPARTYCIFID,
THIRDPARTYNAME,
THIRDPARTYADDR1,
THIRDPARTYADDR2,
THIRDPARTYADDR3,
THIRDPARTYCITY,
THIRDPARTYSTATE,
THIRDPARTYCNTRY,
THIRDPARTYPINCODE,
THIRDPARTYACCTID,
INTENDTOEXPORT,
INWARDDCREFNUM,
CAPITALGOODSTRAN,
DUEDATEIND,
AUTOREINSTATEFLG,
COLLAUTOREINSCHRGS,
TENORMONTHS,
TENORDAYS
FROM TF004
where FUNC_CODE!='S' AND AMENDMENT_INDICATOR='E' and trim(DC_NUM) in ('ILC16-08978-ABKD','ILC15-08120-ABKD')
order by SOL_ID,DC_NUM,to_date(EVENT_DATE,'DD-MM-YYYY');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF004_SPEC_AR_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF004_SPEC_AR_spool.sql 
set head off
set feedback off
set term off
set lines 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/TF/MOCK4A/TF004_AR_SPEC.txt
SELECT 
FUNC_CODE,
SOL_ID,
DC_NUM,
EVENT_AMOUNT,
EVENT_DATE,
DC_TYPE,
DC_CURRENCY_CIF_ID,
DC_CIF_ID,
DC_PARTY_NAME,
DC_PARTY_ADDRESS_1,
DC_PARTY_ADDRESS_2,
DC_PARTY_ADDRESS_3,
DC_PARTY_CITY,
DC_PARTY_STATE,
DC_PARTY_COUNTRY,
POSTAL_CODE,
DC_ACCOUNT_ID,
APPLICANT_REFERENCE_NUM,
TOLERANCE_LIMIT,
NEGATIVE_TOLERANCE_PCNT,
DC_RATE_CODE,
DC_RATE,
DC_INTEREST_PCNT,
DC_ADDITIONAL_AMT,
DC_INTEREST_REMARKS,
DC_MAX_CREDIT,
DC_PURCHASE_ORDER_NO,
DC_PORD_DATE,
DC_PUR_ORDER_LAST_AMEND_DATE,
DC_TOTAL_NUM_OF_AMENDMENTS,
PRE_ADVICE_FLAG,
PRE_ADVICE_DATE,
PRE_ADVICE_REF_NUM,
OTHER_BANK_REF_NUM,
DC_PAYSYS_ID,
DC_BENEFICIARY_CIF_ID,
DC_BENEFICIARY_NAME,
DC_BENEFICIARY_ADDRESS1,
DC_BENEFICIARY_ADDRESS2,
DC_BENEFICIARY_ADDRESS3,
DC_BENEFICIARY_CITY,
DC_BENEFICIARY_STATE,
DC_BENEFICIARY_COUNTRY,
DC_BENEFICIARY_PINCODE,
DC_APPLICANT_BRANCH,
DC_APPLICANT_BANK,
DC_APPLICANT_BANK_NAME,
DC_APPLICANT_BANK_ADDRESS1,
DC_APPLICANT_BANK_ADDRESS2,
DC_APPLICANT_BANK_ADDRESS3,
DC_APPLICANT_BANK_CITY,
DC_APPLICANT_BANK_STATE,
DC_APPLICANT_BANK_COUNTRY,
DC_APPLICANT_BANK_PINCODE,
DC_APPLICANT_BIC_CODE,
DC_PARTY_IDENTIFIER,
DC_APPLICANT_BANK_ADDRESS_TYPE,
DC_ISSUING_BRANCH,
DC_ISSUING_BANK,
DC_ISSUING_NAME,
DC_ISSUING_ADDRESS_1,
DC_ISSUING_ADDRESS_2,
DC_ISSUING_ADDRESS_3,
DC_ISSUING_CITY,
DC_ISSUING_STATE,
DC_ISSUING_COUNTRY,
DC_ISSUING_PIN_CODE,
DC_ISSUE_BIC_CODE,
DC_ISSUE_PARTY_ID,
DC_ISSUE_REF_NO,
DC_ISSUE_ADDRESS_TYPE,
DC_ADVISING_BRANCH_CODE,
DC_ADVISING_BANK_CODE,
DC_ADVISING_NAME,
DC_ADVISING_ADDRESS_1,
DC_ADVISING_ADDRESS_2,
DC_ADVISING_ADDRESS_3,
DC_ADVISING_CITY,
DC_ADVISING_STATE,
DC_ADVISING_COUNTRY,
DC_ADVISING_PIN_CODE,
DC_ADVISING_BIC_CODE,
DC_ADVISING_PARTY_ID,
DC_ADVISING_ADDRESS_TYPE,
DC_DRAWEE_BRANCH,
DC_DRAWEE_BANK,
DC_DRAWEE_NAME,
DC_DRAWEE_ADDRESS_1,
DC_DRAWEE_ADDRESS_2,
DC_DRAWEE_ADDRESS_3,
DC_DRAWEE_CITY,
DC_DRAWEE_STATE,
DC_DRAWEE_COUNTRY,
DC_DRAWEE_PIN_CODE,
DC_DRAWEE_BIC_CODE,
DC_DRAWEE_PARTY_ID,
DC_DRAWEE_ADDRESS_TYPE,
DC_AVAILABLE_WITH_BRANCH,
DC_AVAILABLE_WITH_BANK,
DC_AVAILABLE_WITH_NAME,
DC_AVAILABLE_WITH_ADDRESS_1,
DC_AVAILABLE_WITH_ADDRESS_2,
DC_AVAILABLE_WITH_ADDRESS_3,
DC_AVAILABLE_WITH_CITY,
DC_AVAILABLE_WITH_STATE,
DC_AVAILABLE_WITH_COUNTRY,
DC_AVAILABLE_WITH_PIN_CODE,
DC_AVAILABLE_WITH_BIC_CODE,
DC_AVAILABLE_WITH_PARTY_ID,
DC_AVAILABLE_BY,
DC_AVAILABLE_WITH_ADDRESS_TYPE,
DC_REIMBURSING_BRANCH,
DC_REIMBURSING_BANK,
DC_REIMBURSING_NAME,
DC_REIMBURSING_ADDRESS_1,
DC_REIMBURSING_ADDRESS_2,
DC_REIMBURSING_ADDRESS_3,
DC_REIMBURSING_CITY,
DC_REIMBURSING_STATE,
DC_REIMBURSING_COUNTRY,
DC_REIMBURSING_PIN_CODE,
DC_REIMBURSING_BIC_CODE,
DC_REIMBURSING_PARTY_ID,
DC_REIMBURSING_ADDRESS_TYPE,
DC_ADVISE_THROUGH_BRANCH,
DC_ADVISE_THROUGH_BANK,
DC_ADVISE_THROUGH_NAME,
DC_ADVISE_THROUGH_ADDRESS_1,
DC_ADVISE_THROUGH_ADDRESS_2,
DC_ADVISE_THROUGH_ADDRESS_3,
DC_ADVISE_THROUGH_CITY,
DC_ADVISE_THROUGH_STATE,
DC_ADVISE_THROUGH_COUNTRY,
DC_ADVISE_THROUGH_PIN_CODE,
DC_ADVISE_THROUGH_BIC_CODE,
DC_ADVISE_THROUGH_PARTY_ID,
DC_ADVISE_THROUGH_LOCATION,
DC_ADVISE_THROUGH_ADDRESS_TYPE,
PARTIAL_SHIPMENT_FLAG,
TRANS_SHIPMENT_FLAG,
LAST_SHIPMENT_DATE,
DC_NEGOTIATION_PERIOD,
SHIPMENT_MODE,
SHIPMENT_TERM,
DISPATCH_ORIGIN_PORT_CODE,
DISPATCH_DESTINATION_PORT_CODE,
PORT_OF_ORIGIN,
PORT_OF_DESTINATION,
HOUSE_AIR_BILL_FLAG,
SHIPMENT_DESC,
AGENT_CODE,
ORIGIN_OF_GOODS,
COMMODITY_CODE,
LICENSE_CODE,
INSURANCE_PCNT,
INSURED_AMOUNT,
INSURED_BY,
POLICY_NUM,
POLICY_DATE,
INSURED_COMPANY,
PAYABLE_AT,
PREMIUM_AMT,
DC_REIMBURSEMENT_MSG_FLAG,
DC_REIMB_APPLICABLE_RULES,
NOSTRO_ACCT_NUM,
DC_CHARGES_BORNE_BY,
DC_CONFIRMATION_INSTRUCTIONS,
DC_CONFIRMATION_REQUIRED_BY,
DC_AGENT_COMMISSION_PCNT,
CAPITAL_ADEQUACY_CODE,
REVOCABLE_FLAG,
DC_IRREVOCABLE_FLAG,
DC_TRANSFERRABLE_FLAG,
DC_STANBY_MODE_FLAG,
DC_REVOLVING_FLAG,
DC_BACK_TO_BACK_FLAG,
DEFERRED_DC_FLAG,
RED_CLAUSE_DC_FLAG,
REINSTATEMENT_TYPE,
DC_REINSTATEMENT_DAY,
MAX_REINSTATEMENTS,
REINSTATEMENT_REMARKS,
DC_BACK_TO_BACK_REF_NUM,
DC_APPLICABLE_RULE,
DC_APPLICABLE_SUB_RULE,
DC_TENOR,
DC_EXPIRY_DATE,
DC_PLACE_OF_EXPIRY,
LIMITPREFIX,
LIMIT_SUFFIX,
LIMIT_MARGIN_PCNT,
INTERNAL_LIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_STATUS,
AMENDMENT_REMARKS,
USANCE_PERIOD,
AMEND_TENOR_DETAILS,
REMITTANCESENTBY,
REMITID,
ADVAMT,
PAYMENTDATE,
ADVREMARKS,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
BENEFACCTID,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
MUDARABAHTYPE,
BKINVAMTTRANTOCUSTACCT,
MUDARABAINVSTACCT,
CUSTINVSTPCNT,
BKPRFTSHRPCNT,
BKLOSSSHRPCNT,
GOODSPURTHIRDPARTY,
THIRDPARTYCIFID,
THIRDPARTYNAME,
THIRDPARTYADDR1,
THIRDPARTYADDR2,
THIRDPARTYADDR3,
THIRDPARTYCITY,
THIRDPARTYSTATE,
THIRDPARTYCNTRY,
THIRDPARTYPINCODE,
THIRDPARTYACCTID,
INTENDTOEXPORT,
INWARDDCREFNUM,
CAPITALGOODSTRAN,
DUEDATEIND,
AUTOREINSTATEFLG,
COLLAUTOREINSCHRGS,
TENORMONTHS,
TENORDAYS
FROM TF004
where trim(dc_num) in ('ILC16-08978-ABKD','ILC15-08120-ABKD')
and func_code='A' and AMENDMENT_INDICATOR='R'
order by SOL_ID,DC_NUM,to_date(EVENT_DATE,'DD-MM-YYYY');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF004_SPEC_S_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF004_SPEC_S_spool.sql 
set head off
set feedback off
set term off
set lines 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/TF/MOCK4A/TF004_S_SPEC.txt
SELECT 
FUNC_CODE,
SOL_ID,
DC_NUM,
EVENT_AMOUNT,
EVENT_DATE,
DC_TYPE,
DC_CURRENCY_CIF_ID,
DC_CIF_ID,
DC_PARTY_NAME,
DC_PARTY_ADDRESS_1,
DC_PARTY_ADDRESS_2,
DC_PARTY_ADDRESS_3,
DC_PARTY_CITY,
DC_PARTY_STATE,
DC_PARTY_COUNTRY,
POSTAL_CODE,
DC_ACCOUNT_ID,
APPLICANT_REFERENCE_NUM,
TOLERANCE_LIMIT,
NEGATIVE_TOLERANCE_PCNT,
DC_RATE_CODE,
DC_RATE,
DC_INTEREST_PCNT,
DC_ADDITIONAL_AMT,
DC_INTEREST_REMARKS,
DC_MAX_CREDIT,
DC_PURCHASE_ORDER_NO,
DC_PORD_DATE,
DC_PUR_ORDER_LAST_AMEND_DATE,
DC_TOTAL_NUM_OF_AMENDMENTS,
PRE_ADVICE_FLAG,
PRE_ADVICE_DATE,
PRE_ADVICE_REF_NUM,
OTHER_BANK_REF_NUM,
DC_PAYSYS_ID,
DC_BENEFICIARY_CIF_ID,
DC_BENEFICIARY_NAME,
DC_BENEFICIARY_ADDRESS1,
DC_BENEFICIARY_ADDRESS2,
DC_BENEFICIARY_ADDRESS3,
DC_BENEFICIARY_CITY,
DC_BENEFICIARY_STATE,
DC_BENEFICIARY_COUNTRY,
DC_BENEFICIARY_PINCODE,
DC_APPLICANT_BRANCH,
DC_APPLICANT_BANK,
DC_APPLICANT_BANK_NAME,
DC_APPLICANT_BANK_ADDRESS1,
DC_APPLICANT_BANK_ADDRESS2,
DC_APPLICANT_BANK_ADDRESS3,
DC_APPLICANT_BANK_CITY,
DC_APPLICANT_BANK_STATE,
DC_APPLICANT_BANK_COUNTRY,
DC_APPLICANT_BANK_PINCODE,
DC_APPLICANT_BIC_CODE,
DC_PARTY_IDENTIFIER,
DC_APPLICANT_BANK_ADDRESS_TYPE,
DC_ISSUING_BRANCH,
DC_ISSUING_BANK,
DC_ISSUING_NAME,
DC_ISSUING_ADDRESS_1,
DC_ISSUING_ADDRESS_2,
DC_ISSUING_ADDRESS_3,
DC_ISSUING_CITY,
DC_ISSUING_STATE,
DC_ISSUING_COUNTRY,
DC_ISSUING_PIN_CODE,
DC_ISSUE_BIC_CODE,
DC_ISSUE_PARTY_ID,
DC_ISSUE_REF_NO,
DC_ISSUE_ADDRESS_TYPE,
DC_ADVISING_BRANCH_CODE,
DC_ADVISING_BANK_CODE,
DC_ADVISING_NAME,
DC_ADVISING_ADDRESS_1,
DC_ADVISING_ADDRESS_2,
DC_ADVISING_ADDRESS_3,
DC_ADVISING_CITY,
DC_ADVISING_STATE,
DC_ADVISING_COUNTRY,
DC_ADVISING_PIN_CODE,
DC_ADVISING_BIC_CODE,
DC_ADVISING_PARTY_ID,
DC_ADVISING_ADDRESS_TYPE,
DC_DRAWEE_BRANCH,
DC_DRAWEE_BANK,
DC_DRAWEE_NAME,
DC_DRAWEE_ADDRESS_1,
DC_DRAWEE_ADDRESS_2,
DC_DRAWEE_ADDRESS_3,
DC_DRAWEE_CITY,
DC_DRAWEE_STATE,
DC_DRAWEE_COUNTRY,
DC_DRAWEE_PIN_CODE,
DC_DRAWEE_BIC_CODE,
DC_DRAWEE_PARTY_ID,
DC_DRAWEE_ADDRESS_TYPE,
DC_AVAILABLE_WITH_BRANCH,
DC_AVAILABLE_WITH_BANK,
DC_AVAILABLE_WITH_NAME,
DC_AVAILABLE_WITH_ADDRESS_1,
DC_AVAILABLE_WITH_ADDRESS_2,
DC_AVAILABLE_WITH_ADDRESS_3,
DC_AVAILABLE_WITH_CITY,
DC_AVAILABLE_WITH_STATE,
DC_AVAILABLE_WITH_COUNTRY,
DC_AVAILABLE_WITH_PIN_CODE,
DC_AVAILABLE_WITH_BIC_CODE,
DC_AVAILABLE_WITH_PARTY_ID,
DC_AVAILABLE_BY,
DC_AVAILABLE_WITH_ADDRESS_TYPE,
DC_REIMBURSING_BRANCH,
DC_REIMBURSING_BANK,
DC_REIMBURSING_NAME,
DC_REIMBURSING_ADDRESS_1,
DC_REIMBURSING_ADDRESS_2,
DC_REIMBURSING_ADDRESS_3,
DC_REIMBURSING_CITY,
DC_REIMBURSING_STATE,
DC_REIMBURSING_COUNTRY,
DC_REIMBURSING_PIN_CODE,
DC_REIMBURSING_BIC_CODE,
DC_REIMBURSING_PARTY_ID,
DC_REIMBURSING_ADDRESS_TYPE,
DC_ADVISE_THROUGH_BRANCH,
DC_ADVISE_THROUGH_BANK,
DC_ADVISE_THROUGH_NAME,
DC_ADVISE_THROUGH_ADDRESS_1,
DC_ADVISE_THROUGH_ADDRESS_2,
DC_ADVISE_THROUGH_ADDRESS_3,
DC_ADVISE_THROUGH_CITY,
DC_ADVISE_THROUGH_STATE,
DC_ADVISE_THROUGH_COUNTRY,
DC_ADVISE_THROUGH_PIN_CODE,
DC_ADVISE_THROUGH_BIC_CODE,
DC_ADVISE_THROUGH_PARTY_ID,
DC_ADVISE_THROUGH_LOCATION,
DC_ADVISE_THROUGH_ADDRESS_TYPE,
PARTIAL_SHIPMENT_FLAG,
TRANS_SHIPMENT_FLAG,
LAST_SHIPMENT_DATE,
DC_NEGOTIATION_PERIOD,
SHIPMENT_MODE,
SHIPMENT_TERM,
DISPATCH_ORIGIN_PORT_CODE,
DISPATCH_DESTINATION_PORT_CODE,
PORT_OF_ORIGIN,
PORT_OF_DESTINATION,
HOUSE_AIR_BILL_FLAG,
SHIPMENT_DESC,
AGENT_CODE,
ORIGIN_OF_GOODS,
COMMODITY_CODE,
LICENSE_CODE,
INSURANCE_PCNT,
INSURED_AMOUNT,
INSURED_BY,
POLICY_NUM,
POLICY_DATE,
INSURED_COMPANY,
PAYABLE_AT,
PREMIUM_AMT,
DC_REIMBURSEMENT_MSG_FLAG,
DC_REIMB_APPLICABLE_RULES,
NOSTRO_ACCT_NUM,
DC_CHARGES_BORNE_BY,
DC_CONFIRMATION_INSTRUCTIONS,
DC_CONFIRMATION_REQUIRED_BY,
DC_AGENT_COMMISSION_PCNT,
CAPITAL_ADEQUACY_CODE,
REVOCABLE_FLAG,
DC_IRREVOCABLE_FLAG,
DC_TRANSFERRABLE_FLAG,
DC_STANBY_MODE_FLAG,
DC_REVOLVING_FLAG,
DC_BACK_TO_BACK_FLAG,
DEFERRED_DC_FLAG,
RED_CLAUSE_DC_FLAG,
REINSTATEMENT_TYPE,
DC_REINSTATEMENT_DAY,
MAX_REINSTATEMENTS,
REINSTATEMENT_REMARKS,
DC_BACK_TO_BACK_REF_NUM,
DC_APPLICABLE_RULE,
DC_APPLICABLE_SUB_RULE,
DC_TENOR,
DC_EXPIRY_DATE,
DC_PLACE_OF_EXPIRY,
LIMITPREFIX,
LIMIT_SUFFIX,
LIMIT_MARGIN_PCNT,
INTERNAL_LIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_STATUS,
AMENDMENT_REMARKS,
USANCE_PERIOD,
AMEND_TENOR_DETAILS,
REMITTANCESENTBY,
REMITID,
ADVAMT,
PAYMENTDATE,
ADVREMARKS,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
BENEFACCTID,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
MUDARABAHTYPE,
BKINVAMTTRANTOCUSTACCT,
MUDARABAINVSTACCT,
CUSTINVSTPCNT,
BKPRFTSHRPCNT,
BKLOSSSHRPCNT,
GOODSPURTHIRDPARTY,
THIRDPARTYCIFID,
THIRDPARTYNAME,
THIRDPARTYADDR1,
THIRDPARTYADDR2,
THIRDPARTYADDR3,
THIRDPARTYCITY,
THIRDPARTYSTATE,
THIRDPARTYCNTRY,
THIRDPARTYPINCODE,
THIRDPARTYACCTID,
INTENDTOEXPORT,
INWARDDCREFNUM,
CAPITALGOODSTRAN,
DUEDATEIND,
AUTOREINSTATEFLG,
COLLAUTOREINSCHRGS,
TENORMONTHS,
TENORDAYS
FROM TF004
where FUNC_CODE='S' and trim(dc_num) in ('ILC16-08978-ABKD','ILC15-08120-ABKD')
order by SOL_ID,DC_NUM,to_date(EVENT_DATE,'DD-MM-YYYY');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF004_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF004_spool.sql 
set head off
set feedback off
set term off
set lines 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF004.txt
select 
FUNC_CODE,
SOL_ID,
DC_NUM,
EVENT_AMOUNT,
EVENT_DATE,
DC_TYPE,
DC_CURRENCY_CIF_ID,
DC_CIF_ID,
DC_PARTY_NAME,
DC_PARTY_ADDRESS_1,
DC_PARTY_ADDRESS_2,
DC_PARTY_ADDRESS_3,
DC_PARTY_CITY,
DC_PARTY_STATE,
DC_PARTY_COUNTRY,
POSTAL_CODE,
DC_ACCOUNT_ID,
APPLICANT_REFERENCE_NUM,
TOLERANCE_LIMIT,
NEGATIVE_TOLERANCE_PCNT,
DC_RATE_CODE,
DC_RATE,
DC_ADVANCE_AMOUNT,
DC_INTEREST_PCNT,
DC_ADDITIONAL_AMT,
DC_INTEREST_REMARKS,
DC_MAX_CREDIT,
DC_PURCHASE_ORDER_NO,
DC_PORD_DATE,
DC_PUR_ORDER_LAST_AMEND_DATE,
DC_TOTAL_NUM_OF_AMENDMENTS,
PRE_ADVICE_FLAG,
PRE_ADVICE_DATE,
PRE_ADVICE_REF_NUM,
OTHER_BANK_REF_NUM,
DC_PAYSYS_ID,
DC_BENEFICIARY_CIF_ID,
DC_BENEFICIARY_NAME,
DC_BENEFICIARY_ADDRESS1,
DC_BENEFICIARY_ADDRESS2,
DC_BENEFICIARY_ADDRESS3,
DC_BENEFICIARY_CITY,
DC_BENEFICIARY_STATE,
DC_BENEFICIARY_COUNTRY,
DC_BENEFICIARY_PINCODE,
DC_APPLICANT_BRANCH,
DC_APPLICANT_BANK,
DC_APPLICANT_BANK_NAME,
DC_APPLICANT_BANK_ADDRESS1,
DC_APPLICANT_BANK_ADDRESS2,
DC_APPLICANT_BANK_ADDRESS3,
DC_APPLICANT_BANK_CITY,
DC_APPLICANT_BANK_STATE,
DC_APPLICANT_BANK_COUNTRY,
DC_APPLICANT_BANK_PINCODE,
DC_APPLICANT_BIC_CODE,
DC_PARTY_IDENTIFIER,
DC_APPLICANT_BANK_ADDRESS_TYPE,
DC_ISSUING_BRANCH,
DC_ISSUING_BANK,
DC_ISSUING_NAME,
DC_ISSUING_ADDRESS_1,
DC_ISSUING_ADDRESS_2,
DC_ISSUING_ADDRESS_3,
DC_ISSUING_CITY,
DC_ISSUING_STATE,
DC_ISSUING_COUNTRY,
DC_ISSUING_PIN_CODE,
DC_ISSUE_BIC_CODE,
DC_ISSUE_PARTY_ID,
DC_ISSUE_REF_NO,
DC_ISSUE_ADDRESS_TYPE,
DC_ADVISING_BRANCH_CODE,
DC_ADVISING_BANK_CODE,
DC_ADVISING_NAME,
DC_ADVISING_ADDRESS_1,
DC_ADVISING_ADDRESS_2,
DC_ADVISING_ADDRESS_3,
DC_ADVISING_CITY,
DC_ADVISING_STATE,
DC_ADVISING_COUNTRY,
DC_ADVISING_PIN_CODE,
DC_ADVISING_BIC_CODE,
DC_ADVISING_PARTY_ID,
DC_ADVISING_ADDRESS_TYPE,
DC_DRAWEE_BRANCH,
DC_DRAWEE_BANK,
DC_DRAWEE_NAME,
DC_DRAWEE_ADDRESS_1,
DC_DRAWEE_ADDRESS_2,
DC_DRAWEE_ADDRESS_3,
DC_DRAWEE_CITY,
DC_DRAWEE_STATE,
DC_DRAWEE_COUNTRY,
DC_DRAWEE_PIN_CODE,
DC_DRAWEE_BIC_CODE,
DC_DRAWEE_PARTY_ID,
DC_DRAWEE_ADDRESS_TYPE,
DC_AVAILABLE_WITH_BRANCH,
DC_AVAILABLE_WITH_BANK,
DC_AVAILABLE_WITH_NAME,
DC_AVAILABLE_WITH_ADDRESS_1,
DC_AVAILABLE_WITH_ADDRESS_2,
DC_AVAILABLE_WITH_ADDRESS_3,
DC_AVAILABLE_WITH_CITY,
DC_AVAILABLE_WITH_STATE,
DC_AVAILABLE_WITH_COUNTRY,
DC_AVAILABLE_WITH_PIN_CODE,
DC_AVAILABLE_WITH_BIC_CODE,
DC_AVAILABLE_WITH_PARTY_ID,
DC_AVAILABLE_BY,
DC_AVAILABLE_WITH_ADDRESS_TYPE,
DC_REIMBURSING_BRANCH,
DC_REIMBURSING_BANK,
DC_REIMBURSING_NAME,
DC_REIMBURSING_ADDRESS_1,
DC_REIMBURSING_ADDRESS_2,
DC_REIMBURSING_ADDRESS_3,
DC_REIMBURSING_CITY,
DC_REIMBURSING_STATE,
DC_REIMBURSING_COUNTRY,
DC_REIMBURSING_PIN_CODE,
DC_REIMBURSING_BIC_CODE,
DC_REIMBURSING_PARTY_ID,
DC_REIMBURSING_ADDRESS_TYPE,
DC_ADVISE_THROUGH_BRANCH,
DC_ADVISE_THROUGH_BANK,
DC_ADVISE_THROUGH_NAME,
DC_ADVISE_THROUGH_ADDRESS_1,
DC_ADVISE_THROUGH_ADDRESS_2,
DC_ADVISE_THROUGH_ADDRESS_3,
DC_ADVISE_THROUGH_CITY,
DC_ADVISE_THROUGH_STATE,
DC_ADVISE_THROUGH_COUNTRY,
DC_ADVISE_THROUGH_PIN_CODE,
DC_ADVISE_THROUGH_BIC_CODE,
DC_ADVISE_THROUGH_PARTY_ID,
DC_ADVISE_THROUGH_LOCATION,
DC_ADVISE_THROUGH_ADDRESS_TYPE,
PARTIAL_SHIPMENT_FLAG,
TRANS_SHIPMENT_FLAG,
LAST_SHIPMENT_DATE,
DC_NEGOTIATION_PERIOD,
SHIPMENT_MODE,
SHIPMENT_TERM,
DISPATCH_ORIGIN_PORT_CODE,
DISPATCH_DESTINATION_PORT_CODE,
PORT_OF_ORIGIN,
PORT_OF_DESTINATION,
HOUSE_AIR_BILL_FLAG,
SHIPMENT_DESC,
AGENT_CODE,
ORIGIN_OF_GOODS,
COMMODITY_CODE,
LICENSE_CODE,
INSURANCE_PCNT,
INSURED_AMOUNT,
INSURED_BY,
POLICY_NUM,
POLICY_DATE,
INSURED_COMPANY,
PAYABLE_AT,
PREMIUM_AMT,
DC_REIMBURSEMENT_MSG_FLAG,
DC_REIMB_APPLICABLE_RULES,
NOSTRO_ACCT_NUM,
DC_CHARGES_BORNE_BY,
DC_CONFIRMATION_INSTRUCTIONS,
DC_CONFIRMATION_REQUIRED_BY,
DC_AGENT_COMMISSION_PCNT,
CAPITAL_ADEQUACY_CODE,
REVOCABLE_FLAG,
DC_IRREVOCABLE_FLAG,
DC_TRANSFERRABLE_FLAG,
DC_STANBY_MODE_FLAG,
DC_REVOLVING_FLAG,
DC_BACK_TO_BACK_FLAG,
DEFERRED_DC_FLAG,
RED_CLAUSE_DC_FLAG,
REINSTATEMENT_TYPE,
DC_REINSTATEMENT_DAY,
MAX_REINSTATEMENTS,
REINSTATED_BY_AMOUNT,
REINSTATEMENT_REMARKS,
DC_BACK_TO_BACK_REF_NUM,
DC_APPLICABLE_RULE,
DC_APPLICABLE_SUB_RULE,
DC_TENOR,
DC_EXPIRY_DATE,
DC_PLACE_OF_EXPIRY,
LIMITPREFIX,
LIMIT_SUFFIX,
LIMIT_MARGIN_PCNT,
INTERNAL_LIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_STATUS,
AMENDMENT_REMARKS,
REINSTATEMENT_DATE,
DC_CONFIRMATION_AMOUNT,
DC_CONFIRMATION_PCNT,
USANCE_PERIOD,
AMEND_TENOR_DETAILS
from TF004
where FUNC_CODE='S'
order by SOL_ID,DC_NUM,to_date(EVENT_DATE,'DD-MM-YYYY');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF004_S_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF004_S_spool.sql 
set head off
set feedback off
set term off
set lines 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/TF/MOCK5/TF004_S.txt
SELECT 
FUNC_CODE,
SOL_ID,
DC_NUM,
EVENT_AMOUNT,
EVENT_DATE,
DC_TYPE,
DC_CURRENCY_CIF_ID,
DC_CIF_ID,
DC_PARTY_NAME,
DC_PARTY_ADDRESS_1,
DC_PARTY_ADDRESS_2,
DC_PARTY_ADDRESS_3,
DC_PARTY_CITY,
DC_PARTY_STATE,
DC_PARTY_COUNTRY,
POSTAL_CODE,
DC_ACCOUNT_ID,
APPLICANT_REFERENCE_NUM,
TOLERANCE_LIMIT,
NEGATIVE_TOLERANCE_PCNT,
DC_RATE_CODE,
DC_RATE,
DC_INTEREST_PCNT,
DC_ADDITIONAL_AMT,
DC_INTEREST_REMARKS,
DC_MAX_CREDIT,
DC_PURCHASE_ORDER_NO,
DC_PORD_DATE,
DC_PUR_ORDER_LAST_AMEND_DATE,
DC_TOTAL_NUM_OF_AMENDMENTS,
PRE_ADVICE_FLAG,
PRE_ADVICE_DATE,
PRE_ADVICE_REF_NUM,
OTHER_BANK_REF_NUM,
DC_PAYSYS_ID,
DC_BENEFICIARY_CIF_ID,
DC_BENEFICIARY_NAME,
DC_BENEFICIARY_ADDRESS1,
DC_BENEFICIARY_ADDRESS2,
DC_BENEFICIARY_ADDRESS3,
DC_BENEFICIARY_CITY,
DC_BENEFICIARY_STATE,
DC_BENEFICIARY_COUNTRY,
DC_BENEFICIARY_PINCODE,
DC_APPLICANT_BRANCH,
DC_APPLICANT_BANK,
DC_APPLICANT_BANK_NAME,
DC_APPLICANT_BANK_ADDRESS1,
DC_APPLICANT_BANK_ADDRESS2,
DC_APPLICANT_BANK_ADDRESS3,
DC_APPLICANT_BANK_CITY,
DC_APPLICANT_BANK_STATE,
DC_APPLICANT_BANK_COUNTRY,
DC_APPLICANT_BANK_PINCODE,
DC_APPLICANT_BIC_CODE,
DC_PARTY_IDENTIFIER,
DC_APPLICANT_BANK_ADDRESS_TYPE,
DC_ISSUING_BRANCH,
DC_ISSUING_BANK,
DC_ISSUING_NAME,
DC_ISSUING_ADDRESS_1,
DC_ISSUING_ADDRESS_2,
DC_ISSUING_ADDRESS_3,
DC_ISSUING_CITY,
DC_ISSUING_STATE,
DC_ISSUING_COUNTRY,
DC_ISSUING_PIN_CODE,
DC_ISSUE_BIC_CODE,
DC_ISSUE_PARTY_ID,
DC_ISSUE_REF_NO,
DC_ISSUE_ADDRESS_TYPE,
DC_ADVISING_BRANCH_CODE,
DC_ADVISING_BANK_CODE,
DC_ADVISING_NAME,
DC_ADVISING_ADDRESS_1,
DC_ADVISING_ADDRESS_2,
DC_ADVISING_ADDRESS_3,
DC_ADVISING_CITY,
DC_ADVISING_STATE,
DC_ADVISING_COUNTRY,
DC_ADVISING_PIN_CODE,
DC_ADVISING_BIC_CODE,
DC_ADVISING_PARTY_ID,
DC_ADVISING_ADDRESS_TYPE,
DC_DRAWEE_BRANCH,
DC_DRAWEE_BANK,
DC_DRAWEE_NAME,
DC_DRAWEE_ADDRESS_1,
DC_DRAWEE_ADDRESS_2,
DC_DRAWEE_ADDRESS_3,
DC_DRAWEE_CITY,
DC_DRAWEE_STATE,
DC_DRAWEE_COUNTRY,
DC_DRAWEE_PIN_CODE,
DC_DRAWEE_BIC_CODE,
DC_DRAWEE_PARTY_ID,
DC_DRAWEE_ADDRESS_TYPE,
DC_AVAILABLE_WITH_BRANCH,
DC_AVAILABLE_WITH_BANK,
DC_AVAILABLE_WITH_NAME,
DC_AVAILABLE_WITH_ADDRESS_1,
DC_AVAILABLE_WITH_ADDRESS_2,
DC_AVAILABLE_WITH_ADDRESS_3,
DC_AVAILABLE_WITH_CITY,
DC_AVAILABLE_WITH_STATE,
DC_AVAILABLE_WITH_COUNTRY,
DC_AVAILABLE_WITH_PIN_CODE,
DC_AVAILABLE_WITH_BIC_CODE,
DC_AVAILABLE_WITH_PARTY_ID,
DC_AVAILABLE_BY,
DC_AVAILABLE_WITH_ADDRESS_TYPE,
DC_REIMBURSING_BRANCH,
DC_REIMBURSING_BANK,
DC_REIMBURSING_NAME,
DC_REIMBURSING_ADDRESS_1,
DC_REIMBURSING_ADDRESS_2,
DC_REIMBURSING_ADDRESS_3,
DC_REIMBURSING_CITY,
DC_REIMBURSING_STATE,
DC_REIMBURSING_COUNTRY,
DC_REIMBURSING_PIN_CODE,
DC_REIMBURSING_BIC_CODE,
DC_REIMBURSING_PARTY_ID,
DC_REIMBURSING_ADDRESS_TYPE,
DC_ADVISE_THROUGH_BRANCH,
DC_ADVISE_THROUGH_BANK,
DC_ADVISE_THROUGH_NAME,
DC_ADVISE_THROUGH_ADDRESS_1,
DC_ADVISE_THROUGH_ADDRESS_2,
DC_ADVISE_THROUGH_ADDRESS_3,
DC_ADVISE_THROUGH_CITY,
DC_ADVISE_THROUGH_STATE,
DC_ADVISE_THROUGH_COUNTRY,
DC_ADVISE_THROUGH_PIN_CODE,
DC_ADVISE_THROUGH_BIC_CODE,
DC_ADVISE_THROUGH_PARTY_ID,
DC_ADVISE_THROUGH_LOCATION,
DC_ADVISE_THROUGH_ADDRESS_TYPE,
PARTIAL_SHIPMENT_FLAG,
TRANS_SHIPMENT_FLAG,
LAST_SHIPMENT_DATE,
DC_NEGOTIATION_PERIOD,
SHIPMENT_MODE,
SHIPMENT_TERM,
DISPATCH_ORIGIN_PORT_CODE,
DISPATCH_DESTINATION_PORT_CODE,
PORT_OF_ORIGIN,
PORT_OF_DESTINATION,
HOUSE_AIR_BILL_FLAG,
SHIPMENT_DESC,
AGENT_CODE,
ORIGIN_OF_GOODS,
COMMODITY_CODE,
LICENSE_CODE,
INSURANCE_PCNT,
INSURED_AMOUNT,
INSURED_BY,
POLICY_NUM,
POLICY_DATE,
INSURED_COMPANY,
PAYABLE_AT,
PREMIUM_AMT,
DC_REIMBURSEMENT_MSG_FLAG,
DC_REIMB_APPLICABLE_RULES,
NOSTRO_ACCT_NUM,
DC_CHARGES_BORNE_BY,
DC_CONFIRMATION_INSTRUCTIONS,
DC_CONFIRMATION_REQUIRED_BY,
DC_AGENT_COMMISSION_PCNT,
CAPITAL_ADEQUACY_CODE,
REVOCABLE_FLAG,
DC_IRREVOCABLE_FLAG,
DC_TRANSFERRABLE_FLAG,
DC_STANBY_MODE_FLAG,
DC_REVOLVING_FLAG,
DC_BACK_TO_BACK_FLAG,
DEFERRED_DC_FLAG,
RED_CLAUSE_DC_FLAG,
REINSTATEMENT_TYPE,
DC_REINSTATEMENT_DAY,
MAX_REINSTATEMENTS,
REINSTATEMENT_REMARKS,
DC_BACK_TO_BACK_REF_NUM,
DC_APPLICABLE_RULE,
DC_APPLICABLE_SUB_RULE,
DC_TENOR,
DC_EXPIRY_DATE,
DC_PLACE_OF_EXPIRY,
LIMITPREFIX,
LIMIT_SUFFIX,
LIMIT_MARGIN_PCNT,
INTERNAL_LIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_STATUS,
AMENDMENT_REMARKS,
USANCE_PERIOD,
AMEND_TENOR_DETAILS,
REMITTANCESENTBY,
REMITID,
ADVAMT,
PAYMENTDATE,
ADVREMARKS,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
BENEFACCTID,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
MUDARABAHTYPE,
BKINVAMTTRANTOCUSTACCT,
MUDARABAINVSTACCT,
CUSTINVSTPCNT,
BKPRFTSHRPCNT,
BKLOSSSHRPCNT,
GOODSPURTHIRDPARTY,
THIRDPARTYCIFID,
THIRDPARTYNAME,
THIRDPARTYADDR1,
THIRDPARTYADDR2,
THIRDPARTYADDR3,
THIRDPARTYCITY,
THIRDPARTYSTATE,
THIRDPARTYCNTRY,
THIRDPARTYPINCODE,
THIRDPARTYACCTID,
INTENDTOEXPORT,
INWARDDCREFNUM,
CAPITALGOODSTRAN,
DUEDATEIND,
AUTOREINSTATEFLG,
COLLAUTOREINSCHRGS,
TENORMONTHS,
TENORDAYS
FROM TF004
where FUNC_CODE='S'
order by SOL_ID,DC_NUM,to_date(EVENT_DATE,'DD-MM-YYYY');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF004_S_spool_new.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF004_S_spool_new.sql 
set head off
set feedback off
set term off
set lines 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF004_S_NEW.txt
SELECT 
FUNC_CODE,
SOL_ID,
DC_NUM,
EVENT_AMOUNT,
EVENT_DATE,
DC_TYPE,
DC_CURRENCY_CIF_ID,
DC_CIF_ID,
DC_PARTY_NAME,
DC_PARTY_ADDRESS_1,
DC_PARTY_ADDRESS_2,
DC_PARTY_ADDRESS_3,
DC_PARTY_CITY,
DC_PARTY_STATE,
DC_PARTY_COUNTRY,
POSTAL_CODE,
DC_ACCOUNT_ID,
APPLICANT_REFERENCE_NUM,
TOLERANCE_LIMIT,
NEGATIVE_TOLERANCE_PCNT,
DC_RATE_CODE,
DC_RATE,
DC_INTEREST_PCNT,
DC_ADDITIONAL_AMT,
DC_INTEREST_REMARKS,
DC_MAX_CREDIT,
DC_PURCHASE_ORDER_NO,
DC_PORD_DATE,
DC_PUR_ORDER_LAST_AMEND_DATE,
DC_TOTAL_NUM_OF_AMENDMENTS,
PRE_ADVICE_FLAG,
PRE_ADVICE_DATE,
PRE_ADVICE_REF_NUM,
OTHER_BANK_REF_NUM,
DC_PAYSYS_ID,
DC_BENEFICIARY_CIF_ID,
DC_BENEFICIARY_NAME,
DC_BENEFICIARY_ADDRESS1,
DC_BENEFICIARY_ADDRESS2,
DC_BENEFICIARY_ADDRESS3,
DC_BENEFICIARY_CITY,
DC_BENEFICIARY_STATE,
DC_BENEFICIARY_COUNTRY,
DC_BENEFICIARY_PINCODE,
DC_APPLICANT_BRANCH,
DC_APPLICANT_BANK,
DC_APPLICANT_BANK_NAME,
DC_APPLICANT_BANK_ADDRESS1,
DC_APPLICANT_BANK_ADDRESS2,
DC_APPLICANT_BANK_ADDRESS3,
DC_APPLICANT_BANK_CITY,
DC_APPLICANT_BANK_STATE,
DC_APPLICANT_BANK_COUNTRY,
DC_APPLICANT_BANK_PINCODE,
DC_APPLICANT_BIC_CODE,
DC_PARTY_IDENTIFIER,
DC_APPLICANT_BANK_ADDRESS_TYPE,
DC_ISSUING_BRANCH,
DC_ISSUING_BANK,
DC_ISSUING_NAME,
DC_ISSUING_ADDRESS_1,
DC_ISSUING_ADDRESS_2,
DC_ISSUING_ADDRESS_3,
DC_ISSUING_CITY,
DC_ISSUING_STATE,
DC_ISSUING_COUNTRY,
DC_ISSUING_PIN_CODE,
DC_ISSUE_BIC_CODE,
DC_ISSUE_PARTY_ID,
DC_ISSUE_REF_NO,
DC_ISSUE_ADDRESS_TYPE,
DC_ADVISING_BRANCH_CODE,
DC_ADVISING_BANK_CODE,
DC_ADVISING_NAME,
DC_ADVISING_ADDRESS_1,
DC_ADVISING_ADDRESS_2,
DC_ADVISING_ADDRESS_3,
DC_ADVISING_CITY,
DC_ADVISING_STATE,
DC_ADVISING_COUNTRY,
DC_ADVISING_PIN_CODE,
DC_ADVISING_BIC_CODE,
DC_ADVISING_PARTY_ID,
DC_ADVISING_ADDRESS_TYPE,
DC_DRAWEE_BRANCH,
DC_DRAWEE_BANK,
DC_DRAWEE_NAME,
DC_DRAWEE_ADDRESS_1,
DC_DRAWEE_ADDRESS_2,
DC_DRAWEE_ADDRESS_3,
DC_DRAWEE_CITY,
DC_DRAWEE_STATE,
DC_DRAWEE_COUNTRY,
DC_DRAWEE_PIN_CODE,
DC_DRAWEE_BIC_CODE,
DC_DRAWEE_PARTY_ID,
DC_DRAWEE_ADDRESS_TYPE,
DC_AVAILABLE_WITH_BRANCH,
DC_AVAILABLE_WITH_BANK,
DC_AVAILABLE_WITH_NAME,
DC_AVAILABLE_WITH_ADDRESS_1,
DC_AVAILABLE_WITH_ADDRESS_2,
DC_AVAILABLE_WITH_ADDRESS_3,
DC_AVAILABLE_WITH_CITY,
DC_AVAILABLE_WITH_STATE,
DC_AVAILABLE_WITH_COUNTRY,
DC_AVAILABLE_WITH_PIN_CODE,
DC_AVAILABLE_WITH_BIC_CODE,
DC_AVAILABLE_WITH_PARTY_ID,
DC_AVAILABLE_BY,
DC_AVAILABLE_WITH_ADDRESS_TYPE,
DC_REIMBURSING_BRANCH,
DC_REIMBURSING_BANK,
DC_REIMBURSING_NAME,
DC_REIMBURSING_ADDRESS_1,
DC_REIMBURSING_ADDRESS_2,
DC_REIMBURSING_ADDRESS_3,
DC_REIMBURSING_CITY,
DC_REIMBURSING_STATE,
DC_REIMBURSING_COUNTRY,
DC_REIMBURSING_PIN_CODE,
DC_REIMBURSING_BIC_CODE,
DC_REIMBURSING_PARTY_ID,
DC_REIMBURSING_ADDRESS_TYPE,
DC_ADVISE_THROUGH_BRANCH,
DC_ADVISE_THROUGH_BANK,
DC_ADVISE_THROUGH_NAME,
DC_ADVISE_THROUGH_ADDRESS_1,
DC_ADVISE_THROUGH_ADDRESS_2,
DC_ADVISE_THROUGH_ADDRESS_3,
DC_ADVISE_THROUGH_CITY,
DC_ADVISE_THROUGH_STATE,
DC_ADVISE_THROUGH_COUNTRY,
DC_ADVISE_THROUGH_PIN_CODE,
DC_ADVISE_THROUGH_BIC_CODE,
DC_ADVISE_THROUGH_PARTY_ID,
DC_ADVISE_THROUGH_LOCATION,
DC_ADVISE_THROUGH_ADDRESS_TYPE,
PARTIAL_SHIPMENT_FLAG,
TRANS_SHIPMENT_FLAG,
LAST_SHIPMENT_DATE,
DC_NEGOTIATION_PERIOD,
SHIPMENT_MODE,
SHIPMENT_TERM,
DISPATCH_ORIGIN_PORT_CODE,
DISPATCH_DESTINATION_PORT_CODE,
PORT_OF_ORIGIN,
PORT_OF_DESTINATION,
HOUSE_AIR_BILL_FLAG,
SHIPMENT_DESC,
AGENT_CODE,
ORIGIN_OF_GOODS,
COMMODITY_CODE,
LICENSE_CODE,
INSURANCE_PCNT,
INSURED_AMOUNT,
INSURED_BY,
POLICY_NUM,
POLICY_DATE,
INSURED_COMPANY,
PAYABLE_AT,
PREMIUM_AMT,
DC_REIMBURSEMENT_MSG_FLAG,
DC_REIMB_APPLICABLE_RULES,
NOSTRO_ACCT_NUM,
DC_CHARGES_BORNE_BY,
DC_CONFIRMATION_INSTRUCTIONS,
DC_CONFIRMATION_REQUIRED_BY,
DC_AGENT_COMMISSION_PCNT,
CAPITAL_ADEQUACY_CODE,
REVOCABLE_FLAG,
DC_IRREVOCABLE_FLAG,
DC_TRANSFERRABLE_FLAG,
DC_STANBY_MODE_FLAG,
DC_REVOLVING_FLAG,
DC_BACK_TO_BACK_FLAG,
DEFERRED_DC_FLAG,
RED_CLAUSE_DC_FLAG,
REINSTATEMENT_TYPE,
DC_REINSTATEMENT_DAY,
MAX_REINSTATEMENTS,
REINSTATEMENT_REMARKS,
DC_BACK_TO_BACK_REF_NUM,
DC_APPLICABLE_RULE,
DC_APPLICABLE_SUB_RULE,
DC_TENOR,
DC_EXPIRY_DATE,
DC_PLACE_OF_EXPIRY,
LIMITPREFIX,
LIMIT_SUFFIX,
LIMIT_MARGIN_PCNT,
INTERNAL_LIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_STATUS,
AMENDMENT_REMARKS,
USANCE_PERIOD,
AMEND_TENOR_DETAILS,
REMITTANCESENTBY,
REMITID,
ADVAMT,
PAYMENTDATE,
ADVREMARKS,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
BENEFACCTID,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
MUDARABAHTYPE,
BKINVAMTTRANTOCUSTACCT,
MUDARABAINVSTACCT,
CUSTINVSTPCNT,
BKPRFTSHRPCNT,
BKLOSSSHRPCNT,
GOODSPURTHIRDPARTY,
THIRDPARTYCIFID,
THIRDPARTYNAME,
THIRDPARTYADDR1,
THIRDPARTYADDR2,
THIRDPARTYADDR3,
THIRDPARTYCITY,
THIRDPARTYSTATE,
THIRDPARTYCNTRY,
THIRDPARTYPINCODE,
THIRDPARTYACCTID,
INTENDTOEXPORT,
INWARDDCREFNUM,
CAPITALGOODSTRAN,
DUEDATEIND,
AUTOREINSTATEFLG,
COLLAUTOREINSCHRGS,
TENORMONTHS,
TENORDAYS
FROM TF004_NEW
where FUNC_CODE='S'
order by SOL_ID,DC_NUM,to_date(EVENT_DATE,'DD-MM-YYYY');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF005_AP_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF005_AP_spool.sql 
set head off
set feedback off
set term off
set lines 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF005_AP.txt
SELECT
FUNC_CODE,
SOL_ID,
DC_NUM,
EVENT_AMOUNT,
EVENT_DATE,
DC_TYPE,
DC_CURRENCY_CIF_ID,
DC_CIF_ID,
DC_PARTY_NAME,
DC_PARTY_ADDRESS_1,
DC_PARTY_ADDRESS_2,
DC_PARTY_ADDRESS_3,
DC_PARTY_CITY,
DC_PARTY_STATE,
DC_PARTY_COUNTRY,
POSTAL_CODE,
DC_ACCOUNT_ID,
APPLICANT_REFERENCE_NUM,
TOLERANCE_LIMIT,
NEGATIVE_TOLERANCE_PCNT,
DC_RATE_CODE,
DC_RATE,
DC_ADVANCE_AMOUNT,
DC_INTEREST_PCNT,
DC_ADDITIONAL_AMT,
DC_INTEREST_REMARKS,
DC_MAX_CREDIT,
DC_PURCHASE_ORDER_NO,
DC_PORD_DATE,
DC_PUR_ORDER_LAST_AMEND_DATE,
DC_TOTAL_NUM_OF_AMENDMENTS,
PRE_ADVICE_FLAG,
PRE_ADVICE_DATE,
PRE_ADVICE_REF_NUM,
OTHER_BANK_REF_NUM,
DC_PAYSYS_ID,
DC_BENEFICIARY_CIF_ID,
DC_BENEFICIARY_NAME,
DC_BENEFICIARY_ADDRESS1,
DC_BENEFICIARY_ADDRESS2,
DC_BENEFICIARY_ADDRESS3,
DC_BENEFICIARY_CITY,
DC_BENEFICIARY_STATE,
DC_BENEFICIARY_COUNTRY,
DC_BENEFICIARY_PINCODE,
DC_APPLICANT_BRANCH,
DC_APPLICANT_BANK,
DC_APPLICANT_BANK_NAME,
DC_APPLICANT_BANK_ADDRESS1,
DC_APPLICANT_BANK_ADDRESS2,
DC_APPLICANT_BANK_ADDRESS3,
DC_APPLICANT_BANK_CITY,
DC_APPLICANT_BANK_STATE,
DC_APPLICANT_BANK_COUNTRY,
DC_APPLICANT_BANK_PINCODE,
DC_APPLICANT_BIC_CODE,
DC_PARTY_IDENTIFIER,
DC_APPLICANT_BANK_ADDRESS_TYPE,
DC_ISSUING_BRANCH,
DC_ISSUING_BANK,
DC_ISSUING_NAME,
DC_ISSUING_ADDRESS_1,
DC_ISSUING_ADDRESS_2,
DC_ISSUING_ADDRESS_3,
DC_ISSUING_CITY,
DC_ISSUING_STATE,
DC_ISSUING_COUNTRY,
DC_ISSUING_PIN_CODE,
DC_ISSUE_BIC_CODE,
DC_ISSUE_PARTY_ID,
DC_ISSUE_REF_NO,
DC_ISSUE_ADDRESS_TYPE,
DC_ADVISING_BRANCH_CODE,
DC_ADVISING_BANK_CODE,
DC_ADVISING_NAME,
DC_ADVISING_ADDRESS_1,
DC_ADVISING_ADDRESS_2,
DC_ADVISING_ADDRESS_3,
DC_ADVISING_CITY,
DC_ADVISING_STATE,
DC_ADVISING_COUNTRY,
DC_ADVISING_PIN_CODE,
DC_ADVISING_BIC_CODE,
DC_ADVISING_PARTY_ID,
DC_ADVISING_ADDRESS_TYPE,
DC_DRAWEE_BRANCH,
DC_DRAWEE_BANK,
DC_DRAWEE_NAME,
DC_DRAWEE_ADDRESS_1,
DC_DRAWEE_ADDRESS_2,
DC_DRAWEE_ADDRESS_3,
DC_DRAWEE_CITY,
DC_DRAWEE_STATE,
DC_DRAWEE_COUNTRY,
DC_DRAWEE_PIN_CODE,
DC_DRAWEE_BIC_CODE,
DC_DRAWEE_PARTY_ID,
DC_DRAWEE_ADDRESS_TYPE,
DC_AVAILABLE_WITH_BRANCH,
DC_AVAILABLE_WITH_BANK,
DC_AVAILABLE_WITH_NAME,
DC_AVAILABLE_WITH_ADDRESS_1,
DC_AVAILABLE_WITH_ADDRESS_2,
DC_AVAILABLE_WITH_ADDRESS_3,
DC_AVAILABLE_WITH_CITY,
DC_AVAILABLE_WITH_STATE,
DC_AVAILABLE_WITH_COUNTRY,
DC_AVAILABLE_WITH_PIN_CODE,
DC_AVAILABLE_WITH_BIC_CODE,
DC_AVAILABLE_WITH_PARTY_ID,
DC_AVAILABLE_BY,
DC_AVAILABLE_WITH_ADDRESS_TYPE,
DC_REIMBURSING_BRANCH,
DC_REIMBURSING_BANK,
DC_REIMBURSING_NAME,
DC_REIMBURSING_ADDRESS_1,
DC_REIMBURSING_ADDRESS_2,
DC_REIMBURSING_ADDRESS_3,
DC_REIMBURSING_CITY,
DC_REIMBURSING_STATE,
DC_REIMBURSING_COUNTRY,
DC_REIMBURSING_PIN_CODE,
DC_REIMBURSING_BIC_CODE,
DC_REIMBURSING_PARTY_ID,
DC_REIMBURSING_ADDRESS_TYPE,
DC_ADVISE_THROUGH_BRANCH,
DC_ADVISE_THROUGH_BANK,
DC_ADVISE_THROUGH_NAME,
DC_ADVISE_THROUGH_ADDRESS_1,
DC_ADVISE_THROUGH_ADDRESS_2,
DC_ADVISE_THROUGH_ADDRESS_3,
DC_ADVISE_THROUGH_CITY,
DC_ADVISE_THROUGH_STATE,
DC_ADVISE_THROUGH_COUNTRY,
DC_ADVISE_THROUGH_PIN_CODE,
DC_ADVISE_THROUGH_BIC_CODE,
DC_ADVISE_THROUGH_PARTY_ID,
DC_ADVISE_THROUGH_LOCATION,
DC_ADVISE_THROUGH_ADDRESS_TYPE,
PARTIAL_SHIPMENT_FLAG,
TRANS_SHIPMENT_FLAG,
LAST_SHIPMENT_DATE,
DC_NEGOTIATION_PERIOD,
SHIPMENT_MODE,
SHIPMENT_TERM,
DISPATCH_ORIGIN_PORT_CODE,
DISPATCH_DESTINATION_PORT_CODE,
PORT_OF_ORIGIN,
PORT_OF_DESTINATION,
HOUSE_AIR_BILL_FLAG,
SHIPMENT_DESC,
AGENT_CODE,
ORIGIN_OF_GOODS,
COMMODITY_CODE,
LICENSE_CODE,
INSURANCE_PCNT,
INSURED_AMOUNT,
INSURED_BY,
POLICY_NUM,
POLICY_DATE,
INSURED_COMPANY,
PAYABLE_AT,
PREMIUM_AMT,
DC_REIMBURSEMENT_MSG_FLAG,
DC_REIM_APPLICABLE_RULES,
NOSTRO_ACCT_NUM,
DC_CHARGES_BORNE_BY,
DC_CONFIRMATION_INSTRUCTIONS,
DC_CONFIRMATION_REQUIRED_BY,
DC_AGENT_COMMISSION_PCNT,
CAPITAL_ADEQUACY_CODE,
REVOCABLE_FLAG,
DC_IRREVOCABLE_FLAG,
DC_TRANSFERRABLE_FLAG,
DC_STANBY_MODE_FLAG,
DC_REVOLVING_FLAG,
DC_BACK_TO_BACK_FLAG,
DEFERRED_DC_FLAG,
RED_CLAUSE_DC_FLAG,
REINSTATEMENT_TYPE,
DC_REINSTATEMENT_DAY,
MAX_REINSTATEMENTS,
REINSTATEMENT_REMARKS,
DC_BACK_TO_BACK_REF_NUM,
DC_APPLICABLE_RULE,
DC_APPLICABLE_SUB_RULE,
DC_TENOR,
DC_EXPIRY_DATE,
DC_PLACE_OF_EXPIRY,
LIMITPREFIX,
LIMIT_SUFFIX,
LIMIT_MARGIN_PCNT,
INTERNAL_LIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_STATUS,
AMENDMENT_REMARKS,
ADD_CONFIRMATION,
DC_CONFIRMATION_AMOUNT,
DC_CONFIRMATION_PCNT,
USANCE_PERIOD,
AMEND_TENOR_DETAILS,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
BENEFACCTID,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
REMITRECVDTHROUGH,
RECVDREMITID,
RECVDPAYMENTDATE,
RECVDADVREMARKS,
CAPITALGOODSTRAN,
DUEDATEIND,
AUTOREINSTATEFLG,
COLLAUTOREINSCHRGS,
TENORMONTHS,
TENORDAYS
FROM TF005
where FUNC_CODE!='E' AND AMENDMENT_INDICATOR='E'
order by SOL_ID,DC_NUM,to_date(EVENT_DATE,'DD-MM-YYYY');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF005_AR_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF005_AR_spool.sql 
set head off
set feedback off
set term off
set lines 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF005_AR.txt
SELECT 
FUNC_CODE,
SOL_ID,
DC_NUM,
EVENT_AMOUNT,
EVENT_DATE,
DC_TYPE,
DC_CURRENCY_CIF_ID,
DC_CIF_ID,
DC_PARTY_NAME,
DC_PARTY_ADDRESS_1,
DC_PARTY_ADDRESS_2,
DC_PARTY_ADDRESS_3,
DC_PARTY_CITY,
DC_PARTY_STATE,
DC_PARTY_COUNTRY,
POSTAL_CODE,
DC_ACCOUNT_ID,
APPLICANT_REFERENCE_NUM,
TOLERANCE_LIMIT,
NEGATIVE_TOLERANCE_PCNT,
DC_RATE_CODE,
DC_RATE,
DC_ADVANCE_AMOUNT,
DC_INTEREST_PCNT,
DC_ADDITIONAL_AMT,
DC_INTEREST_REMARKS,
DC_MAX_CREDIT,
DC_PURCHASE_ORDER_NO,
DC_PORD_DATE,
DC_PUR_ORDER_LAST_AMEND_DATE,
DC_TOTAL_NUM_OF_AMENDMENTS,
PRE_ADVICE_FLAG,
PRE_ADVICE_DATE,
PRE_ADVICE_REF_NUM,
OTHER_BANK_REF_NUM,
DC_PAYSYS_ID,
DC_BENEFICIARY_CIF_ID,
DC_BENEFICIARY_NAME,
DC_BENEFICIARY_ADDRESS1,
DC_BENEFICIARY_ADDRESS2,
DC_BENEFICIARY_ADDRESS3,
DC_BENEFICIARY_CITY,
DC_BENEFICIARY_STATE,
DC_BENEFICIARY_COUNTRY,
DC_BENEFICIARY_PINCODE,
DC_APPLICANT_BRANCH,
DC_APPLICANT_BANK,
DC_APPLICANT_BANK_NAME,
DC_APPLICANT_BANK_ADDRESS1,
DC_APPLICANT_BANK_ADDRESS2,
DC_APPLICANT_BANK_ADDRESS3,
DC_APPLICANT_BANK_CITY,
DC_APPLICANT_BANK_STATE,
DC_APPLICANT_BANK_COUNTRY,
DC_APPLICANT_BANK_PINCODE,
DC_APPLICANT_BIC_CODE,
DC_PARTY_IDENTIFIER,
DC_APPLICANT_BANK_ADDRESS_TYPE,
DC_ISSUING_BRANCH,
DC_ISSUING_BANK,
DC_ISSUING_NAME,
DC_ISSUING_ADDRESS_1,
DC_ISSUING_ADDRESS_2,
DC_ISSUING_ADDRESS_3,
DC_ISSUING_CITY,
DC_ISSUING_STATE,
DC_ISSUING_COUNTRY,
DC_ISSUING_PIN_CODE,
DC_ISSUE_BIC_CODE,
DC_ISSUE_PARTY_ID,
DC_ISSUE_REF_NO,
DC_ISSUE_ADDRESS_TYPE,
DC_ADVISING_BRANCH_CODE,
DC_ADVISING_BANK_CODE,
DC_ADVISING_NAME,
DC_ADVISING_ADDRESS_1,
DC_ADVISING_ADDRESS_2,
DC_ADVISING_ADDRESS_3,
DC_ADVISING_CITY,
DC_ADVISING_STATE,
DC_ADVISING_COUNTRY,
DC_ADVISING_PIN_CODE,
DC_ADVISING_BIC_CODE,
DC_ADVISING_PARTY_ID,
DC_ADVISING_ADDRESS_TYPE,
DC_DRAWEE_BRANCH,
DC_DRAWEE_BANK,
DC_DRAWEE_NAME,
DC_DRAWEE_ADDRESS_1,
DC_DRAWEE_ADDRESS_2,
DC_DRAWEE_ADDRESS_3,
DC_DRAWEE_CITY,
DC_DRAWEE_STATE,
DC_DRAWEE_COUNTRY,
DC_DRAWEE_PIN_CODE,
DC_DRAWEE_BIC_CODE,
DC_DRAWEE_PARTY_ID,
DC_DRAWEE_ADDRESS_TYPE,
DC_AVAILABLE_WITH_BRANCH,
DC_AVAILABLE_WITH_BANK,
DC_AVAILABLE_WITH_NAME,
DC_AVAILABLE_WITH_ADDRESS_1,
DC_AVAILABLE_WITH_ADDRESS_2,
DC_AVAILABLE_WITH_ADDRESS_3,
DC_AVAILABLE_WITH_CITY,
DC_AVAILABLE_WITH_STATE,
DC_AVAILABLE_WITH_COUNTRY,
DC_AVAILABLE_WITH_PIN_CODE,
DC_AVAILABLE_WITH_BIC_CODE,
DC_AVAILABLE_WITH_PARTY_ID,
DC_AVAILABLE_BY,
DC_AVAILABLE_WITH_ADDRESS_TYPE,
DC_REIMBURSING_BRANCH,
DC_REIMBURSING_BANK,
DC_REIMBURSING_NAME,
DC_REIMBURSING_ADDRESS_1,
DC_REIMBURSING_ADDRESS_2,
DC_REIMBURSING_ADDRESS_3,
DC_REIMBURSING_CITY,
DC_REIMBURSING_STATE,
DC_REIMBURSING_COUNTRY,
DC_REIMBURSING_PIN_CODE,
DC_REIMBURSING_BIC_CODE,
DC_REIMBURSING_PARTY_ID,
DC_REIMBURSING_ADDRESS_TYPE,
DC_ADVISE_THROUGH_BRANCH,
DC_ADVISE_THROUGH_BANK,
DC_ADVISE_THROUGH_NAME,
DC_ADVISE_THROUGH_ADDRESS_1,
DC_ADVISE_THROUGH_ADDRESS_2,
DC_ADVISE_THROUGH_ADDRESS_3,
DC_ADVISE_THROUGH_CITY,
DC_ADVISE_THROUGH_STATE,
DC_ADVISE_THROUGH_COUNTRY,
DC_ADVISE_THROUGH_PIN_CODE,
DC_ADVISE_THROUGH_BIC_CODE,
DC_ADVISE_THROUGH_PARTY_ID,
DC_ADVISE_THROUGH_LOCATION,
DC_ADVISE_THROUGH_ADDRESS_TYPE,
PARTIAL_SHIPMENT_FLAG,
TRANS_SHIPMENT_FLAG,
LAST_SHIPMENT_DATE,
DC_NEGOTIATION_PERIOD,
SHIPMENT_MODE,
SHIPMENT_TERM,
DISPATCH_ORIGIN_PORT_CODE,
DISPATCH_DESTINATION_PORT_CODE,
PORT_OF_ORIGIN,
PORT_OF_DESTINATION,
HOUSE_AIR_BILL_FLAG,
SHIPMENT_DESC,
AGENT_CODE,
ORIGIN_OF_GOODS,
COMMODITY_CODE,
LICENSE_CODE,
INSURANCE_PCNT,
INSURED_AMOUNT,
INSURED_BY,
POLICY_NUM,
POLICY_DATE,
INSURED_COMPANY,
PAYABLE_AT,
PREMIUM_AMT,
DC_REIMBURSEMENT_MSG_FLAG,
DC_REIM_APPLICABLE_RULES,
NOSTRO_ACCT_NUM,
DC_CHARGES_BORNE_BY,
DC_CONFIRMATION_INSTRUCTIONS,
DC_CONFIRMATION_REQUIRED_BY,
DC_AGENT_COMMISSION_PCNT,
CAPITAL_ADEQUACY_CODE,
REVOCABLE_FLAG,
DC_IRREVOCABLE_FLAG,
DC_TRANSFERRABLE_FLAG,
DC_STANBY_MODE_FLAG,
DC_REVOLVING_FLAG,
DC_BACK_TO_BACK_FLAG,
DEFERRED_DC_FLAG,
RED_CLAUSE_DC_FLAG,
REINSTATEMENT_TYPE,
DC_REINSTATEMENT_DAY,
MAX_REINSTATEMENTS,
REINSTATEMENT_REMARKS,
DC_BACK_TO_BACK_REF_NUM,
DC_APPLICABLE_RULE,
DC_APPLICABLE_SUB_RULE,
DC_TENOR,
DC_EXPIRY_DATE,
DC_PLACE_OF_EXPIRY,
LIMITPREFIX,
LIMIT_SUFFIX,
LIMIT_MARGIN_PCNT,
INTERNAL_LIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_STATUS,
AMENDMENT_REMARKS,
ADD_CONFIRMATION,
DC_CONFIRMATION_AMOUNT,
DC_CONFIRMATION_PCNT,
USANCE_PERIOD,
AMEND_TENOR_DETAILS,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
BENEFACCTID,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
REMITRECVDTHROUGH,
RECVDREMITID,
RECVDPAYMENTDATE,
RECVDADVREMARKS,
CAPITALGOODSTRAN,
DUEDATEIND,
AUTOREINSTATEFLG,
COLLAUTOREINSCHRGS,
TENORMONTHS,
TENORDAYS
FROM TF005
where FUNC_CODE!='E' AND AMENDMENT_INDICATOR='R'
order by SOL_ID,DC_NUM,to_date(EVENT_DATE,'DD-MM-YYYY');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF005_S_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF005_S_spool.sql 
set head off
set feedback off
set term off
set lines 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF005_S.txt
SELECT
FUNC_CODE,
SOL_ID,
DC_NUM,
EVENT_AMOUNT,
EVENT_DATE,
DC_TYPE,
DC_CURRENCY_CIF_ID,
DC_CIF_ID,
DC_PARTY_NAME,
DC_PARTY_ADDRESS_1,
DC_PARTY_ADDRESS_2,
DC_PARTY_ADDRESS_3,
DC_PARTY_CITY,
DC_PARTY_STATE,
DC_PARTY_COUNTRY,
POSTAL_CODE,
DC_ACCOUNT_ID,
APPLICANT_REFERENCE_NUM,
TOLERANCE_LIMIT,
NEGATIVE_TOLERANCE_PCNT,
DC_RATE_CODE,
DC_RATE,
DC_ADVANCE_AMOUNT,
DC_INTEREST_PCNT,
DC_ADDITIONAL_AMT,
DC_INTEREST_REMARKS,
DC_MAX_CREDIT,
DC_PURCHASE_ORDER_NO,
DC_PORD_DATE,
DC_PUR_ORDER_LAST_AMEND_DATE,
DC_TOTAL_NUM_OF_AMENDMENTS,
PRE_ADVICE_FLAG,
PRE_ADVICE_DATE,
PRE_ADVICE_REF_NUM,
OTHER_BANK_REF_NUM,
DC_PAYSYS_ID,
DC_BENEFICIARY_CIF_ID,
DC_BENEFICIARY_NAME,
DC_BENEFICIARY_ADDRESS1,
DC_BENEFICIARY_ADDRESS2,
DC_BENEFICIARY_ADDRESS3,
DC_BENEFICIARY_CITY,
DC_BENEFICIARY_STATE,
DC_BENEFICIARY_COUNTRY,
DC_BENEFICIARY_PINCODE,
DC_APPLICANT_BRANCH,
DC_APPLICANT_BANK,
DC_APPLICANT_BANK_NAME,
DC_APPLICANT_BANK_ADDRESS1,
DC_APPLICANT_BANK_ADDRESS2,
DC_APPLICANT_BANK_ADDRESS3,
DC_APPLICANT_BANK_CITY,
DC_APPLICANT_BANK_STATE,
DC_APPLICANT_BANK_COUNTRY,
DC_APPLICANT_BANK_PINCODE,
DC_APPLICANT_BIC_CODE,
DC_PARTY_IDENTIFIER,
DC_APPLICANT_BANK_ADDRESS_TYPE,
DC_ISSUING_BRANCH,
DC_ISSUING_BANK,
DC_ISSUING_NAME,
DC_ISSUING_ADDRESS_1,
DC_ISSUING_ADDRESS_2,
DC_ISSUING_ADDRESS_3,
DC_ISSUING_CITY,
DC_ISSUING_STATE,
DC_ISSUING_COUNTRY,
DC_ISSUING_PIN_CODE,
DC_ISSUE_BIC_CODE,
DC_ISSUE_PARTY_ID,
DC_ISSUE_REF_NO,
DC_ISSUE_ADDRESS_TYPE,
DC_ADVISING_BRANCH_CODE,
DC_ADVISING_BANK_CODE,
DC_ADVISING_NAME,
DC_ADVISING_ADDRESS_1,
DC_ADVISING_ADDRESS_2,
DC_ADVISING_ADDRESS_3,
DC_ADVISING_CITY,
DC_ADVISING_STATE,
DC_ADVISING_COUNTRY,
DC_ADVISING_PIN_CODE,
DC_ADVISING_BIC_CODE,
DC_ADVISING_PARTY_ID,
DC_ADVISING_ADDRESS_TYPE,
DC_DRAWEE_BRANCH,
DC_DRAWEE_BANK,
DC_DRAWEE_NAME,
DC_DRAWEE_ADDRESS_1,
DC_DRAWEE_ADDRESS_2,
DC_DRAWEE_ADDRESS_3,
DC_DRAWEE_CITY,
DC_DRAWEE_STATE,
DC_DRAWEE_COUNTRY,
DC_DRAWEE_PIN_CODE,
DC_DRAWEE_BIC_CODE,
DC_DRAWEE_PARTY_ID,
DC_DRAWEE_ADDRESS_TYPE,
DC_AVAILABLE_WITH_BRANCH,
DC_AVAILABLE_WITH_BANK,
DC_AVAILABLE_WITH_NAME,
DC_AVAILABLE_WITH_ADDRESS_1,
DC_AVAILABLE_WITH_ADDRESS_2,
DC_AVAILABLE_WITH_ADDRESS_3,
DC_AVAILABLE_WITH_CITY,
DC_AVAILABLE_WITH_STATE,
DC_AVAILABLE_WITH_COUNTRY,
DC_AVAILABLE_WITH_PIN_CODE,
DC_AVAILABLE_WITH_BIC_CODE,
DC_AVAILABLE_WITH_PARTY_ID,
DC_AVAILABLE_BY,
DC_AVAILABLE_WITH_ADDRESS_TYPE,
DC_REIMBURSING_BRANCH,
DC_REIMBURSING_BANK,
DC_REIMBURSING_NAME,
DC_REIMBURSING_ADDRESS_1,
DC_REIMBURSING_ADDRESS_2,
DC_REIMBURSING_ADDRESS_3,
DC_REIMBURSING_CITY,
DC_REIMBURSING_STATE,
DC_REIMBURSING_COUNTRY,
DC_REIMBURSING_PIN_CODE,
DC_REIMBURSING_BIC_CODE,
DC_REIMBURSING_PARTY_ID,
DC_REIMBURSING_ADDRESS_TYPE,
DC_ADVISE_THROUGH_BRANCH,
DC_ADVISE_THROUGH_BANK,
DC_ADVISE_THROUGH_NAME,
DC_ADVISE_THROUGH_ADDRESS_1,
DC_ADVISE_THROUGH_ADDRESS_2,
DC_ADVISE_THROUGH_ADDRESS_3,
DC_ADVISE_THROUGH_CITY,
DC_ADVISE_THROUGH_STATE,
DC_ADVISE_THROUGH_COUNTRY,
DC_ADVISE_THROUGH_PIN_CODE,
DC_ADVISE_THROUGH_BIC_CODE,
DC_ADVISE_THROUGH_PARTY_ID,
DC_ADVISE_THROUGH_LOCATION,
DC_ADVISE_THROUGH_ADDRESS_TYPE,
PARTIAL_SHIPMENT_FLAG,
TRANS_SHIPMENT_FLAG,
LAST_SHIPMENT_DATE,
DC_NEGOTIATION_PERIOD,
SHIPMENT_MODE,
SHIPMENT_TERM,
DISPATCH_ORIGIN_PORT_CODE,
DISPATCH_DESTINATION_PORT_CODE,
PORT_OF_ORIGIN,
PORT_OF_DESTINATION,
HOUSE_AIR_BILL_FLAG,
SHIPMENT_DESC,
AGENT_CODE,
ORIGIN_OF_GOODS,
COMMODITY_CODE,
LICENSE_CODE,
INSURANCE_PCNT,
INSURED_AMOUNT,
INSURED_BY,
POLICY_NUM,
POLICY_DATE,
INSURED_COMPANY,
PAYABLE_AT,
PREMIUM_AMT,
DC_REIMBURSEMENT_MSG_FLAG,
DC_REIM_APPLICABLE_RULES,
NOSTRO_ACCT_NUM,
DC_CHARGES_BORNE_BY,
DC_CONFIRMATION_INSTRUCTIONS,
DC_CONFIRMATION_REQUIRED_BY,
DC_AGENT_COMMISSION_PCNT,
CAPITAL_ADEQUACY_CODE,
REVOCABLE_FLAG,
DC_IRREVOCABLE_FLAG,
DC_TRANSFERRABLE_FLAG,
DC_STANBY_MODE_FLAG,
DC_REVOLVING_FLAG,
DC_BACK_TO_BACK_FLAG,
DEFERRED_DC_FLAG,
RED_CLAUSE_DC_FLAG,
REINSTATEMENT_TYPE,
DC_REINSTATEMENT_DAY,
MAX_REINSTATEMENTS,
REINSTATEMENT_REMARKS,
DC_BACK_TO_BACK_REF_NUM,
DC_APPLICABLE_RULE,
DC_APPLICABLE_SUB_RULE,
DC_TENOR,
DC_EXPIRY_DATE,
DC_PLACE_OF_EXPIRY,
LIMITPREFIX,
LIMIT_SUFFIX,
LIMIT_MARGIN_PCNT,
INTERNAL_LIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_STATUS,
AMENDMENT_REMARKS,
ADD_CONFIRMATION,
DC_CONFIRMATION_AMOUNT,
DC_CONFIRMATION_PCNT,
USANCE_PERIOD,
AMEND_TENOR_DETAILS,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
BENEFACCTID,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
REMITRECVDTHROUGH,
RECVDREMITID,
RECVDPAYMENTDATE,
RECVDADVREMARKS,
CAPITALGOODSTRAN,
DUEDATEIND,
AUTOREINSTATEFLG,
COLLAUTOREINSCHRGS,
TENORMONTHS,
TENORDAYS
FROM TF005
where FUNC_CODE='E'
order by SOL_ID,DC_NUM,to_date(EVENT_DATE,'DD-MM-YYYY');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF006_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF006_spool.sql 
set head off
set feedback off
set term off
set lines 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/TF/MOCK4A/TF006.txt
SELECT
FUNC_CODE,
SOL_ID,
DC_NUM,
EVENT_AMT,
EVENT_DATE,
EVENT_REMARKS,
REINSTATEMENT_DAY
FROM TF006
ORDER BY TO_DATE(EVENT_DATE,'DD-MM-YYYY');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF009_EXPORT_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF009_EXPORT_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/TF/MOCK4A/TF009_EXPORT.txt
SELECT 
FUNC_CODE,
BILLPARAMTYPE,
CIFID,
CRNCYCODE,
UNDERDC,
SOLID,
BILLID,
NUM,
FORACID,
BILLAMT,
BILLCOUNTRY,
ADDRESS1,
BILLTENOR,
DUEDATEIND,
BILLDATE,
DUEDATE,
ONBOARDDATE,
PARTYNAME,
ADDRESS2,
INVOICEAMT,
INVOICECRNCY,
LODGEDATE,
OPPCHRGACCID,
EXPORTERREFNO,
BANKCODE,
BRCODE,
DATEOFISSUE,
TENOR,
REFCODE,
RATE,
OTHERBANKSREFNO,
OTHERBANKSREFDATE,
PAYSYSID,
PARTYCIF,
ADDRESS3,
CITYCODE,
STATECODE,
CNTRYCODE,
PINCODE,
DBBANKCODE,
DBBRCODE,
DBNAME,
DBADDRESS1,
DBADDRESS2,
DBADDRESS3,
DBCITYCODE,
DBSTATECODE,
DBCNTRYCODE,
DBPINCODE,
DBBICID,
DBPARTYID,
DBADDRTYPE,
BBBANKCODE,
BBBRCODE,
BBNAME,
BBADDRESS1,
BBADDRESS2,
BBADDRESS3,
BBCITYCODE,
BBSTATECODE,
BBCNTRYCODE,
BBPINCODE,
BBBICID,
BBPARTYID,
BBADDRTYPE,
CBBANKCODE,
CBBRCODE,
CBNAME,
CBADDRESS1,
CBADDRESS2,
CBADDRESS3,
CBCITYCODE,
CBSTATECODE,
CBCNTRYCODE,
CBPINCODE,
CBBICID,
CBPARTYID,
CBADDRTYPE,
COBBANKCODE,
COBBRCODE,
COBNAME,
COBADDRESS1,
COBADDRESS2,
COBADDRESS3,
COBCITYCODE,
COBSTATECODE,
COBCNTRYCODE,
COBPINCODE,
COBBICID,
COBPARTYID,
COBADDRTYPE,
RBBANKCODE,
RBBRCODE,
RBNAME,
RBADDRESS1,
RBADDRESS2,
RBADDRESS3,
RBCITYCODE,
RBSTATECODE,
RBCNTRYCODE,
RBPINCODE,
RBBICID,
RBPARTYID,
RBADDRTYPE,
CABBANKCODE,
CABBRCODE,
CABNAME,
CABADDRESS1,
CABADDRESS2,
CABADDRESS3,
CABCITYCODE,
CABSTATECODE,
CABCNTRYCODE,
CABPINCODE,
CABBICID,
CABPARTYID,
CABADDRTYPE,
TENORMONTH,
TENORDAY,
TENORDESC,
DRAFTNO,
FIXEDTRANSITPERIOD,
GRACEPERIOD,
DOCSRCVDON,
ACCEPTDATE,
DCUTILIZEDAMT,
ADVAMTRECVD,
CARRIERCODE,
ORIGINOFGOODS,
PORTOFDEST,
CONSIGNEECNTRY,
SHPMTTERMS,
COMMCODE,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
EXPORDNO,
INSURPCNT,
INSURAMT,
INSUREDBY,
POLICYNO,
POLICYDATE,
INSURCOMPNAME,
PAYABLEAT,
PREMIUMCCY,
PREMIUMAMT,
INSURCONVRATECODE,
INSURCONVRATE,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
INVOICENO,
INVOICEDATE,
UNDERRESERVE,
INTERMTRADE,
PURPOSEBILL,
REGAPPROVALNO,
OURCOMMAMT,
OURPTAMT,
FINACCTID,
POSFINPCNT,
ACCEPTEDBILLPCNT,
DOCSTATUS
FROM TF009;
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF009_LC_EXPORT_EVENT_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF009_LC_EXPORT_EVENT_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF009_LC_EXPORT_EVENT.txt
SELECT
BILLID,
BILLSOLID,
MTENORBILLID,
BILLEVENTTYPE,
BILLEVENTNUMBER,
MAIN_EVENTACCOUNT,
MAIN_EVENTAMOUNT,
MAIN_EVENTAMOUNTCCY,
SUPLIMENTARY_EVENTAMOUNT,
SUPLIMENTARY_EVENTAMOUNTCCY,
MAIN_EVENT_VALUEDATE,
SUPLIMENTARY_EVENT_VALUEDATE,
AMEND_TENOR_PERIOD_MTHS,
AMEND_TENOR_PERIOD_DAYS,
AMEND_FIX_TRANSIT_PERIOD_DAYS,
AMEND_GRACE_PERIOD_DAYS,
AMEND_DUEDATEIND,
REALIZE_NOSTRO_DEBIT_VALUEDATE,
REALIZE_SUBMITTED_DATE,
REALIZE_OTHER_BANK_INT_AMT,
REALIZE_OTHER_BANK_CHG_AMT,
REALIZE_P_AND_T_AMT,
REALIZE_COMMISSION_AMT,
REALIZE_EEFC_REALIZATION_AMT,
REALIZE_LOAN_AMT,
REALIZE_LOAN_ACCOUNT_ID,
PURCHASE_MARGIN_AMT,
SUPLIMENTARY_EVENTACCOUNT,
BANKPURAMOUNT,
AMTTOBECREDITED,
DOCSTATUS
FROM TF011_ELC;
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF009_LC_EXPORT_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF009_LC_EXPORT_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF009_LC_EXPORT.txt
SELECT 
FUNC_CODE,
BILLPARAMTYPE,
CIFID,
CRNCYCODE,
UNDERDC,
SOLID,
BILLID,
NUM,
FORACID,
BILLAMT,
BILLCOUNTRY,
ADDRESS1,
BILLTENOR,
DUEDATEIND,
BILLDATE,
DUEDATE,
ONBOARDDATE,
PARTYNAME,
ADDRESS2,
INVOICEAMT,
INVOICECRNCY,
LODGEDATE,
OPPCHRGACCID,
EXPORTERREFNO,
BANKCODE,
BRCODE,
DATEOFISSUE,
TENOR,
REFCODE,
RATE,
OTHERBANKSREFNO,
OTHERBANKSREFDATE,
PAYSYSID,
PARTYCIF,
ADDRESS3,
CITYCODE,
STATECODE,
CNTRYCODE,
PINCODE,
DBBANKCODE,
DBBRCODE,
DBNAME,
DBADDRESS1,
DBADDRESS2,
DBADDRESS3,
DBCITYCODE,
DBSTATECODE,
DBCNTRYCODE,
DBPINCODE,
DBBICID,
DBPARTYID,
DBADDRTYPE,
BBBANKCODE,
BBBRCODE,
BBNAME,
BBADDRESS1,
BBADDRESS2,
BBADDRESS3,
BBCITYCODE,
BBSTATECODE,
BBCNTRYCODE,
BBPINCODE,
BBBICID,
BBPARTYID,
BBADDRTYPE,
CBBANKCODE,
CBBRCODE,
CBNAME,
CBADDRESS1,
CBADDRESS2,
CBADDRESS3,
CBCITYCODE,
CBSTATECODE,
CBCNTRYCODE,
CBPINCODE,
CBBICID,
CBPARTYID,
CBADDRTYPE,
COBBANKCODE,
COBBRCODE,
COBNAME,
COBADDRESS1,
COBADDRESS2,
COBADDRESS3,
COBCITYCODE,
COBSTATECODE,
COBCNTRYCODE,
COBPINCODE,
COBBICID,
COBPARTYID,
COBADDRTYPE,
RBBANKCODE,
RBBRCODE,
RBNAME,
RBADDRESS1,
RBADDRESS2,
RBADDRESS3,
RBCITYCODE,
RBSTATECODE,
RBCNTRYCODE,
RBPINCODE,
RBBICID,
RBPARTYID,
RBADDRTYPE,
CABBANKCODE,
CABBRCODE,
CABNAME,
CABADDRESS1,
CABADDRESS2,
CABADDRESS3,
CABCITYCODE,
CABSTATECODE,
CABCNTRYCODE,
CABPINCODE,
CABBICID,
CABPARTYID,
CABADDRTYPE,
TENORMONTH,
TENORDAY,
TENORDESC,
DRAFTNO,
FIXEDTRANSITPERIOD,
GRACEPERIOD,
DOCSRCVDON,
ACCEPTDATE,
DCUTILIZEDAMT,
ADVAMTRECVD,
CARRIERCODE,
ORIGINOFGOODS,
PORTOFDEST,
CONSIGNEECNTRY,
SHPMTTERMS,
COMMCODE,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
EXPORDNO,
INSURPCNT,
INSURAMT,
INSUREDBY,
POLICYNO,
POLICYDATE,
INSURCOMPNAME,
PAYABLEAT,
PREMIUMCCY,
PREMIUMAMT,
INSURCONVRATECODE,
INSURCONVRATE,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
INVOICENO,
INVOICEDATE,
UNDERRESERVE,
INTERMTRADE,
PURPOSEBILL,
REGAPPROVALNO,
OURCOMMAMT,
OURPTAMT,
FINACCTID,
POSFINPCNT,
ACCEPTEDBILLPCNT,
DOCSTATUS
FROM TF009_LC
WHERE FUNC_CODE='G';
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF009_SPEC_EXPORT_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF009_SPEC_EXPORT_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF009_EXPORT_TEST.txt
SELECT 
FUNC_CODE,
BILLPARAMTYPE,
CIFID,
CRNCYCODE,
UNDERDC,
SOLID,
BILLID,
NUM,
FORACID,
BILLAMT,
BILLCOUNTRY,
ADDRESS1,
BILLTENOR,
DUEDATEIND,
BILLDATE,
DUEDATE,
ONBOARDDATE,
PARTYNAME,
ADDRESS2,
INVOICEAMT,
INVOICECRNCY,
LODGEDATE,
OPPCHRGACCID,
EXPORTERREFNO,
BANKCODE,
BRCODE,
DATEOFISSUE,
TENOR,
REFCODE,
RATE,
OTHERBANKSREFNO,
OTHERBANKSREFDATE,
PAYSYSID,
PARTYCIF,
ADDRESS3,
CITYCODE,
STATECODE,
CNTRYCODE,
PINCODE,
DBBANKCODE,
DBBRCODE,
DBNAME,
DBADDRESS1,
DBADDRESS2,
DBADDRESS3,
DBCITYCODE,
DBSTATECODE,
DBCNTRYCODE,
DBPINCODE,
DBBICID,
DBPARTYID,
DBADDRTYPE,
BBBANKCODE,
BBBRCODE,
BBNAME,
BBADDRESS1,
BBADDRESS2,
BBADDRESS3,
BBCITYCODE,
BBSTATECODE,
BBCNTRYCODE,
BBPINCODE,
BBBICID,
BBPARTYID,
BBADDRTYPE,
CBBANKCODE,
CBBRCODE,
CBNAME,
CBADDRESS1,
CBADDRESS2,
CBADDRESS3,
CBCITYCODE,
CBSTATECODE,
CBCNTRYCODE,
CBPINCODE,
CBBICID,
CBPARTYID,
CBADDRTYPE,
COBBANKCODE,
COBBRCODE,
COBNAME,
COBADDRESS1,
COBADDRESS2,
COBADDRESS3,
COBCITYCODE,
COBSTATECODE,
COBCNTRYCODE,
COBPINCODE,
COBBICID,
COBPARTYID,
COBADDRTYPE,
RBBANKCODE,
RBBRCODE,
RBNAME,
RBADDRESS1,
RBADDRESS2,
RBADDRESS3,
RBCITYCODE,
RBSTATECODE,
RBCNTRYCODE,
RBPINCODE,
RBBICID,
RBPARTYID,
RBADDRTYPE,
CABBANKCODE,
CABBRCODE,
CABNAME,
CABADDRESS1,
CABADDRESS2,
CABADDRESS3,
CABCITYCODE,
CABSTATECODE,
CABCNTRYCODE,
CABPINCODE,
CABBICID,
CABPARTYID,
CABADDRTYPE,
TENORMONTH,
TENORDAY,
TENORDESC,
DRAFTNO,
FIXEDTRANSITPERIOD,
GRACEPERIOD,
DOCSRCVDON,
ACCEPTDATE,
DCUTILIZEDAMT,
ADVAMTRECVD,
CARRIERCODE,
ORIGINOFGOODS,
PORTOFDEST,
CONSIGNEECNTRY,
SHPMTTERMS,
COMMCODE,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
EXPORDNO,
INSURPCNT,
INSURAMT,
INSUREDBY,
POLICYNO,
POLICYDATE,
INSURCOMPNAME,
PAYABLEAT,
PREMIUMCCY,
PREMIUMAMT,
INSURCONVRATECODE,
INSURCONVRATE,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
INVOICENO,
INVOICEDATE,
UNDERRESERVE,
INTERMTRADE,
PURPOSEBILL,
REGAPPROVALNO,
OURCOMMAMT,
OURPTAMT,
FINACCTID,
POSFINPCNT,
ACCEPTEDBILLPCNT,
DOCSTATUS
FROM TF009 where trim(billid) in ('OBC-16-001238','OBC-16-001278');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_IMPORT_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_IMPORT_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/TF/MOCK4A/TF010_IMPORT.txt
SELECT
FUNCCODE,
BILLPARAMTYPE,
CIFID,
CRNCYCODE,
UNDERDC,
SOLID,
BILLID,
DISCAMT,
OTHERDED,
BILLAMT,
BILLTENOR,
LODGEDATE,
REFCODE,
OTHERBANKSREFNO,
PARTYNAME,
ADDRESS1,
ADDRESS2,
INVOICEAMT,
INVOICECRNCY,
BANKCODE,
BRCODE,
BICID,
DUEDATEIND,
BILLDATE,
DUEDATE,
ONBOARDDATE,
NUM,
FORACID,
OPPCHRGACCID,
CUSTLIABACCTID,
ADVAMTPAID,
OTHERBANKSREFDATE,
PAYSYSID,
PARTYCIF,
ADDRESS3,
CITYCODE,
STATECODE,
CNTRYCODE,
PINCODE,
DBBANKCODE,
DBBRCODE,
DBNAME,
DBADDRESS1,
DBADDRESS2,
DBADDRESS3,
DBCITYCODE,
DBSTATECODE,
DBCNTRYCODE,
DBPINCODE,
DBBICID,
DBPARTYID,
DBADDRTYPE,
CBNAME,
CBADDRESS1,
CBADDRESS2,
CBADDRESS3,
CBCITYCODE,
CBSTATECODE,
CBCNTRYCODE,
CBPINCODE,
CBBICID,
CBPARTYID,
CBADDRTYPE,
COBBANKCODE,
COBBRCODE,
COBNAME,
COBADDRESS1,
COBADDRESS2,
COBADDRESS3,
COBCITYCODE,
COBSTATECODE,
COBCNTRYCODE,
COBPINCODE,
COBBICID,
COBPARTYID,
COBADDRTYPE,
RBBANKCODE,
RBBRCODE,
RBNAME,
RBADDRESS1,
RBADDRESS2,
RBADDRESS3,
RBCITYCODE,
RBSTATECODE,
RBCNTRYCODE,
RBPINCODE,
RBBICID,
RBPARTYID,
RBADDRTYPE,
CABBANKCODE,
CABBRCODE,
CABNAME,
CABADDRESS1,
CABADDRESS2,
CABADDRESS3,
CABCITYCODE,
CABSTATECODE,
CABCNTRYCODE,
CABPINCODE,
CABBICID,
CABPARTYID,
CABADDRTYPE,
DRAFTNO,
FIXEDTRANSITPERIOD,
GRACEPERIOD,
DOCSRCVDON,
ACCEPTDATE,
TENORMONTH,
TENORDAY,
DCUTILAMT,
SHPGRNTORDNO1,
SHPGRNTORDNO2,
SHPGRNTORDNO3,
SHPGRNTORDNO4,
SHPGRNTORDNO5,
OTHRBANKPRFTAMT,
CARRIERCODE,
ORIGINOFGOODS,
PORTOFDEST,
CONSIGNEECNTRY,
SHPMTTERMS,
COMMCODE,
DOCRCVDFLG,
DOCSTATUS,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
EXPORDNO,
LICENSEDATE,
INSURPCNT,
INSURAMT,
INSUREDBY,
POLICYNO,
POLICYDATE,
INSURCOMPNAME,
PAYABLEAT,
PREMIUMCCY,
PREMIUMAMT,
INSURCONVRATECODE,
INSURCONVRATE,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
INVOICENO,
INVOICEDATE,
UNDERRESERVE,
INTERMTRADE,
PURPOSEBILL,
REGAPPROVALNO,
OURCOMMAMT,
OURPTAMT,
PURCHASEACCTID,
LCNDAACCTID,
GOODSINTRANACCTID,
PURCHASEAMT,
PAYABLEACCTID,
PRFXMURABHALMTID,
SFXMURABHALMTID,
PRFTTABLECODE,
PROMPURRCVD,
PROMPURDATE,
PROMPURREFNO,
PURACCEPTADVICE,
EXEADVNO1,
EXEADVNO2,
EXEADVNO3,
EXEADVNO4,
EXEADVNO5,
INVACCTID,
GOODSPURTHIRDPARTY,
ISLAMICRATECODE,
ISLAMICRATE,
CAPITALTRAN,
INTENDTOEXPORT,
INWARDDCREFNUM
FROM TF010;
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_LC_ACCEPT_IMPORT_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_LC_ACCEPT_IMPORT_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF010_LC_ACCEPT_IMPORT.txt
SELECT
FUNCCODE,
BILLPARAMTYPE,
CIFID,
CRNCYCODE,
UNDERDC,
SOLID,
BILLID,
DISCAMT,
OTHERDED,
BILLAMT,
BILLTENOR,
LODGEDATE,
REFCODE,
OTHERBANKSREFNO,
PARTYNAME,
ADDRESS1,
ADDRESS2,
INVOICEAMT,
INVOICECRNCY,
BANKCODE,
BRCODE,
BICID,
DUEDATEIND,
BILLDATE,
DUEDATE,
ONBOARDDATE,
NUM,
FORACID,
OPPCHRGACCID,
CUSTLIABACCTID,
ADVAMTPAID,
OTHERBANKSREFDATE,
PAYSYSID,
PARTYCIF,
ADDRESS3,
CITYCODE,
STATECODE,
CNTRYCODE,
PINCODE,
DBBANKCODE,
DBBRCODE,
DBNAME,
DBADDRESS1,
DBADDRESS2,
DBADDRESS3,
DBCITYCODE,
DBSTATECODE,
DBCNTRYCODE,
DBPINCODE,
DBBICID,
DBPARTYID,
DBADDRTYPE,
CBNAME,
CBADDRESS1,
CBADDRESS2,
CBADDRESS3,
CBCITYCODE,
CBSTATECODE,
CBCNTRYCODE,
CBPINCODE,
CBBICID,
CBPARTYID,
CBADDRTYPE,
COBBANKCODE,
COBBRCODE,
COBNAME,
COBADDRESS1,
COBADDRESS2,
COBADDRESS3,
COBCITYCODE,
COBSTATECODE,
COBCNTRYCODE,
COBPINCODE,
COBBICID,
COBPARTYID,
COBADDRTYPE,
RBBANKCODE,
RBBRCODE,
RBNAME,
RBADDRESS1,
RBADDRESS2,
RBADDRESS3,
RBCITYCODE,
RBSTATECODE,
RBCNTRYCODE,
RBPINCODE,
RBBICID,
RBPARTYID,
RBADDRTYPE,
CABBANKCODE,
CABBRCODE,
CABNAME,
CABADDRESS1,
CABADDRESS2,
CABADDRESS3,
CABCITYCODE,
CABSTATECODE,
CABCNTRYCODE,
CABPINCODE,
CABBICID,
CABPARTYID,
CABADDRTYPE,
DRAFTNO,
FIXEDTRANSITPERIOD,
GRACEPERIOD,
DOCSRCVDON,
ACCEPTDATE,
TENORMONTH,
TENORDAY,
DCUTILAMT,
SHPGRNTORDNO1,
SHPGRNTORDNO2,
SHPGRNTORDNO3,
SHPGRNTORDNO4,
SHPGRNTORDNO5,
OTHRBANKPRFTAMT,
CARRIERCODE,
ORIGINOFGOODS,
PORTOFDEST,
CONSIGNEECNTRY,
SHPMTTERMS,
COMMCODE,
DOCRCVDFLG,
DOCSTATUS,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
EXPORDNO,
LICENSEDATE,
INSURPCNT,
INSURAMT,
INSUREDBY,
POLICYNO,
POLICYDATE,
INSURCOMPNAME,
PAYABLEAT,
PREMIUMCCY,
PREMIUMAMT,
INSURCONVRATECODE,
INSURCONVRATE,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
INVOICENO,
INVOICEDATE,
UNDERRESERVE,
INTERMTRADE,
PURPOSEBILL,
REGAPPROVALNO,
OURCOMMAMT,
OURPTAMT,
PURCHASEACCTID,
LCNDAACCTID,
GOODSINTRANACCTID,
PURCHASEAMT,
PAYABLEACCTID,
PRFXMURABHALMTID,
SFXMURABHALMTID,
PRFTTABLECODE,
PROMPURRCVD,
PROMPURDATE,
PROMPURREFNO,
PURACCEPTADVICE,
EXEADVNO1,
EXEADVNO2,
EXEADVNO3,
EXEADVNO4,
EXEADVNO5,
INVACCTID,
GOODSPURTHIRDPARTY,
ISLAMICRATECODE,
ISLAMICRATE,
CAPITALTRAN,
INTENDTOEXPORT,
INWARDDCREFNUM
FROM TF010_LC
WHERE FUNCCODE='A';
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_LC_IMPORT_EVENT_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_LC_IMPORT_EVENT_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/TF/MOCK4A/TF010_LC_IMPORT_EVENT_1.txt
SELECT
BILLID,
BILLSOLID,
MTENORBILLID,
BILLEVENTTYPE,
BILLEVENTNUMBER,
MAIN_EVENTACCOUNT,
MAIN_EVENTAMOUNT,
MAIN_EVENTAMOUNTCCY,
SUPLIMENTARY_EVENTAMOUNT,
SUPLIMENTARY_EVENTAMOUNTCCY,
MAIN_EVENT_VALUEDATE,
SUPLIMENTARY_EVENT_VALUEDATE,
AMEND_TENOR_PERIOD_MTHS,
AMEND_TENOR_PERIOD_DAYS,
AMEND_FIX_TRANSIT_PERIOD_DAYS,
AMEND_GRACE_PERIOD_DAYS,
AMEND_DUEDATEIND,
REALIZE_NOSTRO_DEBIT_VALUEDATE,
REALIZE_SUBMITTED_DATE,
REALIZE_OTHER_BANK_INT_AMT,
REALIZE_OTHER_BANK_CHG_AMT,
REALIZE_P_AND_T_AMT,
REALIZE_COMMISSION_AMT,
REALIZE_EEFC_REALIZATION_AMT,
REALIZE_LOAN_AMT,
REALIZE_LOAN_ACCOUNT_ID,
PURCHASE_MARGIN_AMT,
SUPLIMENTARY_EVENTACCOUNT,
BANKPURAMOUNT,
AMTTOBECREDITED,
DOCSTATUS
FROM TF011 where BILLID='ILC16-09004-B002';
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_LC_IMPORT_EVENT_spool_NEW.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_LC_IMPORT_EVENT_spool_NEW.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF010_LC_IMPORT_EVENT_NEW.txt
SELECT
BILLID,
BILLSOLID,
MTENORBILLID,
BILLEVENTTYPE,
BILLEVENTNUMBER,
MAIN_EVENTACCOUNT,
MAIN_EVENTAMOUNT,
MAIN_EVENTAMOUNTCCY,
SUPLIMENTARY_EVENTAMOUNT,
SUPLIMENTARY_EVENTAMOUNTCCY,
MAIN_EVENT_VALUEDATE,
SUPLIMENTARY_EVENT_VALUEDATE,
AMEND_TENOR_PERIOD_MTHS,
AMEND_TENOR_PERIOD_DAYS,
AMEND_FIX_TRANSIT_PERIOD_DAYS,
AMEND_GRACE_PERIOD_DAYS,
AMEND_DUEDATEIND,
REALIZE_NOSTRO_DEBIT_VALUEDATE,
REALIZE_SUBMITTED_DATE,
REALIZE_OTHER_BANK_INT_AMT,
REALIZE_OTHER_BANK_CHG_AMT,
REALIZE_P_AND_T_AMT,
REALIZE_COMMISSION_AMT,
REALIZE_EEFC_REALIZATION_AMT,
REALIZE_LOAN_AMT,
REALIZE_LOAN_ACCOUNT_ID,
PURCHASE_MARGIN_AMT,
SUPLIMENTARY_EVENTACCOUNT,
BANKPURAMOUNT,
AMTTOBECREDITED,
DOCSTATUS
FROM TF011_TEST_NEW;
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_LC_IMPORT_EVENT_spool_NEW_2_RECs.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_LC_IMPORT_EVENT_spool_NEW_2_RECs.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF010_LC_IMPORT_EVENT_2_REC.txt
SELECT
BILLID,
BILLSOLID,
MTENORBILLID,
BILLEVENTTYPE,
BILLEVENTNUMBER,
MAIN_EVENTACCOUNT,
MAIN_EVENTAMOUNT,
MAIN_EVENTAMOUNTCCY,
SUPLIMENTARY_EVENTAMOUNT,
SUPLIMENTARY_EVENTAMOUNTCCY,
MAIN_EVENT_VALUEDATE,
SUPLIMENTARY_EVENT_VALUEDATE,
AMEND_TENOR_PERIOD_MTHS,
AMEND_TENOR_PERIOD_DAYS,
AMEND_FIX_TRANSIT_PERIOD_DAYS,
AMEND_GRACE_PERIOD_DAYS,
AMEND_DUEDATEIND,
REALIZE_NOSTRO_DEBIT_VALUEDATE,
REALIZE_SUBMITTED_DATE,
REALIZE_OTHER_BANK_INT_AMT,
REALIZE_OTHER_BANK_CHG_AMT,
REALIZE_P_AND_T_AMT,
REALIZE_COMMISSION_AMT,
REALIZE_EEFC_REALIZATION_AMT,
REALIZE_LOAN_AMT,
REALIZE_LOAN_ACCOUNT_ID,
PURCHASE_MARGIN_AMT,
SUPLIMENTARY_EVENTACCOUNT,
BANKPURAMOUNT,
AMTTOBECREDITED,
DOCSTATUS
FROM TF11;
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_LC_IMPORT_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_LC_IMPORT_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/TF/MOCK4A/TF010_LC_IMPORT_1.txt
SELECT
FUNCCODE,
BILLPARAMTYPE,
CIFID,
CRNCYCODE,
UNDERDC,
SOLID,
BILLID,
DISCAMT,
OTHERDED,
BILLAMT,
BILLTENOR,
LODGEDATE,
REFCODE,
OTHERBANKSREFNO,
PARTYNAME,
ADDRESS1,
ADDRESS2,
INVOICEAMT,
INVOICECRNCY,
BANKCODE,
BRCODE,
BICID,
DUEDATEIND,
BILLDATE,
DUEDATE,
ONBOARDDATE,
NUM,
FORACID,
OPPCHRGACCID,
CUSTLIABACCTID,
ADVAMTPAID,
OTHERBANKSREFDATE,
PAYSYSID,
PARTYCIF,
ADDRESS3,
CITYCODE,
STATECODE,
CNTRYCODE,
PINCODE,
DBBANKCODE,
DBBRCODE,
DBNAME,
DBADDRESS1,
DBADDRESS2,
DBADDRESS3,
DBCITYCODE,
DBSTATECODE,
DBCNTRYCODE,
DBPINCODE,
DBBICID,
DBPARTYID,
DBADDRTYPE,
CBNAME,
CBADDRESS1,
CBADDRESS2,
CBADDRESS3,
CBCITYCODE,
CBSTATECODE,
CBCNTRYCODE,
CBPINCODE,
CBBICID,
CBPARTYID,
CBADDRTYPE,
COBBANKCODE,
COBBRCODE,
COBNAME,
COBADDRESS1,
COBADDRESS2,
COBADDRESS3,
COBCITYCODE,
COBSTATECODE,
COBCNTRYCODE,
COBPINCODE,
COBBICID,
COBPARTYID,
COBADDRTYPE,
RBBANKCODE,
RBBRCODE,
RBNAME,
RBADDRESS1,
RBADDRESS2,
RBADDRESS3,
RBCITYCODE,
RBSTATECODE,
RBCNTRYCODE,
RBPINCODE,
RBBICID,
RBPARTYID,
RBADDRTYPE,
CABBANKCODE,
CABBRCODE,
CABNAME,
CABADDRESS1,
CABADDRESS2,
CABADDRESS3,
CABCITYCODE,
CABSTATECODE,
CABCNTRYCODE,
CABPINCODE,
CABBICID,
CABPARTYID,
CABADDRTYPE,
DRAFTNO,
FIXEDTRANSITPERIOD,
GRACEPERIOD,
DOCSRCVDON,
ACCEPTDATE,
TENORMONTH,
TENORDAY,
DCUTILAMT,
SHPGRNTORDNO1,
SHPGRNTORDNO2,
SHPGRNTORDNO3,
SHPGRNTORDNO4,
SHPGRNTORDNO5,
OTHRBANKPRFTAMT,
CARRIERCODE,
ORIGINOFGOODS,
PORTOFDEST,
CONSIGNEECNTRY,
SHPMTTERMS,
COMMCODE,
DOCRCVDFLG,
DOCSTATUS,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
EXPORDNO,
LICENSEDATE,
INSURPCNT,
INSURAMT,
INSUREDBY,
POLICYNO,
POLICYDATE,
INSURCOMPNAME,
PAYABLEAT,
PREMIUMCCY,
PREMIUMAMT,
INSURCONVRATECODE,
INSURCONVRATE,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
INVOICENO,
INVOICEDATE,
UNDERRESERVE,
INTERMTRADE,
PURPOSEBILL,
REGAPPROVALNO,
OURCOMMAMT,
OURPTAMT,
PURCHASEACCTID,
LCNDAACCTID,
GOODSINTRANACCTID,
PURCHASEAMT,
PAYABLEACCTID,
PRFXMURABHALMTID,
SFXMURABHALMTID,
PRFTTABLECODE,
PROMPURRCVD,
PROMPURDATE,
PROMPURREFNO,
PURACCEPTADVICE,
EXEADVNO1,
EXEADVNO2,
EXEADVNO3,
EXEADVNO4,
EXEADVNO5,
INVACCTID,
GOODSPURTHIRDPARTY,
ISLAMICRATECODE,
ISLAMICRATE,
CAPITALTRAN,
INTENDTOEXPORT,
INWARDDCREFNUM
FROM TF010_LC
WHERE FUNCCODE='G' and BILLID='ILC16-09004-B002';
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_LC_IMPORT_spool_2_RECs.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_LC_IMPORT_spool_2_RECs.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF010_LC_IMPORT_SAR.txt
SELECT
FUNCCODE,
BILLPARAMTYPE,
CIFID,
CRNCYCODE,
UNDERDC,
SOLID,
BILLID,
DISCAMT,
OTHERDED,
BILLAMT,
BILLTENOR,
LODGEDATE,
REFCODE,
OTHERBANKSREFNO,
PARTYNAME,
ADDRESS1,
ADDRESS2,
INVOICEAMT,
INVOICECRNCY,
BANKCODE,
BRCODE,
BICID,
DUEDATEIND,
BILLDATE,
DUEDATE,
ONBOARDDATE,
NUM,
FORACID,
OPPCHRGACCID,
CUSTLIABACCTID,
ADVAMTPAID,
OTHERBANKSREFDATE,
PAYSYSID,
PARTYCIF,
ADDRESS3,
CITYCODE,
STATECODE,
CNTRYCODE,
PINCODE,
DBBANKCODE,
DBBRCODE,
DBNAME,
DBADDRESS1,
DBADDRESS2,
DBADDRESS3,
DBCITYCODE,
DBSTATECODE,
DBCNTRYCODE,
DBPINCODE,
DBBICID,
DBPARTYID,
DBADDRTYPE,
CBNAME,
CBADDRESS1,
CBADDRESS2,
CBADDRESS3,
CBCITYCODE,
CBSTATECODE,
CBCNTRYCODE,
CBPINCODE,
CBBICID,
CBPARTYID,
CBADDRTYPE,
COBBANKCODE,
COBBRCODE,
COBNAME,
COBADDRESS1,
COBADDRESS2,
COBADDRESS3,
COBCITYCODE,
COBSTATECODE,
COBCNTRYCODE,
COBPINCODE,
COBBICID,
COBPARTYID,
COBADDRTYPE,
RBBANKCODE,
RBBRCODE,
RBNAME,
RBADDRESS1,
RBADDRESS2,
RBADDRESS3,
RBCITYCODE,
RBSTATECODE,
RBCNTRYCODE,
RBPINCODE,
RBBICID,
RBPARTYID,
RBADDRTYPE,
CABBANKCODE,
CABBRCODE,
CABNAME,
CABADDRESS1,
CABADDRESS2,
CABADDRESS3,
CABCITYCODE,
CABSTATECODE,
CABCNTRYCODE,
CABPINCODE,
CABBICID,
CABPARTYID,
CABADDRTYPE,
DRAFTNO,
FIXEDTRANSITPERIOD,
GRACEPERIOD,
DOCSRCVDON,
ACCEPTDATE,
TENORMONTH,
TENORDAY,
DCUTILAMT,
SHPGRNTORDNO1,
SHPGRNTORDNO2,
SHPGRNTORDNO3,
SHPGRNTORDNO4,
SHPGRNTORDNO5,
OTHRBANKPRFTAMT,
CARRIERCODE,
ORIGINOFGOODS,
PORTOFDEST,
CONSIGNEECNTRY,
SHPMTTERMS,
COMMCODE,
DOCRCVDFLG,
DOCSTATUS,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
EXPORDNO,
LICENSEDATE,
INSURPCNT,
INSURAMT,
INSUREDBY,
POLICYNO,
POLICYDATE,
INSURCOMPNAME,
PAYABLEAT,
PREMIUMCCY,
PREMIUMAMT,
INSURCONVRATECODE,
INSURCONVRATE,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
INVOICENO,
INVOICEDATE,
UNDERRESERVE,
INTERMTRADE,
PURPOSEBILL,
REGAPPROVALNO,
OURCOMMAMT,
OURPTAMT,
PURCHASEACCTID,
LCNDAACCTID,
GOODSINTRANACCTID,
PURCHASEAMT,
PAYABLEACCTID,
PRFXMURABHALMTID,
SFXMURABHALMTID,
PRFTTABLECODE,
PROMPURRCVD,
PROMPURDATE,
PROMPURREFNO,
PURACCEPTADVICE,
EXEADVNO1,
EXEADVNO2,
EXEADVNO3,
EXEADVNO4,
EXEADVNO5,
INVACCTID,
GOODSPURTHIRDPARTY,
ISLAMICRATECODE,
ISLAMICRATE,
CAPITALTRAN,
INTENDTOEXPORT,
INWARDDCREFNUM
FROM TF010_LC where CRNCYCODE='SAR' ;
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_LC_IMPORT_spool_G.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_LC_IMPORT_spool_G.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF010_LC_IMPORT.txt
SELECT
FUNCCODE,
BILLPARAMTYPE,
CIFID,
CRNCYCODE,
UNDERDC,
SOLID,
BILLID,
DISCAMT,
OTHERDED,
BILLAMT,
BILLTENOR,
LODGEDATE,
REFCODE,
OTHERBANKSREFNO,
PARTYNAME,
ADDRESS1,
ADDRESS2,
INVOICEAMT,
INVOICECRNCY,
BANKCODE,
BRCODE,
BICID,
DUEDATEIND,
BILLDATE,
DUEDATE,
ONBOARDDATE,
NUM,
FORACID,
OPPCHRGACCID,
CUSTLIABACCTID,
ADVAMTPAID,
OTHERBANKSREFDATE,
PAYSYSID,
PARTYCIF,
ADDRESS3,
CITYCODE,
STATECODE,
CNTRYCODE,
PINCODE,
DBBANKCODE,
DBBRCODE,
DBNAME,
DBADDRESS1,
DBADDRESS2,
DBADDRESS3,
DBCITYCODE,
DBSTATECODE,
DBCNTRYCODE,
DBPINCODE,
DBBICID,
DBPARTYID,
DBADDRTYPE,
CBNAME,
CBADDRESS1,
CBADDRESS2,
CBADDRESS3,
CBCITYCODE,
CBSTATECODE,
CBCNTRYCODE,
CBPINCODE,
CBBICID,
CBPARTYID,
CBADDRTYPE,
COBBANKCODE,
COBBRCODE,
COBNAME,
COBADDRESS1,
COBADDRESS2,
COBADDRESS3,
COBCITYCODE,
COBSTATECODE,
COBCNTRYCODE,
COBPINCODE,
COBBICID,
COBPARTYID,
COBADDRTYPE,
RBBANKCODE,
RBBRCODE,
RBNAME,
RBADDRESS1,
RBADDRESS2,
RBADDRESS3,
RBCITYCODE,
RBSTATECODE,
RBCNTRYCODE,
RBPINCODE,
RBBICID,
RBPARTYID,
RBADDRTYPE,
CABBANKCODE,
CABBRCODE,
CABNAME,
CABADDRESS1,
CABADDRESS2,
CABADDRESS3,
CABCITYCODE,
CABSTATECODE,
CABCNTRYCODE,
CABPINCODE,
CABBICID,
CABPARTYID,
CABADDRTYPE,
DRAFTNO,
FIXEDTRANSITPERIOD,
GRACEPERIOD,
DOCSRCVDON,
ACCEPTDATE,
TENORMONTH,
TENORDAY,
DCUTILAMT,
SHPGRNTORDNO1,
SHPGRNTORDNO2,
SHPGRNTORDNO3,
SHPGRNTORDNO4,
SHPGRNTORDNO5,
OTHRBANKPRFTAMT,
CARRIERCODE,
ORIGINOFGOODS,
PORTOFDEST,
CONSIGNEECNTRY,
SHPMTTERMS,
COMMCODE,
DOCRCVDFLG,
DOCSTATUS,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
EXPORDNO,
LICENSEDATE,
INSURPCNT,
INSURAMT,
INSUREDBY,
POLICYNO,
POLICYDATE,
INSURCOMPNAME,
PAYABLEAT,
PREMIUMCCY,
PREMIUMAMT,
INSURCONVRATECODE,
INSURCONVRATE,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
INVOICENO,
INVOICEDATE,
UNDERRESERVE,
INTERMTRADE,
PURPOSEBILL,
REGAPPROVALNO,
OURCOMMAMT,
OURPTAMT,
PURCHASEACCTID,
LCNDAACCTID,
GOODSINTRANACCTID,
PURCHASEAMT,
PAYABLEACCTID,
PRFXMURABHALMTID,
SFXMURABHALMTID,
PRFTTABLECODE,
PROMPURRCVD,
PROMPURDATE,
PROMPURREFNO,
PURACCEPTADVICE,
EXEADVNO1,
EXEADVNO2,
EXEADVNO3,
EXEADVNO4,
EXEADVNO5,
INVACCTID,
GOODSPURTHIRDPARTY,
ISLAMICRATECODE,
ISLAMICRATE,
CAPITALTRAN,
INTENDTOEXPORT,
INWARDDCREFNUM
FROM TF010_LC
WHERE FUNCCODE='G' and DUEDATEIND='G';
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_LC_IMPORT_spool_NEW.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_LC_IMPORT_spool_NEW.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF010_LC_IMPORT_NEW.txt
SELECT
FUNCCODE,
BILLPARAMTYPE,
CIFID,
CRNCYCODE,
UNDERDC,
SOLID,
BILLID,
DISCAMT,
OTHERDED,
BILLAMT,
BILLTENOR,
LODGEDATE,
REFCODE,
OTHERBANKSREFNO,
PARTYNAME,
ADDRESS1,
ADDRESS2,
INVOICEAMT,
INVOICECRNCY,
BANKCODE,
BRCODE,
BICID,
DUEDATEIND,
BILLDATE,
DUEDATE,
ONBOARDDATE,
NUM,
FORACID,
OPPCHRGACCID,
CUSTLIABACCTID,
ADVAMTPAID,
OTHERBANKSREFDATE,
PAYSYSID,
PARTYCIF,
ADDRESS3,
CITYCODE,
STATECODE,
CNTRYCODE,
PINCODE,
DBBANKCODE,
DBBRCODE,
DBNAME,
DBADDRESS1,
DBADDRESS2,
DBADDRESS3,
DBCITYCODE,
DBSTATECODE,
DBCNTRYCODE,
DBPINCODE,
DBBICID,
DBPARTYID,
DBADDRTYPE,
CBNAME,
CBADDRESS1,
CBADDRESS2,
CBADDRESS3,
CBCITYCODE,
CBSTATECODE,
CBCNTRYCODE,
CBPINCODE,
CBBICID,
CBPARTYID,
CBADDRTYPE,
COBBANKCODE,
COBBRCODE,
COBNAME,
COBADDRESS1,
COBADDRESS2,
COBADDRESS3,
COBCITYCODE,
COBSTATECODE,
COBCNTRYCODE,
COBPINCODE,
COBBICID,
COBPARTYID,
COBADDRTYPE,
RBBANKCODE,
RBBRCODE,
RBNAME,
RBADDRESS1,
RBADDRESS2,
RBADDRESS3,
RBCITYCODE,
RBSTATECODE,
RBCNTRYCODE,
RBPINCODE,
RBBICID,
RBPARTYID,
RBADDRTYPE,
CABBANKCODE,
CABBRCODE,
CABNAME,
CABADDRESS1,
CABADDRESS2,
CABADDRESS3,
CABCITYCODE,
CABSTATECODE,
CABCNTRYCODE,
CABPINCODE,
CABBICID,
CABPARTYID,
CABADDRTYPE,
DRAFTNO,
FIXEDTRANSITPERIOD,
GRACEPERIOD,
DOCSRCVDON,
ACCEPTDATE,
TENORMONTH,
TENORDAY,
DCUTILAMT,
SHPGRNTORDNO1,
SHPGRNTORDNO2,
SHPGRNTORDNO3,
SHPGRNTORDNO4,
SHPGRNTORDNO5,
OTHRBANKPRFTAMT,
CARRIERCODE,
ORIGINOFGOODS,
PORTOFDEST,
CONSIGNEECNTRY,
SHPMTTERMS,
COMMCODE,
DOCRCVDFLG,
DOCSTATUS,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
EXPORDNO,
LICENSEDATE,
INSURPCNT,
INSURAMT,
INSUREDBY,
POLICYNO,
POLICYDATE,
INSURCOMPNAME,
PAYABLEAT,
PREMIUMCCY,
PREMIUMAMT,
INSURCONVRATECODE,
INSURCONVRATE,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
INVOICENO,
INVOICEDATE,
UNDERRESERVE,
INTERMTRADE,
PURPOSEBILL,
REGAPPROVALNO,
OURCOMMAMT,
OURPTAMT,
PURCHASEACCTID,
LCNDAACCTID,
GOODSINTRANACCTID,
PURCHASEAMT,
PAYABLEACCTID,
PRFXMURABHALMTID,
SFXMURABHALMTID,
PRFTTABLECODE,
PROMPURRCVD,
PROMPURDATE,
PROMPURREFNO,
PURACCEPTADVICE,
EXEADVNO1,
EXEADVNO2,
EXEADVNO3,
EXEADVNO4,
EXEADVNO5,
INVACCTID,
GOODSPURTHIRDPARTY,
ISLAMICRATECODE,
ISLAMICRATE,
CAPITALTRAN,
INTENDTOEXPORT,
INWARDDCREFNUM
FROM TF010_LC_NEW
WHERE FUNCCODE='G';
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_SPEC_IMPORT_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_SPEC_IMPORT_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF010_IMPORT_TEST.txt
SELECT
FUNCCODE,
BILLPARAMTYPE,
CIFID,
CRNCYCODE,
UNDERDC,
SOLID,
BILLID,
DISCAMT,
OTHERDED,
BILLAMT,
BILLTENOR,
LODGEDATE,
REFCODE,
OTHERBANKSREFNO,
PARTYNAME,
ADDRESS1,
ADDRESS2,
INVOICEAMT,
INVOICECRNCY,
BANKCODE,
BRCODE,
BICID,
DUEDATEIND,
BILLDATE,
DUEDATE,
ONBOARDDATE,
NUM,
FORACID,
OPPCHRGACCID,
CUSTLIABACCTID,
ADVAMTPAID,
OTHERBANKSREFDATE,
PAYSYSID,
PARTYCIF,
ADDRESS3,
CITYCODE,
STATECODE,
CNTRYCODE,
PINCODE,
DBBANKCODE,
DBBRCODE,
DBNAME,
DBADDRESS1,
DBADDRESS2,
DBADDRESS3,
DBCITYCODE,
DBSTATECODE,
DBCNTRYCODE,
DBPINCODE,
DBBICID,
DBPARTYID,
DBADDRTYPE,
CBNAME,
CBADDRESS1,
CBADDRESS2,
CBADDRESS3,
CBCITYCODE,
CBSTATECODE,
CBCNTRYCODE,
CBPINCODE,
CBBICID,
CBPARTYID,
CBADDRTYPE,
COBBANKCODE,
COBBRCODE,
COBNAME,
COBADDRESS1,
COBADDRESS2,
COBADDRESS3,
COBCITYCODE,
COBSTATECODE,
COBCNTRYCODE,
COBPINCODE,
COBBICID,
COBPARTYID,
COBADDRTYPE,
RBBANKCODE,
RBBRCODE,
RBNAME,
RBADDRESS1,
RBADDRESS2,
RBADDRESS3,
RBCITYCODE,
RBSTATECODE,
RBCNTRYCODE,
RBPINCODE,
RBBICID,
RBPARTYID,
RBADDRTYPE,
CABBANKCODE,
CABBRCODE,
CABNAME,
CABADDRESS1,
CABADDRESS2,
CABADDRESS3,
CABCITYCODE,
CABSTATECODE,
CABCNTRYCODE,
CABPINCODE,
CABBICID,
CABPARTYID,
CABADDRTYPE,
DRAFTNO,
FIXEDTRANSITPERIOD,
GRACEPERIOD,
DOCSRCVDON,
ACCEPTDATE,
TENORMONTH,
TENORDAY,
DCUTILAMT,
SHPGRNTORDNO1,
SHPGRNTORDNO2,
SHPGRNTORDNO3,
SHPGRNTORDNO4,
SHPGRNTORDNO5,
OTHRBANKPRFTAMT,
CARRIERCODE,
ORIGINOFGOODS,
PORTOFDEST,
CONSIGNEECNTRY,
SHPMTTERMS,
COMMCODE,
DOCRCVDFLG,
DOCSTATUS,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
EXPORDNO,
LICENSEDATE,
INSURPCNT,
INSURAMT,
INSUREDBY,
POLICYNO,
POLICYDATE,
INSURCOMPNAME,
PAYABLEAT,
PREMIUMCCY,
PREMIUMAMT,
INSURCONVRATECODE,
INSURCONVRATE,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
INVOICENO,
INVOICEDATE,
UNDERRESERVE,
INTERMTRADE,
PURPOSEBILL,
REGAPPROVALNO,
OURCOMMAMT,
OURPTAMT,
PURCHASEACCTID,
LCNDAACCTID,
GOODSINTRANACCTID,
PURCHASEAMT,
PAYABLEACCTID,
PRFXMURABHALMTID,
SFXMURABHALMTID,
PRFTTABLECODE,
PROMPURRCVD,
PROMPURDATE,
PROMPURREFNO,
PURACCEPTADVICE,
EXEADVNO1,
EXEADVNO2,
EXEADVNO3,
EXEADVNO4,
EXEADVNO5,
INVACCTID,
GOODSPURTHIRDPARTY,
ISLAMICRATECODE,
ISLAMICRATE,
CAPITALTRAN,
INTENDTOEXPORT,
INWARDDCREFNUM
FROM TF010 where trim(BILLID) in ('IBC-16-006460','IBC-16-006442');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_SPEC_LC_IMPORT_EVENT_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_SPEC_LC_IMPORT_EVENT_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF010_LC_IMPORT_EVENT_TEST.txt
SELECT
BILLID,
BILLSOLID,
MTENORBILLID,
BILLEVENTTYPE,
BILLEVENTNUMBER,
MAIN_EVENTACCOUNT,
MAIN_EVENTAMOUNT,
MAIN_EVENTAMOUNTCCY,
SUPLIMENTARY_EVENTAMOUNT,
SUPLIMENTARY_EVENTAMOUNTCCY,
MAIN_EVENT_VALUEDATE,
SUPLIMENTARY_EVENT_VALUEDATE,
AMEND_TENOR_PERIOD_MTHS,
AMEND_TENOR_PERIOD_DAYS,
AMEND_FIX_TRANSIT_PERIOD_DAYS,
AMEND_GRACE_PERIOD_DAYS,
AMEND_DUEDATEIND,
REALIZE_NOSTRO_DEBIT_VALUEDATE,
REALIZE_SUBMITTED_DATE,
REALIZE_OTHER_BANK_INT_AMT,
REALIZE_OTHER_BANK_CHG_AMT,
REALIZE_P_AND_T_AMT,
REALIZE_COMMISSION_AMT,
REALIZE_EEFC_REALIZATION_AMT,
REALIZE_LOAN_AMT,
REALIZE_LOAN_ACCOUNT_ID,
PURCHASE_MARGIN_AMT,
SUPLIMENTARY_EVENTACCOUNT,
BANKPURAMOUNT,
AMTTOBECREDITED,
DOCSTATUS
FROM TF011 where billid in (select billid from tf010_lc where trim(num)='ILC15-08120-ABKD') order by to_date(MAIN_EVENT_VALUEDATE,'dd-mm-yyyy');
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_SPEC_LC_IMPORT_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF010_SPEC_LC_IMPORT_spool.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF010_LC_IMPORT_TEST.txt
SELECT
FUNCCODE,
BILLPARAMTYPE,
CIFID,
CRNCYCODE,
UNDERDC,
SOLID,
BILLID,
DISCAMT,
OTHERDED,
BILLAMT,
BILLTENOR,
LODGEDATE,
REFCODE,
OTHERBANKSREFNO,
PARTYNAME,
ADDRESS1,
ADDRESS2,
INVOICEAMT,
INVOICECRNCY,
BANKCODE,
BRCODE,
BICID,
DUEDATEIND,
BILLDATE,
DUEDATE,
ONBOARDDATE,
NUM,
FORACID,
OPPCHRGACCID,
CUSTLIABACCTID,
ADVAMTPAID,
OTHERBANKSREFDATE,
PAYSYSID,
PARTYCIF,
ADDRESS3,
CITYCODE,
STATECODE,
CNTRYCODE,
PINCODE,
DBBANKCODE,
DBBRCODE,
DBNAME,
DBADDRESS1,
DBADDRESS2,
DBADDRESS3,
DBCITYCODE,
DBSTATECODE,
DBCNTRYCODE,
DBPINCODE,
DBBICID,
DBPARTYID,
DBADDRTYPE,
CBNAME,
CBADDRESS1,
CBADDRESS2,
CBADDRESS3,
CBCITYCODE,
CBSTATECODE,
CBCNTRYCODE,
CBPINCODE,
CBBICID,
CBPARTYID,
CBADDRTYPE,
COBBANKCODE,
COBBRCODE,
COBNAME,
COBADDRESS1,
COBADDRESS2,
COBADDRESS3,
COBCITYCODE,
COBSTATECODE,
COBCNTRYCODE,
COBPINCODE,
COBBICID,
COBPARTYID,
COBADDRTYPE,
RBBANKCODE,
RBBRCODE,
RBNAME,
RBADDRESS1,
RBADDRESS2,
RBADDRESS3,
RBCITYCODE,
RBSTATECODE,
RBCNTRYCODE,
RBPINCODE,
RBBICID,
RBPARTYID,
RBADDRTYPE,
CABBANKCODE,
CABBRCODE,
CABNAME,
CABADDRESS1,
CABADDRESS2,
CABADDRESS3,
CABCITYCODE,
CABSTATECODE,
CABCNTRYCODE,
CABPINCODE,
CABBICID,
CABPARTYID,
CABADDRTYPE,
DRAFTNO,
FIXEDTRANSITPERIOD,
GRACEPERIOD,
DOCSRCVDON,
ACCEPTDATE,
TENORMONTH,
TENORDAY,
DCUTILAMT,
SHPGRNTORDNO1,
SHPGRNTORDNO2,
SHPGRNTORDNO3,
SHPGRNTORDNO4,
SHPGRNTORDNO5,
OTHRBANKPRFTAMT,
CARRIERCODE,
ORIGINOFGOODS,
PORTOFDEST,
CONSIGNEECNTRY,
SHPMTTERMS,
COMMCODE,
DOCRCVDFLG,
DOCSTATUS,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
EXPORDNO,
LICENSEDATE,
INSURPCNT,
INSURAMT,
INSUREDBY,
POLICYNO,
POLICYDATE,
INSURCOMPNAME,
PAYABLEAT,
PREMIUMCCY,
PREMIUMAMT,
INSURCONVRATECODE,
INSURCONVRATE,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
INVOICENO,
INVOICEDATE,
UNDERRESERVE,
INTERMTRADE,
PURPOSEBILL,
REGAPPROVALNO,
OURCOMMAMT,
OURPTAMT,
PURCHASEACCTID,
LCNDAACCTID,
GOODSINTRANACCTID,
PURCHASEAMT,
PAYABLEACCTID,
PRFXMURABHALMTID,
SFXMURABHALMTID,
PRFTTABLECODE,
PROMPURRCVD,
PROMPURDATE,
PROMPURREFNO,
PURACCEPTADVICE,
EXEADVNO1,
EXEADVNO2,
EXEADVNO3,
EXEADVNO4,
EXEADVNO5,
INVACCTID,
GOODSPURTHIRDPARTY,
ISLAMICRATECODE,
ISLAMICRATE,
CAPITALTRAN,
INTENDTOEXPORT,
INWARDDCREFNUM
FROM TF010_LC
WHERE FUNCCODE='G' and trim(num)='ILC15-08120-ABKD';
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF_CIF.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF_CIF.sql 
set head off
set feedback off
set term off
set lines 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF_CIF.txt
select
ORGKEY,
EXP_IMP_IND,
REMARKS,
REVIEW_DATE,
CENTRAL_BANKCODE,
TRADE_AUTHORITYCODE,
CAUTION_STAT,
PARTY_TYPE,
SSI_FLAG,
HUND_PCNT_EOU_FLG,
CNTRCT_LIMIT,
SPECIAL_CUST_FLAG,
PARTY_CONST,
AUTHORISED_SIGN1,
AUTHORISED_SIGN2,
AUTHORISED_SIGN3,
DC_SANCTIONINGAUTHORITY,
FC_SANCTIONINGAUTHORITY,
DC_MARGINPERCENTAGE,
DC_NEXTNOCODE,
DC_SANCTIONEXPIRYDATE,
PRODUCTION_CYCLE,
INLAND_TRADE_ALLOWED,
ENTITY_TYPE,
LEASING_LIABILITIES,
CRNCY_CODE,
CRNCY_DESC,
INDIVIDUALCORPFLAG,
CUST_NATIVE_CODE,
CUST_NATIVE,
STATE_CODE,
STATE_DESC,
CORPORATE_NAME,
PHONE,
DEL_FLG,
ADDR_1,
ADDR_2,
ADDR_3,
CNTRY_CODE,
FAXNO,
TELEX,
CITY_CODE,
CITY,
ZIP,
CORE_CUST_ID,
PHONECITYCODE,
PHONELOCALCODE,
PHONECOUNTRYCODE,
STR1,
STR2,
STR3,
STR4,
STR5,
STR6,
STR7,
STR8,
STR9,
STR10,
STR11,
STR12,
STR13,
STR14,
STR15,
DATE1,
DATE2,
DATE3,
DATE4,
DATE5,
AMOUNT1,
AMOUNT2,
AMOUNT3,
AMOUNT4,
AMOUNT5,
FLAG1,
FLAG2,
FLAG3,
FLAG4,
FLAG5,
INT1,
INT2,
INT3,
INT4,
INT5,
MLUSERFIELD1,
MLUSERFIELD2,
MLUSERFIELD3,
MLUSERFIELD4,
MLUSERFIELD5,
CREATED_FROM,
ENTITY_TYPE_CODE,
CNTRY_DESC,
CUST_FLG,
ACCOUNTID,
ENTITY_CRE_FLG,
NAME,
ENTITY_CREATE_FLG,
NONCUSTOMERID,
DC_NEXTNOCODE_RCODE,
BANK_ID,
CORPORATE_NAME_ALT1,
NAME_ALT1
from TF_CIF;
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF_CIF_SPOOL.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF_CIF_SPOOL.sql 
set head off
set feedback off
set term off
set lines 6000
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifuae/TF_CIF.txt
--spool '/export/home/migapp/devmig/output/finacle/cifuae/TF_CIF_'||(select to_char(sysdate,'DDMMYY_HHMMSS') from dual)||'.txt';
select
trim(TRADE_FINANCE_ID)||'|'||
trim(BANK_ID)||'|'||
trim(CORPORATE_NAME_ALT1)||'|'||
trim(NAME_ALT1)||'|'||
trim(CORP_ID)||'|'||
trim(CORP_KEY)||'|'||
trim(ENTITY_TYPE)||'|'||
trim(CENTRAL_BANKCODE)||'|'||
trim(TRADE_AUTHORITYCODE)||'|'||
trim(LEASING_LIABILITIES)||'|'||
trim(PRODUCTION_CYCLE)||'|'||
trim(DC_SANCTIONINGAUTHORITY)||'|'||
trim(DC_SANCTIONINGAUTHORITY_CODE)||'|'||
trim(FC_SANCTIONINGAUTHORITY)||'|'||
trim(FC_SANCTIONINGAUTHORITY_CODE)||'|'||
trim(AUTHORISED_SIGN1)||'|'||
trim(AUTHORISED_SIGN2)||'|'||
trim(AUTHORISED_SIGN3)||'|'||
trim(DC_MARGINPERCENTAGE)||'|'||
trim(DC_SANCTIONEXPIRYDATE)||'|'||
trim(DC_NEXTNOCODE)||'|'||
trim(REMARKS)||'|'||
trim(EXP_IMP_IND_CODE)||'|'||
trim(EXP_IMP_IND)||'|'||
trim(CAUTION_STAT)||'|'||
trim(PARTY_TYPE_CODE)||'|'||
trim(PARTY_TYPE)||'|'||
trim(HUND_PCNT_EOU_FLG)||'|'||
trim(INLAND_TRADE_ALLOWED)||'|'||
trim(CNTRCT_LIMIT)||'|'||
trim(CRNCY_CODE)||'|'||
trim(CRNCY_DESC)||'|'||
trim(INDIVIDUALCORPFLAG)||'|'||
trim(CUST_NATIVE_CODE)||'|'||
trim(CUST_NATIVE)||'|'||
trim(REVIEW_DATE)||'|'||
trim(SSI_FLAG)||'|'||
trim(SPECIAL_CUST_FLAG)||'|'||
trim(PARTY_CONST_CODE)||'|'||
trim(PARTY_CONST)||'|'||
trim(STATE_CODE)||'|'||
trim(STATE_DESC)||'|'||
trim(CORPORATE_NAME)||'|'||
trim(PHONE)||'|'||
trim(DEL_FLG)||'|'||
trim(ADDR_1)||'|'||
trim(ADDR_2)||'|'||
trim(ADDR_3)||'|'||
trim(CNTRY_CODE)||'|'||
trim(FAXNO)||'|'||
trim(TELEX)||'|'||
trim(CITY_CODE)||'|'||
trim(CITY)||'|'||
trim(ZIP)||'|'||
trim(CORE_CUST_ID)||'|'||
trim(PHONECITYCODE)||'|'||
trim(PHONELOCALCODE)||'|'||
trim(PHONECOUNTRYCODE)||'|'||
trim(STR1)||'|'||
trim(STR2)||'|'||
trim(STR3)||'|'||
trim(STR4)||'|'||
trim(STR5)||'|'||
trim(STR6)||'|'||
trim(STR7)||'|'||
trim(STR8)||'|'||
trim(STR9)||'|'||
trim(STR10)||'|'||
trim(STR11)||'|'||
trim(STR12)||'|'||
trim(STR13)||'|'||
trim(STR14)||'|'||
trim(STR15)||'|'||
trim(DATE1)||'|'||
trim(DATE2)||'|'||
trim(DATE3)||'|'||
trim(DATE4)||'|'||
trim(DATE5)||'|'||
trim(AMOUNT1)||'|'||
trim(AMOUNT2)||'|'||
trim(AMOUNT3)||'|'||
trim(AMOUNT4)||'|'||
trim(AMOUNT5)||'|'||
trim(FLAG1)||'|'||
trim(FLAG2)||'|'||
trim(FLAG3)||'|'||
trim(FLAG4)||'|'||
trim(FLAG5)||'|'||
trim(INT1)||'|'||
trim(INT2)||'|'||
trim(INT3)||'|'||
trim(INT4)||'|'||
trim(INT5)||'|'||
trim(MLUSERFIELD1)||'|'||
trim(MLUSERFIELD2)||'|'||
trim(MLUSERFIELD3)||'|'||
trim(MLUSERFIELD4)||'|'||
trim(MLUSERFIELD5)||'|'||
trim(BODATECREATED)||'|'||
trim(BOCREATEDBY)||'|'||
trim(BODATEMODIFIED)||'|'||
trim(BOMODIFIEDBY)||'|'||
trim(CONCURDETECT_X)||'|'||
trim(BOACLID)||'|'||
''||'|'||
trim(EXTENSIONID)||'|'||
trim(SECURITYILHINT)||'|'||
trim(SECURITYIUHINT)||'|'||
trim(SECURITYGLHINT)||'|'||
trim(SECURITYGUHINT)||'|'||
trim(CREATED_FROM)||'|'||
trim(ENTITY_TYPE_CODE)||'|'||
trim(CNTRY_DESC)||'|'||
trim(CUST_FLG)||'|'||
trim(ACCOUNTID)||'|'||
trim(ENTITY_CRE_FLG)||'|'||
trim(ORGKEY)||'|'||
trim(NAME)||'|'||
trim(ENTITY_CREATE_FLG)||'|'||
trim(NONCUSTOMERID)||'|'||
trim(DC_NEXTNOCODE_RCODE)||'|'||
trim(CHECKSUM)||'|'||
trim(TMDATE)
from tf_tradefinance;
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF_PCA_DISB.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF_PCA_DISB.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/TF/MOCK4A/PCA_DISB.txt
SELECT
ACCOUNT_NUMBER,
CRNCY_CODE,
SOL_ID,
DS_AMT,
DS_CRNCY_CODE,
DS_DATE,
DS_DUE_DATE,
PNL_INT_ST_DATE,
OPER_ACC_NUM,
INT_CODE,
INT_CRNCY_CODE,
PEGGED_FLG,
PG_FREQ_IN_MON,
PG_FREQ_IN_DAYS,
CUST_PR_INT_DR,
ACC_PR_INT_DR,
CHNL_PR_INT_DR,
ECGC_FLG,
UPLOAD_STATUS,
ACCT_SCHM,
REMARKS
FROM PCA_DISB;
SPOOL OFF;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF_PCA_MASTER.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TF_PCA_MASTER.sql 
set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/PCA_MASTER.txt
SELECT
ACCOUNT_NUMBER,
WITH_HOLDING_TAX_FLG,
WITH_HOLDING_TAX_AMT_SCOPE_FLG,
WITH_HOLDING_TAX_PERCENT,
WITH_HOLDING_TAX_FLOOR_LIMIT,
CIF_ID,
CUSTOMER_CR_PREF_PERCENT,
CUSTOMER_DR_PREF_PERCENT,
ACCOUNT_CR_PREF_PERCENT,
ACCOUNT_DR_PREF_PERCENT,
CHANNEL_CR_PREF,
CHANNEL_DR_PREF,
PEGGED_FLAG,
PEG_FREQUENCY_IN_MNTH,
PEG_FREQUENCY_IN_DAYS,
INT_FREQ_TYPE_CREDIT,
INT_FREQ_WEEK_NUM_CREDIT,
INT_FREQ_WEEK_DAY_CREDIT,
INT_FREQ_START_DD_CREDIT,
INT_FREQ_HLDY_STAT_CREDIT,
NEXT_CR_INTEREST_RUN_DATE,
INT_FREQ_TYPE_DEBIT,
INT_FREQ_WEEK_NUM_DEBIT,
INT_FREQ_WEEK_DAY_DEBIT,
INT_FREQ_START_DD_DEBIT,
INT_FREQ_HLDY_STAT_DEBIT,
NEXT_DEBIT_INTEREST_RUN_DT,
LEDGER_NUMBER,
EMPLOYEE_ID,
ACCOUNT_OPEN_DATE,
MODE_OF_OPERATION_CODE,
GL_SUB_HEAD_CODE,
SCHEME_CODE,
CHEQUE_ALLOWED_FLAG,
PASS_BOOK_PASS_SHEET_CODE,
FREEZE_CODE,
FREEZE_REASON_CODE,
FREE_TEXT,
ACCOUNT_DORMANT_FLAG,
FREE_CODE_1,
FREE_CODE_2,
FREE_CODE_3,
FREE_CODE_4,
FREE_CODE_5,
FREE_CODE_6,
FREE_CODE_7,
FREE_CODE_8,
FREE_CODE_9,
FREE_CODE_10,
INTEREST_TABLE_CODE,
ACCOUNT_LOCATION_CODE,
CURRENCY_CODE,
SERVICE_OUTLET,
ACCOUNT_MGR_USER_ID,
ACCOUNT_NAME,
SWIFT_ALLOWED_FLG,
LAST_TRANSACTION_DATE,
LAST_TRANSACTION_ANY_DATE,
EXCLUDE_FOR_COMBINED_STATEMENT,
STATEMENT_CIF_ID,
CHARGE_LEVEL_CODE,
PBF_DOWNLOAD_FLAG,
WTAX_LEVEL_FLG,
SECTOR_CODE,
SUB_SECTOR_CODE,
PURPOSE_OF_ADVN_CODE,
NATURE_OF_ADVN_CODE,
INDUSTRY_TYPE_CODE,
DEBIT_INTEREST_ACCOUNT_FLG,
DEBIT_INTEREST_ACCOUNT,
SANCTION_LIMIT,
DRAWING_POWER,
DACC_ABSOLUTE_LIMIT,
DACC_PERCENT_LIMIT,
MAXIMUM_ALLOWED_LIMIT,
HEALTH_CODE,
SANCTION_LEVEL_CODE,
SANCTION_REFERENCE_NUMBER,
LIMIT_SANCTION_DATE,
LIMIT_EXPIRING_DATE,
ACCOUNT_REVIEW_DATE,
LOAN_PAPER_DATE,
SANCTION_AUTHORITY_CODE,
ECGC_APPLICABLE_FLAG,
ECGC_ACCOUNT,
DUE_DATE,
RPC_ACCOUNT_FLAG,
DISBURSEMENT_INDICATOR,
LAST_COMPOUND_DATE,
DAILY_COMPOUNDING_OF_INT_FLG,
COMP_REST_DAY_FLAG,
USE_DISCOUNT_RATE_FLG,
DUMMY,
ACCOUNT_STATUS_DATE,
IBAN_NUMBER,
IAS_CODE,
CHANNEL_ID,
CHANNEL_LEVEL_CODE,
INT_SUSPENSE_AMT,
PENAL_INT_SUSPENSE_AMT,
CHRGE_OFF_FLG,
PD_FLG,
PD_XFER_DATE,
CHRGE_OFF_DATE,
CHRGE_OFF_PRINCIPAL,
PENDING_INTEREST,
PRINCIPAL_RECOVERY,
INTEREST_RECOVERY,
CHARGE_OFF_TYPE,
MASTER_ACCT_NUM,
PENAL_PROD_MTHD_FLG,
PENAL_RATE_MTHD_FLG,
WAIVE_MIN_COLL_INT,
RULE_CODE,
PS_DIFF_FREQ_REL_PARTY_FLG,
SWIFT_DIFF_FREQ_REL_PARTY_FLG,
ADDRESS_TYPE,
PHONE_TYPE,
EMAIL_TYPE,
ACCRUED_PENAL_INT_RECOVERY,
PENAL_INT_RECOVERY,
COLL_INT_RECOVERY,
COLL_PENAL_INT_RECOVERY,
PENDING_PENAL_INTEREST,
PENDING_PENAL_BOOKED_INTEREST,
INT_RATE_PRD_IN_MONTHS,
INT_RATE_PRD_IN_DAYS,
PENAL_INT_TBL_CODE,
PENAL_PREF_PCNT,
INTERPOLATION_METHOD,
IS_ACCOUNT_HEDGED_FLAG,
USED_FOR_NETTING_OF_FLAG
FROM PCA_MASTER;
SPOOL OFF;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TRADE_ttum.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
TRADE_ttum.sql 
-- File Name		: spool TTUM2
-- File Created for	: Creation of source table
-- Created By		: Alavudeen B.S
-- Client		: EmiratesNBD Bank
-- Created On		: 01-06-2014
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/others/TRADE_TTUM1.txt
select Account_Number||
		Currency_Code||
		SOL_ID||
		Part_Tran_Type||
		Transaction_Amount||
		Transaction_Particular||
		Account_Report_Code||
		Reference_Number||
		Instrument_Type||
		Instrument_Date||
		Instrument_Alpha||
		Actual_Instrument_Number||
		Navigation_Flag_For_HO_Trans||
		Reference_Amount||
		Reference_Currency_Code||
		Rate_Code||
		Rate||
		Value_date||
		GL_date||
		Category_Code||
		To__From_Bank_Code||
		To__From_Branch_Code||
		Advc_Extension_Counter_Code||
		BAR_Advice_Gen_Indicator||
		BAR_Advice_Number||
		BAR_Advice_Date||
		Bill_Number||
		Header_Text_Code||
		Header_Free_Text||
		Particulars_Line_1||
		Particulars_Line_2||
		Particulars_Line_3||
		Particulars_Line_4||
		Particulars_Line_5||
		Amount_Line_1||
		Amount_Line_2||
		Amount_Line_3||
		Amount_Line_4||
		Amount_Line_5||
		Remarks||
		Payee_Account_Number||
		Received_BAR_Advice_Number||
		Received_BAR_Advice_Date||
		Original_Transaction_Date||
		Original_Transaction_ID||
		Original_Part_Txn_Serial_No||
		IBAN_Number||
		Free_text||
		Entity_ID||
		Entity_Type||
		Flow_ID
from TRADE_TTUM order by sol_id,currency_code,part_tran_type asc;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
trade_ttum01_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
trade_ttum01_spool.sql 
-- File Name		: spool TTUM2
-- File Created for	: Creation of source table
-- Created By		: Alavudeen B.S
-- Client		: EmiratesNBD Bank
-- Created On		: 01-06-2014
-------------------------------------------------------------------
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/others/TRADE_TTUM01.txt
select Account_Number||
		Currency_Code||
		SOL_ID||
		Part_Tran_Type||
		Transaction_Amount||
		Transaction_Particular||
		Account_Report_Code||
		Reference_Number||
		Instrument_Type||
		Instrument_Date||
		Instrument_Alpha||
		Actual_Instrument_Number||
		Navigation_Flag_For_HO_Trans||
		Reference_Amount||
		Reference_Currency_Code||
		Rate_Code||
		Rate||
		Value_date||
		GL_date||
		Category_Code||
		To__From_Bank_Code||
		To__From_Branch_Code||
		Advc_Extension_Counter_Code||
		BAR_Advice_Gen_Indicator||
		BAR_Advice_Number||
		BAR_Advice_Date||
		Bill_Number||
		Header_Text_Code||
		Header_Free_Text||
		Particulars_Line_1||
		Particulars_Line_2||
		Particulars_Line_3||
		Particulars_Line_4||
		Particulars_Line_5||
		Amount_Line_1||
		Amount_Line_2||
		Amount_Line_3||
		Amount_Line_4||
		Amount_Line_5||
		Remarks||
		Payee_Account_Number||
		Received_BAR_Advice_Number||
		Received_BAR_Advice_Date||
		Original_Transaction_Date||
		Original_Transaction_ID||
		Original_Part_Txn_Serial_No||
		IBAN_Number||
		Free_text||
		Entity_ID||
		Entity_Type||
		Flow_ID
from TRADE_TTUM order by sol_id,currency_code,part_tran_type asc;
spool off;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
trade_ttum06_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
trade_ttum06_spool.sql 
-- File Name		: spool TTUM2
-- File Created for	: Creation of source table
-- Created By		: Alavudeen B.S
-- Client		: EmiratesNBD Bank
-- Created On		: 01-06-2014
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/others/TRADE_TTUM01.txt
select Account_Number||
		Currency_Code||
		SOL_ID||
		Part_Tran_Type||
		Transaction_Amount||
		Transaction_Particular||
		Account_Report_Code||
		Reference_Number||
		Instrument_Type||
		Instrument_Date||
		Instrument_Alpha||
		Actual_Instrument_Number||
		Navigation_Flag_For_HO_Trans||
		Reference_Amount||
		Reference_Currency_Code||
		Rate_Code||
		Rate||
		Value_date||
		GL_date||
		Category_Code||
		To__From_Bank_Code||
		To__From_Branch_Code||
		Advc_Extension_Counter_Code||
		BAR_Advice_Gen_Indicator||
		BAR_Advice_Number||
		BAR_Advice_Date||
		Bill_Number||
		Header_Text_Code||
		Header_Free_Text||
		Particulars_Line_1||
		Particulars_Line_2||
		Particulars_Line_3||
		Particulars_Line_4||
		Particulars_Line_5||
		Amount_Line_1||
		Amount_Line_2||
		Amount_Line_3||
		Amount_Line_4||
		Amount_Line_5||
		Remarks||
		Payee_Account_Number||
		Received_BAR_Advice_Number||
		Received_BAR_Advice_Date||
		Original_Transaction_Date||
		Original_Transaction_ID||
		Original_Part_Txn_Serial_No||
		IBAN_Number||
		Free_text||
		Entity_ID||
		Entity_Type||
		Flow_ID
from TRADE_TTUM order by sol_id,currency_code,part_tran_type asc;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum01_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum01_spool.sql 
-- File Name		: spool TTUM1
-- File Created for	: Creation of source table
-- Created By		: Alavudeen B.S
-- Client		: EmiratesNBD Bank
-- Created On		: 01-06-2014
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
set space 0
set colsep ''
spool $MIG_PATH/output/finacle/ttum/TTUM01.txt
select 
		Account_Number||
		Currency_Code||
		SOL_ID||
		Part_Tran_Type||
		Transaction_Amount||
		Transaction_Particular||
		Account_Report_Code||
		Reference_Number||
		Instrument_Type||
		Instrument_Date||
		Instrument_Alpha||
		Actual_Instrument_Number||
		Navigation_Flag_For_HO_Trans||
		Reference_Amount||
		Reference_Currency_Code||
		Rate_Code||
		Rate||
		Value_date||
		GL_date||
		Category_Code||
		To__From_Bank_Code||
		To__From_Branch_Code||
		Advc_Extension_Counter_Code||
		BAR_Advice_Gen_Indicator||
		BAR_Advice_Number||
		BAR_Advice_Date||
		Bill_Number||
		Header_Text_Code||
		Header_Free_Text||
		Particulars_Line_1||
		Particulars_Line_2||
		Particulars_Line_3||
		Particulars_Line_4||
		Particulars_Line_5||
		Amount_Line_1||
		Amount_Line_2||
		Amount_Line_3||
		Amount_Line_4||
		Amount_Line_5||
		Remarks||
		Payee_Account_Number||
		Received_BAR_Advice_Number||
		Received_BAR_Advice_Date||
		Original_Transaction_Date||
		Original_Transaction_ID||
		Original_Part_Txn_Serial_No||
		IBAN_Number||
		Free_text||
		Entity_ID||
		Entity_Type||
		Flow_ID
 from TTUM1_O_TABLE order by sol_id,part_tran_type,currency_code;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum02_set2_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum02_set2_spool.sql 
-- File Name		: spool TTUM2
-- File Created for	: Creation of source table
-- Created By		: Alavudeen B.S
-- Client		: EmiratesNBD Bank
-- Created On		: 01-06-2014
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ttum/TTUM02_SET2.txt
select Account_Number||
		Currency_Code||
		SOL_ID||
		Part_Tran_Type||
		Transaction_Amount||
		Transaction_Particular||
		Account_Report_Code||
		Reference_Number||
		Instrument_Type||
		Instrument_Date||
		Instrument_Alpha||
		Actual_Instrument_Number||
		Navigation_Flag_For_HO_Trans||
		Reference_Amount||
		Reference_Currency_Code||
		Rate_Code||
		Rate||
		Value_date||
		GL_date||
		Category_Code||
		To__From_Bank_Code||
		To__From_Branch_Code||
		Advc_Extension_Counter_Code||
		BAR_Advice_Gen_Indicator||
		BAR_Advice_Number||
		BAR_Advice_Date||
		Bill_Number||
		Header_Text_Code||
		Header_Free_Text||
		Particulars_Line_1||
		Particulars_Line_2||
		Particulars_Line_3||
		Particulars_Line_4||
		Particulars_Line_5||
		Amount_Line_1||
		Amount_Line_2||
		Amount_Line_3||
		Amount_Line_4||
		Amount_Line_5||
		Remarks||
		Payee_Account_Number||
		Received_BAR_Advice_Number||
		Received_BAR_Advice_Date||
		Original_Transaction_Date||
		Original_Transaction_ID||
		Original_Part_Txn_Serial_No||
--		IBAN_Number|| commented based on Avinash and Manoj confirmation on the date of 17-02-2016
		Free_text||
		Entity_ID||
		Entity_Type||
		Flow_ID
from TTUM2_O_TABLE_SET2 
order by sol_id,currency_code,part_tran_type asc;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum02_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum02_spool.sql 
-- File Name		: spool TTUM2
-- File Created for	: Creation of source table
-- Created By		: Alavudeen B.S
-- Client		: EmiratesNBD Bank
-- Created On		: 01-06-2014
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ttum/TTUM2_O_TABLE.txt
select Account_Number||
		Currency_Code||
		SOL_ID||
		Part_Tran_Type||
		Transaction_Amount||
		Transaction_Particular||
		Account_Report_Code||
		Reference_Number||
		Instrument_Type||
		Instrument_Date||
		Instrument_Alpha||
		Actual_Instrument_Number||
		Navigation_Flag_For_HO_Trans||
		Reference_Amount||
		Reference_Currency_Code||
		Rate_Code||
		Rate||
		Value_date||
		GL_date||
		Category_Code||
		To__From_Bank_Code||
		To__From_Branch_Code||
		Advc_Extension_Counter_Code||
		BAR_Advice_Gen_Indicator||
		BAR_Advice_Number||
		BAR_Advice_Date||
		Bill_Number||
		Header_Text_Code||
		Header_Free_Text||
		Particulars_Line_1||
		Particulars_Line_2||
		Particulars_Line_3||
		Particulars_Line_4||
		Particulars_Line_5||
		Amount_Line_1||
		Amount_Line_2||
		Amount_Line_3||
		Amount_Line_4||
		Amount_Line_5||
		Remarks||
		Payee_Account_Number||
		Received_BAR_Advice_Number||
		Received_BAR_Advice_Date||
		Original_Transaction_Date||
		Original_Transaction_ID||
		Original_Part_Txn_Serial_No||
--		IBAN_Number|| commented based on Avinash and Manoj confirmation on the date of 17-02-2016
		Free_text||
		Entity_ID||
		Entity_Type||
		Flow_ID
from TTUM2_O_TABLE
order by sol_id,currency_code,part_tran_type asc;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum03_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum03_spool.sql 
-- File Name		: spool TTUM2
-- File Created for	: Creation of source table
-- Created By		: Alavudeen B.S
-- Client		: EmiratesNBD Bank
-- Created On		: 01-06-2014
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ttum/TTUM03.txt
select Account_Number||
		Currency_Code||
		SOL_ID||
		Part_Tran_Type||
		Transaction_Amount||
		Transaction_Particular||
		Account_Report_Code||
		Reference_Number||
		Instrument_Type||
		Instrument_Date||
		Instrument_Alpha||
		Actual_Instrument_Number||
		Navigation_Flag_For_HO_Trans||
		Reference_Amount||
		Reference_Currency_Code||
		Rate_Code||
		Rate||
		Value_date||
		GL_date||
		Category_Code||
		To__From_Bank_Code||
		To__From_Branch_Code||
		Advc_Extension_Counter_Code||
		BAR_Advice_Gen_Indicator||
		BAR_Advice_Number||
		BAR_Advice_Date||
		Bill_Number||
		Header_Text_Code||
		Header_Free_Text||
		Particulars_Line_1||
		Particulars_Line_2||
		Particulars_Line_3||
		Particulars_Line_4||
		Particulars_Line_5||
		Amount_Line_1||
		Amount_Line_2||
		Amount_Line_3||
		Amount_Line_4||
		Amount_Line_5||
		Remarks||
		Payee_Account_Number||
		Received_BAR_Advice_Number||
		Received_BAR_Advice_Date||
		Original_Transaction_Date||
		Original_Transaction_ID||
		Original_Part_Txn_Serial_No||
		IBAN_Number||
		Free_text||
		Entity_ID||
		Entity_Type||
		Flow_ID
from ttum3_o_table order by sol_id,currency_code,part_tran_type asc;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum04_try_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum04_try_spool.sql 
-- File Name		: spool TTUM2
-- File Created for	: Creation of source table
-- Created By		: Alavudeen B.S
-- Client		: EmiratesNBD Bank
-- Created On		: 01-06-2014
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ttum/TTUM04_TRY.txt
select Account_Number||
		Currency_Code||
		SOL_ID||
		Part_Tran_Type||
		Transaction_Amount||
		Transaction_Particular||
		Account_Report_Code||
		Reference_Number||
		Instrument_Type||
		Instrument_Date||
		Instrument_Alpha||
		Actual_Instrument_Number||
		Navigation_Flag_For_HO_Trans||
		Reference_Amount||
		Reference_Currency_Code||
		Rate_Code||
		Rate||
		Value_date||
		GL_date||
		Category_Code||
		To__From_Bank_Code||
		To__From_Branch_Code||
		Advc_Extension_Counter_Code||
		BAR_Advice_Gen_Indicator||
		BAR_Advice_Number||
		BAR_Advice_Date||
		Bill_Number||
		Header_Text_Code||
		Header_Free_Text||
		Particulars_Line_1||
		Particulars_Line_2||
		Particulars_Line_3||
		Particulars_Line_4||
		Particulars_Line_5||
		Amount_Line_1||
		Amount_Line_2||
		Amount_Line_3||
		Amount_Line_4||
		Amount_Line_5||
		Remarks||
		Payee_Account_Number||
		Received_BAR_Advice_Number||
		Received_BAR_Advice_Date||
		Original_Transaction_Date||
		Original_Transaction_ID||
		Original_Part_Txn_Serial_No||
		IBAN_Number||
		Free_text||
		Entity_ID||
		Entity_Type||
		Flow_ID
from ttum4_try_o_table order by sol_id,currency_code,part_tran_type asc;
spool off;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum05_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum05_spool.sql 
-- File Name		: spool TTUM2
-- File Created for	: Creation of source table
-- Created By		: Alavudeen B.S
-- Client		: EmiratesNBD Bank
-- Created On		: 01-06-2014
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ttum/TTUM05.txt
select Account_Number||
		Currency_Code||
		SOL_ID||
		Part_Tran_Type||
		Transaction_Amount||
		Transaction_Particular||
		Account_Report_Code||
		Reference_Number||
		Instrument_Type||
		Instrument_Date||
		Instrument_Alpha||
		Actual_Instrument_Number||
		Navigation_Flag_For_HO_Trans||
		Reference_Amount||
		Reference_Currency_Code||
		Rate_Code||
		Rate||
		Value_date||
		GL_date||
		Category_Code||
		To__From_Bank_Code||
		To__From_Branch_Code||
		Advc_Extension_Counter_Code||
		BAR_Advice_Gen_Indicator||
		BAR_Advice_Number||
		BAR_Advice_Date||
		Bill_Number||
		Header_Text_Code||
		Header_Free_Text||
		Particulars_Line_1||
		Particulars_Line_2||
		Particulars_Line_3||
		Particulars_Line_4||
		Particulars_Line_5||
		Amount_Line_1||
		Amount_Line_2||
		Amount_Line_3||
		Amount_Line_4||
		Amount_Line_5||
		Remarks||
		Payee_Account_Number||
		Received_BAR_Advice_Number||
		Received_BAR_Advice_Date||
		Original_Transaction_Date||
		Original_Transaction_ID||
		Original_Part_Txn_Serial_No||
		IBAN_Number||
		Free_text||
		Entity_ID||
		Entity_Type||
		Flow_ID
from ttum5_o_table order by sol_id,currency_code,part_tran_type asc;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum06_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum06_spool.sql 
-- File Name		: spool TTUM2
-- File Created for	: Creation of source table
-- Created By		: Alavudeen B.S
-- Client		: EmiratesNBD Bank
-- Created On		: 01-06-2014
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ttum/TTUM06.txt
select Account_Number||
		Currency_Code||
		SOL_ID||
		Part_Tran_Type||
		Transaction_Amount||
		Transaction_Particular||
		Account_Report_Code||
		Reference_Number||
		Instrument_Type||
		Instrument_Date||
		Instrument_Alpha||
		Actual_Instrument_Number||
		Navigation_Flag_For_HO_Trans||
		Reference_Amount||
		Reference_Currency_Code||
		Rate_Code||
		Rate||
		Value_date||
		GL_date||
		Category_Code||
		To__From_Bank_Code||
		To__From_Branch_Code||
		Advc_Extension_Counter_Code||
		BAR_Advice_Gen_Indicator||
		BAR_Advice_Number||
		BAR_Advice_Date||
		Bill_Number||
		Header_Text_Code||
		Header_Free_Text||
		Particulars_Line_1||
		Particulars_Line_2||
		Particulars_Line_3||
		Particulars_Line_4||
		Particulars_Line_5||
		Amount_Line_1||
		Amount_Line_2||
		Amount_Line_3||
		Amount_Line_4||
		Amount_Line_5||
		Remarks||
		Payee_Account_Number||
		Received_BAR_Advice_Number||
		Received_BAR_Advice_Date||
		Original_Transaction_Date||
		Original_Transaction_ID||
		Original_Part_Txn_Serial_No||
		IBAN_Number||
		Free_text||
		Entity_ID||
		Entity_Type||
		Flow_ID
from TTUM6_O_TABLE order by sol_id,currency_code,part_tran_type asc;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum07_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum07_spool.sql 
-- File Name		: spool TTUM2
-- File Created for	: Creation of source table
-- Created By		: Alavudeen B.S
-- Client		: EmiratesNBD Bank
-- Created On		: 01-06-2014
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ttum/TTUM07.txt
select Account_Number||
		Currency_Code||
		SOL_ID||
		Part_Tran_Type||
		Transaction_Amount||
		Transaction_Particular||
		Account_Report_Code||
		Reference_Number||
		Instrument_Type||
		Instrument_Date||
		Instrument_Alpha||
		Actual_Instrument_Number||
		Navigation_Flag_For_HO_Trans||
		Reference_Amount||
		Reference_Currency_Code||
		Rate_Code||
		Rate||
		Value_date||
		GL_date||
		Category_Code||
		To__From_Bank_Code||
		To__From_Branch_Code||
		Advc_Extension_Counter_Code||
		BAR_Advice_Gen_Indicator||
		BAR_Advice_Number||
		BAR_Advice_Date||
		Bill_Number||
		Header_Text_Code||
		Header_Free_Text||
		Particulars_Line_1||
		Particulars_Line_2||
		Particulars_Line_3||
		Particulars_Line_4||
		Particulars_Line_5||
		Amount_Line_1||
		Amount_Line_2||
		Amount_Line_3||
		Amount_Line_4||
		Amount_Line_5||
		Remarks||
		Payee_Account_Number||
		Received_BAR_Advice_Number||
		Received_BAR_Advice_Date||
		Original_Transaction_Date||
		Original_Transaction_ID||
		Original_Part_Txn_Serial_No||
		IBAN_Number||
		Free_text||
		Entity_ID||
		Entity_Type||
		Flow_ID
from TTUM7_O_TABLE order by sol_id,currency_code,part_tran_type asc;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum2_try_rev.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum2_try_rev.sql 
-- File Name		: spool TTUM2
-- File Created for	: Creation of source table
-- Created By		: Alavudeen B.S
-- Client		: EmiratesNBD Bank
-- Created On		: 01-06-2014
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ttum/TTUM02_TRY_REV.txt
select Account_Number||
		Currency_Code||
		SOL_ID||
		Part_Tran_Type||
		Transaction_Amount||
		Transaction_Particular||
		Account_Report_Code||
		Reference_Number||
		Instrument_Type||
		Instrument_Date||
		Instrument_Alpha||
		Actual_Instrument_Number||
		Navigation_Flag_For_HO_Trans||
		Reference_Amount||
		Reference_Currency_Code||
		Rate_Code||
		Rate||
		Value_date||
		GL_date||
		Category_Code||
		To__From_Bank_Code||
		To__From_Branch_Code||
		Advc_Extension_Counter_Code||
		BAR_Advice_Gen_Indicator||
		BAR_Advice_Number||
		BAR_Advice_Date||
		Bill_Number||
		Header_Text_Code||
		Header_Free_Text||
		Particulars_Line_1||
		Particulars_Line_2||
		Particulars_Line_3||
		Particulars_Line_4||
		Particulars_Line_5||
		Amount_Line_1||
		Amount_Line_2||
		Amount_Line_3||
		Amount_Line_4||
		Amount_Line_5||
		Remarks||
		Payee_Account_Number||
		Received_BAR_Advice_Number||
		Received_BAR_Advice_Date||
		Original_Transaction_Date||
		Original_Transaction_ID||
		Original_Part_Txn_Serial_No||
--		IBAN_Number|| commented based on Avinash and Manoj confirmation on the date of 17-02-2016
		Free_text||
		Entity_ID||
		Entity_Type||
		Flow_ID
from ttum2_o_table_try_rev 
order by sol_id,currency_code,part_tran_type asc;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttumoffset_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttumoffset_spool.sql 
-- File Name		: spool TTUM2
-- File Created for	: Creation of source table
-- Created By		: Alavudeen B.S
-- Client		: EmiratesNBD Bank
-- Created On		: 01-06-2014
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ttum/TTUM_TRY_BAL.txt
select Account_Number||
		Currency_Code||
		SOL_ID||
		Part_Tran_Type||
		Transaction_Amount||
		Transaction_Particular||
		Account_Report_Code||
		Reference_Number||
		Instrument_Type||
		Instrument_Date||
		Instrument_Alpha||
		Actual_Instrument_Number||
		Navigation_Flag_For_HO_Trans||
		Reference_Amount||
		Reference_Currency_Code||
		Rate_Code||
		Rate||
		Value_date||
		GL_date||
		Category_Code||
		To__From_Bank_Code||
		To__From_Branch_Code||
		Advc_Extension_Counter_Code||
		BAR_Advice_Gen_Indicator||
		BAR_Advice_Number||
		BAR_Advice_Date||
		Bill_Number||
		Header_Text_Code||
		Header_Free_Text||
		Particulars_Line_1||
		Particulars_Line_2||
		Particulars_Line_3||
		Particulars_Line_4||
		Particulars_Line_5||
		Amount_Line_1||
		Amount_Line_2||
		Amount_Line_3||
		Amount_Line_4||
		Amount_Line_5||
		Remarks||
		Payee_Account_Number||
		Received_BAR_Advice_Number||
		Received_BAR_Advice_Date||
		Original_Transaction_Date||
		Original_Transaction_ID||
		Original_Part_Txn_Serial_No||
		IBAN_Number||
		Free_text||
		Entity_ID||
		Entity_Type||
		Flow_ID
from offset_ttum order by sol_id,currency_code,part_tran_type asc;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttumrltl_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttumrltl_spool_kw.sql 
-- File Name		: spool TTUM2
-- File Created for	: Creation of source table
-- Created By		: Alavudeen B.S
-- Client		: EmiratesNBD Bank
-- Created On		: 01-06-2014
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ttum/TTUMRLTL.txt
select Account_Number||
		Currency_Code||
		SOL_ID||
		Part_Tran_Type||
		Transaction_Amount||
		Transaction_Particular||
		Account_Report_Code||
		Reference_Number||
		Instrument_Type||
		Instrument_Date||
		Instrument_Alpha||
		Actual_Instrument_Number||
		Navigation_Flag_For_HO_Trans||
		Reference_Amount||
		Reference_Currency_Code||
		Rate_Code||
		Rate||
		Value_date||
		GL_date||
		Category_Code||
		To__From_Bank_Code||
		To__From_Branch_Code||
		Advc_Extension_Counter_Code||
		BAR_Advice_Gen_Indicator||
		BAR_Advice_Number||
		BAR_Advice_Date||
		Bill_Number||
		Header_Text_Code||
		Header_Free_Text||
		Particulars_Line_1||
		Particulars_Line_2||
		Particulars_Line_3||
		Particulars_Line_4||
		Particulars_Line_5||
		Amount_Line_1||
		Amount_Line_2||
		Amount_Line_3||
		Amount_Line_4||
		Amount_Line_5||
		Remarks||
		Payee_Account_Number||
		Received_BAR_Advice_Number||
		Received_BAR_Advice_Date||
		Original_Transaction_Date||
		Original_Transaction_ID||
		Original_Part_Txn_Serial_No||
		IBAN_Number||
		Free_text||
		Entity_ID||
		Entity_Type||
		Flow_ID
from TTUMRLTL_O_TABLE order by sol_id,currency_code,part_tran_type asc;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum_18feb.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum_18feb.sql 
-- File Name		: spool TTUM1
-- File Created for	: Creation of source table
-- Created By		: Alavudeen B.S
-- Client		: EmiratesNBD Bank
-- Created On		: 01-06-2014
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
set space 0
set colsep ''
spool $MIG_PATH/output/finacle/ttum/ttum_feb18.txt
select 
		Account_Number||
		Currency_Code||
		SOL_ID||
		Part_Tran_Type||
		Transaction_Amount||
		Transaction_Particular||
		Account_Report_Code||
		Reference_Number||
		Instrument_Type||
		Instrument_Date||
		Instrument_Alpha||
		Actual_Instrument_Number||
		Navigation_Flag_For_HO_Trans||
		Reference_Amount||
		Reference_Currency_Code||
		Rate_Code||
		Rate||
		Value_date||
		GL_date||
		Category_Code||
		To__From_Bank_Code||
		To__From_Branch_Code||
		Advc_Extension_Counter_Code||
		BAR_Advice_Gen_Indicator||
		BAR_Advice_Number||
		BAR_Advice_Date||
		Bill_Number||
		Header_Text_Code||
		Header_Free_Text||
		Particulars_Line_1||
		Particulars_Line_2||
		Particulars_Line_3||
		Particulars_Line_4||
		Particulars_Line_5||
		Amount_Line_1||
		Amount_Line_2||
		Amount_Line_3||
		Amount_Line_4||
		Amount_Line_5||
		Remarks||
		Payee_Account_Number||
		Received_BAR_Advice_Number||
		Received_BAR_Advice_Date||
		Original_Transaction_Date||
		Original_Transaction_ID||
		Original_Part_Txn_Serial_No||
		IBAN_Number||
		Free_text||
		Entity_ID||
		Entity_Type||
		Flow_ID
 from ttum_contingent_o_table order by sol_id,part_tran_type,currency_code;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum_cheques.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum_cheques.sql 
-- File Name		: spool TTUM1
-- File Created for	: Creation of source table
-- Created By		: Alavudeen B.S
-- Client		: EmiratesNBD Bank
-- Created On		: 01-06-2014
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
set space 0
set colsep ''
spool $MIG_PATH/output/finacle/ttum/TTUM_CERTIFIED_CHEQUES.txt
select 
		Account_Number||
		Currency_Code||
		SOL_ID||
		Part_Tran_Type||
		Transaction_Amount||
		Transaction_Particular||
		Account_Report_Code||
		Reference_Number||
		Instrument_Type||
		Instrument_Date||
		Instrument_Alpha||
		Actual_Instrument_Number||
		Navigation_Flag_For_HO_Trans||
		Reference_Amount||
		Reference_Currency_Code||
		Rate_Code||
		Rate||
		Value_date||
		GL_date||
		Category_Code||
		To__From_Bank_Code||
		To__From_Branch_Code||
		Advc_Extension_Counter_Code||
		BAR_Advice_Gen_Indicator||
		BAR_Advice_Number||
		BAR_Advice_Date||
		Bill_Number||
		Header_Text_Code||
		Header_Free_Text||
		Particulars_Line_1||
		Particulars_Line_2||
		Particulars_Line_3||
		Particulars_Line_4||
		Particulars_Line_5||
		Amount_Line_1||
		Amount_Line_2||
		Amount_Line_3||
		Amount_Line_4||
		Amount_Line_5||
		Remarks||
		Payee_Account_Number||
		Received_BAR_Advice_Number||
		Received_BAR_Advice_Date||
		Original_Transaction_Date||
		Original_Transaction_ID||
		Original_Part_Txn_Serial_No||
		IBAN_Number||
		Free_text||
		Entity_ID||
		Entity_Type||
		Flow_ID
 from temp order by sol_id,part_tran_type,currency_code;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum_contigent.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum_contigent.sql 
-- File Name		: spool TTUM1
-- File Created for	: Creation of source table
-- Created By		: Alavudeen B.S
-- Client		: EmiratesNBD Bank
-- Created On		: 01-06-2014
-------------------------------------------------------------------
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
set space 0
set colsep ''
spool $MIG_PATH/output/finacle/ttum/TTUM_CONTINGENT.txt
select 
		Account_Number||
		Currency_Code||
		SOL_ID||
		Part_Tran_Type||
		Transaction_Amount||
		Transaction_Particular||
		Account_Report_Code||
		Reference_Number||
		Instrument_Type||
		Instrument_Date||
		Instrument_Alpha||
		Actual_Instrument_Number||
		Navigation_Flag_For_HO_Trans||
		Reference_Amount||
		Reference_Currency_Code||
		Rate_Code||
		Rate||
		Value_date||
		GL_date||
		Category_Code||
		To__From_Bank_Code||
		To__From_Branch_Code||
		Advc_Extension_Counter_Code||
		BAR_Advice_Gen_Indicator||
		BAR_Advice_Number||
		BAR_Advice_Date||
		Bill_Number||
		Header_Text_Code||
		Header_Free_Text||
		Particulars_Line_1||
		Particulars_Line_2||
		Particulars_Line_3||
		Particulars_Line_4||
		Particulars_Line_5||
		Amount_Line_1||
		Amount_Line_2||
		Amount_Line_3||
		Amount_Line_4||
		Amount_Line_5||
		Remarks||
		Payee_Account_Number||
		Received_BAR_Advice_Number||
		Received_BAR_Advice_Date||
		Original_Transaction_Date||
		Original_Transaction_ID||
		Original_Part_Txn_Serial_No||
		IBAN_Number||
		Free_text||
		Entity_ID||
		Entity_Type||
		Flow_ID
 from ttum_contingent_o_table order by sol_id,part_tran_type,currency_code;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum_split_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
ttum_split_spool.sql 
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ttum/TTUM_split.txt
select
ACCOUNT_NUMBER||             
CURRENCY_CODE||
SOL_ID||                
PART_TRAN_TYPE||               
TRANSACTION_AMOUNT||           
TRANSACTION_PARTICULAR||       
ACCOUNT_REPORT_CODE||          
REFERENCE_NUMBER||             
INSTRUMENT_TYPE||              
INSTRUMENT_DATE||              
INSTRUMENT_ALPHA||             
ACTUAL_INSTRUMENT_NUMBER||     
NAVIGATION_FLAG_FOR_HO_TRANS|| 
REFERENCE_AMOUNT||             
REFERENCE_CURRENCY_CODE||     
RATE_CODE||                    
RATE||                         
VALUE_DATE||                   
GL_DATE||                      
CATEGORY_CODE||                
TO__FROM_BANK_CODE||           
TO__FROM_BRANCH_CODE||         
ADVC_EXTENSION_COUNTER_CODE||  
BAR_ADVICE_GEN_INDICATOR||     
BAR_ADVICE_NUMBER||            
BAR_ADVICE_DATE||              
BILL_NUMBER||                  
HEADER_TEXT_CODE||             
HEADER_FREE_TEXT||             
PARTICULARS_LINE_1||           
PARTICULARS_LINE_2||          
PARTICULARS_LINE_3||           
PARTICULARS_LINE_4||           
PARTICULARS_LINE_5||           
AMOUNT_LINE_1||                
AMOUNT_LINE_2||                
AMOUNT_LINE_3||                
AMOUNT_LINE_4||                
AMOUNT_LINE_5||                
REMARKS||                      
PAYEE_ACCOUNT_NUMBER||         
RECEIVED_BAR_ADVICE_NUMBER||   
RECEIVED_BAR_ADVICE_DATE||     
ORIGINAL_TRANSACTION_DATE||    
ORIGINAL_TRANSACTION_ID||      
ORIGINAL_PART_TXN_SERIAL_NO||  
IBAN_NUMBER||                  
FREE_TEXT||                    
ENTITY_ID||                    
ENTITY_TYPE||                  
FLOW_ID                      
from ttum_split_o_table;
EXIT; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tua04_spool_kw.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tua04_spool_kw.sql 
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/tda/KW/TUA004.txt
select 
TRANSACTION_TYPE||
TRANSACTION_SUB_TYPE||
ACCOUNT_NUMBER||
CURRENCY_CODE||
AMOUNT||
PART_TRANSACTION_TYPE||
VALUE_DATE||
AGENT_EMPLOYEE_INDICATOR||
AGENT_EMPLOYEE_CODE||
FLOW_CODE||
TRANSACTION_END_INDICATOR||';TU004_'||sol_code||'_'||currency_code||'.txt'
from tuat_o_table order by sol_code,currency_code,part_transaction_type,transaction_end_indicator ;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tua04_spool_uae.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tua04_spool_uae.sql 
set head off
set feedback off
set term off
set linesize 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/tda/UAE/TUA004.txt
select 
TRANSACTION_TYPE||
TRANSACTION_SUB_TYPE||
ACCOUNT_NUMBER||
CURRENCY_CODE||
AMOUNT||
PART_TRANSACTION_TYPE||
VALUE_DATE||
AGENT_EMPLOYEE_INDICATOR||
AGENT_EMPLOYEE_CODE||
FLOW_CODE||
TRANSACTION_END_INDICATOR||';TU004_'||sol_code||'_'||currency_code||'.txt'
from tuat_o_table order by sol_code,currency_code,part_transaction_type,transaction_end_indicator ;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
user_account_access_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
user_account_access_spool.sql 
-- File Name		: user_account_access_spool.sql
-- File Created for	: user account access
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 18-06-2017
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 3000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/ebanking/user_account_access.txt
SELECT TRIM(DB_TS)||'~'||
       TRIM(BANK_ID)||'~'||
       TRIM(AC_BANK_ID)||'~'||
       TRIM(AC_BRANCH_ID)||'~'||
       TRIM(BAY_USER_ID)||'~'||
       TRIM(CORP_USER)||'~'||
       TRIM(DEL_FLG)||'~'||
       TRIM(ACID)||'~'||
       TRIM(AC_ACCESS_FLG)||'~'||
       TRIM(AC_INQ_ACCESS_FLG)||'~'||
       TRIM(AC_TXN_ACCESS)||'~'||
       TRIM(AC_AUTH_ACCESS)||'~'||
       TRIM(R_MOD_ID)||'~'||
       TRIM(R_MOD_TIME)||'~'||
       TRIM(R_CRE_ID)||'~'||
       TRIM(R_CRE_TIME)
  FROM USER_ACCOUNT_ACCESS_O_TABLE;
  exit;