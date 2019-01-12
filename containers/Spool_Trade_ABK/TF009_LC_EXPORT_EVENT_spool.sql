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
 
