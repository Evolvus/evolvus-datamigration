
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
 
