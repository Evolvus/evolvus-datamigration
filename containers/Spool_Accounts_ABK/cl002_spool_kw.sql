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
 
