DROP TABLE COLLATERAL_LINKAGE_TO_LIMIT;

CREATE TABLE COLLATERAL_LINKAGE_TO_LIMIT AS

SELECT DISTINCT SECU_SRL_NUM COLLATERAL_ID,COLTRLTYPE SECU_TYPE_IND,
       A.LIMIT_PREFIX,
       A.LIMIT_SUFFIX,
       'N' LINKAGE_TYPE,
       COLL_VALUE COLLATERAL_VALUE,
       ' ' REASON_CODE,
       round(CCC5_CLVA,3) APPORTIONED_VALUE,
       'P' NATURE,
       CASE WHEN COLL_VALUE=0 THEN 0 ELSE ROUND((CCC5_CLVA*100)/COLL_VALUE,2) END MARGIN_PCNT,
       ' ' LTV_LOAN_TO_VALUE_PCNT,
       ' ' ACCT_UNDER_LITIGATION
  FROM TBAADM.LLT A
       INNER JOIN TBAADM.CMG C ON A.CUST_ID = C.CUST_ID
       INNER JOIN (select COLTRLTYPE,COLTRLCODE,COLL_VALUE,SECU_SRL_NUM,CIF_ID,TO_CHAR(CC_FINONE_ACCNT) COL_REF from MIGADM.C_COLLGUARANTEE
                   UNION ALL
                   select COLLATERAL_TYPE,COLLATERAL_CODE,COLLATERAL_VALUE,SECU_SRL_NUM,CIF_ID,TO_CHAR(CC_FINONE_ACCNT) COL_REF from MIGADM.C_COLLIMMOV
                   UNION ALL
                   select COLLATERAL_TYPE,COLLATERAL_CODE,TOTAL_COLLATERAL_VALUE,SECU_SRL_NUM,CIF_ID,TO_CHAR(CC_FINONE_ACCNT) COL_REF from MIGADM.C_COLLTRADE
                   UNION ALL
                   select COLTRLTYPE,COLTRLCODE,COLL_VALUE,SECU_SRL_NUM,CIF_ID,TO_CHAR(CC_FINONE_ACCNT) COL_REF from MIGADM.C_COLLOTHERS
                   UNION ALL
                   select COLLATERAL_TYPE,COLLATERAL_CODE,TOTAL_COLLATERAL_VALUE,SECU_SRL_NUM,CIF_ID,TO_CHAR(CC_FINONE_ACCNT) COL_REF from MIGADM.COLL_MUTUAL_FUND
                   UNION ALL
                   select distinct COLTRLTYPE,COLTRLCODE,COLL_VALUE,SECU_SRL_NUM,CIF_ID,nvl(TO_CHAR(HYCLR),deposit_num) COL_REF from MIGADM.C_COLLDEPOSITS
                        inner join (select distinct TRIM(HYDBNM)||TRIM(HYDLP)||TRIM(HYDLR) deposit_num ,trim(HYCLR) HYCLR,HYCLV/c8pwd  HYCLV from hypf 
                        left join c8pf on trim(hyccy) = c8ccy where TRIM(HYDBNM)||TRIM(HYDLP)||TRIM(HYDLR)||trim(HYCLR) in(
                        select (deposit_num||trim(HYCLR)) from (select distinct TRIM(HYDBNM)||TRIM(HYDLP)||TRIM(HYDLR) deposit_num ,trim(HYCLR) HYCLR from hypf 
                            where TRIM(HYDLR) is not null) group by deposit_num||trim(HYCLR) having count(*)=1)) b on b.deposit_num =  trim(CC_FINONE_ACCNT) and trim(COLL_VALUE) = trim(HYCLV)
                  ) B ON TRIM(B.CIF_ID) = TRIM(C.CIF_ID)
       INNER JOIN MAP_CIF ON A.LIMIT_PREFIX = FIN_CIF_ID
       INNER JOIN COLL_LIMIT_MAP ON FIN_LIMIT_NODE = A.LIMIT_SUFFIX 
       INNER JOIN (SELECT TRIM(CCC5_CUS) CCC5_CUS ,TRIM(CCC5_CLC) CCC5_CLC,TRIM(CCC5_CLR) CCC5_CLR,trim(CCC5_LSEQ) CCC5_LSEQ,TRIM(CCC5_PRDC) CCC5_PRDC,TRIM(CCC5_CCY) CCC5_CCY,
       SUM(CCC5_CLVA) CCC5_CLVA FROM YCCLC5PF01 where nvl(trim(CCC5_UNSF),' ') !='U' GROUP BY TRIM(CCC5_CUS) ,TRIM(CCC5_CLC), TRIM(CCC5_CLR),trim(CCC5_LSEQ),TRIM(CCC5_PRDC),TRIM(CCC5_CCY)) YCCLC5PF01 ON TRIM(GFCLC)||TRIM(GFCUS) = TRIM(CCC5_CLC)||TRIM(CCC5_CUS) 
       AND trim(YCCLC5PF01.CCC5_LSEQ)||TRIM(YCCLC5PF01.CCC5_PRDC) = trim(COLL_LIMIT_MAP.CCC5_LSEQ)||TRIM(COLL_LIMIT_MAP.CCC5_PRDC)  AND  (TRIM(CCC5_CLR)=TRIM(COL_REF) or replace(TRIM(CCC5_CLR),'-','')=replace(TRIM(COL_REF),'-',''))
       WHERE CCC5_CLVA <> 0 AND 
       A.BANK_ID='01' ;

