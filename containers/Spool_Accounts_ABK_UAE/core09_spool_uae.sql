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
 
