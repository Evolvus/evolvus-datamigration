-- File Name        : custom_group_code.sql
-- File Created for    : Upload file for Group House Hold
-- Created By        : Sharanappa
-- Client            : ABK
-- Created On        : 10-01-2017
-------------------------------------------------------------------

DROP TABLE HPPF_BANK_GRP;
DROP TABLE HHPF_BANK_GRP;

CREATE TABLE HPPF_BANK_GRP AS 
SELECT DISTINCT NVL(UPDATED_RISK_COUNTRY_CODE,GFCNAR) HPCNA, HPGRP, GFCUS HPCUS, GFCLC HPCLC, HPLSTR, HPCCY, HPLED, HPYMDT, HPBRNM, HPLEDE, HPDLM, HPYRIT, HPYLCH, HPCF1, HPCF2, HPCF3, HPAUD FROM HPPF
INNER JOIN GFPF ON TRIM(HPGRP) = TRIM(GFGRP)
LEFT JOIN BANK_GRP_RISK_CNTRY ON TRIM(GROUP_NAME) = TRIM(HPGRP) ;

CREATE TABLE HHPF_BANK_GRP AS 
SELECT  DISTINCT NVL(UPDATED_RISK_COUNTRY_CODE,GFCNAR) HHCNA, HHGRP, GFCUS HHCUS, GFCLC HHCLC, HHLC, HHCCY, HHLED, HHAMA, HHLTST, HHYELG, HHYLCH, HHAAM, HHRAM FROM HHPF
INNER JOIN GFPF ON TRIM(HHGRP) = TRIM(GFGRP)
LEFT JOIN BANK_GRP_RISK_CNTRY ON TRIM(GROUP_NAME) = TRIM(HHGRP) ;

declare
 SEQ_START number;
begin
  SELECT (max(to_number(substr(CUST_ID,4)))+1) INTO SEQ_START  from tbaadm.llt where bank_id='02' and LIMIT_TYPE='G';
  If SEQ_START > 0 then
    begin
            execute immediate 'DROP SEQUENCE SEQ_CIF_GROUPS';
      exception when others then
        null;
    end;
    execute immediate 'CREATE SEQUENCE SEQ_CIF_GROUPS INCREMENT BY 1 START WITH ' || SEQ_START || ' NOCYCLE CACHE 20 NOORDER';
  end if;
end;

update CIF_GROUPS_DATA a set GROUP_REPORTING_ID = (select GROUP_REPORTING_ID from(
select CBK_CODE, ACCOUNT_NO, CIF_CREATED_DATE, CUSTOMER_NAME, ID_CODE, ENTITY_NAME, ENTITY_REPORTING_ID, ENTITY_ID, ENTITY_TYPE, GROUP_NAME, lpad(dense_rank() over  ( order by GROUP_NAME ),10,'0') GROUP_REPORTING_ID, GROUP_ID, GROUP_TYPE from CIF_GROUPS_DATA where (GROUP_NAME) is not null
) b where  a.ACCOUNT_NO = b.ACCOUNT_NO and a.GROUP_NAME = b.GROUP_NAME
);
commit;

UPDATE CIF_GROUPS_DATA SET ENTITY_NAME=TRIM(ENTITY_NAME),GROUP_NAME=TRIM(GROUP_NAME),ENTITY_TYPE =TRIM(ENTITY_TYPE),GROUP_TYPE=TRIM(GROUP_TYPE);
COMMIT;

truncate table GROUP_MASTER_O_TABLE;


INSERT INTO GROUP_MASTER_O_TABLE
select 'GRP'||SEQ_CIF_GROUPS.nextval,a.* from (
 SELECT distinct trim(ENTITY_NAME), value ,trim(ENTITY_REPORTING_ID)  FROM CIF_GROUPS_DATA
left join (select value,LOCALETEXT from CRMUSER.CATEGORIES a,CRMUSER.CATEGORY_LANG b where CATEGORYTYPE ='CIFGROUP_TYPE' and a.categoryid=b.categoryid and a.bank_id='01') b on upper(trim(ENTITY_TYPE)) = trim(LOCALETEXT)
where  trim(ENTITY_NAME) is not null
) a;

commit;