commit;

DROP TABLE COLLATERAL_LINKAGE_TO_LIMIT2;

CREATE TABLE COLLATERAL_LINKAGE_TO_LIMIT2 AS 
SELECT 'C' ENTITY_TYPE,
       A.LIMIT_B2KID ENTITY_ID,
       A.LIMIT_PREFIX || '/' || A.LIMIT_SUFFIX ENTITY_REF_NUM,
       A.PARENT_LIMIT_B2KID PARENT_LIMIT_B2KID,
       CASE WHEN D.LIMIT_PREFIX IS NOT NULL THEN D.LIMIT_PREFIX|| '/' || D.LIMIT_SUFFIX END PARENT_LIMIT_PREFIX_SUFFIX,
       ' ' PARENT_COLL_AMT,
       ' ' DIRECT_COLL_AMT,
       CCC5_CCY CRNCY_CODE,
       CASE WHEN COLL_VALUE=0 THEN 0 ELSE ROUND((CCC5_CLVA*100)/COLL_VALUE,2) END  APPORTIONED_PCNT,
       ' ' PARENT_APPORTIONED_VALUE,
       ' ' DIRECT_APPORTIONED_VALUE,
       ' ' TOTAL_APPORTIONED_VALUE,
       SECU_SRL_NUM SECU_SRL_NUM,
       --trim(CCC5_COVG)
       ' ' FREE_TEXT_1,
       ' ' FREE_TEXT_2,
       ' ' FREE_TEXT_3,
       ' ' FREE_TEXT_4,
       ' ' FREE_TEXT_5,
       ' ' FREE_TEXT_6,
       ' ' FREE_TEXT_7,
       ' ' FREE_TEXT_8, 
       'Y' ENTITY_CRE_FLG,
       'N' DEL_FLG,
       SYSDATE RCRE_TIME,
       'SYSTEM' RCRE_USER_ID,
       SYSDATE LCHG_TIME,
       'SYSTEM' LCHG_USER_ID,
       '01' BANK_ID              
 FROM TBAADM.LLT A
       LEFT JOIN  TBAADM.LLT D ON A.PARENT_LIMIT_B2KID = D.LIMIT_B2KID
       INNER JOIN TBAADM.CMG C ON A.CUST_ID = C.CUST_ID  
       INNER JOIN (select COLTRLTYPE,COLTRLCODE,COLL_VALUE,SECU_SRL_NUM,CIF_ID,TO_CHAR(CC_FINONE_ACCNT) COL_REF from MIGADM.C_COLLGUARANTEE
                   UNION ALL
                   select COLLATERAL_TYPE,COLLATERAL_CODE,COLLATERAL_VALUE,SECU_SRL_NUM,CIF_ID,TO_CHAR(CC_FINONE_ACCNT) COL_REF from MIGADM.C_COLLIMMOV
                   UNION ALL
                   select COLLATERAL_TYPE,COLLATERAL_CODE,TOTAL_COLLATERAL_VALUE,SECU_SRL_NUM,CIF_ID,TO_CHAR(CC_FINONE_ACCNT) COL_REF from MIGADM.C_COLLTRADE
                   UNION ALL
                   select COLTRLTYPE,COLTRLCODE,COLL_VALUE,SECU_SRL_NUM,CIF_ID,TO_CHAR(CC_FINONE_ACCNT) COL_REF from MIGADM.C_COLLOTHERS
                   UNION ALL
                   select COLLATERAL_TYPE,COLLATERAL_CODE,TOTAL_COLLATERAL_VALUE,SECU_SRL_NUM,CIF_ID,TO_CHAR(CC_FINONE_ACCNT) COL_REF from MIGADM.COLL_MUTUAL_FUND
                   UNION ALL
                  select distinct COLTRLTYPE,COLTRLCODE,COLL_VALUE,SECU_SRL_NUM,CIF_ID,nvl(TO_CHAR(HYCLR),deposit_num) COL_REF from MIGADM.C_COLLDEPOSITS
                        inner join (select distinct TRIM(HYDBNM)||TRIM(HYDLP)||TRIM(HYDLR) deposit_num ,trim(HYCLR) HYCLR,HYCLV/c8pwd  HYCLV from hypf 
                        left join c8pf on trim(hyccy) = c8ccy where TRIM(HYDBNM)||TRIM(HYDLP)||TRIM(HYDLR)||trim(HYCLR) in(
                        select (deposit_num||trim(HYCLR)) from (select distinct TRIM(HYDBNM)||TRIM(HYDLP)||TRIM(HYDLR) deposit_num ,trim(HYCLR) HYCLR from hypf 
                            where TRIM(HYDLR) is not null) group by deposit_num||trim(HYCLR) having count(*)=1)) b on b.deposit_num =  trim(CC_FINONE_ACCNT) and trim(COLL_VALUE) = trim(HYCLV)
                   ) B ON TRIM(B.CIF_ID) = TRIM(C.CIF_ID)
       INNER JOIN MAP_CIF ON A.LIMIT_PREFIX = FIN_CIF_ID
       INNER JOIN COLL_LIMIT_MAP ON FIN_LIMIT_NODE = A.LIMIT_SUFFIX 
       INNER JOIN (SELECT TRIM(CCC5_CUS) CCC5_CUS ,TRIM(CCC5_CLC) CCC5_CLC,TRIM(CCC5_CLR) CCC5_CLR,trim(CCC5_LSEQ) CCC5_LSEQ,TRIM(CCC5_PRDC) CCC5_PRDC,TRIM(CCC5_CCY) CCC5_CCY,
       SUM(CCC5_CLVA) CCC5_CLVA,CCC5_COVG FROM YCCLC5PF01 where nvl(trim(CCC5_UNSF),' ') !='U' GROUP BY TRIM(CCC5_CUS) ,TRIM(CCC5_CLC), TRIM(CCC5_CLR),trim(CCC5_LSEQ),TRIM(CCC5_PRDC),TRIM(CCC5_CCY),CCC5_COVG) YCCLC5PF01 ON TRIM(GFCLC)||TRIM(GFCUS) = TRIM(CCC5_CLC)||TRIM(CCC5_CUS) 
       AND trim(YCCLC5PF01.CCC5_LSEQ)||TRIM(YCCLC5PF01.CCC5_PRDC) = trim(COLL_LIMIT_MAP.CCC5_LSEQ)||TRIM(COLL_LIMIT_MAP.CCC5_PRDC)  AND  (TRIM(CCC5_CLR)=TRIM(COL_REF) or replace(TRIM(CCC5_CLR),'-','')=replace(TRIM(COL_REF),'-',''))
       WHERE CCC5_CLVA <> 0 AND 
       A.BANK_ID='01';



