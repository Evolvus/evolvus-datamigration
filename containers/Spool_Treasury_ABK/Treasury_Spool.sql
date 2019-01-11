 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cd_deals_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cd_deals_spool.sql 
-- File Name		: cd_deals_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 24-01-2017
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/cd_deals.txt
SELECT
'Response'||'|'||
'DEAL_DATE'||'|'||
'SETTLEMENT_DATE'||'|'||
'COUNTERPARTY_STRING'||'|'||
'TRADING_BOOK'||'|'||
'DEPT_NAME'||'|'||
'SUBTYPE'||'|'||
'BUY_OR_SELL'||'|'||
'MARKET'||'|'||
'SEC_DEFN_NAME'||'|'||
'PRICE_STRING'||'|'||
'YIELD'||'|'||
'QTY_TRADED'||'|'||
'IS_INVESTMENT'||'|'||
'CONFIRM_METHOD'||'|'||
'SI_FLOW_PAY.SSI_ID'||'|'||
'SI_FLOW_PAY.NOSTRO'||'|'||
'SI_FLOW_PAY.SETT_METHOD'||'|'||
'SI_FLOW_PAY.CPTY_AGENT'||'|'||
'SI_FLOW_REC.SSI_ID'||'|'||
'SI_FLOW_REC.NOSTRO'||'|'||
'SI_FLOW_REC.SETT_METHOD'||'|'||
'SI_FLOW_REC.CPTY_AGENT'||'|'||
'BANK_CUSTODIAN_ACCT'||'|'||
'COST_OF_CARRY_REF_RATE_CODE'
FROM DUAL
UNION ALL
select
TO_CHAR(
TRIM(RESPONSE                       )||'|'||    
TRIM( DEAL_DATE                     )||'|'||
TRIM( SETTLEMENT_DATE               )||'|'||
TRIM( COUNTERPARTY_STRING           )||'|'||
TRIM( TRADING_BOOK                  )||'|'||
TRIM( DEPT_NAME                     )||'|'||
TRIM( SUBTYPE                       )||'|'||
TRIM( BUY_OR_SELL                   )||'|'||
TRIM( MARKET                        )||'|'||
TRIM( SEC_DEFN_NAME                 )||'|'||
TRIM( PRICE_STRING                  )||'|'||
TRIM( YIELD                         )||'|'||
TRIM( QTY_TRADED                    )||'|'||
TRIM( IS_INVESTMENT                 )||'|'||
TRIM( CONFIRM_METHOD                )||'|'||
TRIM( SI_FLOW_PAY_SSI_ID            )||'|'||
TRIM( SI_FLOW_PAY_NOSTRO            )||'|'||
TRIM( SI_FLOW_PAY_SETT_METHOD       )||'|'||
TRIM( SI_FLOW_PAY_CPTY_AGENT        )||'|'||
TRIM( SI_FLOW_REC_SSI_ID            )||'|'||
TRIM( SI_FLOW_REC_NOSTRO            )||'|'||
TRIM( SI_FLOW_REC_SETT_METHOD       )||'|'||
TRIM( SI_FLOW_REC_CPTY_AGENT        )||'|'||
TRIM( BANK_CUSTODIAN_ACCT           )||'|'||
TRIM( COST_OF_CARRY_REF_RATE_CODE   )
)
from TR_CD_DEALS_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cd_security_defn_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
cd_security_defn_spool.sql 
-- File Name		: security_defn_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/cd_security_defn.txt
SELECT 
'RESPONSE'||'|'||
'TEMPLATE_NAME'||'|'||
'NAME'||'|'||
'ISSUE_CCY'||'|'||
'SECURITY_TYPE'||'|'||
'TYPE'||'|'||
'TAX_FREE'||'|'||
'INSTRUMENT_CLASS_DATA_NAME'||'|'||
'YIELD_METHOD'||'|'||
'YIELD_BASIS'||'|'||
'EFFECTIVE_YIELD_METHOD'||'|'||
'EFFECTIVE_YIELD_BASIS'||'|'||
'ALT_ID1'||'|'||
'ISSUE_DATE'||'|'||
'MATURITY_DATE'||'|'||
'SIDE.$1.CASH_FLOW_SIDE_TYPE'||'|'||
'SIDE.$1.FIX_RATE'||'|'||
'SIDE.$1.REFERENCE_RATE'||'|'||
'REDEMPTION_VALUE'||'|'||
'SIDE.$1.CREATION_FREQUENCY'||'|'||
'ISSUER_STRING'||'|'||
'ACTIVE_STATUS'||'|'||
'ENTITY_PERM_GROUP'||'|'||
'MTM_VALUATION'||'|'||
'DESCRIPTION'||'|'||
'SHORT_SALES_ACTION'||'|'||
'MIN_QTY_METHOD'||'|'||
'MINIMUM_AMOUNT'||'|'||
'QTY_MULTIPLE'||'|'||
'REALIZATION_METHOD'||'|'||
'AMORTISATION_METHOD'||'|'||
'DATE_TO_REALIZE'||'|'||
'AMORT_APPLICABILITY'||'|'||
'ISSUE_PRICE'||'|'||
'ISSUANCE_FACE'||'|'||
'PRICE_METHOD'||'|'||
'PRICE_BASIS'||'|'||
'ACC_COUPON_METHOD'||'|'||
'TRADED_ACCRUED_COUPON'||'|'||
'TRADED_BASIS_CODE'||'|'||
'YIELD_COMPOUNDING_FREQUENCY'||'|'||
'PRICE_QUOTATION'||'|'||
'PRICE_ROUNDING_DIGITS'||'|'||
'YIELD_DISPLAY_PLACES'||'|'||
'SETTLEMENT_CALENDAR_SET'||'|'||
'SETTLEMENT_DAY_CONVENTION'||'|'||
'SETTLEMENT_DELAY'||'|'||
'IS_SPLITABLE'||'|'||
'IS_REPOABLE'||'|'||
'AUTO_REALIZE'||'|'||
'LAST_COUPON_AS_MM'||'|'||
'MRS_PRICE_YIELD'||'|'||
'TAXABLE'||'|'||
'WH_TAX_PERCENT'||'|'||
'CASH_FLOW.$1.WH_TAX_PERCENT'||'|'||
'SIDE.$1.WH_TAX_PERCENT'||'|'||
'IS_COUPON_BEARING'||'|'||
'INDEX_SETT_CCY'||'|'||
'INDEX_SETTLEMENT_GAP'||'|'||
'SIDE.$1.NOTIONAL_AMOUNT.CURRENCY'||'|'||
'SIDE.$1.NOTIONAL_AMOUNT.VALUE'||'|'||
'SIDE.$1.BASIS_CODE'||'|'||
'SIDE.$1.CASH_FLOW_CALENDAR_SET_NAME'||'|'||
'SIDE.$1.CASH_FLOW_DAY_CONVENTION'||'|'||
'SIDE.$1.START_DATE_DAY_CONVENTION'||'|'||
'SIDE.$1.END_DATE_DAY_CONVENTION'||'|'||
'SIDE.$1.ROUNDING_METHOD'||'|'||
'SIDE.$1.AMOUNT_ROUNDING_METHOD'||'|'||
'SIDE.$1.RELATIVE_SETTLEMENT_DELAY'||'|'||
'SETTLEMENT_DAY_CONVENTION'||'|'||
'SIDE.$1.CURVE_DATA.FX_FWD_CURVE_ID'||'|'||
'SIDE.$1.CURVE_DATA.DISC_CURVE_ID'||'|'||
'SIDE.$1.CURVE_DATA.IRR_CURVE_ID'||'|'||
'GENERATE_CASH_FLOWS_BUTTON'||'|'||
'GUARANTEED_BY'
FROM DUAL
UNION ALL
select
TO_CHAR(TRIM(RESPONSE)||'|'||
TRIM(TEMPLATE_NAME)||'|'||
TRIM(NAME)||'|'||
TRIM(ISSUE_CCY)||'|'||
TRIM(SECURITY_TYPE)||'|'||
TRIM(A_TYPE)||'|'||
TRIM(TAX_FREE)||'|'||
TRIM(INSTRUMENT_CLASS_DATA_NAME)||'|'||
TRIM(YIELD_METHOD)||'|'||
TRIM(YIELD_BASIS)||'|'||
TRIM(EFFECTIVE_YIELD_METHOD)||'|'||
TRIM(EFFECTIVE_YIELD_BASIS)||'|'||
TRIM(ALT_ID1)||'|'||
TRIM(ISSUE_DATE)||'|'||
TRIM(MATURITY_DATE)||'|'||
TRIM(SIDE_$1_CASH_FLOW_SIDE_TYPE)||'|'||
TRIM(SIDE_$1_FIX_RATE)||'|'||
TRIM(SIDE_$1_REFERENCE_RATE)||'|'||
TRIM(REDEMPTION_VALUE)||'|'||
TRIM(SIDE_$1_CREATION_FREQUENCY)||'|'||
TRIM(ISSUER_STRING)||'|'||
TRIM(ACTIVE_STATUS)||'|'||
TRIM(ENTITY_PERM_GROUP)||'|'||
TRIM(MTM_VALUATION)||'|'||
TRIM(DESCRIPTION)||'|'||
TRIM(SHORT_SALES_ACTION)||'|'||
TRIM(MIN_QTY_METHOD)||'|'||
TRIM(MINIMUM_AMOUNT)||'|'||
TRIM(QTY_MULTIPLE)||'|'||
TRIM(REALIZATION_METHOD)||'|'||
TRIM(AMORTISATION_METHOD)||'|'||
TRIM(DATE_TO_REALIZE)||'|'||
TRIM(AMORT_APPLICABILITY)||'|'||
TRIM(ISSUE_PRICE)||'|'||
TRIM(ISSUANCE_FACE)||'|'||
TRIM(PRICE_METHOD)||'|'||
TRIM(PRICE_BASIS)||'|'||
TRIM(ACC_COUPON_METHOD)||'|'||
TRIM(TRADED_ACCRUED_COUPON)||'|'||
TRIM(TRADED_BASIS_CODE)||'|'||
TRIM(YIELD_COMPOUNDING_FREQUENCY)||'|'||
TRIM(PRICE_QUOTATION)||'|'||
TRIM(PRICE_ROUNDING_DIGITS)||'|'||
TRIM(YIELD_DISPLAY_PLACES)||'|'||
TRIM(SETTLEMENT_CALENDAR_SET)||'|'||
TRIM(SETTLEMENT_DAY_CONVENTION)||'|'||
TRIM(SETTLEMENT_DELAY)||'|'||
TRIM(IS_SPLITABLE)||'|'||
TRIM(IS_REPOABLE)||'|'||
TRIM(AUTO_REALIZE)||'|'||
TRIM(LAST_COUPON_AS_MM)||'|'||
TRIM(MRS_PRICE_YIELD)||'|'||
TRIM(TAXABLE)||'|'||
TRIM(WH_TAX_PERCENT)||'|'||
TRIM(CASH_FLOW_$1_WH_TAX_PERCENT)||'|'||
TRIM(SIDE_$1_WH_TAX_PERCENT)||'|'||
TRIM(IS_COUPON_BEARING)||'|'||
TRIM(INDEX_SETT_CCY)||'|'||
TRIM(INDEX_SETTLEMENT_GAP)||'|'||
TRIM(SIDE_NOTIONAL_AMOUNT_CURRENCY)||'|'||
TRIM(SIDE_$1_NOTIONAL_AMOUNT_VALUE)||'|'||
TRIM(SIDE_$1_BASIS_CODE)||'|'||
TRIM(SIDE_CASH_FLOW_CALDAR_SET_NAME)||'|'||
TRIM(SIDE_CASH_FLOW_DAY_CONVENTION)||'|'||
TRIM(SIDE_START_DATE_DAY_CONVENTION)||'|'||
TRIM(SIDE_END_DATE_DAY_CONVENTION)||'|'||
TRIM(SIDE_$1_ROUNDING_METHOD)||'|'||
TRIM(SIDE_$1_AMOUNT_ROUNDING_METHOD)||'|'||
TRIM(SIDE_RELATIVE_SETTLEMENT_DELAY)||'|'||
TRIM(SETTLEMENT_DAY_CONVENTION_1)||'|'||
TRIM(SIDE_CRV_DATA_FX_FWD_CURVE_ID)||'|'||
TRIM(SIDE_CURVE_DATA_DISC_CURVE_ID)||'|'||
TRIM(SIDE_CURVE_DATA_IRR_CURVE_ID)||'|'||
TRIM(GENERATE_CASH_FLOWS_BUTTON)||'|'||
TRIM(GUARANTEED_BY))
from CD_SECURITY_DEFN_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
com_loan_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
com_loan_spool.sql 
-- File Name		: com_loan_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/COM_LOAN.TXT
SELECT
'RESPONSE'||'|'||
'DEAL_IDENTIFIER'||'|'||
'TRADING_BOOK'||'|'||
'ENTITY_NAME'||'|'||
'DEPT_NAME'||'|'||
'SUBTYPE'||'|'||
'COUNTERPARTY_STRING'||'|'||
'DEAL_DATE'||'|'||
'START_DATE'||'|'||
'END_DATE'||'|'||
'SIDE.SIDE_ONE.LONG_OR_SHORT'||'|'||
'TYPE_STRING'||'|'||
'CURRENCY_STRING'||'|'||
'SIDE.SIDE_ONE.NOTIONAL_AMOUNT.VALUE'||'|'||
'SIDE.SIDE_ONE.BASIS_CODE'||'|'||
'SIDE.SIDE_ONE.CREATION_FREQUENCY'||'|'||
'SIDE.SIDE_ONE.FIX_RATE'||'|'||
'SIDE.SIDE_ONE.SPREAD_RATE'||'|'||
--'SIDE.$1.CASH_FLOW_SIDE_TYPE'||'|'||
'SIDE.SIDE_ONE.REFERENCE_RATE'||'|'||
'AUTO_OR_PENDING'||'|'||
'CONFIRM_METHOD'||'|'||
'SIDE.CURREC.SI_FLOW_PAY.SSI_ID'||'|'||
'SIDE.CURREC.SI_FLOW_PAY.NOSTRO'||'|'||
'SIDE.CURREC.SI_FLOW_PAY.SETT_METHOD'||'|'||
'SIDE.CURREC.SI_FLOW_PAY.CPTY_AGENT'||'|'||
'SIDE.CURREC.SI_FLOW_REC.SSI_ID'||'|'||
'SIDE.CURREC.SI_FLOW_REC.NOSTRO'||'|'||
'SIDE.CURREC.SI_FLOW_REC.SETT_METHOD'||'|'||
'SIDE.CURREC.SI_FLOW_REC.CPTY_AGENT'||'|'||
'SIFLOW_INTEREST_PAY.NOSTRO'||'|'||
'SIFLOW_INTEREST_PAY.SETT_METHOD'||'|'||
'SIFLOW_INTEREST_PAY.CPTY_AGENT'||'|'||
'SIFLOW_INTEREST_PAY.SSI_ID'||'|'||
'SIFLOW_INTEREST_RECIEVE.NOSTRO'||'|'||
'SIFLOW_INTEREST_RECIEVE.SETT_METHOD'||'|'||
'SIFLOW_INTEREST_RECIEVE.CPTY_AGENT'||'|'||
'SIFLOW_INTEREST_RECIEVE.SSI_ID'||'|'||
'SIDE.SIDE_ONE.COMPOUNDING_METHOD'||'|'||
'SIDE.SIDE_ONE.COMPOUNDING_FREQUENCY'||'|'||
'SIDE.SIDE_ONE.START_DATE_DAY_CONVENTION'||'|'||
'SIDE.SIDE_ONE.END_DATE_DAY_CONVENTION'||'|'||
'SIDE.SIDE_ONE.CASH_FLOW_DAY_CONVENTION'||'|'||
'SIDE.SIDE_ONE.AMORTISATION_TYPE'||'|'||
'SIDE.SIDE_ONE.AMORTISATION_FREQUENCY'||'|'||
'SIDE.SIDE_ONE.AMORTISATION_START_DATE'||'|'||
'SIDE.SIDE_ONE.AMORTISATION_END_DATE'||'|'||
'SIDE.SIDE_ONE.AMORTISATION_STEP_AMOUNT'
FROM DUAL
UNION ALL
select
TO_CHAR(TRIM(RESPONSE)||'|'||
TRIM(DEAL_IDENTIFIER)||'|'||
TRIM(TRADING_BOOK)||'|'||
TRIM(ENTITY_NAME)||'|'||
TRIM(DEPT_NAME)||'|'||
TRIM(SUBTYPE)||'|'||
TRIM(COUNTERPARTY_STRING)||'|'||
TRIM(DEAL_DATE)||'|'||
TRIM(START_DATE)||'|'||
TRIM(END_DATE)||'|'||
TRIM(SIDE_SIDE_ONE_LONG_OR_SHORT)||'|'||
TRIM(TYPE_STRING)||'|'||
TRIM(CURRENCY_STRING)||'|'||
abs(TRIM(SIDE_SIDE_1_NOTNAL_AMT_VALUE))||'|'||
TRIM(SIDE_SIDE_ONE_BASIS_CODE)||'|'||
TRIM(SIDE_SIDE_ONE_CREATION_FREQ)||'|'||
TRIM(SIDE_SIDE_ONE_FIX_RATE)||'|'||
TRIM(SIDE_SIDE_ONE_SPREAD_RATE)||'|'||
--TRIM("SIDE.$1.CASH_FLOW_SIDE_TYPE")||'|'||
TRIM("SIDE.$1.REFERENCE_RATE")||'|'||
TRIM(AUTO_OR_PENDING)||'|'||
TRIM(CONFIRM_METHOD)||'|'||
TRIM(SIDE_CURREC_SI_FLOW_PAY_SSI_ID)||'|'||
TRIM(SIDE_CURREC_SI_FLOW_PAY_NOSTRO)||'|'||
TRIM(SIDE_CUR_SI_FLOW_PAY_SETT_MTHD)||'|'||
TRIM(SIDE_CUR_SI_FLOW_PAY_CPTY_AGNT)||'|'||
TRIM(SIDE_CURREC_SI_FLOW_REC_SSI_ID)||'|'||
TRIM(SIDE_CURREC_SI_FLOW_REC_NOSTRO)||'|'||
TRIM(SIDE_CUR_SI_FLOW_REC_SETT_MTHD)||'|'||
TRIM(SIDE_CUR_SI_FLOW_REC_CPTY_AGNT)||'|'||
TRIM(SIFLOW_INTEREST_PAY_NOSTRO)||'|'||
TRIM(SIFLOW_INT_PAY_SETT_METHOD)||'|'||
TRIM(SIFLOW_INTEREST_PAY_CPTY_AGENT)||'|'||
TRIM(SIFLOW_INTEREST_PAY_SSI_ID)||'|'||
TRIM(SIFLOW_INTEREST_RECIEVE_NOSTRO)||'|'||
TRIM(SIFLOW_INT_RECIEVE_SETT_METHOD)||'|'||
TRIM(SIFLOW_INT_RECIEVE_CPTY_AGENT)||'|'||
TRIM(SIFLOW_INTEREST_RECIEVE_SSI_ID)||'|'||
TRIM(SIDE_SIDE_ONE_COMP_METHOD)||'|'||
TRIM(SIDE_SIDE_ONE_COMP_FREQUENCY)||'|'||
TRIM(SIDE_SIDE_ONE_START_DD_CNVNTN)||'|'||
TRIM(SIDE_SIDE_ONE_END_DD_CNVNTN)||'|'||
TRIM(SIDE_SIDE_1_CASH_FLW_D_CNVNTN)||'|'||
TRIM(AMORTISATION_TYPE)||'|'||
TRIM(AMORTISATION_FREQUENCY)||'|'||
TRIM(AMORTISATION_START_DATE)||'|'||
TRIM(AMORTISATION_END_DATE)||'|'||
TRIM(AMORTISATION_STEP_AMOUNT)
)
from COM_LOAN_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
equity_defn_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
equity_defn_spool.sql 
-- File Name		: equity_defn_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/EQUITY_DEFN.TXT
SELECT 
'RESPONSE'||'|'||
'Template'||'|'||
'NAME'||'|'||
'INSTRUMENT_TYPE'||'|'||
'INSTRUMENT_SUBTYPE'||'|'||
'ISSUER_STRING'||'|'||
'INSTRUMENT_CLASS_DATA_NAME'||'|'||
'LISTING_DATE'||'|'||
'ISSUE_CCY'||'|'||
'PRICE_QUOTE'||'|'||
'ACTIVE_STATUS'||'|'||
'ENTITY_PERM_GROUP'||'|'||
'DESCRIPTION'||'|'||
'EXCHANGES_LIST'||'|'||
'DEFAULT_EXCHANGE_STR'||'|'||
'NO_DELIVERY_START'||'|'||
'NO_DELIVERY_END'||'|'||
'MARKET_LOT'||'|'||
'MATURITY_DATE'||'|'||
'PAID_UP_VALUE'||'|'||
'FACE_VALUE'||'|'||
'ENTRY_LOAD'||'|'||
'EXIT_LOAD'||'|'||
'AUTO_OR_MANUAL_RESET'||'|'||
'SHORT_SALES_ACTION'||'|'||
'MIN_INVEST'||'|'||
'TRADING_STRATEGY'||'|'||
'REALISATION_METHOD'||'|'||
'DATE_TO_REALISE'||'|'||
'INVEST_MULTIPLE'||'|'||
'PREBLOCK_PRICE'||'|'||
'EQMF_MTM_CALC_METHOD'||'|'||
'IS_DEMAT'||'|'||
'ISSUANCE_DATA.COI'||'|'||
'ISSUANCE_DATA.COUR'||'|'||
'INSTRUMENT_ID.$1.IDENTIFIER'||'|'||
'INSTRUMENT_ID.$1.CODE'||'|'||
'INSTRUMENT_ID.$2.IDENTIFIER'||'|'||
'INSTRUMENT_ID.$2.CODE'||'|'||
'INSTRUMENT_ID.$3.IDENTIFIER'||'|'||
'INSTRUMENT_ID.$3.CODE'||'|'||
'ALT_ID1'||'|'||
'ALT_ID2'||'|'||
'ISSUANCE_DATA.COI'||'|'||
'ISSUANCE_DATA.COUR'||'|'||
'RIGHT_WARRANT_DATA.OPTIONALITY'||'|'||
'RIGHT_WARRANT_DATA.ISSUE_PRICE_STRING'||'|'||
'RIGHT_WARRANT_DATA.ISSUE_DISB_QTY'||'|'||
'RIGHT_WARRANT_DATA.ISSUE_BASE_QTY'||'|'||
'RIGHT_WARRANT_DATA.ISSUE_FRAC_SCRIPT_TREATMENT'||'|'||
'RIGHT_WARRANT_DATA.CASH_PAYMENT_DATE'||'|'||
'RIGHT_WARRANT_DATA.ACCEPTANCE_CLOSING_DATE'||'|'||
'RIGHT_WARRANT_DATA.DELIVERY_DATE'||'|'||
'RIGHT_WARRANT_DATA.TRADING_PERIOD_START'||'|'||
'RIGHT_WARRANT_DATA.TRADING_PERIOD_END'||'|'||
'RIGHT_WARRANT_DATA.UNDERLYING_EQT_DEFN_NAME'||'|'||
'RIGHT_WARRANT_DATA.OPTION_STYLE'||'|'||
'RIGHT_WARRANT_DATA.STRIKE_PRICE'||'|'||
'RIGHT_WARRANT_DATA.OPTION_TYPE'||'|'||
'RIGHT_WARRANT_DATA.EXERCISE_DISB_QTY'||'|'||
'RIGHT_WARRANT_DATA.EXERCISE_BASE_QTY'||'|'||
'RIGHT_WARRANT_DATA.EXERCISE_START_DATE'||'|'||
'RIGHT_WARRANT_DATA.EXCERCISE_END_DATE'||'|'||
'RIGHT_WARRANT_DATA.FREQUENCY'||'|'||
'RIGHT_WARRANT_DATA.SUB_RESP_DATE'||'|'||
'RIGHT_WARRANT_DATA.SELL_RESP_DATE'||'|'||
'RIGHT_WARRANT_DATA.EQUITY_Delivery_Date_DATE'||'|'||
'RIGHT_WARRANT_DATA.EXCERCISE_FRAC_SCRIPT_TREATMENT'||'|'||
'RIGHT_WARRANT_DATA.HAS_ASSESSED_VALUE_PYMT'||'|'||
'RIGHT_WARRANT_DATA.ASSESSED_VALUE_PYMNT_DATE'||'|'||
'RIGHT_WARRANT_DATA.ASSESSED_VALUE_PYMNT_TYPE'||'|'||
'RIGHT_WARRANT_DATA.ASSESSED_VALUE_PYMNT_ABS'||'|'||
'RIGHT_WARRANT_DATA.ASSESSED_VALUE_PMT_PCNT'
FROM DUAL
UNION ALL
select
TO_CHAR(TRIM(RESPONSE)||'|'||
TRIM(TEMPLATE)||'|'||
TRIM(NAME)||'|'||
TRIM(INSTRUMENT_TYPE)||'|'||
TRIM(INSTRUMENT_SUBTYPE)||'|'||
TRIM(ISSUER_STRING)||'|'||
TRIM(INSTRUMENT_CLASS_DATA_NAME)||'|'||
TRIM(LISTING_DATE)||'|'||
TRIM(ISSUE_CCY)||'|'||
TRIM(PRICE_QUOTE)||'|'||
TRIM(ACTIVE_STATUS)||'|'||
TRIM(ENTITY_PERM_GROUP)||'|'||
TRIM(DESCRIPTION)||'|'||
TRIM(EXCHANGES_LIST)||'|'||
TRIM(DEFAULT_EXCHANGE_STR)||'|'||
TRIM(NO_DELIVERY_START)||'|'||
TRIM(NO_DELIVERY_END)||'|'||
TRIM(MARKET_LOT)||'|'||
TRIM(MATURITY_DATE)||'|'||
TRIM(PAID_UP_VALUE)||'|'||
TRIM(FACE_VALUE)||'|'||
TRIM(ENTRY_LOAD)||'|'||
TRIM(EXIT_LOAD)||'|'||
TRIM(AUTO_OR_MANUAL_RESET)||'|'||
TRIM(SHORT_SALES_ACTION)||'|'||
TRIM(MIN_INVEST)||'|'||
TRIM(TRADING_STRATEGY)||'|'||
TRIM(REALISATION_METHOD)||'|'||
TRIM(DATE_TO_REALISE)||'|'||
TRIM(INVEST_MULTIPLE)||'|'||
TRIM(PREBLOCK_PRICE)||'|'||
TRIM(EQMF_MTM_CALC_METHOD)||'|'||
TRIM(IS_DEMAT)||'|'||
TRIM(ISSUANCE_DATA_COI)||'|'||
TRIM(ISSUANCE_DATA_COUR)||'|'||
TRIM(INSTRUMENT_ID_$1_IDENTIFIER)||'|'||
TRIM(INSTRUMENT_ID_$1_CODE)||'|'||
TRIM(INSTRUMENT_ID_$2_IDENTIFIER)||'|'||
TRIM(INSTRUMENT_ID_$2_CODE)||'|'||
TRIM(INSTRUMENT_ID_$3_IDENTIFIER)||'|'||
TRIM(INSTRUMENT_ID_$3_CODE)||'|'||
TRIM(ALT_ID1)||'|'||
TRIM(ALT_ID2)||'|'||
TRIM(ISSUANCE_DATA_COI_1)||'|'||
TRIM(ISSUANCE_DATA_COUR_1)||'|'||
TRIM(RIGHT_WARRANT_DATA_OPTIONALITY)||'|'||
TRIM(RT_WRNT_DATA_ISSUE_PRICE_STR)||'|'||
TRIM(RT_WRT_DATA_ISSUE_DISB_QTY)||'|'||
TRIM(RT_WRT_DATA_ISSUE_BASE_QTY)||'|'||
TRIM(WRT_DATA_ISS_FRAC_SCPT_TRTMNT)||'|'||
TRIM(RIGHT_WARRANT_CASH_PAYMNT_DATE)||'|'||
TRIM(RIGHT_WRT_ACCEPTANCE_CLOSG_DT)||'|'||
TRIM(RIGHT_WARRANT_DELIVERY_DATE)||'|'||
TRIM(RIGHT_WRT_TRADING_PERIOD_START)||'|'||
TRIM(RIGHT_WRT_TRADING_PERIOD_END)||'|'||
TRIM(RIGHT_WRT_UNRLYNG_EQT_DEFN_NM)||'|'||
TRIM(RIGHT_WARRANT_OPTION_STYLE)||'|'||
TRIM(RIGHT_WARRANT_STRIKE_PRICE)||'|'||
TRIM(RIGHT_WARRANT_OPTION_TYPE)||'|'||
TRIM(RIGHT_WRT_EXERCISE_DISB_QTY)||'|'||
TRIM(RIGHT_WRANT_EXERCISE_BASE_QTY)||'|'||
TRIM(RIGHT_WRANT_EXERISE_START_DATE)||'|'||
TRIM(RIGHT_WRANT_EXCERCISE_END_DATE)||'|'||
TRIM(RIGHT_WARRANT_DATA_FREQUENCY)||'|'||
TRIM(RIGHT_WRANT_DATA_SUB_RESP_DATE)||'|'||
TRIM(RIGHT_WRANT_DTA_SELL_RESP_DATE)||'|'||
TRIM(RGT_WRT_DATA_EQITY_DLVRY_DATE)||'|'||
TRIM(RGT_WRT_EXRCS_FRAC_SCRT_TREATT)||'|'||
TRIM(RIGHT_WARRANT_ASSED_VALUE_PYMT)||'|'||
TRIM(RIGHT_WRT_ASSED_VALUE_PYMNT_DT)||'|'||
TRIM(RIGHT_WRT_ASSED_VALUE_PYMNT_TP)||'|'||
TRIM(RGHT_WRT_ASSED_VALUE_PYMNT_ABS)||'|'||
TRIM(RGHT_WRT_ASSED_VALUE_PMT_PCNT)
)
from EQUITY_DEFN_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
equity_mf_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
equity_mf_spool.sql 
-- File Name		: equity_mf_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/EQUITY_MF.TXT
SELECT 
'RESPONSE'||'|'||
'DEAL_IDENTIFIER'||'|'||
'TRADING_BOOK'||'|'||
'EQUITY_MF_DEFN_NAME'||'|'||
'ENTITY_NAME'||'|'||
'DEPT_NAME'||'|'||
'SUBTYPE'||'|'||
'BUY_OR_SELL'||'|'||
'IS_INVESTMENT'||'|'||
'COUNTERPARTY_STRING'||'|'||
'DEAL_DATE'||'|'||
'PAYIN_DATE'||'|'||
'PAYOUT_DATE'||'|'||
'CURRENCY_STRING'||'|'||
'PRICE_STRING'||'|'||
'QTY_TRADED'||'|'||
'EXCHANGE'||'|'||
'CONFIRM_METHOD'||'|'||
'EXCUTION_METHOD'||'|'||
'SI_FLOW_PAY_SSI_ID'||'|'||
'SI_FLOW_PAY_NOSTRO'||'|'||
'SI_FLOW_PAY_SETT_METHOD'||'|'||
'SI_FLOW_PAY_CPTY_AGENT'||'|'||
'SI_FLOW_REC_SSI_ID'||'|'||
'SI_FLOW_REC_NOSTRO'||'|'||
'SI_FLOW_REC_SETT_METHOD'||'|'||
'SI_FLOW_REC_CPTY_AGENT'||'|'||
'COST_OF_CARRY_REF_RATE_CODE'||'|'||
'SI_FLOW_REC.CUSTODIAN_ACCT'||'|'||
'HOLDING_ENTITY_NAME'||'|'||
'AUTO_OR_MANUAL_RESET'||'|'||
'SETTLEMENT'
FROM DUAL
UNION ALL
select
TO_CHAR(
''||'|'||
TRIM(DEAL_IDENTIFIER)||'|'||
TRIM(TRADING_BOOK)||'|'||
TRIM(EQUITY_MF_DEFN_NAME)||'|'||
TRIM(ENTITY_NAME)||'|'||
TRIM(DEPT_NAME)||'|'||
TRIM(SUBTYPE)||'|'||
TRIM(BUY_OR_SELL)||'|'||
TRIM(IS_INVESTMENT)||'|'||
TRIM(COUNTERPARTY_STRING)||'|'||
TRIM(DEAL_DATE)||'|'||
TRIM(PAYIN_DATE)||'|'||
TRIM(PAYOUT_DATE)||'|'||
TRIM(CURRENCY_STRING)||'|'||
TRIM(PRICE_STRING)||'|'||
TRIM(QTY_TRADED)||'|'||
TRIM(EXCHANGE)||'|'||
TRIM(CONFIRM_METHOD)||'|'||
TRIM(EXCUTION_METHOD)||'|'||
TRIM(SI_FLOW_PAY_SSI_ID)||'|'||
TRIM(SI_FLOW_PAY_NOSTRO)||'|'||
TRIM(SI_FLOW_PAY_SETT_METHOD)||'|'||
TRIM(SI_FLOW_PAY_CPTY_AGENT)||'|'||
TRIM(SI_FLOW_REC_SSI_ID)||'|'||
TRIM(SI_FLOW_REC_NOSTRO)||'|'||
TRIM(SI_FLOW_REC_SETT_METHOD)||'|'||
TRIM(SI_FLOW_REC_CPTY_AGENT)||'|'||
TRIM(COST_OF_CARRY_REF_RATE_CODE)||'|'||
TRIM(SI_FLOW_REC_CUSTODIAN_ACCT)||'|'||
TRIM(HOLDING_ENTITY_NAME)||'|'||
TRIM(AUTO_OR_MANUAL_RESET)||'|'||
TRIM(SETTLEMENT)
)
from EQUITY_MF_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
equity_prices_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
equity_prices_spool.sql 
-- File Name		: equity_prices_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/EQUITY_PRICES.TXT
SELECT 
'RESPONSE'||'|'||
'Equity/MF Name'||'|'||
'Exchange/AMC'||'|'||
'Price'||'|'||
'BASE_DATE'
FROM DUAL
UNION ALL
select
TO_CHAR(TRIM(RESPONSE)||'|'||
TRIM(SECURITY)||'|'||
TRIM(EXCHANGE_AMC)||'|'||
TRIM(TO_CHAR(TRIM(PRICE),'99999999999999999990.99999999'))||'|'||
TRIM(BASE_DATE))
from EQUITY_PRICES_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
forward_rates_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
forward_rates_spool.sql 
-- File Name		: forward_rates_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/FORWARD_RATES.TXT
SELECT
'Response'||'|'||
'Currency Pair'||'|'||
'Currency One'||'|'||
'Currency Two'||'|'||
'Nominal'||'|'||
'Bid'||'|'||
'Offer'||'|'||
'Base Date'
FROM DUAL
UNION ALL
select
TO_CHAR(TRIM(RESPONSE)||'|'||
TRIM(CURRENCY_PAIR)||'|'||
TRIM(CURRENCY_ONE)||'|'||
TRIM(CURRENCY_TWO)||'|'||
TRIM(NOMINAL)||'|'||
TO_CHAR(TRIM(BID),'fm99999999999990.00000000')||'|'||
TO_CHAR(TRIM(OFFER),'fm99999999999990.00000000')||'|'||
TRIM(BASE_DATE))
from FORWARD_RATES_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
fx_outright_deals_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
fx_outright_deals_spool.sql 
-- File Name		: fx_outright_deals_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/FX_OUTRIGHT_DEALS.TXT
SELECT 
'RESPONSE'||'|'||
'PRODUCT_TYPE'||'|'||
'DEAL_DATE'||'|'||
'DEAL_IDENTIFIER'||'|'||
'TRADING_BOOK'||'|'||
'MAIN_LEG.SPOT_TRD_BOOK'||'|'||
'MAIN_LEG.FWD_TRD_BOOK'||'|'||
'SUBTYPE'||'|'||
'DEPT_NAME'||'|'||
'ENTITY_NAME'||'|'||
'MAIN_LEG.SPOT_RISK_ENTITY'||'|'||
'MAIN_LEG.FWD_RISK_ENTITY'||'|'||
'MAIN_LEG.CPTY'||'|'||
'MAIN_LEG.CCY_PAIR'||'|'||
'TRADED_CCY'||'|'||
'DCO_CURR_NCY'||'|'||
'MAIN_LEG.FX_BUY_SELL'||'|'||
'MAIN_LEG.CCY_ONE_AMOUNT'||'|'||
'MAIN_LEG.MARKET_FWD_RATE'||'|'||
'MAIN_LEG.CCY_TWO_AMOUNT'||'|'||
'MAIN_LEG.VALUE_DATE_ONE'||'|'||
'MEMO_FIELD_1'||'|'||
'MARKET_SPOT_RATE'||'|'||
'MAIN_LEG.MARKET_SPOT_RATE'||'|'||
'MAIN_LEG.MARKET_FWD_RATE'||'|'||
'MAIN_LEG.CUSTOMER_SPOT_RATE'||'|'||
'MAIN_LEG.CUSTOMER_FWD_RATE'||'|'||
'MAIN_LEG.MARKET_FWD_POINTS'||'|'||
'MAIN_LEG.CUSTOMER_FWD_POINTS'||'|'||
'CONFIRM_METHOD'||'|'||
'SI_FLOW_PAY.SSI_ID'||'|'||
'SI_FLOW_PAY.NOSTRO'||'|'||
'SI_FLOW_PAY.SETT_METHOD'||'|'||
'SI_FLOW_PAY.CPTY_AGENT'||'|'||
'SI_FLOW_REC.SSI_ID'||'|'||
'SI_FLOW_REC.NOSTRO'||'|'||
'SI_FLOW_REC.SETT_METHOD'||'|'||
'SI_FLOW_REC.CPTY_AGENT'||'|'||
'MAIN_LEG.SPOT_MARGIN_POINTS'
FROM DUAL
UNION ALL
select
TO_CHAR(
TRIM(RESPONSE)||'|'||
TRIM(PRODUCT_TYPE)||'|'||
TRIM(DEAL_DATE)||'|'||
TRIM(DEAL_IDENTIFIER)||'|'||
TRIM(TRADING_BOOK)||'|'||
TRIM("MAIN_LEG.SPOT_TRD_BOOK")||'|'||
TRIM("MAIN_LEG.FWD_TRD_BOOK")||'|'||
TRIM(SUBTYPE)||'|'||
TRIM(DEPT_NAME)||'|'||
TRIM(ENTITY_NAME)||'|'||
TRIM("MAIN_LEG.SPOT_RISK_ENTITY")||'|'||
TRIM("MAIN_LEG.FWD_RISK_ENTITY")||'|'||
TRIM(MAIN_LEG_CPTY)||'|'||
TRIM(MAIN_LEG_CCY_PAIR)||'|'||
TRIM(SPOT_RISK_CCY)||'|'||
TRIM(DCO_CURR_NCY)||'|'||
TRIM(MAIN_LEG_FX_BUY_SELL)||'|'||
TRIM(MAIN_LEG_CCY_ONE_AMOUNT)||'|'||
TRIM("MAIN_LEG.MARKET_FWD_RATE")||'|'||
TRIM(MAIN_LEG_CCY_TWO_AMOUNT)||'|'||
TRIM(MAIN_LEG_VALUE_DATE_ONE)||'|'||
TRIM(MEMO_FIELD_1)||'|'||
TRIM(MARKET_SPOT_RATE)||'|'||
TRIM("MAIN_LEG.MARKET_SPOT_RATE")||'|'||
TRIM("MAIN_LEG.MARKET_FWD_RATE")||'|'||
TRIM("MAIN_LEG.CUSTOMER_SPOT_RATE")||'|'||
TRIM("MAIN_LEG.CUSTOMER_FWD_RATE")||'|'||
TRIM("MAIN_LEG.MARKET_FWD_POINTS")||'|'||
TRIM("MAIN_LEG.CUSTOMER_FWD_POINTS")||'|'||
TRIM(CONFIRM_METHOD)||'|'||
TRIM(SI_FLOW_PAY_SSI_ID)||'|'||
TRIM(SI_FLOW_PAY_NOSTRO)||'|'||
TRIM(SI_FLOW_PAY_SETT_METHOD)||'|'||
TRIM(SI_FLOW_PAY_CPTY_AGENT)||'|'||
TRIM(SI_FLOW_REC_SSI_ID)||'|'||
TRIM(SI_FLOW_REC_NOSTRO)||'|'||
TRIM(SI_FLOW_REC_SETT_METHOD)||'|'||
TRIM(SI_FLOW_REC_CPTY_AGENT)||'|'||
TRIM(SPOT_MARGIN_POINTS)
)
from FX_OUTRIGHT_DEALS_O_TABLE WHERE TRIM(SUBTYPE) !='CORP';
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
fx_outright_sale_deals_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
fx_outright_sale_deals_spool.sql 
-- File Name		: fx_outright_deals_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/FX_OUTRIGHT_SALE_DEALS.TXT
SELECT 
'RESPONSE'||'|'||
'PRODUCT_TYPE'||'|'||
'DEAL_DATE'||'|'||
'DEAL_IDENTIFIER'||'|'||
'TRADING_BOOK'||'|'||
'MAIN_LEG.SPOT_TRD_BOOK'||'|'||
'MAIN_LEG.FWD_TRD_BOOK'||'|'||
'SUBTYPE'||'|'||
'DEPT_NAME'||'|'||
'ENTITY_NAME'||'|'||
'MAIN_LEG.SPOT_RISK_ENTITY'||'|'||
'MAIN_LEG.FWD_RISK_ENTITY'||'|'||
'MAIN_LEG.CPTY'||'|'||
'MAIN_LEG.CCY_PAIR'||'|'||
'TRADED_CCY'||'|'||
'DCO_CURR_NCY'||'|'||
'MAIN_LEG.FX_BUY_SELL'||'|'||
'MAIN_LEG.CCY_ONE_AMOUNT'||'|'||
'MAIN_LEG.CUSTOMER_FWD_RATE'||'|'||
'MAIN_LEG.CCY_TWO_AMOUNT'||'|'||
'MAIN_LEG.VALUE_DATE_ONE'||'|'||
'MEMO_FIELD_1'||'|'||
'MARKET_SPOT_RATE'||'|'||
'MAIN_LEG.MARKET_SPOT_RATE'||'|'||
'MAIN_LEG.MARKET_FWD_RATE'||'|'||
'MAIN_LEG.CUSTOMER_SPOT_RATE'||'|'||
--'MAIN_LEG.CUSTOMER_FWD_RATE'||'|'||
'MAIN_LEG.MARKET_FWD_POINTS'||'|'||
'MAIN_LEG.CUSTOMER_FWD_POINTS'||'|'||
'CONFIRM_METHOD'||'|'||
'SI_FLOW_PAY.SSI_ID'||'|'||
'SI_FLOW_PAY.NOSTRO'||'|'||
'SI_FLOW_PAY.SETT_METHOD'||'|'||
'SI_FLOW_PAY.CPTY_AGENT'||'|'||
'SI_FLOW_REC.SSI_ID'||'|'||
'SI_FLOW_REC.NOSTRO'||'|'||
'SI_FLOW_REC.SETT_METHOD'||'|'||
'SI_FLOW_REC.CPTY_AGENT'||'|'||
'MAIN_LEG.SPOT_MARGIN_POINTS'
FROM DUAL
UNION ALL
select
TO_CHAR(
TRIM(RESPONSE)||'|'||
TRIM(PRODUCT_TYPE)||'|'||
TRIM(DEAL_DATE)||'|'||
TRIM(DEAL_IDENTIFIER)||'|'||
TRIM(TRADING_BOOK)||'|'||
TRIM("MAIN_LEG.SPOT_TRD_BOOK")||'|'||
TRIM("MAIN_LEG.FWD_TRD_BOOK")||'|'||
TRIM(SUBTYPE)||'|'||
TRIM(DEPT_NAME)||'|'||
TRIM(ENTITY_NAME)||'|'||
TRIM("MAIN_LEG.SPOT_RISK_ENTITY")||'|'||
TRIM("MAIN_LEG.FWD_RISK_ENTITY")||'|'||
TRIM(MAIN_LEG_CPTY)||'|'||
TRIM(MAIN_LEG_CCY_PAIR)||'|'||
TRIM(SPOT_RISK_CCY)||'|'||
TRIM(DCO_CURR_NCY)||'|'||
TRIM(MAIN_LEG_FX_BUY_SELL)||'|'||
TRIM(MAIN_LEG_CCY_ONE_AMOUNT)||'|'||
TRIM(MAIN_LEG_CUSTOMER_FWD_RATE)||'|'||
TRIM(MAIN_LEG_CCY_TWO_AMOUNT)||'|'||
TRIM(MAIN_LEG_VALUE_DATE_ONE)||'|'||
TRIM(MEMO_FIELD_1)||'|'||
TRIM(MARKET_SPOT_RATE)||'|'||
TRIM("MAIN_LEG.MARKET_SPOT_RATE")||'|'||
TRIM("MAIN_LEG.MARKET_FWD_RATE")||'|'||
TRIM("MAIN_LEG.CUSTOMER_SPOT_RATE")||'|'||
--TRIM("MAIN_LEG.CUSTOMER_FWD_RATE")||'|'||
TRIM("MAIN_LEG.MARKET_FWD_POINTS")||'|'||
TRIM('')||'|'||--TRIM("MAIN_LEG.CUSTOMER_FWD_POINTS")
TRIM(CONFIRM_METHOD)||'|'||
TRIM(SI_FLOW_PAY_SSI_ID)||'|'||
TRIM(SI_FLOW_PAY_NOSTRO)||'|'||
TRIM(SI_FLOW_PAY_SETT_METHOD)||'|'||
TRIM(SI_FLOW_PAY_CPTY_AGENT)||'|'||
TRIM(SI_FLOW_REC_SSI_ID)||'|'||
TRIM(SI_FLOW_REC_NOSTRO)||'|'||
TRIM(SI_FLOW_REC_SETT_METHOD)||'|'||
TRIM(SI_FLOW_REC_CPTY_AGENT)||'|'||
TRIM('')--SPOT_MARGIN_POINTS
)
from FX_OUTRIGHT_DEALS_O_TABLE WHERE TRIM(SUBTYPE) ='CORP';
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
fx_spot_deals_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
fx_spot_deals_spool.sql 
-- File Name		: fx_spot_deals_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/FX_SPOT_DEALS.TXT
SELECT 
'RESPONSE'||'|'||
'PRODUCT_TYPE'||'|'||
'DEAL_DATE'||'|'||
'DEAL_IDENTIFIER'||'|'||
'TRADING_BOOK'||'|'||
'MAIN_LEG.SPOT_TRD_BOOK'||'|'||
'SUBTYPE'||'|'||
'DEPT_NAME'||'|'||
'ACCOUNTING_CODE'||'|'||
'ENTITY_NAME'||'|'||
'MAIN_LEG.SPOT_RISK_ENTITY'||'|'||
'MAIN_LEG.CPTY'||'|'||
'MAIN_LEG.CCY_PAIR'||'|'||
'TRADED_CCY'||'|'||
'DCO_CURRENCY'||'|'||
'MAIN_LEG.FX_BUY_SELL'||'|'||
'MAIN_LEG.CCY_ONE_AMOUNT'||'|'||
'MAIN_LEG.MARKET_SPOT_RATE'||'|'||
'MAIN_LEG.CCY_TWO_AMOUNT'||'|'||
'MAIN_LEG.VALUE_DATE_ONE'||'|'||
'MEMO_FIELD_1'||'|'||
'CONFIRM_METHOD'||'|'||
'SI_FLOW_PAY.SSI_ID'||'|'||
'SI_FLOW_PAY.NOSTRO'||'|'||
'SI_FLOW_PAY.SETT_METHOD'||'|'||
'SI_FLOW_PAY.CPTY_AGENT'||'|'||
'SI_FLOW_REC.SSI_ID'||'|'||
'SI_FLOW_REC.NOSTRO'||'|'||
'SI_FLOW_REC.SETT_METHOD'||'|'||
'SI_FLOW_REC.CPTY_AGENT'||'|'||
'MAIN_LEG.SPOT_MARGIN_POINTS'
FROM DUAL
UNION ALL
select
TO_CHAR(
TRIM(RESPONSE)||'|'||
TRIM(PRODUCT_TYPE)||'|'||
TRIM(DEAL_DATE)||'|'||
TRIM(DEAL_IDENTIFIER)||'|'||
TRIM(TRADING_BOOK)||'|'||
TRIM(MAIN_LEG_SPOT_TRD_BOOK)||'|'||
TRIM(SUBTYPE)||'|'||
TRIM(DEPT_NAME)||'|'||
TRIM(ACCOUNTING_CODE)||'|'||
TRIM(ENTITY_NAME)||'|'||
TRIM(MAIN_LEG_SPOT_RISK_ENTITY)||'|'||
TRIM(MAIN_LEG_CPTY)||'|'||
TRIM(MAIN_LEG_CCY_PAIR)||'|'||
TRIM(SPOT_RISK_CCY)||'|'||
TRIM(DCO_CURRENCY)||'|'||
TRIM(MAIN_LEG_FX_BUY_SELL)||'|'||
TRIM(MAIN_LEG_CCY_ONE_AMOUNT)||'|'||
TRIM(MAIN_LEG_MARKET_SPOT_RATE)||'|'||
TRIM(MAIN_LEG_CCY_TWO_AMOUNT)||'|'||
TRIM(MAIN_LEG_VALUE_DATE_ONE)||'|'||
TRIM(MEMO_FIELD_1)||'|'||
TRIM(CONFIRM_METHOD)||'|'||
TRIM(SI_FLOW_PAY_SSI_ID)||'|'||
TRIM(SI_FLOW_PAY_NOSTRO)||'|'||
TRIM(SI_FLOW_PAY_SETT_METHOD)||'|'||
TRIM(SI_FLOW_PAY_CPTY_AGENT)||'|'||
TRIM(SI_FLOW_REC_SSI_ID)||'|'||
TRIM(SI_FLOW_REC_NOSTRO)||'|'||
TRIM(SI_FLOW_REC_SETT_METHOD)||'|'||
TRIM(SI_FLOW_REC_CPTY_AGENT)||'|'||
TRIM(SPOT_MARGIN_POINTS)
)
from FX_SPOT_DEALS_O_TABLE  where trim(SUBTYPE) !='CORP';
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
fx_spot_sale_deals_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
fx_spot_sale_deals_spool.sql 
-- File Name		: fx_spot_deals_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/FX_SPOT_SALE_DEALS.TXT
SELECT 
'RESPONSE'||'|'||
'PRODUCT_TYPE'||'|'||
'DEAL_DATE'||'|'||
'DEAL_IDENTIFIER'||'|'||
'TRADING_BOOK'||'|'||
'MAIN_LEG.SPOT_TRD_BOOK'||'|'||
'SUBTYPE'||'|'||
'DEPT_NAME'||'|'||
'ACCOUNTING_CODE'||'|'||
'ENTITY_NAME'||'|'||
'MAIN_LEG.SPOT_RISK_ENTITY'||'|'||
'MAIN_LEG.CPTY'||'|'||
'MAIN_LEG.CCY_PAIR'||'|'||
'TRADED_CCY'||'|'||
'DCO_CURRENCY'||'|'||
'MAIN_LEG.FX_BUY_SELL'||'|'||
'MAIN_LEG.CCY_ONE_AMOUNT'||'|'||
'MAIN_LEG.CUSTOMER_SPOT_RATE'||'|'||
'MAIN_LEG.CCY_TWO_AMOUNT'||'|'||
'MAIN_LEG.VALUE_DATE_ONE'||'|'||
'MEMO_FIELD_1'||'|'||
'CONFIRM_METHOD'||'|'||
'SI_FLOW_PAY.SSI_ID'||'|'||
'SI_FLOW_PAY.NOSTRO'||'|'||
'SI_FLOW_PAY.SETT_METHOD'||'|'||
'SI_FLOW_PAY.CPTY_AGENT'||'|'||
'SI_FLOW_REC.SSI_ID'||'|'||
'SI_FLOW_REC.NOSTRO'||'|'||
'SI_FLOW_REC.SETT_METHOD'||'|'||
'SI_FLOW_REC.CPTY_AGENT'||'|'||
'MAIN_LEG.SPOT_MARGIN_POINTS'||'|'||
'MAIN_LEG.MARKET_SPOT_RATE'
FROM DUAL
UNION ALL
select
TO_CHAR(
TRIM(RESPONSE)||'|'||
TRIM(PRODUCT_TYPE)||'|'||
TRIM(DEAL_DATE)||'|'||
TRIM(DEAL_IDENTIFIER)||'|'||
TRIM(TRADING_BOOK)||'|'||
TRIM(MAIN_LEG_SPOT_TRD_BOOK)||'|'||
TRIM(SUBTYPE)||'|'||
TRIM(DEPT_NAME)||'|'||
TRIM(ACCOUNTING_CODE)||'|'||
TRIM(ENTITY_NAME)||'|'||
TRIM(MAIN_LEG_SPOT_RISK_ENTITY)||'|'||
TRIM(MAIN_LEG_CPTY)||'|'||
TRIM(MAIN_LEG_CCY_PAIR)||'|'||
TRIM(SPOT_RISK_CCY)||'|'||
TRIM(DCO_CURRENCY)||'|'||
TRIM(MAIN_LEG_FX_BUY_SELL)||'|'||
TRIM(MAIN_LEG_CCY_ONE_AMOUNT)||'|'||
TRIM(MAIN_LEG_CUSTOMER_SPOT_RATE)||'|'||
TRIM(MAIN_LEG_CCY_TWO_AMOUNT)||'|'||
TRIM(MAIN_LEG_VALUE_DATE_ONE)||'|'||
TRIM(MEMO_FIELD_1)||'|'||
TRIM(CONFIRM_METHOD)||'|'||
TRIM(SI_FLOW_PAY_SSI_ID)||'|'||
TRIM(SI_FLOW_PAY_NOSTRO)||'|'||
TRIM(SI_FLOW_PAY_SETT_METHOD)||'|'||
TRIM(SI_FLOW_PAY_CPTY_AGENT)||'|'||
TRIM(SI_FLOW_REC_SSI_ID)||'|'||
TRIM(SI_FLOW_REC_NOSTRO)||'|'||
TRIM(SI_FLOW_REC_SETT_METHOD)||'|'||
TRIM(SI_FLOW_REC_CPTY_AGENT)||'|'||
TRIM('')||'|'||--SPOT_MARGIN_POINTS
TRIM(MAIN_LEG_MARKET_SPOT_RATE)
)
from FX_SPOT_DEALS_O_TABLE  where trim(SUBTYPE) ='CORP';
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
fx_swap_near_rev_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
fx_swap_near_rev_spool.sql 
-- File Name		: fx_spot_deals_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/FX_SWAP_NEAR_REV_DEALS.TXT
SELECT 
'RESPONSE'||'|'||
'PRODUCT_TYPE'||'|'||
'DEAL_DATE'||'|'||
'DEAL_IDENTIFIER'||'|'||
'TRADING_BOOK'||'|'||
'MAIN_LEG.SPOT_TRD_BOOK'||'|'||
'SUBTYPE'||'|'||
'DEPT_NAME'||'|'||
'ACCOUNTING_CODE'||'|'||
'ENTITY_NAME'||'|'||
'MAIN_LEG.SPOT_RISK_ENTITY'||'|'||
'MAIN_LEG.CPTY'||'|'||
'MAIN_LEG.CCY_PAIR'||'|'||
'TRADED_CCY'||'|'||
'DCO_CURRENCY'||'|'||
'MAIN_LEG.FX_BUY_SELL'||'|'||
'MAIN_LEG.CCY_ONE_AMOUNT'||'|'||
'MAIN_LEG.MARKET_SPOT_RATE'||'|'||
'MAIN_LEG.CCY_TWO_AMOUNT'||'|'||
'MAIN_LEG.VALUE_DATE_ONE'||'|'||
'MEMO_FIELD_1'||'|'||
'CONFIRM_METHOD'||'|'||
'SI_FLOW_PAY.SSI_ID'||'|'||
'SI_FLOW_PAY.NOSTRO'||'|'||
'SI_FLOW_PAY.SETT_METHOD'||'|'||
'SI_FLOW_PAY.CPTY_AGENT'||'|'||
'SI_FLOW_REC.SSI_ID'||'|'||
'SI_FLOW_REC.NOSTRO'||'|'||
'SI_FLOW_REC.SETT_METHOD'||'|'||
'SI_FLOW_REC.CPTY_AGENT'||'|'||
'MAIN_LEG.SPOT_MARGIN_POINTS'
FROM DUAL
UNION ALL
select
TO_CHAR(
TRIM(RESPONSE)||'|'||
TRIM(PRODUCT_TYPE)||'|'||
TRIM(DEAL_DATE)||'|'||
TRIM(DEAL_IDENTIFIER)||'|'||
TRIM(TRADING_BOOK)||'|'||
TRIM(MAIN_LEG_SPOT_TRD_BOOK)||'|'||
TRIM(SUBTYPE)||'|'||
TRIM(DEPT_NAME)||'|'||
TRIM(ACCOUNTING_CODE)||'|'||
TRIM(ENTITY_NAME)||'|'||
TRIM(MAIN_LEG_SPOT_RISK_ENTITY)||'|'||
TRIM(MAIN_LEG_CPTY)||'|'||
TRIM(MAIN_LEG_CCY_PAIR)||'|'||
TRIM(SPOT_RISK_CCY)||'|'||
TRIM(DCO_CURRENCY)||'|'||
TRIM(MAIN_LEG_FX_BUY_SELL)||'|'||
TRIM(MAIN_LEG_CCY_ONE_AMOUNT)||'|'||
TRIM(MAIN_LEG_MARKET_SPOT_RATE)||'|'||
TRIM(MAIN_LEG_CCY_TWO_AMOUNT)||'|'||
TRIM(MAIN_LEG_VALUE_DATE_ONE)||'|'||
TRIM(MEMO_FIELD_1)||'|'||
TRIM(CONFIRM_METHOD)||'|'||
TRIM(SI_FLOW_PAY_SSI_ID)||'|'||
TRIM(SI_FLOW_PAY_NOSTRO)||'|'||
TRIM(SI_FLOW_PAY_SETT_METHOD)||'|'||
TRIM(SI_FLOW_PAY_CPTY_AGENT)||'|'||
TRIM(SI_FLOW_REC_SSI_ID)||'|'||
TRIM(SI_FLOW_REC_NOSTRO)||'|'||
TRIM(SI_FLOW_REC_SETT_METHOD)||'|'||
TRIM(SI_FLOW_REC_CPTY_AGENT)||'|'||
TRIM(SPOT_MARGIN_POINTS)
)
from FX_SWAP_NEAR_DEALS_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
fx_swap_sale_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
fx_swap_sale_spool.sql 
-- File Name		: fx_swap_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 3000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/FX_SWAP_SALE.TXT
SELECT 
'RESPONSE'||'|'||
'PRODUCT_TYPE'||'|'||
'DEAL_DATE'||'|'||
'DEAL_IDENTIFIER'||'|'||
'TRADING_BOOK'||'|'||
'SUBTYPE'||'|'||
'DEPT_NAME'||'|'||
'ENTITY_NAME'||'|'||
'ACCOUNTING_CODE'||'|'||
'NEAR_LEG.CCY_PAIR'||'|'||
'DCO_CURRENCY'||'|'||
'TRADED_CCY'||'|'||
'NEAR_LEG.CPTY'||'|'||
'NEAR_LEG.FX_BUY_SELL'||'|'||
'NEAR_LEG.CCY_ONE_AMOUNT'||'|'||
'NEAR_LEG.CUSTOMER_SPOT_RATE'||'|'||
'NEAR_LEG.CCY_TWO_AMOUNT'||'|'||
'NEAR_LEG.VALUE_DATE_ONE'||'|'||
'FAR_LEG_CPTY'||'|'||
'FAR_LEG.CCY_ONE_AMOUNT'||'|'||
'FAR_LEG.CUSTOMER_FWD_RATE'||'|'||
'FAR_LEG.CCY_TWO_AMOUNT'||'|'||
'FAR_LEG.VALUE_DATE_ONE'||'|'||
'NEAR_LEG.SPOT_RISK_ENTITY'||'|'||
'NEAR_LEG.SPOT_TRD_BOOK'||'|'||
'NEAR_LEG.FWD_RISK_ENTITY'||'|'||
'NEAR_LEG.FWD_TRD_BOOK'||'|'||
'FAR_LEG.SPOT_RISK_ENTITY'||'|'||
'FAR_LEG.SPOT_TRD_BOOK'||'|'||
'FAR_LEG.FWD_RISK_ENTITY'||'|'||
'FAR_LEG.FWD_TRD_BOOK'||'|'||
'NEAR_LEG.MARKET_SPOT_RATE'||'|'||
'NEAR_LEG.CUSTOMER_SPOT_RATE'||'|'||
'NEAR_LEG.MARKET_FWD_RATE'||'|'||
'NEAR_LEG.CUSTOMER_FWD_RATE'||'|'||
'FAR_LEG.MARKET_SPOT_RATE'||'|'||
'FAR_LEG.CUSTOMER_SPOT_RATE'||'|'||
--'FAR_LEG.CUSTOMER_FWD_RATE'||'|'||
'FAR_LEG.MARKET_FWD_POINTS'||'|'||
'FAR_LEG.CUSTOMER_SWAP_POINTS'||'|'||
'FAR_LEG.MARKET_SWAP_POINTS'||'|'||
'DECOMPOSE_CALENDAR_SET'||'|'||
'DCO_1_NEAR_LEG.MARKET_SPOT_RATE' ||'|'||
'DCO_1_NEAR_LEG.CUSTOMER_SPOT_RATE'||'|'||
'DCO_1_NEAR_LEG.SPOT_RISK_ENTITY' ||'|'||
'DCO_1_NEAR_LEG.SPOT_TRD_BOOK'    ||'|'||
'DCO_1_NEAR_LEG.MARKET_FWD_RATE'  ||'|'||
'DCO_1_NEAR_LEG.CUSTOMER_FWD_RATE'||'|'||
'DCO_1_NEAR_LEG.FWD_RISK_ENTITY'  ||'|'||
'DCO_2_NEAR_LEG.MARKET_SPOT_RATE' ||'|'||
'DCO_2_NEAR_LEG.CUSTOMER_SPOT_RATE'||'|'||
'DCO_2_NEAR_LEG.SPOT_RISK_ENTITY' ||'|'||
'DCO_2_NEAR_LEG.SPOT_TRD_BOOK'    ||'|'||
'DCO_2_NEAR_LEG.MARKET_FWD_RATE'  ||'|'||
'DCO_2_NEAR_LEG.CUSTOMER_FWD_RATE'||'|'||
'DCO_2_NEAR_LEG.FWD_RISK_ENTITY'  ||'|'||
'DCO_1_FAR_LEG.MARKET_SPOT_RATE'  ||'|'||
'DCO_1_FAR_LEG.CUSTOMER_SPOT_RATE'||'|'||
'DCO_1_FAR_LEG.SPOT_RISK_ENTITY'  ||'|'||
'DCO_1_FAR_LEG.SPOT_TRD_BOOK'     ||'|'||
'DCO_1_FAR_LEG.CUSTOMER_FWD_RATE' ||'|'||
'DCO_1_FAR_LEG.MARKET_FWD_POINTS' ||'|'||
'DCO_1_FAR_LEG.CUSTOMER_FWD_POINTS'||'|'||
'DCO_1_FAR_LEG.FWD_RISK_ENTITY'   ||'|'||
'DCO_1_FAR_LEG.CUSTOMER_SWAP_POINTS'||'|'||
'DCO_1_FAR_LEG.MARKET_SWAP_POINTS'||'|'||
'DCO_2_FAR_LEG.MARKET_SPOT_RATE'  ||'|'||
'DCO_2_FAR_LEG.CUSTOMER_SPOT_RATE'||'|'||
'DCO_2_FAR_LEG.SPOT_RISK_ENTITY'  ||'|'||
'DCO_2_FAR_LEG.SPOT_TRD_BOOK'     ||'|'||
'DCO_2_FAR_LEG.CUSTOMER_FWD_RATE' ||'|'||
'DCO_2_FAR_LEG.MARKET_FWD_POINTS' ||'|'||
'DCO_2_FAR_LEG.CUSTOMER_FWD_POINTS'||'|'||
'DCO_2_FAR_LEG.FWD_RISK_ENTITY'   ||'|'||
'DCO_2_FAR_LEG.CUSTOMER_SWAP_POINTS'||'|'||
'DCO_2_FAR_LEG.MARKET_SWAP_POINTS'||'|'||
'CONFIRM_METHOD'||'|'||
'SI_FLOW_PAY.SSI_ID'||'|'||
'SI_FLOW_PAY.NOSTRO'||'|'||
'SI_FLOW_PAY.SETT_METHOD'||'|'||
'SI_FLOW_PAY.CPTY_AGENT'||'|'||
'SI_FLOW_REC.SSI_ID'||'|'||
'SI_FLOW_REC.NOSTRO'||'|'||
'SI_FLOW_REC.SETT_METHOD'||'|'||
'SI_FLOW_REC.CPTY_AGENT'||'|'||
'SI_FLOW_FAR_PAY.SSI_ID'||'|'||
'SI_FLOW_FAR_PAY.NOSTRO'||'|'||
'SI_FLOW_FAR_PAY.SETT_METHOD'||'|'||
'SI_FLOW_FAR_PAY.CPTY_AGENT'||'|'||
'SI_FLOW_FAR_REC.SSI_ID'||'|'||
'SI_FLOW_FAR_REC.NOSTRO'||'|'||
'SI_FLOW_FAR_REC.SETT_METHOD'||'|'||
'SI_FLOW_FAR_REC.CPTY_AGENT'||'|'||
'NEAR_LEG.SPOT_MARGIN_POINTS'||'|'|| 
'FAR_LEG.FWD_MARGIN_POINTS' ||'|'|| 
'NEAR_LEG.SPOT_CONVERSION_RATE'||'|'|| 
'NEAR_LEG.FWD_CONVERSION_RATE'
FROM DUAL
UNION ALL
select
TO_CHAR(
TRIM(RESPONSE)||'|'||
TRIM(PRODUCT_TYPE)||'|'||
TRIM(DEAL_DATE)||'|'||
TRIM(DEAL_IDENTIFIER)||'|'||
TRIM(TRADING_BOOK)||'|'||
TRIM(SUBTYPE)||'|'||
TRIM(DEPT_NAME)||'|'||
TRIM(ENTITY_NAME)||'|'||
TRIM(ACCOUNTING_CODE)||'|'||
TRIM(NEAR_LEG_CCY_PAIR)||'|'||
TRIM(DCO_CURRENCY)||'|'||
TRIM(TRADED_CCY)||'|'||
TRIM(NEAR_LEG_CPTY)||'|'||
TRIM(NEAR_LEG_FX_BUY_SELL)||'|'||
TRIM(NEAR_LEG_CCY_ONE_AMOUNT)||'|'||
TRIM(NEAR_LEG_MARKET_SPOT_RATE)||'|'||
TRIM(NEAR_LEG_CCY_TWO_AMOUNT)||'|'||
TRIM(NEAR_LEG_VALUE_DATE_ONE)||'|'||
TRIM(FAR_LEG_CPTY)||'|'||
TRIM(FAR_LEG_CCY_ONE_AMOUNT)||'|'||
TRIM(FAR_LEG_MARKET_FWD_RATE)||'|'||
TRIM(FAR_LEG_CCY_TWO_AMOUNT)||'|'||
TRIM(FAR_LEG_VALUE_DATE_ONE)||'|'||
TRIM(NEAR_LEG_SPOT_RISK_ENTITY)||'|'||
TRIM(NEAR_LEG_SPOT_TRD_BOOK)||'|'||
TRIM(NEAR_LEG_FWD_RISK_ENTITY)||'|'||
TRIM(NEAR_LEG_FWD_TRD_BOOK)||'|'||
TRIM(FAR_LEG_SPOT_RISK_ENTITY)||'|'||
TRIM(FAR_LEG_SPOT_TRD_BOOK)||'|'||
TRIM(FAR_LEG_FWD_RISK_ENTITY)||'|'||
TRIM(FAR_LEG_FWD_TRD_BOOK)||'|'||
TRIM("NEAR_LEG.MARKET_SPOT_RATE")||'|'||
TRIM("NEAR_LEG.CUSTOMER_SPOT_RATE")||'|'||
TRIM("NEAR_LEG.MARKET_FWD_RATE")||'|'||
TRIM("NEAR_LEG.CUSTOMER_FWD_RATE")||'|'||
TRIM("FAR_LEG.MARKET_SPOT_RATE")||'|'||
TRIM("FAR_LEG.CUSTOMER_SPOT_RATE")||'|'||
--TRIM("FAR_LEG.CUSTOMER_FWD_RATE")||'|'||
TRIM("FAR_LEG.MARKET_FWD_POINTS")||'|'||
TRIM("FAR_LEG.CUSTOMER_SWAP_POINTS")||'|'||
TRIM("FAR_LEG.MARKET_SWAP_POINTS")||'|'||
TRIM(DECOMPOSE_CALENDAR_SET)||'|'||
TRIM("DCO_1_N_L.MARKET_SPOT_RATE")||'|'||
TRIM("DCO_1_N_L.CUSTOMER_SPOT_RATE")||'|'||
TRIM("DCO_1_N_L.SPOT_RISK_ENTITY")||'|'||
TRIM("DCO_1_N_L.SPOT_TRD_BOOK")||'|'||
TRIM("DCO_1_N_L.MARKET_FWD_RATE")||'|'||
TRIM("DCO_1_N_L.CUSTOMER_FWD_RATE")||'|'||
TRIM("DCO_1_N_L.FWD_RISK_ENTITY")||'|'||
TRIM("DCO_2_N_L.MARKET_SPOT_RATE")||'|'||
TRIM("DCO_2_N_L.CUSTOMER_SPOT_RATE")||'|'||
TRIM("DCO_2_N_L.SPOT_RISK_ENTITY")||'|'||
TRIM("DCO_2_N_L.SPOT_TRD_BOOK")||'|'||
TRIM("DCO_2_N_L.MARKET_FWD_RATE")||'|'||
TRIM("DCO_2_N_L.CUSTOMER_FWD_RATE")||'|'||
TRIM("DCO_2_N_L.FWD_RISK_ENTITY")||'|'||
TRIM("DCO_1_F_L.MARKET_SPOT_RATE")||'|'||
TRIM("DCO_1_F_L.CUSTOMER_SPOT_RATE")||'|'||
TRIM("DCO_1_F_L.SPOT_RISK_ENTITY")||'|'||
TRIM("DCO_1_F_L.SPOT_TRD_BOOK")||'|'||
TRIM("DCO_1_F_L.CUSTOMER_FWD_RATE")||'|'||
TRIM("DCO_1_F_L.MARKET_FWD_POINTS")||'|'||
TRIM("DCO_1_F_L.CUSTOMER_FWD_POINTS")||'|'||
TRIM("DCO_1_F_L.FWD_RISK_ENTITY")||'|'||
TRIM("DCO_1_F_L.CUSTOMER_SWAP_POINTS")||'|'||
TRIM("DCO_1_F_L.MARKET_SWAP_POINTS")||'|'||
TRIM("DCO_2_F_L.MARKET_SPOT_RATE")||'|'||
TRIM("DCO_2_F_L.CUSTOMER_SPOT_RATE")||'|'||
TRIM("DCO_2_F_L.SPOT_RISK_ENTITY")||'|'||
TRIM("DCO_2_F_L.SPOT_TRD_BOOK")||'|'||
TRIM("DCO_2_F_L.CUSTOMER_FWD_RATE")||'|'||
TRIM("DCO_2_F_L.MARKET_FWD_POINTS")||'|'||
TRIM("DCO_2_F_L.CUSTOMER_FWD_POINTS")||'|'||
TRIM("DCO_2_F_L.FWD_RISK_ENTITY")||'|'||
TRIM("DCO_2_F_L.CUSTOMER_SWAP_POINTS")||'|'||
TRIM("DCO_2_F_L.MARKET_SWAP_POINTS")||'|'||
TRIM(CONFIRM_METHOD)||'|'||
TRIM(SI_FLOW_PAY_SSI_ID)||'|'||
TRIM(SI_FLOW_PAY_NOSTRO)||'|'||
TRIM(SI_FLOW_PAY_SETT_METHOD)||'|'||
TRIM(SI_FLOW_PAY_CPTY_AGENT)||'|'||
TRIM(SI_FLOW_REC_SSI_ID)||'|'||
TRIM(SI_FLOW_REC_NOSTRO)||'|'||
TRIM(SI_FLOW_REC_SETT_METHOD)||'|'||
TRIM(SI_FLOW_REC_CPTY_AGENT)||'|'||
TRIM(SI_FLOW_FAR_PAY_SSI_ID)||'|'||
TRIM(SI_FLOW_FAR_PAY_NOSTRO)||'|'||
TRIM(SI_FLOW_FAR_PAY_SETT_METHOD)||'|'||
TRIM(SI_FLOW_FAR_PAY_CPTY_AGENT)||'|'||
TRIM(SI_FLOW_FAR_REC_SSI_ID)||'|'||
TRIM(SI_FLOW_FAR_REC_NOSTRO)||'|'||
TRIM(SI_FLOW_FAR_REC_SETT_METHOD)||'|'||
TRIM(SI_FLOW_FAR_REC_CPTY_AGENT)||'|'||
TRIM('')||'|'||--NEAR_LEG_SPOT_MARGIN_POINTS
TRIM('')||'|'||--FAR_LEG_SPOT_MARGIN_POINTS
TRIM('0')||'|'||
TRIM('0')
)
from FX_SWAP_O_TABLE where trim(subtype)='CORP';
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
fx_swap_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
fx_swap_spool.sql 
-- File Name		: fx_swap_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 3000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/FX_SWAP.TXT
SELECT 
'RESPONSE'||'|'||
'PRODUCT_TYPE'||'|'||
'DEAL_DATE'||'|'||
'DEAL_IDENTIFIER'||'|'||
'TRADING_BOOK'||'|'||
'SUBTYPE'||'|'||
'DEPT_NAME'||'|'||
'ENTITY_NAME'||'|'||
'ACCOUNTING_CODE'||'|'||
'NEAR_LEG.CCY_PAIR'||'|'||
'DCO_CURRENCY'||'|'||
'TRADED_CCY'||'|'||
'NEAR_LEG.CPTY'||'|'||
'NEAR_LEG.FX_BUY_SELL'||'|'||
'NEAR_LEG.CCY_ONE_AMOUNT'||'|'||
'NEAR_LEG.MARKET_SPOT_RATE'||'|'||
'NEAR_LEG.CCY_TWO_AMOUNT'||'|'||
'NEAR_LEG.VALUE_DATE_ONE'||'|'||
'FAR_LEG_CPTY'||'|'||
'FAR_LEG.CCY_ONE_AMOUNT'||'|'||
'FAR_LEG.MARKET_FWD_RATE'||'|'||
'FAR_LEG.CCY_TWO_AMOUNT'||'|'||
'FAR_LEG.VALUE_DATE_ONE'||'|'||
'NEAR_LEG.SPOT_RISK_ENTITY'||'|'||
'NEAR_LEG.SPOT_TRD_BOOK'||'|'||
'NEAR_LEG.FWD_RISK_ENTITY'||'|'||
'NEAR_LEG.FWD_TRD_BOOK'||'|'||
'FAR_LEG.SPOT_RISK_ENTITY'||'|'||
'FAR_LEG.SPOT_TRD_BOOK'||'|'||
'FAR_LEG.FWD_RISK_ENTITY'||'|'||
'FAR_LEG.FWD_TRD_BOOK'||'|'||
'NEAR_LEG.MARKET_SPOT_RATE'||'|'||
'NEAR_LEG.CUSTOMER_SPOT_RATE'||'|'||
'NEAR_LEG.MARKET_FWD_RATE'||'|'||
'NEAR_LEG.CUSTOMER_FWD_RATE'||'|'||
'FAR_LEG.MARKET_SPOT_RATE'||'|'||
'FAR_LEG.CUSTOMER_SPOT_RATE'||'|'||
'FAR_LEG.CUSTOMER_FWD_RATE'||'|'||
'FAR_LEG.MARKET_FWD_POINTS'||'|'||
'FAR_LEG.CUSTOMER_SWAP_POINTS'||'|'||
'FAR_LEG.MARKET_SWAP_POINTS'||'|'||
'DECOMPOSE_CALENDAR_SET'||'|'||
'DCO_1_NEAR_LEG.MARKET_SPOT_RATE' ||'|'||
'DCO_1_NEAR_LEG.CUSTOMER_SPOT_RATE'||'|'||
'DCO_1_NEAR_LEG.SPOT_RISK_ENTITY' ||'|'||
'DCO_1_NEAR_LEG.SPOT_TRD_BOOK'    ||'|'||
'DCO_1_NEAR_LEG.MARKET_FWD_RATE'  ||'|'||
'DCO_1_NEAR_LEG.CUSTOMER_FWD_RATE'||'|'||
'DCO_1_NEAR_LEG.FWD_RISK_ENTITY'  ||'|'||
'DCO_2_NEAR_LEG.MARKET_SPOT_RATE' ||'|'||
'DCO_2_NEAR_LEG.CUSTOMER_SPOT_RATE'||'|'||
'DCO_2_NEAR_LEG.SPOT_RISK_ENTITY' ||'|'||
'DCO_2_NEAR_LEG.SPOT_TRD_BOOK'    ||'|'||
'DCO_2_NEAR_LEG.MARKET_FWD_RATE'  ||'|'||
'DCO_2_NEAR_LEG.CUSTOMER_FWD_RATE'||'|'||
'DCO_2_NEAR_LEG.FWD_RISK_ENTITY'  ||'|'||
'DCO_1_FAR_LEG.MARKET_SPOT_RATE'  ||'|'||
'DCO_1_FAR_LEG.CUSTOMER_SPOT_RATE'||'|'||
'DCO_1_FAR_LEG.SPOT_RISK_ENTITY'  ||'|'||
'DCO_1_FAR_LEG.SPOT_TRD_BOOK'     ||'|'||
'DCO_1_FAR_LEG.CUSTOMER_FWD_RATE' ||'|'||
'DCO_1_FAR_LEG.MARKET_FWD_POINTS' ||'|'||
'DCO_1_FAR_LEG.CUSTOMER_FWD_POINTS'||'|'||
'DCO_1_FAR_LEG.FWD_RISK_ENTITY'   ||'|'||
'DCO_1_FAR_LEG.CUSTOMER_SWAP_POINTS'||'|'||
'DCO_1_FAR_LEG.MARKET_SWAP_POINTS'||'|'||
'DCO_2_FAR_LEG.MARKET_SPOT_RATE'  ||'|'||
'DCO_2_FAR_LEG.CUSTOMER_SPOT_RATE'||'|'||
'DCO_2_FAR_LEG.SPOT_RISK_ENTITY'  ||'|'||
'DCO_2_FAR_LEG.SPOT_TRD_BOOK'     ||'|'||
'DCO_2_FAR_LEG.CUSTOMER_FWD_RATE' ||'|'||
'DCO_2_FAR_LEG.MARKET_FWD_POINTS' ||'|'||
'DCO_2_FAR_LEG.CUSTOMER_FWD_POINTS'||'|'||
'DCO_2_FAR_LEG.FWD_RISK_ENTITY'   ||'|'||
'DCO_2_FAR_LEG.CUSTOMER_SWAP_POINTS'||'|'||
'DCO_2_FAR_LEG.MARKET_SWAP_POINTS'||'|'||
'CONFIRM_METHOD'||'|'||
'SI_FLOW_PAY.SSI_ID'||'|'||
'SI_FLOW_PAY.NOSTRO'||'|'||
'SI_FLOW_PAY.SETT_METHOD'||'|'||
'SI_FLOW_PAY.CPTY_AGENT'||'|'||
'SI_FLOW_REC.SSI_ID'||'|'||
'SI_FLOW_REC.NOSTRO'||'|'||
'SI_FLOW_REC.SETT_METHOD'||'|'||
'SI_FLOW_REC.CPTY_AGENT'||'|'||
'SI_FLOW_FAR_PAY.SSI_ID'||'|'||
'SI_FLOW_FAR_PAY.NOSTRO'||'|'||
'SI_FLOW_FAR_PAY.SETT_METHOD'||'|'||
'SI_FLOW_FAR_PAY.CPTY_AGENT'||'|'||
'SI_FLOW_FAR_REC.SSI_ID'||'|'||
'SI_FLOW_FAR_REC.NOSTRO'||'|'||
'SI_FLOW_FAR_REC.SETT_METHOD'||'|'||
'SI_FLOW_FAR_REC.CPTY_AGENT'||'|'||
'NEAR_LEG.SPOT_MARGIN_POINTS'||'|'|| 
'FAR_LEG.SPOT_MARGIN_POINTS' 
FROM DUAL
UNION ALL
select
TO_CHAR(
TRIM(RESPONSE)||'|'||
TRIM(PRODUCT_TYPE)||'|'||
TRIM(DEAL_DATE)||'|'||
TRIM(DEAL_IDENTIFIER)||'|'||
TRIM(TRADING_BOOK)||'|'||
TRIM(SUBTYPE)||'|'||
TRIM(DEPT_NAME)||'|'||
TRIM(ENTITY_NAME)||'|'||
TRIM(ACCOUNTING_CODE)||'|'||
TRIM(NEAR_LEG_CCY_PAIR)||'|'||
TRIM(DCO_CURRENCY)||'|'||
TRIM(TRADED_CCY)||'|'||
TRIM(NEAR_LEG_CPTY)||'|'||
TRIM(NEAR_LEG_FX_BUY_SELL)||'|'||
TRIM(NEAR_LEG_CCY_ONE_AMOUNT)||'|'||
TRIM(NEAR_LEG_MARKET_SPOT_RATE)||'|'||
TRIM(NEAR_LEG_CCY_TWO_AMOUNT)||'|'||
TRIM(NEAR_LEG_VALUE_DATE_ONE)||'|'||
TRIM(FAR_LEG_CPTY)||'|'||
TRIM(FAR_LEG_CCY_ONE_AMOUNT)||'|'||
TRIM(FAR_LEG_MARKET_FWD_RATE)||'|'||
TRIM(FAR_LEG_CCY_TWO_AMOUNT)||'|'||
TRIM(FAR_LEG_VALUE_DATE_ONE)||'|'||
TRIM(NEAR_LEG_SPOT_RISK_ENTITY)||'|'||
TRIM(NEAR_LEG_SPOT_TRD_BOOK)||'|'||
TRIM(NEAR_LEG_FWD_RISK_ENTITY)||'|'||
TRIM(NEAR_LEG_FWD_TRD_BOOK)||'|'||
TRIM(FAR_LEG_SPOT_RISK_ENTITY)||'|'||
TRIM(FAR_LEG_SPOT_TRD_BOOK)||'|'||
TRIM(FAR_LEG_FWD_RISK_ENTITY)||'|'||
TRIM(FAR_LEG_FWD_TRD_BOOK)||'|'||
TRIM("NEAR_LEG.MARKET_SPOT_RATE")||'|'||
TRIM("NEAR_LEG.CUSTOMER_SPOT_RATE")||'|'||
TRIM("NEAR_LEG.MARKET_FWD_RATE")||'|'||
TRIM("NEAR_LEG.CUSTOMER_FWD_RATE")||'|'||
TRIM("FAR_LEG.MARKET_SPOT_RATE")||'|'||
TRIM("FAR_LEG.CUSTOMER_SPOT_RATE")||'|'||
TRIM("FAR_LEG.CUSTOMER_FWD_RATE")||'|'||
TRIM("FAR_LEG.MARKET_FWD_POINTS")||'|'||
TRIM("FAR_LEG.CUSTOMER_SWAP_POINTS")||'|'||
TRIM("FAR_LEG.MARKET_SWAP_POINTS")||'|'||
TRIM(DECOMPOSE_CALENDAR_SET)||'|'||
TRIM("DCO_1_N_L.MARKET_SPOT_RATE")||'|'||
TRIM("DCO_1_N_L.CUSTOMER_SPOT_RATE")||'|'||
TRIM("DCO_1_N_L.SPOT_RISK_ENTITY")||'|'||
TRIM("DCO_1_N_L.SPOT_TRD_BOOK")||'|'||
TRIM("DCO_1_N_L.MARKET_FWD_RATE")||'|'||
TRIM("DCO_1_N_L.CUSTOMER_FWD_RATE")||'|'||
TRIM("DCO_1_N_L.FWD_RISK_ENTITY")||'|'||
TRIM("DCO_2_N_L.MARKET_SPOT_RATE")||'|'||
TRIM("DCO_2_N_L.CUSTOMER_SPOT_RATE")||'|'||
TRIM("DCO_2_N_L.SPOT_RISK_ENTITY")||'|'||
TRIM("DCO_2_N_L.SPOT_TRD_BOOK")||'|'||
TRIM("DCO_2_N_L.MARKET_FWD_RATE")||'|'||
TRIM("DCO_2_N_L.CUSTOMER_FWD_RATE")||'|'||
TRIM("DCO_2_N_L.FWD_RISK_ENTITY")||'|'||
TRIM("DCO_1_F_L.MARKET_SPOT_RATE")||'|'||
TRIM("DCO_1_F_L.CUSTOMER_SPOT_RATE")||'|'||
TRIM("DCO_1_F_L.SPOT_RISK_ENTITY")||'|'||
TRIM("DCO_1_F_L.SPOT_TRD_BOOK")||'|'||
TRIM("DCO_1_F_L.CUSTOMER_FWD_RATE")||'|'||
TRIM("DCO_1_F_L.MARKET_FWD_POINTS")||'|'||
TRIM("DCO_1_F_L.CUSTOMER_FWD_POINTS")||'|'||
TRIM("DCO_1_F_L.FWD_RISK_ENTITY")||'|'||
TRIM("DCO_1_F_L.CUSTOMER_SWAP_POINTS")||'|'||
TRIM("DCO_1_F_L.MARKET_SWAP_POINTS")||'|'||
TRIM("DCO_2_F_L.MARKET_SPOT_RATE")||'|'||
TRIM("DCO_2_F_L.CUSTOMER_SPOT_RATE")||'|'||
TRIM("DCO_2_F_L.SPOT_RISK_ENTITY")||'|'||
TRIM("DCO_2_F_L.SPOT_TRD_BOOK")||'|'||
TRIM("DCO_2_F_L.CUSTOMER_FWD_RATE")||'|'||
TRIM("DCO_2_F_L.MARKET_FWD_POINTS")||'|'||
TRIM("DCO_2_F_L.CUSTOMER_FWD_POINTS")||'|'||
TRIM("DCO_2_F_L.FWD_RISK_ENTITY")||'|'||
TRIM("DCO_2_F_L.CUSTOMER_SWAP_POINTS")||'|'||
TRIM("DCO_2_F_L.MARKET_SWAP_POINTS")||'|'||
TRIM(CONFIRM_METHOD)||'|'||
TRIM(SI_FLOW_PAY_SSI_ID)||'|'||
TRIM(SI_FLOW_PAY_NOSTRO)||'|'||
TRIM(SI_FLOW_PAY_SETT_METHOD)||'|'||
TRIM(SI_FLOW_PAY_CPTY_AGENT)||'|'||
TRIM(SI_FLOW_REC_SSI_ID)||'|'||
TRIM(SI_FLOW_REC_NOSTRO)||'|'||
TRIM(SI_FLOW_REC_SETT_METHOD)||'|'||
TRIM(SI_FLOW_REC_CPTY_AGENT)||'|'||
TRIM(SI_FLOW_FAR_PAY_SSI_ID)||'|'||
TRIM(SI_FLOW_FAR_PAY_NOSTRO)||'|'||
TRIM(SI_FLOW_FAR_PAY_SETT_METHOD)||'|'||
TRIM(SI_FLOW_FAR_PAY_CPTY_AGENT)||'|'||
TRIM(SI_FLOW_FAR_REC_SSI_ID)||'|'||
TRIM(SI_FLOW_FAR_REC_NOSTRO)||'|'||
TRIM(SI_FLOW_FAR_REC_SETT_METHOD)||'|'||
TRIM(SI_FLOW_FAR_REC_CPTY_AGENT)||'|'||
TRIM(NEAR_LEG_SPOT_MARGIN_POINTS)||'|'||
TRIM(FAR_LEG_SPOT_MARGIN_POINTS)
)
from FX_SWAP_O_TABLE where trim(subtype)!='CORP';
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
interanal_rev_deals_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
interanal_rev_deals_spool.sql 
-- File Name		: fx_spot_deals_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/INTERNAL_NEAR_REV_DEALS.TXT
SELECT 
'RESPONSE'||'|'||
'PRODUCT_TYPE'||'|'||
'DEAL_DATE'||'|'||
'DEAL_IDENTIFIER'||'|'||
'TRADING_BOOK'||'|'||
'MAIN_LEG.SPOT_TRD_BOOK'||'|'||
'SUBTYPE'||'|'||
'DEPT_NAME'||'|'||
'ACCOUNTING_CODE'||'|'||
'ENTITY_NAME'||'|'||
'MAIN_LEG.SPOT_RISK_ENTITY'||'|'||
'MAIN_LEG.CPTY'||'|'||
'MAIN_LEG.CCY_PAIR'||'|'||
'SPOT_RISK_CCY'||'|'||
'DCO_CURRENCY'||'|'||
'MAIN_LEG.FX_BUY_SELL'||'|'||
'MAIN_LEG.CCY_ONE_AMOUNT'||'|'||
'MAIN_LEG.MARKET_SPOT_RATE'||'|'||
'MAIN_LEG.CCY_TWO_AMOUNT'||'|'||
'MAIN_LEG.VALUE_DATE_ONE'||'|'||
'MEMO_FIELD_1'||'|'||
'CONFIRM_METHOD'||'|'||
'SI_FLOW_PAY.SSI_ID'||'|'||
'SI_FLOW_PAY.NOSTRO'||'|'||
'SI_FLOW_PAY.SETT_METHOD'||'|'||
'SI_FLOW_PAY.CPTY_AGENT'||'|'||
'SI_FLOW_REC.SSI_ID'||'|'||
'SI_FLOW_REC.NOSTRO'||'|'||
'SI_FLOW_REC.SETT_METHOD'||'|'||
'SI_FLOW_REC.CPTY_AGENT'||'|'||
'MAIN_LEG.SPOT_MARGIN_POINTS'
FROM DUAL
UNION ALL
select
TO_CHAR(
TRIM(RESPONSE)||'|'||
TRIM(PRODUCT_TYPE)||'|'||
TRIM(DEAL_DATE)||'|'||
TRIM(DEAL_IDENTIFIER)||'|'||
TRIM(TRADING_BOOK)||'|'||
TRIM(MAIN_LEG_SPOT_TRD_BOOK)||'|'||
TRIM(SUBTYPE)||'|'||
TRIM(DEPT_NAME)||'|'||
TRIM(ACCOUNTING_CODE)||'|'||
TRIM(ENTITY_NAME)||'|'||
TRIM(MAIN_LEG_SPOT_RISK_ENTITY)||'|'||
TRIM(MAIN_LEG_CPTY)||'|'||
TRIM(MAIN_LEG_CCY_PAIR)||'|'||
TRIM(SPOT_RISK_CCY)||'|'||
TRIM(DCO_CURRENCY)||'|'||
TRIM(MAIN_LEG_FX_BUY_SELL)||'|'||
TRIM(MAIN_LEG_CCY_ONE_AMOUNT)||'|'||
TRIM(MAIN_LEG_MARKET_SPOT_RATE)||'|'||
TRIM(MAIN_LEG_CCY_TWO_AMOUNT)||'|'||
TRIM(MAIN_LEG_VALUE_DATE_ONE)||'|'||
TRIM(MEMO_FIELD_1)||'|'||
TRIM(CONFIRM_METHOD)||'|'||
TRIM(SI_FLOW_PAY_SSI_ID)||'|'||
TRIM(SI_FLOW_PAY_NOSTRO)||'|'||
TRIM(SI_FLOW_PAY_SETT_METHOD)||'|'||
TRIM(SI_FLOW_PAY_CPTY_AGENT)||'|'||
TRIM(SI_FLOW_REC_SSI_ID)||'|'||
TRIM(SI_FLOW_REC_NOSTRO)||'|'||
TRIM(SI_FLOW_REC_SETT_METHOD)||'|'||
TRIM(SI_FLOW_REC_CPTY_AGENT)||'|'||
TRIM(SPOT_MARGIN_POINTS)
)
from FX_INTERANL_NEAR_DEALS_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
interest_rates_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
interest_rates_spool.sql 
-- File Name		: interest_rates_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/INTEREST_RATES.TXT
SELECT 
'RESPONSE'||'|'||
'MRS_CURVE_ID'||'|'||
'TYPE'||'|'||
'NOMINAL'||'|'||
'BASIS'||'|'||
'MARKET_BID'||'|'||
'MARKET_OFFER'||'|'||
'BASE_DATE'
FROM DUAL
UNION ALL
select
TO_CHAR(TRIM(RESPONSE)||'|'||
TRIM(CURVE_ID)||'|'||
TRIM(TYPE)||'|'||
TRIM(NOMINAL)||'|'||
TRIM(BASIS)||'|'||
TO_CHAR(TRIM(BID),'9999999999999999999.99999999')||'|'||
TO_CHAR(TRIM(OFFER),'9999999999999999999.99999999')||'|'||
TRIM(BASE_DATE))
from INTEREST_RATES_O_TABLE ;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
internal_deals_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
internal_deals_spool.sql 
-- File Name		: internal_deals_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 27-04-2017
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/FX_ARB.dat
 SELECT rpad(trim(DEAL_IDENTIFIER),7,' ') ||','||
      rpad(trim(DEAL_DATE),11,' ') ||','||
      rpad(trim(START_DATE),11,' ') ||','||
      rpad(trim(END_DATE),11,' ') ||','||
      rpad(trim(CURRENCY_PAIR),7,' ') ||','||
      rpad(trim(BUY_SELL),4,' ') ||','||
      rpad(trim(NEAR_RATE),8,' ') ||','||
      rpad(trim(DEPO_BASIS),5,' ') ||','||
      rpad(trim(LOAN_BASIS),5,' ') ||','||
      rpad(trim(SPOTRATE),10,' ') ||','||
      rpad(trim(RIGHT_NEAR_VAL),12,' ') ||','||
      rpad(trim(LEFT_NEAR_VAL),12,' ') ||','||
      rpad(trim(LT_F_VAL),12,' ') ||','||
      rpad(trim(RT_F_VAL),13,' ') ||','||
      rpad(trim(FWD_CTRCT_RATE),7,' ') ||','||
      rpad(trim(DEPO_RATE),11,' ') ||','||
      rpad(trim(LOAN_RATE),11,' ')
 FROM INTERNAL_DEALS_O_TABLE;
