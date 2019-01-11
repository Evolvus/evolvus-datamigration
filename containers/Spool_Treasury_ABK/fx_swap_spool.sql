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