DROP TABLE COLL_LIM_LINKAGE_TMP;
 
CREATE TABLE COLL_LIM_LINKAGE_TMP AS

SELECT distinct 
       LIMIT_PREFIX,
       LIMIT_SUFFIX,
       round(CCC5_CLVA,3) FORACID_COLL_VALUE,
       SECU_SRL_NUM SECU_SRL_NUM,
       COLTRLCODE CLTRL_CODE,
       CCC5_CCY CRNCY_CODE,
       A.BANK_ID BANK_ID,
       '           ' SRL_NUM,
       '0' UPLOAD_STATUS,
       ' ' LEGACY_CIF
from
TBAADM.LLT A
       INNER JOIN TBAADM.CMG C ON A.CUST_ID = C.CUST_ID
       INNER JOIN (select COLTRLTYPE,COLTRLCODE,COLL_VALUE,SECU_SRL_NUM,CIF_ID,TO_CHAR(CC_FINONE_ACCNT) COL_REF from MIGADM.C_COLLGUARANTEE
                   UNION ALL
                   select COLLATERAL_TYPE,COLLATERAL_CODE,COLLATERAL_VALUE,SECU_SRL_NUM,CIF_ID,TO_CHAR(CC_FINONE_ACCNT) COL_REF from MIGADM.C_COLLIMMOV
                   UNION ALL
                   select COLLATERAL_TYPE,COLLATERAL_CODE,TOTAL_COLLATERAL_VALUE,SECU_SRL_NUM,CIF_ID,TO_CHAR(CC_FINONE_ACCNT) COL_REF from MIGADM.C_COLLTRADE
                   UNION ALL
                   select COLTRLTYPE,COLTRLCODE,COLL_VALUE,SECU_SRL_NUM,CIF_ID,TO_CHAR(CC_FINONE_ACCNT) COL_REF from MIGADM.C_COLLOTHERS
                   UNION ALL
                   select COLLATERAL_TYPE,COLLATERAL_CODE,TOTAL_COLLATERAL_VALUE,SECU_SRL_NUM,CIF_ID,TO_CHAR(CC_FINONE_ACCNT) COL_REF from MIGADM.COLL_MUTUAL_FUND
                   UNION ALL
                   select distinct COLTRLTYPE,COLTRLCODE,COLL_VALUE,SECU_SRL_NUM,CIF_ID,nvl(TO_CHAR(HYCLR),deposit_num) COL_REF from MIGADM.C_COLLDEPOSITS
                        inner join (select distinct TRIM(HYDBNM)||TRIM(HYDLP)||TRIM(HYDLR) deposit_num ,trim(HYCLR) HYCLR,HYCLV/c8pwd  HYCLV from hypf 
                        left join c8pf on trim(hyccy) = c8ccy where TRIM(HYDBNM)||TRIM(HYDLP)||TRIM(HYDLR)||trim(HYCLR) in(
                        select (deposit_num||trim(HYCLR)) from (select distinct TRIM(HYDBNM)||TRIM(HYDLP)||TRIM(HYDLR) deposit_num ,trim(HYCLR) HYCLR from hypf 
                            where TRIM(HYDLR) is not null) group by deposit_num||trim(HYCLR) having count(*)=1)) b on b.deposit_num =  trim(CC_FINONE_ACCNT) and trim(COLL_VALUE) = trim(HYCLV)
                   ) B ON TRIM(B.CIF_ID) = TRIM(C.CIF_ID)
       INNER JOIN MAP_CIF ON A.LIMIT_PREFIX = FIN_CIF_ID
       INNER JOIN COLL_LIMIT_MAP ON FIN_LIMIT_NODE = A.LIMIT_SUFFIX 
       INNER JOIN (SELECT TRIM(CCC5_CUS) CCC5_CUS ,TRIM(CCC5_CLC) CCC5_CLC,TRIM(CCC5_CLR) CCC5_CLR,trim(CCC5_LSEQ) CCC5_LSEQ,TRIM(CCC5_PRDC) CCC5_PRDC,TRIM(CCC5_CCY) CCC5_CCY,
       SUM(CCC5_CLVA) CCC5_CLVA FROM YCCLC5PF01 where nvl(trim(CCC5_UNSF),' ') !='U' GROUP BY TRIM(CCC5_CUS) ,TRIM(CCC5_CLC), TRIM(CCC5_CLR),trim(CCC5_LSEQ),TRIM(CCC5_PRDC),TRIM(CCC5_CCY)) YCCLC5PF01 ON TRIM(GFCLC)||TRIM(GFCUS) = TRIM(CCC5_CLC)||TRIM(CCC5_CUS) 
       AND trim(YCCLC5PF01.CCC5_LSEQ)||TRIM(YCCLC5PF01.CCC5_PRDC) = trim(COLL_LIMIT_MAP.CCC5_LSEQ)||TRIM(COLL_LIMIT_MAP.CCC5_PRDC)  AND  (TRIM(CCC5_CLR)=TRIM(COL_REF) or replace(TRIM(CCC5_CLR),'-','')=replace(TRIM(COL_REF),'-',''))
       WHERE CCC5_CLVA <> 0 AND 
       A.BANK_ID='01';


