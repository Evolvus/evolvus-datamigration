  --Corporate E-Banking User
TRUNCATE TABLE CORP_E_BANKING_USER_O_TABLE;
INSERT INTO CORP_E_BANKING_USER_O_TABLE 
 SELECT distinct ' ' REC_NUM,
       CU.CIF_ID CUST_ID,
       '1' USER_TYPE,
       SUBSTR(CU.USER_ID ,1,32) CORP_USER,
       CASE WHEN LENGTH(REPLACE(CU.SALUTATION,'','.'))=1 THEN CONVERT_CODES('ALPHABET','Y') ELSE TO_CHAR(CU.SALUTATION) END SALUTATION,
       CASE WHEN LENGTH(REPLACE(CU.CORPORATE_USER_LAST_NAME,'','.'))=1 THEN CONVERT_CODES('ALPHABET','Y') ELSE TO_CHAR(CU.CORPORATE_USER_LAST_NAME) END C_L_NAME,
       CASE WHEN LENGTH(REPLACE(NVL(CU.CORPORATE_USER_MIDDLE_NAME,' '),'','.'))=1 THEN CONVERT_CODES('ALPHABET','Y') ELSE TO_CHAR(CU.CORPORATE_USER_MIDDLE_NAME) END C_M_NAME,
       CASE WHEN LENGTH(REPLACE(CU.CORPORATE_USER_FIRST_NAME,'','.'))=1 THEN CONVERT_CODES('ALPHABET','Y') ELSE TO_CHAR(CU.CORPORATE_USER_FIRST_NAME) END C_F_NAME,
       CU.EMAILID C_EMAIL_ID,
       REPLACE(NVL(TRIM(A.ADDRESS_LINE1),CONVERT_CODES('ALPHABET','Y')),'"','') C_ADDR1,
       REPLACE(CASE WHEN LENGTH(REPLACE(A.ADDRESS_LINE2,'','.'))=1 THEN N'' ELSE TRIM(A.ADDRESS_LINE2)END,'"','')  C_ADDR2,
       REPLACE(CASE WHEN LENGTH(REPLACE(NVL(A.ADDRESS_LINE3,' '),'','.'))=1 THEN N'' ELSE TRIM(A.ADDRESS_LINE3)END,'"','') C_ADDR3,
       '0000000' C_CITY,
       '' C_STATE,
       'KW' C_CNTRY,
       '' C_ZIP,
       A.PHONE C_PHONE_NO,
       '' C_M_PHONE_NO,
       '' C_FAX_NO,
       '' PRIM_ACID,
       '' P_BRANCH_ID,
       CASE WHEN upper(cu.GENDER) like 'M%' then 'M'
            WHEN upper(cu.GENDER) like 'F%' then 'F'
            WHEN upper(cu.GENDER) like 'O%' then 'O'  END C_GENDER,
       A.CUST_dob DATE_OF_BIRTH,
       '' MARITAL_STATUS,
       to_date('01-JAN-1900','dd-MON-yyyy') ANNIVERSARY_DATE,
       '' OCCUPATION,
       '' PASSPORT_NUMBER,
       '' PASSPORT_ISSUE_DATE,
       '' PASSPORT_DETAILS,
       '' PASSPORT_EXPIRY_DATE,
       A.NAT_ID_CARD_NUM PAN_NATIONAL_ID,
       TRIM(CU.CORP_NAME) PRINCIPAL_ID,
       TRIM(CU.CORP_ID) BAY_USER_ID,
       '001' LANG_ID,
       'N' SMS_ENABLED,
       TRIM(MOBILENO) SMS_MOBILE_NO,
       CASE WHEN UPPER(TRIM(MASTER_CIF))='YES' THEN 'Y' ELSE 'N' END IS_MASTER_CIF,
       SERVICE_PROVIDER
  FROM CORP_EBANKING_USER CU
       INNER JOIN map_cif M ON M.fin_cif_id = TRIM(CU.CIF_ID) AND IS_JOINT <>'Y'
       INNER JOIN CRMUSER.ACCOUNTS A ON A.ORGKEY = M.fin_cif_id
 WHERE individual = 'N' AND a.bank_id = get_param ('BANK_ID') 
 --AND CU.CIF_ID NOT IN (SELECT CUST_ID FROM SMS_AND_E_BANKING_USER_O_TABLE)-- and NOT REGEXP_LIKE(O.USERID, UNISTR('[\0600-\06FF]'))
 ;
 commit;
 
 
 DELETE FROM CORP_E_BANKING_USER_O_TABLE WHERE ROWID IN (SELECT ROWID ROW_ID FROM SMS_AND_E_BANKING_USER_O_TABLE WHERE REGEXP_LIKE(CORP_USER, UNISTR('[\0600-\06FF]')));