INSERT INTO GROUP_MASTER_O_TABLE
select 'GRP'||SEQ_CIF_GROUPS.nextval,a.* from (
 SELECT distinct trim(GROUP_NAME), value ,trim(GROUP_REPORTING_ID)  FROM CIF_GROUPS_DATA
left join (select value,LOCALETEXT from CRMUSER.CATEGORIES a,CRMUSER.CATEGORY_LANG b where CATEGORYTYPE ='CIFGROUP_TYPE' and a.categoryid=b.categoryid and a.bank_id='01') b on upper(trim(GROUP_TYPE)) = trim(LOCALETEXT)
where  trim(GROUP_NAME) is not null
) a;

commit;

INSERT INTO GROUP_MASTER_O_TABLE
SELECT 'GRP'||SEQ_CIF_GROUPS.nextval,A.* FROM(
select min(GROUP_NAME) GROUP_NAME,GROUP_TYPE,REPORTING_GROUP_ID from (
select  to_char(DESCR) GROUP_NAME,case when GRPTYPE='C' then '001' when GRPTYPE='P' then '005' end GROUP_TYPE , to_char(GRPID) REPORTING_GROUP_ID  from crgh
union
SELECT DISTINCT to_char(TAGRD),'001',to_char(TRIM(HHGRP)) FROM HHPF_BANK_GRP HH
       INNER JOIN HPPF_BANK_GRP HP
          ON TRIM(HHGRP) = TRIM(HPGRP) AND TRIM(HPLSTR)='BANKL'
          LEFT JOIN TAPF ON TRIM(HHGRP) = TRIM(TAGRP)
) group by  GROUP_TYPE,REPORTING_GROUP_ID
) A;

COMMIT;

--INSERT INTO GROUP_MASTER_O_TABLE
--select  GRPID ,DESCR GROUP_NAME,case when GRPTYPE='C' then '002' when GRPTYPE='P' then '001' end GROUP_TYPE , GRPID REPORTING_GROUP_ID  from crgh;

--INSERT INTO GROUP_MASTER_O_TABLE
--SELECT 'GRP'||SEQ_CIF_GROUPS.nextval,A.* FROM (
--SELECT DISTINCT TAGRD,'001',TRIM(HHGRP) FROM HHPF_BANK_GRP HH
       --INNER JOIN HPPF_BANK_GRP HP
          --ON TRIM(HHGRP) = TRIM(HPGRP) AND TRIM(HPLSTR)='BANKL'
          --LEFT JOIN TAPF ON TRIM(HHGRP) = TRIM(TAGRP)
--) A;

COMMIT;

update GROUP_MASTER_O_TABLE set GROUP_TYPE='002' where trim(GROUP_TYPE) is null;

commit;

update CIF_GROUPS_DATA set ENTITY_ID='',GROUP_ID='';
commit;

UPDATE CIF_GROUPS_DATA A SET ENTITY_ID = (SELECT CASE WHEN MIN(B.GROUP_ID) LIKE 'GRP%' THEN 'GRP'||min(TO_NUMBER(SUBSTR(B.GROUP_ID,4))) ELSE MAX(B.GROUP_ID)  END
  FROM GROUP_MASTER_O_TABLE B WHERE TRIM(A.ENTITY_NAME) = TRIM(B.GROUP_NAME)  GROUP BY B.GROUP_NAME );
  
UPDATE CIF_GROUPS_DATA A SET GROUP_ID = (SELECT CASE WHEN max(B.GROUP_ID) LIKE 'GRP%' THEN 'GRP'||max(TO_NUMBER(SUBSTR(B.GROUP_ID,4))) ELSE MIN(B.GROUP_ID)  END 
FROM GROUP_MASTER_O_TABLE B WHERE TRIM(A.GROUP_NAME) = TRIM(B.GROUP_NAME) GROUP BY B.GROUP_NAME );

COMMIT;



drop table custom_group_code;
create table custom_group_code as 
SELECT GROUP_ID,
       GROUP_NAME,
       REPORTING_GROUP_ID GROUP_DESC,
       GROUP_TYPE,
       ' ' PRIMARY_SOL_ID,
       ' ' RM_ID
  FROM GROUP_MASTER_O_TABLE;
exit;
 