update COLL_LIM_LINKAGE_TMP set SRL_NUM=rownum ;

commit;


delete from COLLATERAL_LINKAGE_TO_LIMIT where (LIMIT_PREFIX,COLLATERAL_ID,substr(LIMIT_SUFFIX,1,4) ) in(
select LIMIT_PREFIX,COLLATERAL_ID,substr(LIMIT_SUFFIX,1,4) LIMIT_SUFFIX from COLLATERAL_LINKAGE_TO_LIMIT where LIMIT_SUFFIX in(select FIN_LIMIT_NODE from COLL_LIMIT_MAP where REGEXP_LIKE(LIMIT_SUFFIX,'[0-9]'))
 group by LIMIT_PREFIX,COLLATERAL_ID,substr(LIMIT_SUFFIX,1,4) having count(*)>1
) and rowid not in (select min(rowid) from COLLATERAL_LINKAGE_TO_LIMIT group by LIMIT_PREFIX,COLLATERAL_ID,substr(LIMIT_SUFFIX,1,4) having count(*)>1);

commit;
delete from COLL_LIM_LINKAGE_TMP where (LIMIT_PREFIX,SECU_SRL_NUM,substr(LIMIT_SUFFIX,1,4) ) in(
select LIMIT_PREFIX,SECU_SRL_NUM,substr(LIMIT_SUFFIX,1,4) LIMIT_SUFFIX from COLL_LIM_LINKAGE_TMP where LIMIT_SUFFIX in(select FIN_LIMIT_NODE from COLL_LIMIT_MAP where REGEXP_LIKE(LIMIT_SUFFIX,'[0-9]'))
 group by LIMIT_PREFIX,SECU_SRL_NUM,substr(LIMIT_SUFFIX,1,4) having count(*)>1
) and rowid not in (select min(rowid) from COLL_LIM_LINKAGE_TMP group by LIMIT_PREFIX,SECU_SRL_NUM,substr(LIMIT_SUFFIX,1,4) having count(*)>1);
commit;

delete from COLLATERAL_LINKAGE_TO_LIMIT2 where ENTITY_ID not in(
select LIMIT_B2KID from COLLATERAL_LINKAGE_TO_LIMIT a
inner join tbaadm.llt b on a.limit_prefix = b.limit_prefix and a.limit_suffix = b.limit_suffix and bank_id='01'
);
commit;