--update SMS_AND_E_BANKING_USER_O_TABLE set CORP_USER='SMS'||REC_NUM,PRINCIPAL_ID='SMS'||REC_NUM,BAY_USER_ID='SMS'||REC_NUM where trim(CORP_USER) is null;
COMMIT;
--delete from CORP_E_BANKING_USER_O_TABLE where rowid not in(select max(rowid) from CORP_E_BANKING_USER_O_TABLE group by CUST_ID);
--commit;
DROP SEQUENCE  E_BANKING_REC_SEQ; 
CREATE SEQUENCE E_BANKING_REC_SEQ;
UPDATE CORP_E_BANKING_USER_O_TABLE SET REC_NUM= LPAD((SELECT MAX(TO_NUMBER(REC_NUM)) FROM SMS_AND_E_BANKING_USER_O_TABLE)+ROWNUM,5,'0');

COMMIT;

update CORP_EBANKING_USER_retail set CORP_ID = replace(trim(CORP_ID),'.','-'),USER_ID = replace(trim(USER_ID),'.','-');
commit;

TRUNCATE TABLE CORP_E_BANKING_USER1_O_TABLE;
INSERT INTO CORP_E_BANKING_USER1_O_TABLE 
 SELECT distinct ' ' REC_NUM,
       CU.CIF_ID CUST_ID,
       '1' USER_TYPE,
       SUBSTR(CU.USER_ID ,1,32) CORP_USER,
       CASE WHEN LENGTH(REPLACE(CU.SALUTATION,'','.'))=1 THEN CONVERT_CODES('ALPHABET','Y') ELSE TO_CHAR(CU.SALUTATION) END SALUTATION,
       CASE WHEN LENGTH(REPLACE(CU.CORPORATE_USER_LAST_NAME,'','.'))=1 THEN CONVERT_CODES('ALPHABET','Y') ELSE TO_CHAR(CU.CORPORATE_USER_LAST_NAME) END C_L_NAME,
       CASE WHEN LENGTH(REPLACE(NVL(CU.CORPORATE_USER_MIDDLE_NAME,' '),'','.'))=1 THEN CONVERT_CODES('ALPHABET','Y') ELSE TO_CHAR(CU.CORPORATE_USER_MIDDLE_NAME) END C_M_NAME,
       CASE WHEN LENGTH(REPLACE(CU.CORPORATE_USER_FIRST_NAME,'','.'))=1 THEN CONVERT_CODES('ALPHABET','Y') ELSE TO_CHAR(CU.CORPORATE_USER_FIRST_NAME) END C_F_NAME,
       CU.EMAILID C_EMAIL_ID,
       REPLACE(NVL(TRIM(A.ADDRESS_LINE1),CONVERT_CODES('ALPHABET','Y')),'"','') C_ADDR1,
       REPLACE(CASE WHEN LENGTH(REPLACE(A.ADDRESS_LINE2,'','.'))=1 THEN N'' ELSE TRIM(A.ADDRESS_LINE2)END,'"','')  C_ADDR2,
       REPLACE(CASE WHEN LENGTH(REPLACE(NVL(A.ADDRESS_LINE3,' '),'','.'))=1 THEN N'' ELSE TRIM(A.ADDRESS_LINE3)END,'"','') C_ADDR3,
       '0000000' C_CITY,
       '' C_STATE,
       'KW' C_CNTRY,
       '' C_ZIP,
       A.PHONE C_PHONE_NO,
       '' C_M_PHONE_NO,
       '' C_FAX_NO,
       '' PRIM_ACID,
       '' P_BRANCH_ID,
       CASE WHEN upper(cu.GENDER) like 'M%' then 'M'
            WHEN upper(cu.GENDER) like 'F%' then 'F'
            WHEN upper(cu.GENDER) like 'O%' then 'O'  END C_GENDER,
       A.CUST_dob DATE_OF_BIRTH,
       '' MARITAL_STATUS,
       to_date('01-JAN-1900','dd-MON-yyyy') ANNIVERSARY_DATE,
       '' OCCUPATION,
       '' PASSPORT_NUMBER,
       '' PASSPORT_ISSUE_DATE,
       '' PASSPORT_DETAILS,
       '' PASSPORT_EXPIRY_DATE,
       A.NAT_ID_CARD_NUM PAN_NATIONAL_ID,
       TRIM(CU.CORP_NAME) PRINCIPAL_ID,
       TRIM(CU.CORP_ID) BAY_USER_ID,
       '001' LANG_ID,
       'N' SMS_ENABLED,
       TRIM(MOBILENO) SMS_MOBILE_NO,
       CASE WHEN UPPER(TRIM(MASTER_CIF))='YES' THEN 'Y' ELSE 'N' END IS_MASTER_CIF,
       SERVICE_PROVIDER
  FROM CORP_EBANKING_USER_retail CU
       INNER JOIN map_cif M ON M.fin_cif_id = TRIM(CU.CIF_ID) AND IS_JOINT <>'Y'
       INNER JOIN CRMUSER.ACCOUNTS A ON A.ORGKEY = M.fin_cif_id
 WHERE individual = 'N' AND a.bank_id = get_param ('BANK_ID') 
 --AND CU.CIF_ID NOT IN (SELECT CUST_ID FROM SMS_AND_E_BANKING_USER_O_TABLE)-- and NOT REGEXP_LIKE(O.USERID, UNISTR('[\0600-\06FF]'))
 ;
 commit;
 
 
 DELETE FROM CORP_E_BANKING_USER1_O_TABLE WHERE ROWID IN (SELECT ROWID ROW_ID FROM SMS_AND_E_BANKING_USER_O_TABLE WHERE REGEXP_LIKE(CORP_USER, UNISTR('[\0600-\06FF]')));
