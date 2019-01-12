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
 