--delete COLLATERAL_LINKAGE_TO_LIMIT where (COLLATERAL_ID,LIMIT_PREFIX,limit_suffix) in(
--select SECU_SRL_NUM,LIMIT_prefix,limit_suffix from COLL_LIM_LINKAGE_TMP where CRNCY_CODE !='KWD' and LIMIT_suffix in(select FIN_LIMIT_NODE from COLL_LIMIT_MAP where (CCC5_PRDC ='LL' AND CCC5_LSEQ='80' ) OR (CCC5_PRDC ='TL' AND CCC5_LSEQ='130' )) and LIMIT_suffix like '%H%'
--union
--select SECU_SRL_NUM,LIMIT_prefix,limit_suffix from COLL_LIM_LINKAGE_TMP where CRNCY_CODE ='KWD' and LIMIT_suffix in(select FIN_LIMIT_NODE from COLL_LIMIT_MAP where (CCC5_PRDC ='LL' AND CCC5_LSEQ='80' ) OR (CCC5_PRDC ='TL' AND CCC5_LSEQ='130' )) and LIMIT_suffix like '%F%'
--);
--
--delete COLLATERAL_LINKAGE_TO_LIMIT2 where (SECU_SRL_NUM,ENTITY_REF_NUM) in(
--select SECU_SRL_NUM,LIMIT_prefix||'/'||limit_suffix from COLL_LIM_LINKAGE_TMP where CRNCY_CODE !='KWD' and LIMIT_suffix in(select FIN_LIMIT_NODE from COLL_LIMIT_MAP where (CCC5_PRDC ='LL' AND CCC5_LSEQ='80' ) OR (CCC5_PRDC ='TL' AND CCC5_LSEQ='130' )) and LIMIT_suffix like '%H%'
--union
--select SECU_SRL_NUM,LIMIT_prefix||'/'||limit_suffix from COLL_LIM_LINKAGE_TMP where CRNCY_CODE ='KWD' and LIMIT_suffix in(select FIN_LIMIT_NODE from COLL_LIMIT_MAP where (CCC5_PRDC ='LL' AND CCC5_LSEQ='80' ) OR (CCC5_PRDC ='TL' AND CCC5_LSEQ='130' )) and LIMIT_suffix like '%F%'
--);
--
--delete from COLL_LIM_LINKAGE_TMP where CRNCY_CODE !='KWD' and LIMIT_suffix in(select FIN_LIMIT_NODE from COLL_LIMIT_MAP where (CCC5_PRDC ='LL' AND CCC5_LSEQ='80' ) OR (CCC5_PRDC ='TL' AND CCC5_LSEQ='130' )) and LIMIT_suffix like '%H%';
--
--delete from COLL_LIM_LINKAGE_TMP where CRNCY_CODE ='KWD' and LIMIT_suffix in(select FIN_LIMIT_NODE from COLL_LIMIT_MAP where (CCC5_PRDC ='LL' AND CCC5_LSEQ='80' ) OR (CCC5_PRDC ='TL' AND CCC5_LSEQ='130' )) and LIMIT_suffix like '%F%';
--
--commit;



--UPDATE  COLLATERAL_LINKAGE_TO_LIMIT SET APPORTIONED_VALUE=APPORTIONED_VALUE-0.5,MARGIN_PCNT=ROUND((APPORTIONED_VALUE*100)/COLLATERAL_VALUE,2)  WHERE (COLLATERAL_ID,LIMIT_PREFIX)
--IN(
--select COLLATERAL_ID,LIMIT_PREFIX from (
--select COLLATERAL_ID,LIMIT_PREFIX,COLLATERAL_VALUE,sum(APPORTIONED_VALUE) APPORTIONED_VALUE ,sum(MARGIN_PCNT) MARGIN_PCNT from COLLATERAL_LINKAGE_TO_LIMIT group by COLLATERAL_ID,LIMIT_PREFIX,COLLATERAL_VALUE
--) where COLLATERAL_VALUE < APPORTIONED_VALUE);
--COMMIT;

update COLLATERAL_LINKAGE_TO_LIMIT a set APPORTIONED_VALUE = (select a.APPORTIONED_VALUE - diff from(
select COLLATERAL_ID,LIMIT_PREFIX,min(limit_suffix) limit_suffix,sum(APPORTIONED_VALUE)-COLLATERAL_VALUE diff from COLLATERAL_LINKAGE_TO_LIMIT
group by COLLATERAL_ID,LIMIT_PREFIX,COLLATERAL_VALUE having COLLATERAL_VALUE<sum(APPORTIONED_VALUE)
)b where a.COLLATERAL_ID = b.COLLATERAL_ID and a.LIMIT_PREFIX = b.LIMIT_PREFIX and a.LIMIT_suffix = b.LIMIT_suffix
)
where (COLLATERAL_ID,LIMIT_PREFIX,limit_suffix) in (
select COLLATERAL_ID,LIMIT_PREFIX,min(limit_suffix) limit_suffix from COLLATERAL_LINKAGE_TO_LIMIT WHERE APPORTIONED_VALUE <> 0
 group by COLLATERAL_ID,LIMIT_PREFIX,COLLATERAL_VALUE having COLLATERAL_VALUE<sum(APPORTIONED_VALUE)
)
 AND APPORTIONED_VALUE <> 0;

