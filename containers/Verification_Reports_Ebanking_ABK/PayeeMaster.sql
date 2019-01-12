========================================================================================================================================================================================== 
****************************************************************************************************************************************************************************************** 
PayeeMaster.sql 
select 
       NVL(TRIM(IP.CUSTOMER_NO),CONVERT_CODES('ALPHABET','Y')) LEG_CUSTOMER_NO ,FIN_PM.CORP_ID FIN_CORP_ID,CASE WHEN TRIM(IP.CUSTOMER_NO)= FIN_PM.CORP_ID THEN 'TRUE' ELSE 'FALSE' END MATCH_CUSTOMER_NO,
       NVL(TRIM(IP.PAYEE_NAME),CONVERT_CODES('ALPHABET','Y')) LEG_PAYEE_NAME,FIN_PM.BNF_NAME FIN_BNF_NAME,FIN_PM.CORP_ID FIN_CORP_ID,CASE WHEN TRIM(IP.PAYEE_NAME)= FIN_PM.BNF_NAME THEN 'TRUE' ELSE 'FALSE' END MATCH_PAYEE_NAME,
       IP.PAYEE_ADDRESS1 LEG_PAYEE_ADDRESS1,FIN_PM.BNF_ADDRESS_1 FIN_BNF_ADDRESS_1,CASE WHEN TRIM(IP.PAYEE_ADDRESS1)= FIN_PM.BNF_ADDRESS_1 THEN 'TRUE' ELSE 'FALSE' END MATCH_PAYEE_ADDRESS1,
       IP.PAYEE_ADDRESS2 LEG_PAYEE_ADDRESS2,FIN_PM.BNF_ADDRESS_2 FIN_BNF_ADDRESS_2,CASE WHEN TRIM(IP.PAYEE_ADDRESS2)= FIN_PM.BNF_ADDRESS_2 THEN 'TRUE' ELSE 'FALSE' END MATCH_PAYEE_ADDRESS2,
       SUBSTR(IP.PAYEE_COUNTRY_CODE,1,5) LEG_PAYEE_COUNTRY_CODE,FIN_PM.BNF_CNTRY FIN_BNF_CNTRY,CASE WHEN SUBSTR(IP.PAYEE_COUNTRY_CODE,1,5)= FIN_PM.BNF_CNTRY THEN 'TRUE' ELSE 'FALSE' END MATCH_PAYEE_COUNTRY_CODE,
       TRIM(IP.CONTACT_PHONENO) LEG_CONTACT_PHONENO,FIN_PM.BNF_MOB FIN_BNF_MOB,CASE WHEN TRIM(IP.CONTACT_PHONENO)= FIN_PM.BNF_MOB THEN 'TRUE' ELSE 'FALSE' END MATCH_PAYEE_COUNTRY_CODE,
    --   NVL(BM.BANK_REF_NO ,CONVERT_CODES('DIGIT','Y')) LEG_BANK_REF_NO,FIN_PM.OTH_BANK_REF_NO FIN_OTH_BANK_REF_NO,
       BD.INSTITUTION_NAME LEG_INSTITUTION_NAME,FIN_PM.BNF_BANK_NAME FIN_BNF_BANK_NAME,--NVL(TRIM(BD.INSTITUTION_NAME),CONVERT_CODES('ALPHABET','Y'))
       TRIM(BD.ADDRESS) LEG_ADDRESS,FIN_PM.BNF_BANK_ADDRESS FIN_BNF_BANK_ADDRESS,--NVL(TRIM(BD.ADDRESS),CONVERT_CODES('ALPHABET','Y'))
       IP.PAYEE_ACCOUNT LEG_PAYEE_ACCOUNT ,FIN_PM.HOME_BANK_BRANCH_CODE,--CASE WHEN IP.PAYEE_TYPE='Same' THEN TO_CHAR(SUBSTR(IP.PAYEE_ACCOUNT,2,3)) ELSE CONVERT_CODES('DIGIT','Y') END
       BD.COUNTRY_CODE LEG_COUNTRY_CODE,FIN_PM.BNF_BANK_COUNTRY FIN_BNF_BANK_COUNTRY,--NVL(BD.COUNTRY_CODE,SUBSTR(CONVERT_CODES('ALPHABET','Y'),1,5))
       TRIM(IP.PAYEE_ACCOUNT) LEG_PAYEE_ACCOUNT,FIN_PM.ACCOUNT_ID FIN_ACCOUNT_ID,CASE WHEN TRIM(IP.PAYEE_ACCOUNT) = FIN_PM.ACCOUNT_ID THEN 'TRUE' ELSE 'FALSE' END MATCH_PAYEE_ACCOUNT,
       IP.PAYEE_TRAN_CURRENCY LEG_PAYEE_TRAN_CURRENCY,FIN_PM.BNF_ACCT_CRN FIN_BNF_ACCT_CRN,CASE WHEN TRIM(IP.PAYEE_TRAN_CURRENCY)= FIN_PM.BNF_ACCT_CRN THEN 'TRUE' ELSE 'FALSE' END MATCH_PAYEE_TRAN_CURRENCY,
       BD.CITY_ZIPCODE LEG_CITY_ZIPCODE,FIN_PM.BNF_BANK_CITY_ZIP FIN_BNF_BANK_CITY_ZIP,--NVL(BD.CITY_ZIPCODE,CONVERT_CODES('ALPHANUMERIC','Y'))
       IP.PAYEE_TYPE LEG_PAYEE_TYPE,BR.NETWORK_TYPE LEG_NETWORK_TYPE,FIN_PM.NETWORK_ID FIN_NETWORK_ID,--CASE WHEN TRIM(IP.PAYEE_TYPE)='Same' THEN 'HBK' ELSE  'OBK' END BANK_TYPE,NVL(BR.NETWORK_TYPE,CONVERT_CODES('ALPHANUMERIC','Y'))
       CB.SWIFT_CODE LEG_SWIFT_CODE,FIN_PM.BANK_IDENTIFIER FIN_BANK_IDENTIFIER--CASE WHEN TRIM(CB.SWIFT_CODE) IS NULL THEN CONVERT_CODES('ALPHANUMERIC','Y') ELSE TO_CHAR(TRIM(CB.SWIFT_CODE)||'XXX') END
 from 
