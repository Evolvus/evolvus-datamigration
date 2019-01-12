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
 