update COLLATERAL_LINKAGE_TO_LIMIT a set MARGIN_PCNT = (select  b.MARGIN_PCNT from (
select COLLATERAL_ID,LIMIT_PREFIX,LIMIT_SUFFIX,round((APPORTIONED_VALUE/COLLATERAL_VALUE)*100,2) MARGIN_PCNT  from COLLATERAL_LINKAGE_TO_LIMIT a where round((APPORTIONED_VALUE/COLLATERAL_VALUE)*100,2) != MARGIN_PCNT
)b where a.COLLATERAL_ID = b.COLLATERAL_ID and a.LIMIT_PREFIX = b.LIMIT_PREFIX and a.LIMIT_suffix = b.LIMIT_suffix 
)
where (COLLATERAL_ID,LIMIT_PREFIX,limit_suffix) in (
select COLLATERAL_ID,LIMIT_PREFIX,LIMIT_SUFFIX  from COLLATERAL_LINKAGE_TO_LIMIT a where round((APPORTIONED_VALUE/COLLATERAL_VALUE)*100,2) != MARGIN_PCNT and  APPORTIONED_VALUE <> 0
) and  APPORTIONED_VALUE <> 0;

UPDATE COLL_LIM_LINKAGE_TMP A SET FORACID_COLL_VALUE =(
SELECT APPORTIONED_VALUE FROM(
SELECT A.COLLATERAL_ID ,A.LIMIT_PREFIX,A.LIMIT_SUFFIX,A.APPORTIONED_VALUE,A.MARGIN_PCNT FROM COLLATERAL_LINKAGE_TO_LIMIT A
LEFT JOIN COLL_LIM_LINKAGE_TMP B ON A.COLLATERAL_ID = B.SECU_SRL_NUM AND A.LIMIT_SUFFIX = B.LIMIT_SUFFIX
WHERE FORACID_COLL_VALUE != APPORTIONED_VALUE
) B WHERE A.LIMIT_PREFIX = B.LIMIT_PREFIX AND A.LIMIT_SUFFIX = B.LIMIT_SUFFIX AND A.SECU_SRL_NUM = B.COLLATERAL_ID )
WHERE (A.LIMIT_PREFIX,A.LIMIT_SUFFIX,A.SECU_SRL_NUM) IN(
SELECT  A.LIMIT_PREFIX,A.LIMIT_SUFFIX,A.COLLATERAL_ID FROM COLLATERAL_LINKAGE_TO_LIMIT A
LEFT JOIN COLL_LIM_LINKAGE_TMP B ON A.COLLATERAL_ID = B.SECU_SRL_NUM AND A.LIMIT_SUFFIX = B.LIMIT_SUFFIX
WHERE FORACID_COLL_VALUE != APPORTIONED_VALUE AND FORACID_COLL_VALUE <> 0
) AND  FORACID_COLL_VALUE <> 0;
COMMIT;

update COLLATERAL_LINKAGE_TO_LIMIT2 a set APPORTIONED_PCNT = (select APPORTIONED_PCNT from COLLATERAL_LINKAGE_TO_LIMIT b where a.SECU_SRL_NUM = b.COLLATERAL_ID and a.ENTITY_REF_NUM = b.limit_prefix||'/'||b.limit_suffix
);
commit;

exit;
--select * from (
--select COLLATERAL_ID,LIMIT_PREFIX,COLLATERAL_VALUE,sum(APPORTIONED_VALUE) APPORTIONED_VALUE ,sum(MARGIN_PCNT) MARGIN_PCNT from COLLATERAL_LINKAGE_TO_LIMIT group by COLLATERAL_ID,LIMIT_PREFIX,COLLATERAL_VALUE
--) where COLLATERAL_VALUE < APPORTIONED_VALUE;

--select COLLATERAL_ID,max(COLLATERAL_VALUE) COLLATERAL_VALUE,sum(APPORTIONED_VALUE) from COLLATERAL_LINKAGE_TO_LIMIT group by COLLATERAL_ID having sum(APPORTIONED_VALUE)>max(COLLATERAL_VALUE) 

