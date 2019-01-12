========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
tr_ssi_report.sql 
select 
a.SSI_ID||'-'||a.CPTY_NAME||'-'||a.SSI_SETTLEMENT_ACTION||'-'||TO_DATE(A.EFFECTIVE_DATE,'DD-MON-YYYY')||'-'||
case when a.SSI_TYPE='INT/COUPON' then 'INC' when  a.SSI_TYPE='PRINCIPAL' then 'PRI' end||'-'||a.NOSTRO_ID OPICS_DATA,
b.SSI_ID||'-'||trim(c.name)||'-'||b.SETTLEMENT_ACTION||'-'||b.EFFECTIVE_DATE||'-'||b.SSI_TYPE||'-'||b.NOSTRO_ID FIN_DATA,
CASE WHEN a.SSI_ID||'-'||a.CPTY_NAME||'-'||a.SSI_SETTLEMENT_ACTION||'-'||TO_DATE(A.EFFECTIVE_DATE,'DD-MON-YYYY')||'-'||
case when a.SSI_TYPE='INT/COUPON' then 'INC' when  a.SSI_TYPE='PRINCIPAL' then 'PRI' end||'-'||a.NOSTRO_ID = 
b.SSI_ID||'-'||trim(c.name)||'-'||b.SETTLEMENT_ACTION||'-'||b.EFFECTIVE_DATE||'-'||b.SSI_TYPE||'-'||b.NOSTRO_ID THEN 'TRUE' ELSE 'FALSE' END MATCH_DATA 
from (
select * from TREASURY_REC_SSI_O_TABLE
union
select * from TREASURY_PAY_SSI_O_TABLE
) a
left join sd_cpty_ssi@ftmig b on a.SSI_ID = b.SSI_ID
left join sd_cpty@ftmig c on b.CPTY_FBO_ID_NUM = c.FBO_ID_NUM 



select 
a.SSI_ID MAPPED_SSI_ID,b.SSI_ID FIN_SSI_ID, CASE WHEN a.SSI_ID = b.SSI_ID THEN 'TRUE' ELSE 'FALSE' END MATCH_SSI_ID,
a.CPTY_NAME OPICS_CPTY,trim(c.name) FIN_CPTY,CASE WHEN a.CPTY_NAME= trim(c.name) THEN 'TRUE' ELSE 'FALSE' END MATCH_CPTY,
a.SSI_SETTLEMENT_ACTION MAPPED_SETTLEMENT_ACTION,b.SETTLEMENT_ACTION FIN_SETTLEMENT_ACTION,CASE WHEN a.SSI_SETTLEMENT_ACTION = b.SETTLEMENT_ACTION THEN 'TRUE' ELSE 'FALSE' END MATCH_SETTLEMENT_ACTION,
TO_DATE(A.EFFECTIVE_DATE,'DD-MON-YYYY') MAPPED_EFFECTIVE_DATE,b.EFFECTIVE_DATE FIN_EFFECTIVE_DATE,CASE WHEN TO_DATE(A.EFFECTIVE_DATE,'DD-MON-YYYY') = b.EFFECTIVE_DATE THEN 'TRUE' ELSE 'FALSE' END MATCH_EFFECTIVE_DATE,
case when a.SSI_TYPE='INT/COUPON' then 'INC' when  a.SSI_TYPE='PRINCIPAL' then 'PRI' end MAPPED_SSI_TYPE,b.SSI_TYPE FIN_SSI_TYPE,CASE WHEN case when a.SSI_TYPE='INT/COUPON' then 'INC' when  a.SSI_TYPE='PRINCIPAL' then 'PRI' end = b.SSI_TYPE THEN 'TRUE' ELSE 'FALSE' END MATCH_SSI_TYPE,
a.NOSTRO_ID OPICS_NOSTRO_ID,b.NOSTRO_ID FIN_NOSTRO_ID,CASE WHEN a.NOSTRO_ID = b.NOSTRO_ID THEN 'TRUE' ELSE 'FALSE' END MATCH_NOSTRO_ID,
A.ALT_BENEF_BIC OPICS_BENEF_BIC,B.ALT_BENEF_BIC FIN_BENEF_BIC,CASE WHEN NVL(A.ALT_BENEF_BIC,' ') = NVL(B.ALT_BENEF_BIC,' ') THEN 'TRUE' ELSE 'FALSE' END MATCH_BENEF_BIC,
a.SSI_ID||'-'||a.CPTY_NAME||'-'||a.SSI_SETTLEMENT_ACTION||'-'||TO_DATE(A.EFFECTIVE_DATE,'DD-MON-YYYY')||'-'||
case when a.SSI_TYPE='INT/COUPON' then 'INC' when  a.SSI_TYPE='PRINCIPAL' then 'PRI' end||'-'||a.NOSTRO_ID OPICS_DATA,
b.SSI_ID||'-'||trim(c.name)||'-'||b.SETTLEMENT_ACTION||'-'||b.EFFECTIVE_DATE||'-'||b.SSI_TYPE||'-'||b.NOSTRO_ID FIN_DATA,
CASE WHEN a.SSI_ID||'-'||a.CPTY_NAME||'-'||a.SSI_SETTLEMENT_ACTION||'-'||TO_DATE(A.EFFECTIVE_DATE,'DD-MON-YYYY')||'-'||
case when a.SSI_TYPE='INT/COUPON' then 'INC' when  a.SSI_TYPE='PRINCIPAL' then 'PRI' end||'-'||a.NOSTRO_ID = 
b.SSI_ID||'-'||trim(c.name)||'-'||b.SETTLEMENT_ACTION||'-'||b.EFFECTIVE_DATE||'-'||b.SSI_TYPE||'-'||b.NOSTRO_ID THEN 'TRUE' ELSE 'FALSE' END MATCH_DATA 
from (
select * from TREASURY_REC_SSI_O_TABLE
union
select * from TREASURY_PAY_SSI_O_TABLE
) a
left join sd_cpty_ssi@ftmig b on a.SSI_ID = b.SSI_ID
left join sd_cpty@ftmig c on b.CPTY_FBO_ID_NUM = c.FBO_ID_NUM 


