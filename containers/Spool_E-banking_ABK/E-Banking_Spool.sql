 
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
corp_e_banking_user1_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
corp_e_banking_user1_spool.sql 
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
spool $MIG_PATH/output/finacle/ebanking/corp_e_banking_user1.txt
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
corp_e_banking_user2_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
corp_e_banking_user2_spool.sql 
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
spool $MIG_PATH/output/finacle/ebanking/corp_e_banking_user2.txt
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
from CORP_E_BANKING_USER1_O_TABLE
ORDER BY REC_NUM;
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
TRIM(SCHEME_CODE)||'|'||
TRIM(E_BANKING_ENEBLED)
from SMS_AND_E_BANKING_USER_O_TABLE
ORDER BY REC_NUM;
exit;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
user_account_access1_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
user_account_access1_spool.sql 
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
spool $MIG_PATH/output/finacle/ebanking/user_account_access1.txt
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
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
user_account_access2_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
user_account_access2_spool.sql 
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
spool $MIG_PATH/output/finacle/ebanking/user_account_access2.txt
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
  FROM USER_ACCOUNT_ACCESS1_O_TABLE;
  exit;