--select * from (
--select COLLATERAL_ID,LIMIT_PREFIX,COLLATERAL_VALUE,sum(APPORTIONED_VALUE) APPORTIONED_VALUE ,sum(MARGIN_PCNT) MARGIN_PCNT from COLLATERAL_LINKAGE_TO_LIMIT group by COLLATERAL_ID,LIMIT_PREFIX,COLLATERAL_VALUE
--) where COLLATERAL_VALUE+2 < APPORTIONED_VALUE;



                  
--SELECT COL_REF,SECU_TYPE_IND,LIMIT_PREFIX,LIMIT_SUFFIX,COLLATERAL_VALUE,APPORTIONED_VALUE FROM COLLATERAL_LINKAGE_TO_LIMIT A
--INNER JOIN (select COLTRLTYPE,COLTRLCODE,COLL_VALUE,SECU_SRL_NUM,CIF_ID,TO_CHAR(CC_FINONE_ACCNT) COL_REF from MIGADM.C_COLLGUARANTEE
--                   UNION ALL
--                   select COLLATERAL_TYPE,COLLATERAL_CODE,COLLATERAL_VALUE,SECU_SRL_NUM,CIF_ID,TO_CHAR(CC_FINONE_ACCNT) COL_REF from MIGADM.C_COLLIMMOV
--                   UNION ALL
--                   select COLLATERAL_TYPE,COLLATERAL_CODE,TOTAL_COLLATERAL_VALUE,SECU_SRL_NUM,CIF_ID,TO_CHAR(CC_FINONE_ACCNT) COL_REF from MIGADM.C_COLLTRADE
--                   UNION ALL
--                   select COLTRLTYPE,COLTRLCODE,COLL_VALUE,SECU_SRL_NUM,CIF_ID,TO_CHAR(CC_FINONE_ACCNT) COL_REF from MIGADM.C_COLLOTHERS
--                   UNION ALL
--                   select COLLATERAL_TYPE,COLLATERAL_CODE,TOTAL_COLLATERAL_VALUE,SECU_SRL_NUM,CIF_ID,TO_CHAR(CC_FINONE_ACCNT) COL_REF from MIGADM.COLL_MUTUAL_FUND
--                   UNION ALL
--                   select distinct COLTRLTYPE,COLTRLCODE,COLL_VALUE,SECU_SRL_NUM,CIF_ID,nvl(TO_CHAR(HYCLR),deposit_num) COL_REF from MIGADM.C_COLLDEPOSITS
--                        inner join (select distinct TRIM(HYDBNM)||TRIM(HYDLP)||TRIM(HYDLR) deposit_num ,trim(HYCLR) HYCLR,HYCLV/c8pwd  HYCLV from hypf 
--                        left join c8pf on trim(hyccy) = c8ccy where TRIM(HYDBNM)||TRIM(HYDLP)||TRIM(HYDLR)||trim(HYCLR) in(
--                        select (deposit_num||trim(HYCLR)) from (select distinct TRIM(HYDBNM)||TRIM(HYDLP)||TRIM(HYDLR) deposit_num ,trim(HYCLR) HYCLR from hypf 
--                            where TRIM(HYDLR) is not null) group by deposit_num||trim(HYCLR) having count(*)=1)) b on b.deposit_num =  trim(CC_FINONE_ACCNT) and trim(COLL_VALUE) = trim(HYCLV)
--                   ) B ON TRIM(B.SECU_SRL_NUM) = TRIM(A.COLLATERAL_ID)
--
--SELECT * FROM COLLATERAL_LINKAGE_TO_LIMIT
--
--SELECT HYPF.* FROM HYPF 
--LEFT JOIN C8PF ON C8CCY = HYCCY 
--WHERE (HYCLV/C8PWD,TRIM(HYDBNM)||TRIM(HYDLP)||TRIM(HYDLR)) NOT IN(
--SELECT COLL_VALUE,CC_FINONE_ACCNT FROM COLLATERAL_LINKAGE_TO_LIMIT A
--INNER JOIN (
--                   select distinct COLTRLTYPE,COLTRLCODE,COLL_VALUE,SECU_SRL_NUM,CIF_ID,nvl(TO_CHAR(HYCLR),deposit_num) COL_REF,CC_FINONE_ACCNT from MIGADM.C_COLLDEPOSITS
--                        inner join (select distinct TRIM(HYDBNM)||TRIM(HYDLP)||TRIM(HYDLR) deposit_num ,trim(HYCLR) HYCLR,HYCLV/c8pwd  HYCLV from hypf 
--                        left join c8pf on trim(hyccy) = c8ccy where TRIM(HYDBNM)||TRIM(HYDLP)||TRIM(HYDLR)||trim(HYCLR) in(
--                        select (deposit_num||trim(HYCLR)) from (select distinct TRIM(HYDBNM)||TRIM(HYDLP)||TRIM(HYDLR) deposit_num ,trim(HYCLR) HYCLR from hypf 
--                            where TRIM(HYDLR) is not null) group by deposit_num||trim(HYCLR) having count(*)=1)) b on b.deposit_num =  trim(CC_FINONE_ACCNT) and trim(COLL_VALUE) = trim(HYCLV)
--                   ) B ON TRIM(B.SECU_SRL_NUM) = TRIM(A.COLLATERAL_ID)
--                   )
--                   AND TRIM(HYDBNM)||TRIM(HYDLP)||TRIM(HYDLR) IN(select CC_FINONE_ACCNT from MIGADM.C_COLLDEPOSITS)
--                   
--                   SELECT * FROM MIGADM.C_COLLDEPOSITS 



