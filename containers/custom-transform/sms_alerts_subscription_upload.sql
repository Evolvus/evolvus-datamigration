TRUNCATE TABLE SMS_ALERTS_SUB_O_TABLE;
insert into  SMS_ALERTS_SUB_O_TABLE
SELECT '1' DB_TS,
       '01' BANK_ID,
       ALERT_ID,
       MC.FIN_CIF_ID CORP_ID,
       MC.FIN_CIF_ID CUST_ID,
       MA.FIN_ACC_NUM ALRT_ACCT_ID,
       MC.FIN_CIF_ID RELATED_PARTY_ID,
       'GLOBAL' HOST_ID,
       '' ENTITY_ID,
       '' ALERT_FREQ,
       '' DATA_CENTER_CODE,
       case when individual = 'N' then 'CORPORATE' else 
        CASE WHEN CUST.CU01_SFLAG = 'P' THEN 'PAID' 
             WHEN CUST.CU01_SFLAG = 'L' THEN 'LIMITED' 
             WHEN CUST.CU01_SFLAG = 'E' THEN 'EXEMPT' END 
       end USER_CATEGORY_NAME,--CORPORATE
       'X' CHANNEL1,
       'X' CHANNEL2,
       'X' CHANNEL3,
       'D' CHANNEL4,
       'X' CHANNEL5,
       'X' CHANNEL6,
       'X' CHANNEL7,
       'X' CHANNEL8,
       'X' CHANNEL9,
       'X' CHANNEL10,
       'X' CHANNEL11,
       'X' CHANNEL12,
       CASE WHEN individual = 'N' then '1' when CUST.CU01_SFLAG = 'P' THEN '1' WHEN CUST.CU01_SFLAG = 'L' THEN '40' WHEN CUST.CU01_SFLAG = 'E' THEN '1' END AMOUNT1,
       '0' AMOUNT2,
       '0' AMOUNT3,
       '0' AMOUNT4,
       '0' AMOUNT5,
       '' STRING1,
       MA.FIN_ACC_NUM STRING2,
       '' STRING3,
       '' STRING4,
       '' STRING5,
       '' DATE1,
       '' DATE2,
       '' DATE3,
       '' DATE4,
       '' DATE5,
       '0' NUMBER1,
       '0' NUMBER2,
       '0' NUMBER3,
       '0' NUMBER4,
       '0' NUMBER5,
       '' FREE_TEXT_1,
       '' FREE_TEXT_2,
       '' FREE_TEXT_3,
       'Y' ENTITY_CRE_FLG,
       'N' DEL_FLG,
       'MIGRATED' R_MOD_USER_ID,
     --  TO_CHAR (SYSDATE, 'DD-Mon-yyyy') R_MOD_TIME,
       '',
       'MIGRATED' R_CRE_USER_ID,
       --TO_CHAR (SYSDATE, 'DD-Mon-yyyy') R_CRE_TIME,
       '',
       '' MKCT_REV_REF,
       '' RELATED_PARTY_HOST_ID,
       'R' SUBSCRIPTION_TYPE,
       '0' FREQ_ID,
       '' FREQ_TYPE,
       '' ALERT_START_DATE,
       '' ALERT_END_DATE,
       '' NEXT_GEN_DATE,
       'S' SUBSCRIPTION_NATURE
FROM YSMSCUPF01 CUST
INNER JOIN 
(
SELECT S_CREDIT.*,'FIN_LG_AMT' ALERT_ID FROM YSMSACPF01 S_CREDIT
UNION ALL
SELECT S_DEBIT.*,'FIN_DG_AMT' ALERT_ID FROM YSMSACPF01 S_DEBIT
UNION ALL
SELECT S_DEBIT.*,'FEPACKALRT' ALERT_ID FROM YSMSACPF01 S_DEBIT
UNION ALL
SELECT S_DEBIT.*,'FIN_VS_UBK' ALERT_ID FROM YSMSACPF01 S_DEBIT
UNION ALL
SELECT S_DEBIT.*,'FIN_VS_BLK' ALERT_ID FROM YSMSACPF01 S_DEBIT
) ACT ON ACT.AC01_CLC=CUST.CU01_CLC and ACT.AC01_CUS=CUST.CU01_CUS
INNER JOIN map_cif MC ON MC.GFCLC =CUST.CU01_CLC and MC.GFCUS =CUST.CU01_CUS
INNER JOIN MAP_ACC MA ON MA.EXTERNAL_ACC = ACT.AC01_SEAN
--INNER JOIN TBAADM.GAM ON FORACID = FIN_ACC_NUM
WHERE --individual = 'Y' AND 
ACT.AC01_STS='A' AND MA.SCHM_TYPE <>'OOO';

COMMIT;