exit;
--OLD MAPPING
-- SELECT rpad(trim(DEAL_IDENTIFIER),7,' ') ||
--      rpad(trim(DEAL_DATE),11,' ') ||
--      rpad(trim(START_DATE),11,' ') ||
--      rpad(trim(END_DATE),11,' ') ||
--      rpad(trim(CURRENCY_PAIR),7,' ') ||
--      rpad(trim(BUY_SELL),4,' ') ||
--      rpad(trim(SPOTRATE),10,' ') ||
--      rpad(trim(DEPO_BASIS),5,' ') ||
--      rpad(trim(LOAN_BASIS),5,' ') ||
--      rpad(trim(NEAR_RATE),10,' ') ||
--      rpad(trim(RIGHT_NEAR_VAL),12,' ') ||
--      rpad(trim(LEFT_NEAR_VAL),12,' ') ||
--      rpad(trim(LT_F_VAL),12,' ') ||
--      rpad(trim(RT_F_VAL),13,' ') ||
--      rpad(trim(FWD_CTRCT_RATE),7,' ') ||
--      rpad(trim(DEPO_RATE),11,' ') ||
--      rpad(trim(LOAN_RATE),11,' ')
-- FROM INTERNAL_DEALS_O_TABLE;
--LENGTH VALIDATION
-- SELECT max(length(trim(DEAL_IDENTIFIER))),
--      max(length(trim(DEAL_DATE))),
--      max(length(trim(START_DATE))),
--      max(length(trim(END_DATE))),
--      max(length(trim(CURRENCY_PAIR))),
--      max(length(trim(BUY_SELL))),
--      max(length(trim(NEAR_RATE))),
--      max(length(trim(DEPO_BASIS))),
--      max(length(trim(LOAN_BASIS))),
--      max(length(trim(SPOTRATE))),
--      max(length(trim(RIGHT_NEAR_VAL))),
--      max(length(trim(LEFT_NEAR_VAL))),
--      max(length(trim(LT_F_VAL))),
--      max(length(trim(RT_F_VAL))),
--      max(length(trim(FWD_CTRCT_RATE))),
--      max(length(trim(DEPO_RATE))),
--      max(length(trim(LOAN_RATE)))
-- FROM INTERNAL_DEALS_O_TABLE
 --select '7','11','11','11','7','4','8','5','5','10','12','12','12','13','7','11','11' from dual;
 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
