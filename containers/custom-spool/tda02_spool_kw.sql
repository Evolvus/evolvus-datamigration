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
 