insert into  SMS_ALERTS_SUB_O_TABLE
SELECT '1' DB_TS,
       '01' BANK_ID,
       ALERT_ID,
       A.FIN_CIF_ID CORP_ID,
       A.FIN_CIF_ID CUST_ID,
       ALERT_ID ALRT_ACCT_ID,
       A.FIN_CIF_ID RELATED_PARTY_ID,
       'GLOBAL' HOST_ID,
       '' ENTITY_ID,
       '' ALERT_FREQ,
       '' DATA_CENTER_CODE,
       case when individual = 'N' then 'CORPORATE' else 
        CASE WHEN CUST.CU01_SFLAG = 'P' THEN 'PAID' 
             WHEN CUST.CU01_SFLAG = 'L' THEN 'LIMITED' 
             WHEN CUST.CU01_SFLAG = 'E' THEN 'EXEMPT' END 
       end USER_CATEGORY_NAME,--CORPORATE
       'X' CHANNEL1,
       'X' CHANNEL2,
       'X' CHANNEL3,
       'D' CHANNEL4,
       'X' CHANNEL5,
       'X' CHANNEL6,
       'X' CHANNEL7,
       'X' CHANNEL8,
       'X' CHANNEL9,
       'X' CHANNEL10,
       'X' CHANNEL11,
       'X' CHANNEL12,
       CASE WHEN CUST.CU01_SFLAG = 'P' THEN '1' WHEN CUST.CU01_SFLAG = 'L' THEN '40' WHEN CUST.CU01_SFLAG = 'E' THEN '1' END AMOUNT1,
       '0' AMOUNT2,
       '0' AMOUNT3,
       '0' AMOUNT4,
       '0' AMOUNT5,
       '' STRING1,
       '' STRING2,
       '' STRING3,
       '' STRING4,
       '' STRING5,
       '' DATE1,
       '' DATE2,
       '' DATE3,
       '' DATE4,
       '' DATE5,
       '0' NUMBER1,
       '0' NUMBER2,
       '0' NUMBER3,
       '0' NUMBER4,
       '0' NUMBER5,
       '' FREE_TEXT_1,
       '' FREE_TEXT_2,
       '' FREE_TEXT_3,
       'Y' ENTITY_CRE_FLG,
       'N' DEL_FLG,
       'MIGRATED' R_MOD_USER_ID,
     --  TO_CHAR (SYSDATE, 'DD-Mon-yyyy') R_MOD_TIME,
       '',
       'MIGRATED' R_CRE_USER_ID,
       --TO_CHAR (SYSDATE, 'DD-Mon-yyyy') R_CRE_TIME,
       '',
       '' MKCT_REV_REF,
       '' RELATED_PARTY_HOST_ID,
       'R' SUBSCRIPTION_TYPE,
       '0' FREQ_ID,
       '' FREQ_TYPE,
       '' ALERT_START_DATE,
       '' ALERT_END_DATE,
       '' NEXT_GEN_DATE,
       'S' SUBSCRIPTION_NATURE
FROM 
(
SELECT CUST_ID FIN_CIF_ID,'EBK_LG_PWD' ALERT_ID FROM SMS_ALERTS_REG_O_TABLE
UNION ALL
SELECT CUST_ID FIN_CIF_ID,'EBK_LMT_BL' ALERT_ID FROM SMS_ALERTS_REG_O_TABLE
UNION ALL
SELECT CUST_ID FIN_CIF_ID,'FIN_AC_OPN' ALERT_ID FROM SMS_ALERTS_REG_O_TABLE
UNION ALL
SELECT CUST_ID FIN_CIF_ID,'FIN_CD_UPD' ALERT_ID FROM SMS_ALERTS_REG_O_TABLE
UNION ALL
SELECT CUST_ID FIN_CIF_ID,'SMS_LANGUP' ALERT_ID FROM SMS_ALERTS_REG_O_TABLE
UNION ALL
SELECT CUST_ID FIN_CIF_ID,'SMS_SUB_DE' ALERT_ID FROM SMS_ALERTS_REG_O_TABLE
UNION ALL
SELECT CUST_ID FIN_CIF_ID,'FIN_BR_TXN' ALERT_ID FROM SMS_ALERTS_REG_O_TABLE
UNION ALL
SELECT CUST_ID FIN_CIF_ID,'FIN_LN_CRE' ALERT_ID FROM SMS_ALERTS_REG_O_TABLE
) A
INNER JOIN map_cif M ON A.FIN_CIF_ID = M.FIN_CIF_ID
INNER JOIN YSMSCUPF01 CUST ON GFCLC =CU01_CLC and GFCUS =CU01_CUS
;
COMMIT;

delete from SMS_ALERTS_REG_O_TABLE where CUST_ID not in(select CORP_ID from SMS_ALERTS_SUB_O_TABLE);

delete from SMS_ALERTS_SUB_O_TABLE where CORP_ID not in(select CUST_ID  from SMS_ALERTS_REG_O_TABLE);

COMMIT;
EXIT;