select 
a.SSI_ID MAPPED_SSI_ID,b.SSI_ID FIN_SSI_ID, CASE WHEN a.SSI_ID = b.SSI_ID THEN 'TRUE' ELSE 'FALSE' END MATCH_SSI_ID,
a.CPTY_NAME OPICS_CPTY,trim(c.name) FIN_CPTY,CASE WHEN a.CPTY_NAME= trim(c.name) THEN 'TRUE' ELSE 'FALSE' END MATCH_CPTY,
a.SSI_SETTLEMENT_ACTION MAPPED_SETTLEMENT_ACTION,b.SETTLEMENT_ACTION FIN_SETTLEMENT_ACTION,CASE WHEN a.SSI_SETTLEMENT_ACTION = b.SETTLEMENT_ACTION THEN 'TRUE' ELSE 'FALSE' END MATCH_SETTLEMENT_ACTION,
TO_DATE(A.EFFECTIVE_DATE,'DD-MON-YYYY') MAPPED_EFFECTIVE_DATE,b.EFFECTIVE_DATE FIN_EFFECTIVE_DATE,CASE WHEN TO_DATE(A.EFFECTIVE_DATE,'DD-MON-YYYY') = b.EFFECTIVE_DATE THEN 'TRUE' ELSE 'FALSE' END MATCH_EFFECTIVE_DATE,
case when a.SSI_TYPE='INT/COUPON' then 'INC' when  a.SSI_TYPE='PRINCIPAL' then 'PRI' end MAPPED_SSI_TYPE,b.SSI_TYPE FIN_SSI_TYPE,CASE WHEN case when a.SSI_TYPE='INT/COUPON' then 'INC' when  a.SSI_TYPE='PRINCIPAL' then 'PRI' end = b.SSI_TYPE THEN 'TRUE' ELSE 'FALSE' END MATCH_SSI_TYPE,
a.NOSTRO_ID OPICS_NOSTRO_ID,b.NOSTRO_ID FIN_NOSTRO_ID,CASE WHEN a.NOSTRO_ID = b.NOSTRO_ID THEN 'TRUE' ELSE 'FALSE' END MATCH_NOSTRO_ID,
A.ALT_BENEF_BIC OPICS_BENEF_BIC,B.ALT_BENEF_BIC FIN_BENEF_BIC,CASE WHEN NVL(A.ALT_BENEF_BIC,' ') = NVL(B.ALT_BENEF_BIC,' ') THEN 'TRUE' ELSE 'FALSE' END MATCH_BENEF_BIC,
a.SSI_ID||'-'||a.CPTY_NAME||'-'||a.SSI_SETTLEMENT_ACTION||'-'||TO_DATE(A.EFFECTIVE_DATE,'DD-MON-YYYY')||'-'||
case when a.SSI_TYPE='INT/COUPON' then 'INC' when  a.SSI_TYPE='PRINCIPAL' then 'PRI' end||'-'||a.NOSTRO_ID OPICS_DATA,
b.SSI_ID||'-'||trim(c.name)||'-'||b.SETTLEMENT_ACTION||'-'||b.EFFECTIVE_DATE||'-'||b.SSI_TYPE||'-'||b.NOSTRO_ID FIN_DATA,
CASE WHEN a.SSI_ID||'-'||a.CPTY_NAME||'-'||a.SSI_SETTLEMENT_ACTION||'-'||TO_DATE(A.EFFECTIVE_DATE,'DD-MON-YYYY')||'-'||
case when a.SSI_TYPE='INT/COUPON' then 'INC' when  a.SSI_TYPE='PRINCIPAL' then 'PRI' end||'-'||a.NOSTRO_ID = 
b.SSI_ID||'-'||trim(c.name)||'-'||b.SETTLEMENT_ACTION||'-'||b.EFFECTIVE_DATE||'-'||b.SSI_TYPE||'-'||b.NOSTRO_ID THEN 'TRUE' ELSE 'FALSE' END MATCH_DATA 
from (
select * from TREASURY_pay_SSI_O_TABLE
) a
left join sd_cpty_ssi@ftmig b on a.SSI_ID = b.SSI_ID
left join sd_cpty@ftmig c on b.CPTY_FBO_ID_NUM = c.FBO_ID_NUM  