reference_rate_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
reference_rate_spool.sql 
-- File Name		: reference_rate_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/REFERENCE_RATE.TXT
SELECT 
'RESPONSE'||'|'|| 
'Rate Code'||'|'|| 
'Rate Currency'||'|'|| 
'Rate Value'||'|'|| 
'Effective Date'||'|'|| 
'COMMENTS'
FROM DUAL
UNION ALL
select
TO_CHAR(
TRIM(RESPONSE)||'|'||
TRIM("Rate Code")||'|'||
TRIM("Rate Currency")||'|'||
TRIM("Rate Value")||'|'||
TRIM("Effective Date")||'|'||
TRIM(COMMENTS)
)
from REFERENCE_RATE_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
repo_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
repo_spool.sql 
-- File Name		: repo_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/REPO.TXT
SELECT 
'RESPONSE'||'|'||
'DEAL_IDENTIFIER'||'|'||
'TRADING_BOOK'||'|'||
'ENTITY_NAME'||'|'||
'DEPT_NAME'||'|'||
'SUBTYPE'||'|'||
'COUNTERPARTY_STRING'||'|'||
'DEAL_DATE'||'|'||
'START_DATE'||'|'||
'END_DATE'||'|'||
'SIDE.SIDE_ONE.LONG_OR_SHORT'||'|'||
'TYPE_STRING'||'|'||
'CURRENCY_STRING'||'|'||
'SIDE.SIDE_ONE.NOTIONAL_AMOUNT.VALUE'||'|'||
'SIDE.SIDE_ONE.BASIS_CODE'||'|'||
'SIDE.SIDE_ONE.CREATION_FREQUENCY'||'|'||
'SIDE.SIDE_ONE.FIX_RATE'||'|'||
'SIDE.SIDE_ONE.SPREAD_RATE'||'|'||
'SIDE.$1.CASH_FLOW_SIDE_TYPE'||'|'||
'SIDE.$1.REFERENCE_RATE'||'|'||
'AUTO_OR_PENDING'||'|'||
'CONFIRM_METHOD'||'|'||
'SIDE.CURREC.SI_FLOW_PAY.SSI_ID'||'|'||
'SIDE.CURREC.SI_FLOW_PAY.NOSTRO'||'|'||
'SIDE.CURREC.SI_FLOW_PAY.SETT_METHOD'||'|'||
'SIDE.CURREC.SI_FLOW_PAY.CPTY_AGENT'||'|'||
'SIDE.CURREC.SI_FLOW_REC.SSI_ID'||'|'||
'SIDE.CURREC.SI_FLOW_REC.NOSTRO'||'|'||
'SIDE.CURREC.SI_FLOW_REC.SETT_METHOD'||'|'||
'SIDE.CURREC.SI_FLOW_REC.CPTY_AGENT'||'|'||
'SIFLOW_INTEREST_PAY.NOSTRO'||'|'||
'SIFLOW_INTEREST_PAY.SETT_METHOD'||'|'||
'SIFLOW_INTEREST_PAY.CPTY_AGENT'||'|'||
'SIFLOW_INTEREST_RECIEVE.NOSTRO'||'|'||
'SIFLOW_INTEREST_RECIEVE.SETT_METHOD'||'|'||
'SIFLOW_INTEREST_RECIEVE.CPTY_AGENT'||'|'||
'SIDE.SIDE_ONE.COMPOUNDING_METHOD'||'|'||
'SIDE.SIDE_ONE.COMPOUNDING_FREQUENCY'||'|'||
'SIDE.SIDE_ONE.START_DATE_DAY_CONVENTION'||'|'||
'SIDE.SIDE_ONE.END_DATE_DAY_CONVENTION'||'|'||
'SIDE.SIDE_ONE.CASH_FLOW_DAY_CONVENTION'
FROM DUAL
UNION ALL
select
TO_CHAR(
TRIM(RESPONSE)||'|'||
TRIM(DEAL_IDENTIFIER)||'|'||
TRIM(TRADING_BOOK)||'|'||
TRIM(ENTITY_NAME)||'|'||
TRIM(DEPT_NAME)||'|'||
TRIM(SUBTYPE)||'|'||
TRIM(COUNTERPARTY_STRING)||'|'||
TRIM(DEAL_DATE)||'|'||
TRIM(START_DATE)||'|'||
TRIM(END_DATE)||'|'||
TRIM(SIDE_SIDE_ONE_LONG_OR_SHORT)||'|'||
TRIM(TYPE_STRING)||'|'||
TRIM(CURRENCY_STRING)||'|'||
TRIM(SIDE_SIDE_1_NOTNAL_AMT_VALUE)||'|'||
TRIM(SIDE_SIDE_ONE_BASIS_CODE)||'|'||
TRIM(SIDE_SIDE_ONE_CREATION_FREQ)||'|'||
TRIM(SIDE_SIDE_ONE_FIX_RATE)||'|'||
TRIM(SIDE_SIDE_ONE_SPREAD_RATE)||'|'||
TRIM("SIDE.$1.CASH_FLOW_SIDE_TYPE")||'|'||
TRIM("SIDE.$1.REFERENCE_RATE")||'|'||
TRIM(AUTO_OR_PENDING)||'|'||
TRIM(CONFIRM_METHOD)||'|'||
TRIM(SIDE_CURREC_SI_FLOW_PAY_SSI_ID)||'|'||
TRIM(SIDE_CURREC_SI_FLOW_PAY_NOSTRO)||'|'||
TRIM(SIDE_CUR_SI_FLOW_PAY_SETT_MTHD)||'|'||
TRIM(SIDE_CUR_SI_FLOW_PAY_CPTY_AGNT)||'|'||
TRIM(SIDE_CURREC_SI_FLOW_REC_SSI_ID)||'|'||
TRIM(SIDE_CURREC_SI_FLOW_REC_NOSTRO)||'|'||
TRIM(SIDE_CUR_SI_FLOW_REC_SETT_MTHD)||'|'||
TRIM(SIDE_CUR_SI_FLOW_REC_CPTY_AGNT)||'|'||
TRIM(SIFLOW_INTEREST_PAY_NOSTRO)||'|'||
TRIM(SIFLOW_INT_PAY_SETT_METHOD)||'|'||
TRIM(SIFLOW_INTEREST_PAY_CPTY_AGENT)||'|'||
TRIM(SIFLOW_INTEREST_RECIEVE_NOSTRO)||'|'||
TRIM(SIFLOW_INT_RECIEVE_SETT_METHOD)||'|'||
TRIM(SIFLOW_INT_RECIEVE_CPTY_AGENT)||'|'||
TRIM(SIDE_SIDE_ONE_COMP_METHOD)||'|'||
TRIM(SIDE_SIDE_ONE_COMP_FREQUENCY)||'|'||
TRIM(SIDE_SIDE_ONE_START_DD_CNVNTN)||'|'||
TRIM(SIDE_SIDE_ONE_END_DD_CNVNTN)||'|'||
TRIM(SIDE_SIDE_1_CASH_FLW_D_CNVNTN))
from REPO_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
security_defn_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
security_defn_spool.sql 
-- File Name		: security_defn_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/SECURITY_DEFN.TXT
SELECT 
'RESPONSE'||'|'||
'TEMPLATE_NAME'||'|'||
'NAME'||'|'||
'ISSUE_CCY'||'|'||
'SECURITY_TYPE'||'|'||
'TYPE'||'|'||
'TAX_FREE'||'|'||
'INSTRUMENT_CLASS_DATA_NAME'||'|'||
'YIELD_METHOD'||'|'||
'YIELD_BASIS'||'|'||
'EFFECTIVE_YIELD_METHOD'||'|'||
'EFFECTIVE_YIELD_BASIS'||'|'||
'ALT_ID1'||'|'||
'ISSUE_DATE'||'|'||
'MATURITY_DATE'||'|'||
'SIDE.$1.CASH_FLOW_SIDE_TYPE'||'|'||
'SIDE.$1.FIX_RATE'||'|'||
'SIDE.$1.REFERENCE_RATE'||'|'||
'REDEMPTION_VALUE'||'|'||
'SIDE.$1.CREATION_FREQUENCY'||'|'||
'ISSUER_STRING'||'|'||
'ACTIVE_STATUS'||'|'||
'ENTITY_PERM_GROUP'||'|'||
'MTM_VALUATION'||'|'||
'DESCRIPTION'||'|'||
'SHORT_SALES_ACTION'||'|'||
'MIN_QTY_METHOD'||'|'||
'MINIMUM_AMOUNT'||'|'||
'QTY_MULTIPLE'||'|'||
'REALIZATION_METHOD'||'|'||
'AMORTISATION_METHOD'||'|'||
'DATE_TO_REALIZE'||'|'||
'AMORT_APPLICABILITY'||'|'||
'ISSUE_PRICE'||'|'||
'ISSUANCE_FACE'||'|'||
'PRICE_METHOD'||'|'||
'PRICE_BASIS'||'|'||
'ACC_COUPON_METHOD'||'|'||
'TRADED_ACCRUED_COUPON'||'|'||
'TRADED_BASIS_CODE'||'|'||
'YIELD_COMPOUNDING_FREQUENCY'||'|'||
'PRICE_QUOTATION'||'|'||
'PRICE_ROUNDING_DIGITS'||'|'||
'YIELD_DISPLAY_PLACES'||'|'||
'SETTLEMENT_CALENDAR_SET'||'|'||
'SETTLEMENT_DAY_CONVENTION'||'|'||
'SETTLEMENT_DELAY'||'|'||
'IS_SPLITABLE'||'|'||
'IS_REPOABLE'||'|'||
'AUTO_REALIZE'||'|'||
'LAST_COUPON_AS_MM'||'|'||
'MRS_PRICE_YIELD'||'|'||
'TAXABLE'||'|'||
'WH_TAX_PERCENT'||'|'||
'CASH_FLOW.$1.WH_TAX_PERCENT'||'|'||
'SIDE.$1.WH_TAX_PERCENT'||'|'||
'IS_COUPON_BEARING'||'|'||
'INDEX_SETT_CCY'||'|'||
'INDEX_SETTLEMENT_GAP'||'|'||
'SIDE.$1.NOTIONAL_AMOUNT.CURRENCY'||'|'||
'SIDE.$1.NOTIONAL_AMOUNT.VALUE'||'|'||
'SIDE.$1.BASIS_CODE'||'|'||
'SIDE.$1.CASH_FLOW_CALENDAR_SET_NAME'||'|'||
'SIDE.$1.CASH_FLOW_DAY_CONVENTION'||'|'||
'SIDE.$1.START_DATE_DAY_CONVENTION'||'|'||
'SIDE.$1.END_DATE_DAY_CONVENTION'||'|'||
'SIDE.$1.ROUNDING_METHOD'||'|'||
'SIDE.$1.AMOUNT_ROUNDING_METHOD'||'|'||
'SIDE.$1.RELATIVE_SETTLEMENT_DELAY'||'|'||
'SETTLEMENT_DAY_CONVENTION'||'|'||
'SIDE.$1.CURVE_DATA.FX_FWD_CURVE_ID'||'|'||
'SIDE.$1.CURVE_DATA.DISC_CURVE_ID'||'|'||
'SIDE.$1.CURVE_DATA.IRR_CURVE_ID'||'|'||
'GENERATE_CASH_FLOWS_BUTTON'||'|'||
'GUARANTEED_BY'||'|'||
'SIDE.CURREC.STUB_PERIOD_TYPE'||'|'||
'SIDE.CURREC.INITIAL_STUB_END_DATE'||'|'||
'SIDE.$1.MARGIN'
FROM DUAL
UNION ALL
select
TO_CHAR(TRIM(RESPONSE)||'|'||
TRIM(TEMPLATE_NAME)||'|'||
TRIM(NAME)||'|'||
TRIM(ISSUE_CCY)||'|'||
TRIM(SECURITY_TYPE)||'|'||
TRIM(A_TYPE)||'|'||
TRIM(TAX_FREE)||'|'||
TRIM(INSTRUMENT_CLASS_DATA_NAME)||'|'||
TRIM(YIELD_METHOD)||'|'||
TRIM(YIELD_BASIS)||'|'||
TRIM(EFFECTIVE_YIELD_METHOD)||'|'||
TRIM(EFFECTIVE_YIELD_BASIS)||'|'||
TRIM(ALT_ID1)||'|'||
TRIM(ISSUE_DATE)||'|'||
TRIM(MATURITY_DATE)||'|'||
TRIM(SIDE_$1_CASH_FLOW_SIDE_TYPE)||'|'||
TRIM(SIDE_$1_FIX_RATE)||'|'||
TRIM(SIDE_$1_REFERENCE_RATE)||'|'||
TRIM(REDEMPTION_VALUE)||'|'||
TRIM(SIDE_$1_CREATION_FREQUENCY)||'|'||
TRIM(ISSUER_STRING)||'|'||
TRIM(ACTIVE_STATUS)||'|'||
TRIM(ENTITY_PERM_GROUP)||'|'||
TRIM(MTM_VALUATION)||'|'||
TRIM(DESCRIPTION)||'|'||
TRIM(SHORT_SALES_ACTION)||'|'||
TRIM(MIN_QTY_METHOD)||'|'||
TRIM(MINIMUM_AMOUNT)||'|'||
TRIM(QTY_MULTIPLE)||'|'||
TRIM(REALIZATION_METHOD)||'|'||
TRIM(AMORTISATION_METHOD)||'|'||
TRIM(DATE_TO_REALIZE)||'|'||
TRIM(AMORT_APPLICABILITY)||'|'||
TRIM(ISSUE_PRICE)||'|'||
TRIM(ISSUANCE_FACE)||'|'||
TRIM(PRICE_METHOD)||'|'||
TRIM(PRICE_BASIS)||'|'||
TRIM(ACC_COUPON_METHOD)||'|'||
TRIM(TRADED_ACCRUED_COUPON)||'|'||
TRIM(TRADED_BASIS_CODE)||'|'||
TRIM(YIELD_COMPOUNDING_FREQUENCY)||'|'||
TRIM(PRICE_QUOTATION)||'|'||
TRIM(PRICE_ROUNDING_DIGITS)||'|'||
TRIM(YIELD_DISPLAY_PLACES)||'|'||
TRIM(SETTLEMENT_CALENDAR_SET)||'|'||
TRIM(SETTLEMENT_DAY_CONVENTION)||'|'||
TRIM(SETTLEMENT_DELAY)||'|'||
TRIM(IS_SPLITABLE)||'|'||
TRIM(IS_REPOABLE)||'|'||
TRIM(AUTO_REALIZE)||'|'||
TRIM(LAST_COUPON_AS_MM)||'|'||
TRIM(MRS_PRICE_YIELD)||'|'||
TRIM(TAXABLE)||'|'||
TRIM(WH_TAX_PERCENT)||'|'||
TRIM(CASH_FLOW_$1_WH_TAX_PERCENT)||'|'||
TRIM(SIDE_$1_WH_TAX_PERCENT)||'|'||
TRIM(IS_COUPON_BEARING)||'|'||
TRIM(INDEX_SETT_CCY)||'|'||
TRIM(INDEX_SETTLEMENT_GAP)||'|'||
TRIM(SIDE_NOTIONAL_AMOUNT_CURRENCY)||'|'||
TRIM(SIDE_$1_NOTIONAL_AMOUNT_VALUE)||'|'||
TRIM(SIDE_$1_BASIS_CODE)||'|'||
TRIM(SIDE_CASH_FLOW_CALDAR_SET_NAME)||'|'||
TRIM(SIDE_CASH_FLOW_DAY_CONVENTION)||'|'||
TRIM(SIDE_START_DATE_DAY_CONVENTION)||'|'||
TRIM(SIDE_END_DATE_DAY_CONVENTION)||'|'||
TRIM(SIDE_$1_ROUNDING_METHOD)||'|'||
TRIM(SIDE_$1_AMOUNT_ROUNDING_METHOD)||'|'||
TRIM(SIDE_RELATIVE_SETTLEMENT_DELAY)||'|'||
TRIM(SETTLEMENT_DAY_CONVENTION_1)||'|'||
TRIM(SIDE_CRV_DATA_FX_FWD_CURVE_ID)||'|'||
TRIM(SIDE_CURVE_DATA_DISC_CURVE_ID)||'|'||
TRIM(SIDE_CURVE_DATA_IRR_CURVE_ID)||'|'||
TRIM(GENERATE_CASH_FLOWS_BUTTON)||'|'||
TRIM(GUARANTEED_BY)||'|'||
TRIM(STUB_PERIOD_TYPE)||'|'||
TRIM(INITIAL_STUB_END_DATE)||'|'||
trim(margin)
)
from SECURITY_DEFN_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
security_prices_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
security_prices_spool.sql 
-- File Name		: security_prices_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/SECURITY_PRICES.TXT
SELECT
'RESPONSE'||'|'||
'Security'||'|'||
'Bid'||'|'||
'Offer'||'|'||
'Base Date'
FROM DUAL
UNION ALL
select
TO_CHAR(TRIM(RESPONSE)||'|'||
TRIM(SECURITY)||'|'||
TO_CHAR(TRIM(BID),'9999999999999999999.99999999')||'|'||
TO_CHAR(TRIM(OFFER),'9999999999999999999.99999999')||'|'||
TRIM(BASE_DATE))
from SECURITY_PRICES_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
sec_buy_sell_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
sec_buy_sell_spool.sql 
-- File Name		: sec_buy_sell_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/SEC_BUY_SELL.TXT
SELECT 
'RESPONSE'	||'|'||
'DEAL_IDENTIFIER'||'|'||
'DEAL_DATE'||'|'||
'SETTLEMENT_DATE'||'|'||
'COUNTERPARTY_STRING'||'|'||
'TRADING_BOOK'||'|'||
'DEPT_NAME'||'|'||
'SUBTYPE'||'|'||
'BUY_OR_SELL'||'|'||
'MARKET'||'|'||
'SEC_DEFN_NAME'||'|'||
'PRICE_STRING'||'|'||
'YIELD'||'|'||
'QTY_TRADED'||'|'||
'IS_INVESTMENT'||'|'||
'CONFIRM_METHOD'||'|'||
'SI_FLOW_PAY_SSI_ID'||'|'||
'SI_FLOW_PAY_NOSTRO'||'|'||
'SI_FLOW_PAY_SETT_METHOD'||'|'||
'SI_FLOW_PAY_CPTY_AGENT'||'|'||
'SI_FLOW_REC_SSI_ID'||'|'||
'SI_FLOW_REC_NOSTRO'||'|'||
'SI_FLOW_REC_SETT_METHOD'||'|'||
'SI_FLOW_REC_CPTY_AGENT'||'|'||
'BANK_CUSTODIAN_ACCT'||'|'||
'COST_OF_CARRY_REF_RATE_CODE'
FROM DUAL
UNION ALL
select
TO_CHAR(
''||'|'||
TRIM(DEAL_IDENTIFIER)||'|'||
TRIM(DEAL_DATE)||'|'||
TRIM(SETTLEMENT_DATE)||'|'||
TRIM(COUNTERPARTY_STRING)||'|'||
TRIM(TRADING_BOOK)||'|'||
TRIM(DEPT_NAME)||'|'||
TRIM(SUBTYPE)||'|'||
TRIM(BUY_OR_SELL)||'|'||
TRIM(MARKET)||'|'||
TRIM(SEC_DEFN_NAME)||'|'||
TRIM(PRICE_STRING)||'|'||
TRIM(YIELD)||'|'||
TRIM(QTY_TRADED)||'|'||
TRIM(IS_INVESTMENT)||'|'||
TRIM(CONFIRM_METHOD)||'|'||
TRIM(SI_FLOW_PAY_SSI_ID)||'|'||
TRIM(SI_FLOW_PAY_NOSTRO)||'|'||
TRIM(SI_FLOW_PAY_SETT_METHOD)||'|'||
TRIM(SI_FLOW_PAY_CPTY_AGENT)||'|'||
TRIM(SI_FLOW_REC_SSI_ID)||'|'||
TRIM(SI_FLOW_REC_NOSTRO)||'|'||
TRIM(SI_FLOW_REC_SETT_METHOD)||'|'||
TRIM(SI_FLOW_REC_CPTY_AGENT)||'|'||
TRIM(BANK_CUSTODIAN_ACCT)||'|'||
TRIM(COST_OF_CARRY_REF_RATE_CODE))
from SEC_BUY_SELL_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
spot_position_deals_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
spot_position_deals_spool.sql 
-- File Name		: spot_position_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 11-01-2017
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/SPOT_POSITION_DEALS.TXT
SELECT
'Response'||'|'||
'PRODUCT_TYPE'||'|'||
'DEAL_DATE'||'|'||
'TRADING_BOOK'||'|'||
'MAIN_LEG.SPOT_TRD_BOOK'||'|'||
'MAIN_LEG.FWD_TRD_BOOK'||'|'||
'SUBTYPE'||'|'||
'DEPT_NAME'||'|'||
'ENTITY_NAME'||'|'||
'MAIN_LEG.SPOT_RISK_ENTITY'||'|'||
'MAIN_LEG.FWD_RISK_ENTITY'||'|'||
'MAIN_LEG.VALUE_DATE_ONE'||'|'||
'ACCOUNTING_CODE'||'|'||
'MAIN_LEG.CPTY'||'|'||
'MAIN_LEG.CCY_PAIR'||'|'||
'MAIN_LEG.FX_BUY_SELL'||'|'||
'MAIN_LEG.CCY_ONE_AMOUNT'||'|'||
'MARKET_SPOT_RATE'||'|'||
'MAIN_LEG.MARKET_SPOT_RATE'||'|'||
'MAIN_LEG.MARKET_FWD_RATE'||'|'||
'MAIN_LEG.CUSTOMER_SPOT_RATE'||'|'||
'MAIN_LEG.CUSTOMER_FWD_RATE'||'|'||
'MAIN_LEG.MARKET_FWD_POINTS'||'|'||
'MAIN_LEG.CUSTOMER_FWD_POINTS'||'|'||
'MEMO_FIELD_1'
FROM DUAL
UNION ALL
select
TO_CHAR(
trim(RESPONSE                    )||'|'||
trim(PRODUCT_TYPE                )||'|'||
trim(DEAL_DATE                   )||'|'||
trim(TRADING_BOOK                )||'|'||
trim(MAIN_LEG_SPOT_TRD_BOOK      )||'|'||
trim(MAIN_LEG_FWD_TRD_BOOK       )||'|'||
trim(SUBTYPE                     )||'|'||
trim(DEPT_NAME                   )||'|'||
trim(ENTITY_NAME                 )||'|'||
trim(MAIN_LEG_SPOT_RISK_ENTITY   )||'|'||
trim(MAIN_LEG_FWD_RISK_ENTITY    )||'|'||
trim(MAIN_LEG_VALUE_DATE_ONE     )||'|'||
trim(ACCOUNTING_CODE             )||'|'||
trim(MAIN_LEG_CPTY               )||'|'||
trim(MAIN_LEG_CCY_PAIR           )||'|'||
trim(MAIN_LEG_FX_BUY_SELL        )||'|'||
trim(MAIN_LEG_CCY_ONE_AMOUNT     )||'|'||
trim(MARKET_SPOT_RATE            )||'|'||
trim(MAIN_LEG_MARKET_SPOT_RATE   )||'|'||
trim(MAIN_LEG_MARKET_FWD_RATE    )||'|'||
trim(MAIN_LEG_CUSTOMER_SPOT_RATE )||'|'||
trim(MAIN_LEG_CUSTOMER_FWD_RATE  )||'|'||
trim(MAIN_LEG_MARKET_FWD_POINTS  )||'|'||
trim(MAIN_LEG_CUSTOMER_FWD_POINTS)||'|'||
trim(MEMO_FIELD_1                )
)
from SPOT_POSITION_DEALS_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
spot_rates_hist_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
spot_rates_hist_spool.sql 
-- File Name		: spot_rates_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/SPOT_RATES_HISTORY.TXT
SELECT
'Response'||'|'||
'Currency Pair'||'|'||
'Currency One'||'|'||
'Currency Two'||'|'||
'Bid'||'|'||
'Offer'||'|'||
'Base Date'
FROM DUAL
UNION ALL
select
TO_CHAR(TRIM(RESPONSE)||'|'||
TRIM(CURRENCY_PAIR)||'|'||
TRIM(CURRENCY_ONE)||'|'||
TRIM(CURRENCY_TWO)||'|'||
TO_CHAR(TRIM(BID),'fm99999999999990.00000000')||'|'||
TO_CHAR(TRIM(OFFER),'fm99999999999990.00000000')||'|'||
TRIM(BASE_DATE))
from SPOT_RATES_HIST_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
spot_rates_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
spot_rates_spool.sql 
-- File Name		: spot_rates_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/SPOT_RATES.TXT
SELECT
'Response'||'|'||
'Currency Pair'||'|'||
'Currency One'||'|'||
'Currency Two'||'|'||
'Bid'||'|'||
'Offer'||'|'||
'Base Date'
FROM DUAL
UNION ALL
select
TO_CHAR(TRIM(RESPONSE)||'|'||
TRIM(CURRENCY_PAIR)||'|'||
TRIM(CURRENCY_ONE)||'|'||
TRIM(CURRENCY_TWO)||'|'||
TO_CHAR(TRIM(BID),'fm99999999999990.00000000')||'|'||
TO_CHAR(TRIM(OFFER),'fm99999999999990.00000000')||'|'||
TRIM(BASE_DATE))
from SPOT_RATES_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
swap_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
swap_spool.sql 
-- File Name		: swap_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/SWAP.TXT
SELECT
'Response'||'|'||
'Product_TYPE'||'|'||
'Identifier'||'|'||
'Counterparty'||'|'||
'CURRENCY_STRING'||'|'||
'SWAP_FX_RATE'||'|'||
'SIDE.PAY_SIDE.CASH_FLOW_SIDE_TYPE'||'|'||
'END_DATE'||'|'||
'SIDE.PAY_SIDE.START_DATE'||'|'||
'SIDE.PAY_SIDE.END_DATE'||'|'||
'TRADING_BOOK'||'|'||
'DEPT_NAME'||'|'||
'SUBTYPE'||'|'||
'SIDE.PAY_IS_ALWAYS_SIDE_1'||'|'||
'SIDE.PAY_SIDE.NOTIONAL_AMOUNT.VALUE'||'|'||
'SIDE.RECEIVE_SIDE.END_DATE'||'|'||
'SIDE.PAY_SIDE.NOTIONAL_AMOUNT.CURRENCY'||'|'||
'SIDE.RECEIVE_SIDE.CASH_FLOW_SIDE_TYPE'||'|'||
'SIDE.RECEIVE_SIDE.REFERENCE_RATE'||'|'||
'SIDE.RECEIVE_SIDE.BASIS_CODE'||'|'||
'SIDE.RECEIVE_SIDE.NOTIONAL_AMOUNT.CURRENCY'||'|'||
'SIDE.RECEIVE_SIDE.LONG_OR_SHORT'||'|'||
'SIDE.RECEIVE_SIDE.CREATION_FREQUENCY'||'|'||
'SIDE.PAY_SIDE.CREATION_FREQUENCY'||'|'||
'SIDE.RECEIVE_SIDE.NOTIONAL_AMOUNT.VALUE'||'|'||
'CCY_CALENDAR_SET'||'|'||
'SIDE.PAY_SIDE.LONG_OR_SHORT'||'|'||
'SIDE.PAY_SIDE.FIX_RATE'||'|'||
'START_DATE'||'|'||
'SIDE.PAY_SIDE.BASIS_CODE'||'|'||
'COST_OF_CARRY_REF_RATE_CODE'||'|'||
'TYPE_STRING'||'|'||
'SIDE.RECEIVE_SIDE.START_DATE'||'|'||
'SIDE.PAY_SIDE.REFERENCE_RATE'||'|'||
'ENTITY_NAME'||'|'||
'SIDE.$2.FIX_RATE'||'|'||
'SIDE.$1.IS_RESET_IN_ARREARS'||'|'||
'SIDE.$1.START_DATE_DAY_CONVENTION'||'|'||
'SIDE.$1.CASH_FLOW_DAY_CONVENTION'||'|'||
'SIDE.$1.END_DATE_DAY_CONVENTION'||'|'||
'SIDE.$1.MARGIN'||'|'||
'SIDE.$2.MARGIN'
FROM DUAL
UNION ALL
select
TO_CHAR(
TRIM(RESPONSE) ||'|'||
TRIM(PRODUCT_TYPE) ||'|'||
TRIM(IDENTIFIER) ||'|'||
TRIM(COUNTERPARTY) ||'|'||
TRIM(CURRENCY_STRING) ||'|'||
TRIM(SWAP_FX_RATE) ||'|'||
TRIM("SIDESIDE.CASH_FLOW_SIDE_TYPE") ||'|'||
TRIM(END_DATE) ||'|'||
TRIM("SIDE.PAY_SIDE.START_DATE") ||'|'||
TRIM("SIDE.PAY_SIDE.END_DATE") ||'|'||
TRIM(TRADING_BOOK) ||'|'||
TRIM(DEPT_NAME) ||'|'||
TRIM(SUBTYPE) ||'|'||
TRIM(SIDE_PAY_IS_ALWAYS_SIDE_1) ||'|'||
TRIM(PAY_SIDE_NOTIONAL_AMT_VALUE) ||'|'||
TRIM(SIDE_RECEIVE_SIDE_END_DATE) ||'|'||
TRIM(PAY_SIDE_NOTIONAL_AMOUNT_CCY) ||'|'||
TRIM(REC_SIDE_CASH_FLW_SIDE_TYPE) ||'|'||
TRIM(SIDE_RECEIVE_SIDE_REFENCE_RATE) ||'|'||
TRIM(SIDE_RECEIVE_SIDE_BASIS_CODE) ||'|'||
TRIM(RECEIVE_SIDE_NOTIONAL_AMT_CCY) ||'|'||
TRIM(RECEIVE_SIDE_LONG_OR_SHORT) ||'|'||
TRIM(RECEIVE_SIDE_CREATION_FREQ) ||'|'||
TRIM(PAY_SIDE_CREATION_FREQUENCY) ||'|'||
TRIM(RECEIV_SIDE_NOTIONAL_AMT_VALUE) ||'|'||
TRIM(CCY_CALENDAR_SET) ||'|'||
TRIM(SIDE_PAY_SIDE_LONG_OR_SHORT) ||'|'||
TRIM(SIDE_PAY_SIDE_FIX_RATE) ||'|'||
TRIM(START_DATE) ||'|'||
TRIM(SIDE_PAY_SIDE_BASIS_CODE) ||'|'||
TRIM(COST_OF_CARRY_REF_RATE_CODE) ||'|'||
TRIM(TYPE_STRING) ||'|'||
TRIM(SIDE_RECEIVE_SIDE_START_DATE) ||'|'||
TRIM("SIDE.PAY_SIDE.REFERENCE_RATE") ||'|'||
TRIM(ENTITY_NAME) ||'|'||
TRIM("SIDE.RECIVE_SIDE.FIXED_RATE") ||'|'||
TRIM(IS_RESET_IN_ARREARS) ||'|'||
TRIM(START_DATE_DAY_CONVENTION) ||'|'||
TRIM(SIDE_CASH_FLOW_DAY_CONVENTION) ||'|'||
TRIM(END_DATE_DAY_CONVENTION)||'|'||
trim(SIDE1_MARGIN)||'|'||
trim(SIDE2_MARGIN)
)
from SWAP_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
treasury_bic_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
treasury_bic_spool.sql 
-- File Name		: treasury_bic_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 10-05-2017
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasurylimit/TREASURY_BIC.TXT
SELECT 
'RESPONSE' ||'|'||
'FBO_TYPE' ||'|'||
'BIC_CODE' ||'|'||
'DESCRIPTION'
FROM DUAL
UNION ALL
select
TO_CHAR(
TRIM(RESPONSE                         )||'|'||
TRIM(FBO_TYPE                         )||'|'||
TRIM(BIC_CODE                       )||'|'||
TRIM(DESCRIPTION                  )
)
from TREASURY_BIC_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
treasury_country_limit_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
treasury_country_limit_spool.sql 
-- File Name		: treasury_country_limit_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasurylimit/TREASURY_COUNTRY_LIMIT.TXT
SELECT 
'Response' ||'|'||
'FBO_TYPE' ||'|'||
'LIMIT_NAME' ||'|'||
'USER_LIMIT_TYPE' ||'|'||
'USER_LIMIT_TYPE.SYSTEM_LIMIT_TYPE' ||'|'||
'LIMIT_CCY' ||'|'||
'ALLOCATED_LIMIT' ||'|'||
'EXCESS_ACTION' ||'|'||
'BREACH_LEVEL_TYPE' ||'|'||
'USER_LIMIT_TYPE.EXPOSURE_AGGREGATION_METHOD' ||'|'||
'EXPIRY_DATE' ||'|'||
'ENTITY' ||'|'||
'SUBTYPE' ||'|'||
'DEPT_NAME' ||'|'||
'COUNTRY_CODE' ||'|'||
'COUNTRY_RISK_TYPE' ||'|'||
'ENTITY_NAME' ||'|'||
'ALERT_USER_GROUP' ||'|'||
'EXC_AUTH_PRIV_GROUP' ||'|'||
'REPORT_PRIV_GROUP' ||'|'||
'EMAIL_ID' ||'|'||
'TENOR_START_CODE' ||'|'||
'TENOR_START_YEARS' ||'|'||
'TENOR_START_MONTHS' ||'|'||
'TENOR_START_DAYS' ||'|'||
'TENOR_END_CODE' ||'|'||
'TENOR_END_YEARS' ||'|'||
'TENOR_END_MONTHS' ||'|'||
'TENOR_END_DAYS' 
FROM DUAL
UNION ALL
select
TO_CHAR(
TRIM(RESPONSE                         )||'|'||
TRIM(FBO_TYPE                         )||'|'||
TRIM(LIMIT_NAME                       )||'|'||
TRIM(USER_LIMIT_TYPE                  )||'|'||
TRIM(USER_LIMIT_TYPE_SYS_LIMIT_TYPE   )||'|'||
TRIM(LIMIT_CCY                        )||'|'||
TRIM(LIMIT_AMOUNT                     )||'|'||
TRIM(EXCESS_ACTION                    )||'|'||
TRIM(BREACH_LEVEL_TYPE                )||'|'||
TRIM(USER_LIMIT_TYP_EXP_AGGR_METHOD   )||'|'||
TRIM(EXPIRY_DATE                      )||'|'||
TRIM(ENTITY                           )||'|'||
TRIM(SUBTYPE                          )||'|'||
TRIM(DEPT_NAME                        )||'|'||
TRIM(COUNTRY_CODE                     )||'|'||
TRIM(COUNTRY_RISK_TYPE                )||'|'||
TRIM(ENTITY_NAME                      )||'|'||
TRIM(ALERT_USER_GROUP                 )||'|'||
TRIM(EXC_AUTH_PRIV_GROUP              )||'|'||
TRIM(REPORT_PRIV_GROUP                )||'|'||
TRIM(EMAIL_ID                         )||'|'||
TRIM(TENOR_START_CODE                 )||'|'||
TRIM(TENOR_START_YEARS                )||'|'||
TRIM(TENOR_START_MONTHS               )||'|'||
TRIM(TENOR_START_DAYS                 )||'|'||
TRIM(TENOR_END_CODE                   )||'|'||
TRIM(TENOR_END_YEARS                  )||'|'||
TRIM(TENOR_END_MONTHS                 )||'|'||
TRIM(TENOR_END_DAYS                   )
)
from CPTY_COUNTRY_LIMIT_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
treasury_customer_and_group_limit_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
treasury_customer_and_group_limit_spool.sql 
-- File Name		: treasury_customer_and_group_limit_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasurylimit/TREASURY_CUSTOMER_AND_GROUP_LIMIT.TXT
SELECT 
'Response' ||'|'||
'FBO_TYPE' ||'|'||
'LIMIT_NAME' ||'|'||
'USER_LIMIT_TYPE' ||'|'||
'USER_LIMIT_TYPE.SYSTEM_LIMIT_TYPE' ||'|'||
'LIMIT_CCY' ||'|'||
'ALLOCATED_LIMIT' ||'|'||
'EXCESS_ACTION' ||'|'||
'BREACH_LEVEL_TYPE' ||'|'||
'USER_LIMIT_TYPE.EXPOSURE_AGGREGATION_METHOD' ||'|'||
'EXPIRY_DATE' ||'|'||
'ENTITY' ||'|'||
'SUBTYPE' ||'|'||
'DEPT_NAME' ||'|'||
'COUNTERPARTY_STRING' ||'|'||
'ENTITY_NAME' ||'|'||
'ALERT_USER_GROUP' ||'|'||
'EXC_AUTH_PRIV_GROUP' ||'|'||
'REPORT_PRIV_GROUP' ||'|'||
'EMAIL_ID' ||'|'||
'TENOR_START_CODE' ||'|'||
'TENOR_START_YEARS' ||'|'||
'TENOR_START_MONTHS' ||'|'||
'TENOR_START_DAYS' ||'|'||
'TENOR_END_CODE' ||'|'||
'TENOR_END_YEARS' ||'|'||
'TENOR_END_MONTHS' ||'|'||
'TENOR_END_DAYS'
FROM DUAL
UNION ALL
select
TO_CHAR(
TRIM(RESPONSE                       )||'|'||
TRIM(FBO_TYPE                       )||'|'||
TRIM(LIMIT_NAME                     )||'|'||
TRIM(USER_LIMIT_TYPE                )||'|'||
TRIM(USER_LIMIT_TYPE_SYS_LIMIT_TYPE )||'|'||
TRIM(LIMIT_CCY                      )||'|'||
TRIM(LIMIT_AMOUNT                   )||'|'||
TRIM(EXCESS_ACTION                  )||'|'||
TRIM(BREACH_LEVEL_TYPE              )||'|'||
TRIM(USER_LIMIT_TYP_EXP_AGGR_METHOD )||'|'||
TRIM(EXPIRY_DATE                    )||'|'||
TRIM(ENTITY                         )||'|'||
TRIM(SUBTYPE                        )||'|'||
TRIM(DEPT_NAME                      )||'|'||
TRIM(COUNTERPARTY_STRING            )||'|'||
TRIM(ENTITY_NAME                    )||'|'||
TRIM(ALERT_USER_GROUP               )||'|'||
TRIM(EXC_AUTH_PRIV_GROUP            )||'|'||
TRIM(REPORT_PRIV_GROUP              )||'|'||
TRIM(EMAIL_ID                       )||'|'||
TRIM(TENOR_START_CODE               )||'|'||
TRIM(TENOR_START_YEARS              )||'|'||
TRIM(TENOR_START_MONTHS             )||'|'||
TRIM(TENOR_START_DAYS               )||'|'||
TRIM(TENOR_END_CODE                 )||'|'||
TRIM(TENOR_END_YEARS                )||'|'||
TRIM(TENOR_END_MONTHS               )||'|'||
TRIM(TENOR_END_DAYS                 )
)
from CPTY_CUST_GROUP_LIMIT_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
treasury_group_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
treasury_group_spool.sql 
-- File Name		: treasury_group_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasurylimit/TREASURY_GROUP.TXT
SELECT 
'Response' ||'|'||
'Template' ||'|'||
'NAME' ||'|'||
'Mnemonic' ||'|'||
'Short Name 1' ||'|'||
'Short Name 2' ||'|'||
'EPG' ||'|'||
'Trade Role' ||'|'||
'CPTY_TYPE' ||'|'||
'CPTY_ROLE_DATA' ||'|'||
'COI' ||'|'||
'COUR' ||'|'||
'LBS_1' ||'|'||
'ADDRESS_1' ||'|'||
'ADDRESS_2' ||'|'||
'ADDRESS_3' ||'|'||
'ADDRESS_4' ||'|'||
'PHONE' ||'|'||
'EMAIL_ID' ||'|'||
'CONFIRMATION_EMAIL_ID' ||'|'||
'FAX' ||'|'||
'CPTY_MEDIUM_DATA.$1.MEDIUM' ||'|'||
'CPTY_MEDIUM_DATA.$1.MEDIUM_ID' ||'|'||
'CONFIRM_METHOD' ||'|'||
'SETTLEMENT_METHOD' ||'|'||
'CPTY_ALIAS_DATA.$1.NAME' ||'|'||
'CPTY_ALIAS_DATA.$1.ALIASGROUP' ||'|'||
'CPTY_ALIAS_DATA.$1.COMMENTS' ||'|'||
'BROKER_EXCH_AMC_LIST_STR' ||'|'||
'INDUSTRY_DATA' ||'|'||
'CPTY_SETTLEMENT_DATA.CCY_CALENDAR_LIST' ||'|'||
'CPTY_SETTLEMENT_DATA.TAX_APPLICABILITY' ||'|'||
'CPTY_SETTLEMENT_DATA.TAX_PERCENTAGE' ||'|'||
'CPTY_SETTLEMENT_DATA.SCRIP_PAYIN_LAG' ||'|'||
'CPTY_SETTLEMENT_DATA.SCRIP_PAYOUT_LAG' ||'|'||
'CPTY_SETTLEMENT_DATA.FUNDS_PAYIN_LAG' ||'|'||
'CPTY_SETTLEMENT_DATA.FUNDS_PAYOUT_LAG' ||'|'||
'CPTY_SETTLEMENT_DATA.TRADING_PERIOD' ||'|'||
'CPTY_SETTLEMENT_DATA.TRADING_PERIOD_START' ||'|'||
'CPTY_SETTLEMENT_DATA.TRADING_PERIOD_END' ||'|'||
'CPTY_SETTLEMENT_DATA.NEXT_SCRIP_PAYIN' ||'|'||
'CPTY_SETTLEMENT_DATA.NEXT_FUNDS_PAYIN' ||'|'||
'CPTY_SETTLEMENT_DATA.NEXT_SCRIP_PAYOUT' ||'|'||
'CPTY_SETTLEMENT_DATA.NEXT_FUNDS_PAYOUT' ||'|'||
'CPTY_SETTLEMENT_DATA.INTRAPERIOD_SQ_OFF' ||'|'||
'LB_ACCT_ID' ||'|'||
'Currency' ||'|'||
'LB_ACCT_BRANCH' ||'|'||
'LB_ACCT_STATUS'
FROM DUAL
UNION ALL
select
TO_CHAR(
TRIM(RESPONSE                            )||'|'||
TRIM(TEMPLATE                            )||'|'||
TRIM(NAME                                )||'|'||
TRIM(MNEMONIC                            )||'|'||
TRIM(SHORT_NAME1                         )||'|'||
TRIM(SHORT_NAME2                         )||'|'||
TRIM(EPG                                 )||'|'||
TRIM(TRADE_ROLE                          )||'|'||
TRIM(CPTY_TYPE                           )||'|'||
TRIM(CPTY_ROLE_DATA                      )||'|'||
TRIM(COI                                 )||'|'||
TRIM(COUR                                )||'|'||
TRIM(LBS_1                               )||'|'||
TRIM(ADDRESS_1                           )||'|'||
TRIM(ADDRESS_2                           )||'|'||
TRIM(ADDRESS_3                           )||'|'||
TRIM(ADDRESS_4                           )||'|'||
TRIM(PHONE                               )||'|'||
TRIM(EMAIL_ID                            )||'|'||
TRIM(CONFIRMATION_EMAIL_ID               )||'|'||
TRIM(FAX                                 )||'|'||
TRIM(CPTY_MEDIUM_DATA_$1_MEDIUM          )||'|'||
TRIM(CPTY_MEDIUM_DATA_$1_MEDIUM_ID       )||'|'||
TRIM(CONFIRM_METHOD                      )||'|'||
TRIM(SETL_METHOD                         )||'|'||
TRIM(CPTY_ALIAS_DATA_$1_NAME             )||'|'||
TRIM(CPTY_ALIAS_DATA_$1_ALIASGROUP       )||'|'||
TRIM(CPTY_ALIAS_DATA_$1_COMMENTS         )||'|'||
TRIM(BROKER_EXCH_AMC_LIST_STR            )||'|'||
TRIM(INDUSTRY_DATA                       )||'|'||
TRIM(CPTY_SETL_DATA_CCY_CAL_LIST         )||'|'||
TRIM(CPTY_SETL_DATA_TAX_APPL             )||'|'||
TRIM(CPTY_SETL_DATA_TAX_PRCNTAGE         )||'|'||
TRIM(CPTY_SETL_DATA_SCRIP_PAYI_LAG       )||'|'||
TRIM(CPTY_SETL_DATA_SCRIP_PAYO_LAG       )||'|'||
TRIM(CPTY_SETL_DATA_FUNDS_PAYIN_LAG      )||'|'||
TRIM(CPTY_SETL_DATA_FUNDS_PAYO_LAG       )||'|'||
TRIM(CPTY_SETL_DATA_TRDNG_PRD            )||'|'||
TRIM(CPTY_SETL_DATA_TRDNG_PRD_STRT       )||'|'||
TRIM(CPTY_SETL_DATA_TRDNG_PRD_END        )||'|'||
TRIM(CPTY_SETL_DATA_NXT_SCRIP_PAYI       )||'|'||
TRIM(CPTY_SETL_DATA_NXT_FUNDS_PAYI       )||'|'||
TRIM(CPTY_SETL_DATA_NXT_SCRIP_PAYO       )||'|'||
TRIM(CPTY_SETL_DATA_NXT_FUNDS_PAYO       )||'|'||
TRIM(CPTY_SETL_DATA_INTRAPRD_SQ_OFF      )||'|'||
TRIM(LB_ACCT_ID                          )||'|'||
TRIM(CURRENCY                            )||'|'||
TRIM(LB_ACCT_BRANCH                      )||'|'||
TRIM(LB_ACCT_STATUS                      )
)
from TREASURY_GROUP_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
treasury_not_mig_cpty_from_core_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
treasury_not_mig_cpty_from_core_spool.sql 
-- File Name		: treasury_group_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasurylimit/TREASURY_NOT_MIG_CPTY_CORE_FROM_CORE.TXT
SELECT 
'Response' ||'|'||
'Template' ||'|'||
'NAME' ||'|'||
'Mnemonic' ||'|'||
'Short Name 1' ||'|'||
'Short Name 2' ||'|'||
'EPG' ||'|'||
'Trade Role' ||'|'||
'CPTY_TYPE' ||'|'||
'CPTY_ROLE_DATA' ||'|'||
'COI' ||'|'||
'COUR' ||'|'||
'CPTY_DATA.CPTY_CATEGORY'||'|'||
'LBS_1' ||'|'||
'CPTY_DATA.CPTY_PARENT_DATA.$0.FETCH_MNEMONIC'||'|'||
'CPTY_DATA.CPTY_PARENT_DATA.$0.RELATIONSHIP'||'|'||
'CPTY_DATA.CPTY_PARENT_DATA.$0.ADD_ACTION'||'|'||
'ADDRESS_1' ||'|'||
'ADDRESS_2' ||'|'||
'ADDRESS_3' ||'|'||
'ADDRESS_4' ||'|'||
'PHONE' ||'|'||
'EMAIL_ID' ||'|'||
'CONFIRMATION_EMAIL_ID' ||'|'||
'FAX' ||'|'||
'CPTY_MEDIUM_DATA.$1.MEDIUM' ||'|'||
'CPTY_MEDIUM_DATA.$1.MEDIUM_ID' ||'|'||
'CONFIRM_METHOD' ||'|'||
'SETTLEMENT_METHOD' ||'|'||
'CPTY_ALIAS_DATA.$1.NAME' ||'|'||
'CPTY_ALIAS_DATA.$1.ALIASGROUP' ||'|'||
'CPTY_ALIAS_DATA.$1.COMMENTS' ||'|'||
'BROKER_EXCH_AMC_LIST_STR' ||'|'||
'INDUSTRY_DATA' ||'|'||
'CPTY_SETTLEMENT_DATA.CCY_CALENDAR_LIST' ||'|'||
'CPTY_SETTLEMENT_DATA.TAX_APPLICABILITY' ||'|'||
'CPTY_SETTLEMENT_DATA.TAX_PERCENTAGE' ||'|'||
'CPTY_SETTLEMENT_DATA.SCRIP_PAYIN_LAG' ||'|'||
'CPTY_SETTLEMENT_DATA.SCRIP_PAYOUT_LAG' ||'|'||
'CPTY_SETTLEMENT_DATA.FUNDS_PAYIN_LAG' ||'|'||
'CPTY_SETTLEMENT_DATA.FUNDS_PAYOUT_LAG' ||'|'||
'CPTY_SETTLEMENT_DATA.TRADING_PERIOD' ||'|'||
'CPTY_SETTLEMENT_DATA.TRADING_PERIOD_START' ||'|'||
'CPTY_SETTLEMENT_DATA.TRADING_PERIOD_END' ||'|'||
'CPTY_SETTLEMENT_DATA.NEXT_SCRIP_PAYIN' ||'|'||
'CPTY_SETTLEMENT_DATA.NEXT_FUNDS_PAYIN' ||'|'||
'CPTY_SETTLEMENT_DATA.NEXT_SCRIP_PAYOUT' ||'|'||
'CPTY_SETTLEMENT_DATA.NEXT_FUNDS_PAYOUT' ||'|'||
'CPTY_SETTLEMENT_DATA.INTRAPERIOD_SQ_OFF' ||'|'||
'LB_ACCT_ID' ||'|'||
'Currency' ||'|'||
'LB_ACCT_BRANCH' ||'|'||
'LB_ACCT_STATUS'
FROM DUAL
UNION ALL
select
TO_CHAR(
TRIM(RESPONSE                            )||'|'||
TRIM(TEMPLATE                            )||'|'||
TRIM(NAME                                )||'|'||
TRIM(MNEMONIC                            )||'|'||
TRIM(SHORT_NAME1                         )||'|'||
TRIM(SHORT_NAME2                         )||'|'||
TRIM(EPG                                 )||'|'||
TRIM(TRADE_ROLE                          )||'|'||
TRIM(CPTY_TYPE                           )||'|'||
TRIM(CPTY_ROLE_DATA                      )||'|'||
TRIM(COI                                 )||'|'||
TRIM(COUR                                )||'|'||
TRIM(CPTY_CATEGORY                       )||'|'||
TRIM(LBS_1                               )||'|'||
TRIM(PARENT_DATA_FETCH_MNEMONIC          )||'|'||
TRIM(PARENT_DATA_RELATIONSHIP            )||'|'||
TRIM(PARENT_DATA_ADD_ACTION              )||'|'||
TRIM(ADDRESS_1                           )||'|'||
TRIM(ADDRESS_2                           )||'|'||
TRIM(ADDRESS_3                           )||'|'||
TRIM(ADDRESS_4                           )||'|'||
TRIM(PHONE                               )||'|'||
TRIM(EMAIL_ID                            )||'|'||
TRIM(CONFIRMATION_EMAIL_ID               )||'|'||
TRIM(FAX                                 )||'|'||
TRIM(CPTY_MEDIUM_DATA_$1_MEDIUM          )||'|'||
TRIM(CPTY_MEDIUM_DATA_$1_MEDIUM_ID       )||'|'||
TRIM(CONFIRM_METHOD                      )||'|'||
TRIM(SETL_METHOD                         )||'|'||
TRIM(CPTY_ALIAS_DATA_$1_NAME             )||'|'||
TRIM(CPTY_ALIAS_DATA_$1_ALIASGROUP       )||'|'||
TRIM(CPTY_ALIAS_DATA_$1_COMMENTS         )||'|'||
TRIM(BROKER_EXCH_AMC_LIST_STR            )||'|'||
TRIM(INDUSTRY_DATA                       )||'|'||
TRIM(CPTY_SETL_DATA_CCY_CAL_LIST         )||'|'||
TRIM(CPTY_SETL_DATA_TAX_APPL             )||'|'||
TRIM(CPTY_SETL_DATA_TAX_PRCNTAGE         )||'|'||
TRIM(CPTY_SETL_DATA_SCRIP_PAYI_LAG       )||'|'||
TRIM(CPTY_SETL_DATA_SCRIP_PAYO_LAG       )||'|'||
TRIM(CPTY_SETL_DATA_FUNDS_PAYIN_LAG      )||'|'||
TRIM(CPTY_SETL_DATA_FUNDS_PAYO_LAG       )||'|'||
TRIM(CPTY_SETL_DATA_TRDNG_PRD            )||'|'||
TRIM(CPTY_SETL_DATA_TRDNG_PRD_STRT       )||'|'||
TRIM(CPTY_SETL_DATA_TRDNG_PRD_END        )||'|'||
TRIM(CPTY_SETL_DATA_NXT_SCRIP_PAYI       )||'|'||
TRIM(CPTY_SETL_DATA_NXT_FUNDS_PAYI       )||'|'||
TRIM(CPTY_SETL_DATA_NXT_SCRIP_PAYO       )||'|'||
TRIM(CPTY_SETL_DATA_NXT_FUNDS_PAYO       )||'|'||
TRIM(CPTY_SETL_DATA_INTRAPRD_SQ_OFF      )||'|'||
TRIM(LB_ACCT_ID                          )||'|'||
TRIM(CURRENCY                            )||'|'||
TRIM(LB_ACCT_BRANCH                      )||'|'||
TRIM(LB_ACCT_STATUS                      )
)
from TR_NOT_MIG_CPTY_CORE_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tr_pay_ssi_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tr_pay_ssi_spool.sql 
-- File Name		: tr_ssi_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/TR_PAY_SSI.TXT
SELECT
'RESPONSE'||'|'||
'SSI_ID'||'|'||
'CPTY_NAME'||'|'||
'SSI_SETTLEMENT_ACTION'||'|'||
'CURRENCY'||'|'||
'DEAL_TYPE'||'|'||
'SSI_DEFAULT'||'|'||
'EFFECTIVE_DATE'||'|'||
'SETT_METHOD'||'|'||
'ENTITY_NAME'||'|'||
'SUBTYPE'||'|'||
'CPTY_ROLE'||'|'||
'SSI_TYPE'||'|'||
'AGENT_INST_FORMAT'||'|'||
'AGENT_INST_BIC'||'|'||
'AGENT_INST_ID'||'|'||
'AGENT_INST_ADDRESS'||'|'||
'NOSTRO_ID'||'|'||
'DEPOSITORY'||'|'||
'ALT_BENEF_ID'||'|'||
'ALT_BENEF_FORMAT'||'|'||
'ALT_BENEF_BIC'
FROM DUAL
UNION ALL
select
TO_CHAR(
trim(RESPONSE               )||'|'||
trim(SSI_ID                 )||'|'||
trim(CPTY_NAME              )||'|'||
trim(SSI_SETTLEMENT_ACTION  )||'|'||
trim(CURRENCY               )||'|'||
trim(DEAL_TYPE              )||'|'||
trim(SSI_DEFAULT            )||'|'||
trim(EFFECTIVE_DATE         )||'|'||
trim(SETT_METHOD            )||'|'||
trim(ENTITY_NAME            )||'|'||
trim(SUBTYPE                )||'|'||
trim(CPTY_ROLE              )||'|'||
trim(SSI_TYPE               )||'|'||
trim(AGENT_INST_FORMAT      )||'|'||
trim(AGENT_INST_BIC         )||'|'||
trim(AGENT_INST_ID          )||'|'||
trim(AGENT_INST_ADDRESS     )||'|'||
trim(NOSTRO_ID              )||'|'||
trim(DEPOSITORY             )||'|'||
trim(ALT_BENEF_ID       )||'|'||
trim(ALT_BENEF_FORMAT   )||'|'||
trim(ALT_BENEF_BIC      )
)
from TREASURY_PAY_SSI_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tr_rec_ssi_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tr_rec_ssi_spool.sql 
-- File Name		: tr_ssi_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/TR_REC_SSI.TXT
SELECT
'RESPONSE'||'|'||
'SSI_ID'||'|'||
'CPTY_NAME'||'|'||
'SSI_SETTLEMENT_ACTION'||'|'||
'CURRENCY'||'|'||
'DEAL_TYPE'||'|'||
'SSI_DEFAULT'||'|'||
'EFFECTIVE_DATE'||'|'||
'SETT_METHOD'||'|'||
'ENTITY_NAME'||'|'||
'SUBTYPE'||'|'||
'CPTY_ROLE'||'|'||
'SSI_TYPE'||'|'||
'AGENT_INST_FORMAT'||'|'||
'AGENT_INST_BIC'||'|'||
'AGENT_INST_ID'||'|'||
'AGENT_INST_ADDRESS'||'|'||
'NOSTRO_ID'||'|'||
'DEPOSITORY'||'|'||
'ALT_BENEF_ID'||'|'||
'ALT_BENEF_FORMAT'||'|'||
'ALT_BENEF_BIC'
FROM DUAL
UNION ALL
select
TO_CHAR(
trim(RESPONSE               )||'|'||
trim(SSI_ID                 )||'|'||
trim(CPTY_NAME              )||'|'||
trim(SSI_SETTLEMENT_ACTION  )||'|'||
trim(CURRENCY               )||'|'||
trim(DEAL_TYPE              )||'|'||
trim(SSI_DEFAULT            )||'|'||
trim(EFFECTIVE_DATE         )||'|'||
trim(SETT_METHOD            )||'|'||
trim(ENTITY_NAME            )||'|'||
trim(SUBTYPE                )||'|'||
trim(CPTY_ROLE              )||'|'||
trim(SSI_TYPE               )||'|'||
trim(AGENT_INST_FORMAT      )||'|'||
trim(AGENT_INST_BIC         )||'|'||
trim(AGENT_INST_ID          )||'|'||
trim(AGENT_INST_ADDRESS     )||'|'||
trim(NOSTRO_ID              )||'|'||
trim(DEPOSITORY             )||'|'||
trim(ALT_BENEF_ID       )||'|'||
trim(ALT_BENEF_FORMAT   )||'|'||
trim(ALT_BENEF_BIC      )
)
from TREASURY_REC_SSI_O_TABLE;
exit; 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
yield_curve_spool.sql 
========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
yield_curve_spool.sql 
-- File Name		: yield_curve_spool.sql
-- File Created for	: Creation of source table
-- Created By		: Sharanappa S
-- Client		    : ABK
-- Created On		: 28-09-2016
-------------------------------------------------------------------
set head off
set feedback off
set term off
set lines 2000
set page size 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/treasury/YIELD_CURVE.TXT
SELECT 
'RESPONSE'||'|'||
'MRS_CURVE_ID'||'|'||
'TYPE'||'|'||
'DAY_CONVENTION'||'|'||
'CALENDAR_SET'||'|'||
'BASE_DATE'||'|'||
'CURVE_TYPE'
FROM DUAL
UNION ALL
select
TO_CHAR(TRIM(RESPONSE)||'|'||
TRIM(CURVE_ID)||'|'||
TRIM(TYPE)||'|'||
TRIM(DAY_CONVENTION)||'|'||
TRIM(CALENDAR_SET)||'|'||
TRIM(BASE_DATE)||'|'||
TRIM(CURVE_TYPE))
from YIELD_CURVE_O_TABLE;
exit;