--select * from (
--select distinct a.*,case when HYCLV =0 then 'No need to link for zero amount collaterals'
--                         when SANCTION_LIMIT is null then 'Customer specific limit not exists' 
--                         WHEN CCC5_CUS IS NULL THEN 'Linkages not found in equation' END reason_for_NOT_linking from hypf a
--inner join coll_all  b on trim(a.hyclr) = trim(b.COL_REF) and COLTRLTYPE!='D'
--left join (
--SELECT distinct TRIM(CCC5_CUS) CCC5_CUS ,fin_cif_id,TRIM(CCC5_CLC) CCC5_CLC,TRIM(CCC5_CLR) CCC5_CLR,trim(a.CCC5_LSEQ) CCC5_LSEQ,TRIM(a.CCC5_PRDC) CCC5_PRDC,TRIM(CCC5_CCY) CCC5_CCY,FIN_LIMIT_NODE,
--       (CCC5_CLVA) CCC5_CLVA,SANCTION_LIMIT  FROM YCCLC5PF01 a
--       inner join COLL_LIMIT_MAP b  on trim(a.CCC5_LSEQ) = trim(b.CCC5_LSEQ) and TRIM(a.CCC5_PRDC) = TRIM(b.CCC5_PRDC)
--       inner join map_cif on trim(gfclc)||trim(gfcus) = trim(CCC5_CLC)||trim(CCC5_CUS)
--       left join LIMIT_CORE_INFY_TABLE on limit_prefix = fin_cif_id and limit_suffix = FIN_LIMIT_NODE 
--) c on trim(CCC5_CLR) = trim(hyclr)
--where SECU_SRL_NUM in(
--select SECU_SRL_NUM from coll_all where  COLTRLTYPE!='D' and SECU_SRL_NUM not in(select SECU_SRL_NUM from COLL_LIM_LINKAGE_TMP)
--    )
--)
--where reason_for_NOT_linking is not null

--delete from COLL_LIM_LINKAGE_TMP where LIMIT_PREFIX='0602177997' and SECU_SRL_NUM!='603471';

--delete from COLL_LIM_LINKAGE_TMP where LIMIT_PREFIX='0603527811' and SECU_SRL_NUM='603837' and LIMIT_SUFFIX='GECSH';


--------------
--VALIDATION--
---------------
--select CCC5_CLC,CCC5_CUS ,CCC5_CCY,CCC5_PRDC,sum(CCC5_CLVA) CCC5_CLVA from YCCLC5PF01 where nvl(trim(CCC5_UNSF),' ') !='U' group by CCC5_CLC,CCC5_CUS,CCC5_PRDC,CCC5_CCY;

--SELECT A.*,B.*,ROUND(NVL(CCC5_CLVA,0)- NVL(FORACID_COLL_VALUE,0),0) DIFFERENCE,
--CASE WHEN ROUND(NVL(CCC5_CLVA,0)- NVL(FORACID_COLL_VALUE,0),0) = 0 THEN 'MATCHED'
--     WHEN gfcus IS NULL THEN 'Customer not migrated in core' 
--     WHEN C.fin_cif_id IS NOT NULL THEN 'LIMIT NOT EXIST AND NEED LINK TO ACCOUNT' END REMARK
-- FROM 
--(select CCC5_CLC,CCC5_CUS ,CCC5_CCY,CCC5_PRDC,sum(CCC5_CLVA) CCC5_CLVA from YCCLC5PF01 where nvl(trim(CCC5_UNSF),' ') !='U' group by CCC5_CLC,CCC5_CUS,CCC5_PRDC,CCC5_CCY) A
--FULL JOIN (
--SELECT LIMIT_PREFIX,CRNCY_CODE,CCC5_PRDC,SUM(FORACID_COLL_VALUE) FORACID_COLL_VALUE FROM COLL_LIM_LINKAGE_TMP
--INNER JOIN COLL_LIMIT_MAP ON LIMIT_SUFFIX = FIN_LIMIT_NODE
--GROUP BY LIMIT_PREFIX,CRNCY_CODE,CCC5_PRDC
--) B ON '0'||CCC5_CLC||CCC5_CUS = LIMIT_PREFIX AND NVL(TRIM(A.CCC5_PRDC),' ') =  NVL(TRIM(B.CCC5_PRDC),' ')
--left join map_cif on gfclc||gfcus = CCC5_CLC||CCC5_CUS
--LEFT JOIN (
--select distinct fin_cif_id from YCCLC5PF01 
--inner join map_cif on gfclc||gfcus = CCC5_CLC||CCC5_CUS
--left join LIMIT_CORE_INFY_TABLE on fin_cif_id = limit_prefix
--where limit_prefix is null and nvl(trim(CCC5_UNSF),' ') !='U') C ON c.fin_cif_id =  '0'||CCC5_CLC||CCC5_CUS
--
--WHERE ROUND(NVL(CCC5_CLVA,0)- NVL(FORACID_COLL_VALUE,0),0) <>0  