--update SMS_AND_E_BANKING_USER_O_TABLE set CORP_USER='SMS'||REC_NUM,PRINCIPAL_ID='SMS'||REC_NUM,BAY_USER_ID='SMS'||REC_NUM where trim(CORP_USER) is null;
COMMIT;
--delete from CORP_E_BANKING_USER_O_TABLE where rowid not in(select max(rowid) from CORP_E_BANKING_USER_O_TABLE group by CUST_ID);
--commit;
UPDATE CORP_E_BANKING_USER1_O_TABLE SET REC_NUM= LPAD((SELECT MAX(TO_NUMBER(REC_NUM)) FROM SMS_AND_E_BANKING_USER_O_TABLE)+ROWNUM,5,'0');

COMMIT;

EXIT;


--  drop table corp_user_map ;

--    create table corp_user_map as    select user_id,'USER_ID_'||dense_rank() over(order by user_id)  user_id_new,CORP_ID,CORP_NAME,'CORP_ID_'||dense_rank() over(order by CORP_ID) CORP_ID_new ,'CORP_NAME_'||dense_rank() over(order by CORP_NAME) CORP_NAME_new from CORP_EBANKING_USER
  
--update CORP_EBANKING_USER a set CORP_ID = (select CORP_ID_NEW from (select distinct CORP_ID,CORP_ID_NEW from corp_user_map) b where trim(A.CORP_ID) = trim(B.CORP_ID));
  
--update CORP_EBANKING_USER a set USER_ID = (select USER_ID_NEW from (select distinct USER_ID,USER_ID_NEW from corp_user_map) b where trim(A.USER_ID) = trim(B.USER_ID));
  
--  update CORP_EBANKING_USER a set CORP_NAME = (select CORP_NAME_NEW from (select distinct CORP_NAME,CORP_NAME_NEW from corp_user_map) b where trim(A.CORP_NAME) = trim(B.CORP_NAME));
  
--  UPDATE E_BANKING_USER_ACCOUNT_ACCESS A SET CORPORATE_ID  = (select CORP_ID_NEW from (select distinct CORP_ID,CORP_ID_NEW from corp_user_map) b where trim(A.CORPORATE_ID) = trim(B.CORP_ID));
  
--  update E_BANKING_USER_ACCOUNT_ACCESS a set CORPORATE_USER_ID = (select USER_ID_NEW from (select distinct USER_ID,USER_ID_NEW from corp_user_map) b where trim(A.CORPORATE_USER_ID) = trim(B.USER_ID));


 