(SELECT  IP.* FROM INTERNET_PAYEE IP INNER JOIN( SELECT CUSTOMER_NO,TRIM(PAYEE_ACCOUNT) PAYEE_ACCOUNT,max(to_date(substr(DATE_AUTHORISED,1,19),
 'YYYY-MM-DD HH24:MI:SS')) MAX_DATE_AUTHORISED FROM 
 INTERNET_PAYEE where status='A' and IS_DELETED='0' GROUP BY CUSTOMER_NO,TRIM(PAYEE_ACCOUNT)) IP1 ON IP.CUSTOMER_NO=IP1.CUSTOMER_NO AND TRIM(IP.PAYEE_ACCOUNT)=TRIM(IP1.PAYEE_ACCOUNT)
 AND to_date(substr(IP.DATE_AUTHORISED,1,19),'YYYY-MM-DD HH24:MI:SS')  = IP1.MAX_DATE_AUTHORISED) IP
  LEFT JOIN ( SELECT * FROM CORRESPONDENT_BANK WHERE ROWID IN (
  SELECT MAX(ROWID) FROM CORRESPONDENT_BANK GROUP BY UPPER(NAME)
  )) CB ON UPPER(IP.PAYEE_BANK) = UPPER(CB.NAME) AND UPPER(IP.PAYEE_BRANCH) = UPPER(CB.CITY)
  LEFT JOIN (SELECT * FROM BANK_ROUTING_TABLE WHERE ROWID IN(SELECT MAX(ROWID) FROM BANK_ROUTING_TABLE GROUP BY ROUTING_NO )) BR ON  BR.ROUTING_NO = TRIM(CB.SWIFT_CODE)||'XXX'
  LEFT JOIN BANK_DETAILS BD ON  BD.BANK_REF_NO = BR.BANK_REF_NO
  LEFT JOIN BANK_MASTER_TABLE BM ON BM.HOST_BRANCH_CODE = (CASE WHEN IP.PAYEE_TYPE='Same' THEN SUBSTR(TRIM(IP.PAYEE_ACCOUNT),2,3) ELSE N'' END)
  LEFT JOIN ECECUSER.PAYEE_MASTER@EBUAT_DBLINK FIN_PM ON TRIM(FIN_PM.CORP_ID) = trim(IP.CUSTOMER_NO)
   and FIN_PM.BNF_NAME = trim(IP.PAYEE_NAME) 
   and TRIM(FIN_PM.ACCOUNT_ID) = SUBSTR(trim(REPLACE(REPLACE(IP.PAYEE_ACCOUNT,'-',''),' ','')),1,34) and  FIN_PM.DB_TS='1' AND FIN_PM.BANK_ID='01'
  WHERE  IP.STATUS = 'A' AND IP.IS_DELETED ='0'
  
  

  select 
  b.CORP_ID LEG_CIF_ID,NVL(c.cust_id,c.USER_ID) FIN_CIF_ID,case when NVL(b.CORP_ID,' ')=NVL(c.cust_id,' ') then 'TRUE' ELSE 'FALSE' END MATCH_CIF_ID,
  b.USER_ID LEG_USER_ID,c.USER_ID FIN_USER_ID,case when upper(NVL(TRIM(b.USER_ID),' '))=upper(NVL(TRIM(c.USER_ID),' ')) then 'TRUE' ELSE 'FALSE' END MATCH_USER_ID,
  a.BNF_NAME LEG_BENEFICIARY_NAME,c.BNF_NAME FIN_BENEFICIARY_NAME,case when NVL(a.BNF_NAME,' ')=NVL(c.BNF_NAME,' ') then 'TRUE' ELSE 'FALSE' END MATCH_BENEFICIARY_NAME,
  a.BNF_ADDRESS_1 LEG_ADDRESS1,c.BNF_ADDRESS_1 FIN_ADDRESS1,case when NVL(a.BNF_ADDRESS_1,' ')=NVL(c.BNF_ADDRESS_1,' ') then 'TRUE' ELSE 'FALSE' END MATCH_ADRESS1,
  a.BNF_ADDRESS_2 LEG_ADDRESS2,c.BNF_ADDRESS_2 FIN_ADDRESS2,case when NVL(a.BNF_ADDRESS_2,' ')=NVL(c.BNF_ADDRESS_2,' ') then 'TRUE' ELSE 'FALSE' END MATCH_ADRESS2,
  a.BNF_ADDRESS_3 LEG_ADDRESS3,c.BNF_ADDRESS_3 FIN_ADDRESS3,case when NVL(a.BNF_ADDRESS_3,' ')=NVL(c.BNF_ADDRESS_3,' ') then 'TRUE' ELSE 'FALSE' END MATCH_ADRESS3,
  a.BNF_CNTRY LEG_BENEFICIARY_COUNTRY,c.BNF_CNTRY FIN_BENEFICIARY_COUNTRY,case when NVL(a.BNF_CNTRY,' ')=NVL(c.BNF_CNTRY,' ') then 'TRUE' ELSE 'FALSE' END MATCH_BENEFICIARY_COUNTRY,
  a.BNF_MOB LEG_MOBILE_NUM,c.BNF_MOB FIN_MOBILE_NUM,case when NVL(a.BNF_MOB,' ')=NVL(c.BNF_MOB,' ') then 'TRUE' ELSE 'FALSE' END MATCH_MOBILE_NUM,
  a.BNF_BANK_NAME LEG_BEN_BANK_NAME,c.BNF_BANK_NAME FIN_BEN_BANK_NAME,case when NVL(a.BNF_BANK_NAME,' ')=NVL(c.BNF_BANK_NAME,' ') then 'TRUE' ELSE 'FALSE' END MATCH_BEN_BANK_NAME,
  a.ACCOUNT_ID LEG_BEN_ACCOUNT_NUM,c.ACCOUNT_ID FIN_BEN_ACCOUNT_NUM,case when UPPER(NVL(TRIM(a.ACCOUNT_ID),' '))=UPPER(NVL(TRIM(c.ACCOUNT_ID),' ')) then 'TRUE' ELSE 'FALSE' END MATCH_BEN_ACCOUNT_NUM,
  a.BNF_ACCT_CRN LEG_BEN_ACCOUNT_CURRENCY,c.BNF_ACCT_CRN FIN_BEN_ACCOUNT_CURRENCY,case when NVL(a.BNF_ACCT_CRN,' ')=NVL(c.BNF_ACCT_CRN,' ') then 'TRUE' ELSE 'FALSE' END MATCH_BEN_ACCOUNT_CURRENCY,
  a.BANK_IDENTIFIER LEG_BIC_CODE,c.BANK_IDENTIFIER FIN_BIC_CODE,case when NVL(a.BANK_IDENTIFIER,' ')=NVL(c.BANK_IDENTIFIER,' ') then 'TRUE' ELSE 'FALSE' END MATCH_BIC_CODE,
  CASE WHEN a.NETWORK_ID = 'WIB' THEN 'Same' when a.NETWORK_ID='KASIP' then 'Local Bank' when a.NETWORK_ID='SWI' then 'International' end LEG_PAYEE_TYPE,
  a.NETWORK_ID CONV_PAYEE_TYPE ,c.NETWORK_ID FIN_PAYEE_TYPE,case when NVL(a.NETWORK_ID,' ')=NVL(c.NETWORK_ID,' ') then 'TRUE' ELSE 'FALSE' END MATCH_PAYEE_TYPE
   from PAYEE_MASTER_O_TABLE a
  left join CUSTOMER_PAYEE_O_TABLE b on a.BNF_ID = b.BNF_ID
  left join (
  select a.*,b.USER_ID,c.cust_id from ECECUSER.PAYEE_MASTER@dbread_user a
  left join ECECUSER.CUSTOMER_PAYEE@dbread_user b on a. BNF_ID = b.BNF_ID 
  left join  ececuser.cusr@dbread_user c on  trim(c.USER_ID) = TRIM(a.corp_id) and c.bank_id='01'
  where a.bank_id='01' and b.bank_id='01'
  ) c on c.FREE_FIELD_1 = a.BNF_ID 
  
  
  
  
  -----------------------KRIS-------------------------------
  
  
  select distinct 
  b.CORP_ID LEG_CIF_ID,NVL(c.cust_id,c.USER_ID) FIN_CIF_ID,case when NVL(b.CORP_ID,' ')=NVL(c.cust_id,' ') then 'TRUE' ELSE 'FALSE' END MATCH_CIF_ID,
  b.USER_ID LEG_USER_ID,c.USER_ID FIN_USER_ID,case when upper(NVL(TRIM(b.USER_ID),' '))=upper(NVL(TRIM(c.USER_ID),' ')) then 'TRUE' ELSE 'FALSE' END MATCH_USER_ID,
  a.BNF_NAME LEG_BENEFICIARY_NAME,c.BNF_NAME FIN_BENEFICIARY_NAME,case when NVL(a.BNF_NAME,' ')=NVL(c.BNF_NAME,' ') then 'TRUE' ELSE 'FALSE' END MATCH_BENEFICIARY_NAME,
  a.BNF_ADDRESS_1 LEG_ADDRESS1,c.BNF_ADDRESS_1 FIN_ADDRESS1,case when NVL(a.BNF_ADDRESS_1,' ')=NVL(c.BNF_ADDRESS_1,' ') then 'TRUE' ELSE 'FALSE' END MATCH_ADRESS1,
  a.BNF_ADDRESS_2 LEG_ADDRESS2,c.BNF_ADDRESS_2 FIN_ADDRESS2,case when NVL(a.BNF_ADDRESS_2,' ')=NVL(c.BNF_ADDRESS_2,' ') then 'TRUE' ELSE 'FALSE' END MATCH_ADRESS2,
  a.BNF_ADDRESS_3 LEG_ADDRESS3,c.BNF_ADDRESS_3 FIN_ADDRESS3,case when NVL(a.BNF_ADDRESS_3,' ')=NVL(c.BNF_ADDRESS_3,' ') then 'TRUE' ELSE 'FALSE' END MATCH_ADRESS3,
  a.BNF_CNTRY LEG_BENEFICIARY_COUNTRY,c.BNF_CNTRY FIN_BENEFICIARY_COUNTRY,case when NVL(a.BNF_CNTRY,' ')=NVL(c.BNF_CNTRY,' ') then 'TRUE' ELSE 'FALSE' END MATCH_BENEFICIARY_COUNTRY,
  a.BNF_MOB LEG_MOBILE_NUM,c.BNF_MOB FIN_MOBILE_NUM,case when NVL(a.BNF_MOB,' ')=NVL(c.BNF_MOB,' ') then 'TRUE' ELSE 'FALSE' END MATCH_MOBILE_NUM,
  a.BNF_BANK_NAME LEG_BEN_BANK_NAME,c.BNF_BANK_NAME FIN_BEN_BANK_NAME,case when NVL(a.BNF_BANK_NAME,' ')=NVL(c.BNF_BANK_NAME,' ') then 'TRUE' ELSE 'FALSE' END MATCH_BEN_BANK_NAME,
  a.ACCOUNT_ID LEG_BEN_ACCOUNT_NUM,c.ACCOUNT_ID FIN_BEN_ACCOUNT_NUM,case when UPPER(NVL(TRIM(a.ACCOUNT_ID),' '))=UPPER(NVL(TRIM(c.ACCOUNT_ID),' ')) then 'TRUE' ELSE 'FALSE' END MATCH_BEN_ACCOUNT_NUM,
  a.BNF_ACCT_CRN LEG_BEN_ACCOUNT_,c.BNF_ACCT_CRN FIN_BEN_ACCOUNT_CURRENCY,case when NVL(a.BNF_ACCT_CRN,' ')=NVL(c.BNF_ACCT_CRN,' ') then 'TRUE' ELSE 'FALSE' END MATCH_BEN_ACCOUNT_CURRENCY,
  a.BANK_IDENTIFIER LEG_BIC_CODE,c.BANK_IDENTIFIER FIN_BIC_CODE,case when NVL(a.BANK_IDENTIFIER,' ')=NVL(c.BANK_IDENTIFIER,' ') then 'TRUE' ELSE 'FALSE' END MATCH_BIC_CODE,
  CASE WHEN a.NETWORK_ID = 'WIB' THEN 'Same' when a.NETWORK_ID='KASIP' then 'Local Bank' when a.NETWORK_ID='SWI' then 'International' end LEG_PAYEE_TYPE,
  a.NETWORK_ID CONV_PAYEE_TYPE ,c.NETWORK_ID FIN_PAYEE_TYPE,case when NVL(a.NETWORK_ID,' ')=NVL(c.NETWORK_ID,' ') then 'TRUE' ELSE 'FALSE' END MATCH_PAYEE_TYPE
   from PAYEE_MASTER_O_TABLE a
  left join CUSTOMER_PAYEE_O_TABLE b on a.BNF_ID = b.BNF_ID
  left join (select a.*,b.USER_ID,c.cust_id from ececuser.cusr@dbread_user c
  left join ECECUSER.CUSTOMER_PAYEE@dbread_user b on c.USER_ID=b.USER_ID
  left join ECECUSER.PAYEE_MASTER@dbread_user a on a.corp_id=b.corp_id)c on c.FREE_FIELD_1 = a.BNF_ID 
   