


--SELECT SCACT,SCCCY,SUM(SCBAL/C8PWD) FROM SCPF 
--LEFT JOIN C8PF ON C8CCY = SCCCY
--WHERE SCACT IN('D1','F1','M1','M2','F2','R4','V2','V1','V4','V3','OS','S8','W7','S7','W8','W1','W2','W4','W3')
--AND SCBAL <>0 GROUP BY SCACT,SCCCY

--SELECT ACCOUNT_NUMBER,CURRENCY_CODE,PART_TRAN_TYPE,CASE WHEN PART_TRAN_TYPE='C' THEN '-1' ELSE '1' END*SUM(TRANSACTION_AMOUNT) TRANSACTION_AMOUNT FROM TTUM4_TRY1_O_TABLE WHERE REGEXP_LIKE(ACCOUNT_NUMBER ,'[A-Z]') GROUP BY ACCOUNT_NUMBER,CURRENCY_CODE,PART_TRAN_TYPE


--select PRODUCT_TYPE,a.INDICATOR,CCY,sum(FCY_AMOUNT) FCY_AMOUNT ,EQU_ACCT_TYPE,CONTINGENT_LIABILITY_BACID,CONTINGENT_ASSET_BACID from TREASURY_OPEN_DEALS a
--left join treasury_product_mapping b  on trim(a.PRODUCT_TYPE) = trim(b.DEPT_NAME) and trim(a.SUBTYPE) = trim(b.SUBTYPE) and trim(a.INDICATOR) = trim(b.INDICATOR)
--group by PRODUCT_TYPE,a.INDICATOR,CCY,EQU_ACCT_TYPE,CONTINGENT_LIABILITY_BACID,CONTINGENT_ASSET_BACID


TRUNCATE TABLE ttum_excel_TREASURY;

--MM AND FX DEAL

INSERT INTO ttum_excel_TREASURY
SELECT '005'||CRNCY_ALIAS_NUM||TOD.CONTINGENT_ASSET_BACID ACCOUNT,CCY,'005' SOL_ID,'D' INDICATOR,ABS(FCY_AMOUNT) AMOUNT,'TREASURY DEAL BAL - '||TRIM(DEAL_IDENTIFIER) PERTICULARS, DEAL_IDENTIFIER
FROM (select PRODUCT_TYPE,DEAL_IDENTIFIER,a.INDICATOR,CCY, FCY_AMOUNT ,EQU_ACCT_TYPE,CONTINGENT_ASSET_BACID from TREASURY_OPEN_DEALS a
left join treasury_product_mapping b  on trim(a.PRODUCT_TYPE) = trim(b.DEPT_NAME) and trim(a.SUBTYPE) = trim(b.SUBTYPE) and trim(a.INDICATOR) = trim(b.INDICATOR)
) TOD 
LEFT JOIN TBAADM.CNC C ON CRNCY_CODE=CCY  AND BANK_ID='01'
WHERE CONTINGENT_ASSET_BACID IS NOT NULL and (PRODUCT_TYPE not in('MM','ISLAMIC') or EQU_ACCT_TYPE  IN('R3','R4','R1'))
UNION ALL
SELECT '005'||CRNCY_ALIAS_NUM||TOD.CONTINGENT_ASSET_CONTRA_BACID ACCOUNT,CCY,'005' SOL_ID,'C' INDICATOR,ABS(FCY_AMOUNT) AMOUNT,'TREASURY DEAL BAL - '||TRIM(DEAL_IDENTIFIER) PERTICULARS, DEAL_IDENTIFIER
FROM (select PRODUCT_TYPE,DEAL_IDENTIFIER,a.INDICATOR,CCY, FCY_AMOUNT ,EQU_ACCT_TYPE,CONTINGENT_ASSET_CONTRA_BACID from TREASURY_OPEN_DEALS a
left join treasury_product_mapping b  on trim(a.PRODUCT_TYPE) = trim(b.DEPT_NAME) and trim(a.SUBTYPE) = trim(b.SUBTYPE) and trim(a.INDICATOR) = trim(b.INDICATOR)
) TOD 
LEFT JOIN TBAADM.CNC C ON CRNCY_CODE=CCY  AND BANK_ID='01'
WHERE CONTINGENT_ASSET_CONTRA_BACID IS NOT NULL and (PRODUCT_TYPE not in('MM','ISLAMIC') or EQU_ACCT_TYPE IN('R3','R4','R1'))
UNION ALL
SELECT '005'||CRNCY_ALIAS_NUM||TOD.CONTINGENT_LIABILITY_BACID ACCOUNT,CCY,'005' SOL_ID,'C' INDICATOR,ABS(FCY_AMOUNT) AMOUNT,'TREASURY DEAL BAL - '||TRIM(DEAL_IDENTIFIER) PERTICULARS, DEAL_IDENTIFIER
FROM (select PRODUCT_TYPE,DEAL_IDENTIFIER,a.INDICATOR,CCY, FCY_AMOUNT ,EQU_ACCT_TYPE,CONTINGENT_LIABILITY_BACID from TREASURY_OPEN_DEALS a
left join treasury_product_mapping b  on trim(a.PRODUCT_TYPE) = trim(b.DEPT_NAME) and trim(a.SUBTYPE) = trim(b.SUBTYPE) and trim(a.INDICATOR) = trim(b.INDICATOR)
) TOD 
LEFT JOIN TBAADM.CNC C ON CRNCY_CODE=CCY  AND BANK_ID='01'
WHERE CONTINGENT_LIABILITY_BACID IS NOT NULL and (PRODUCT_TYPE not in('MM','ISLAMIC') or EQU_ACCT_TYPE IN('R3','R4','R1'))
UNION ALL
SELECT '005'||CRNCY_ALIAS_NUM||TOD.CONTG_LIABILITY_CONTRA_BACID ACCOUNT,CCY,'005' SOL_ID,'D' INDICATOR,ABS(FCY_AMOUNT) AMOUNT,'TREASURY DEAL BAL - '||TRIM(DEAL_IDENTIFIER) PERTICULARS, DEAL_IDENTIFIER
FROM (select PRODUCT_TYPE,DEAL_IDENTIFIER,a.INDICATOR,CCY, FCY_AMOUNT ,EQU_ACCT_TYPE,CONTG_LIABILITY_CONTRA_BACID from TREASURY_OPEN_DEALS a
left join treasury_product_mapping b  on trim(a.PRODUCT_TYPE) = trim(b.DEPT_NAME) and trim(a.SUBTYPE) = trim(b.SUBTYPE) and trim(a.INDICATOR) = trim(b.INDICATOR)
) TOD 
LEFT JOIN TBAADM.CNC C ON CRNCY_CODE=CCY  AND BANK_ID='01'
WHERE CONTG_LIABILITY_CONTRA_BACID IS NOT NULL and (PRODUCT_TYPE not in('MM','ISLAMIC') or EQU_ACCT_TYPE IN('R3','R4','R1'))
UNION ALL
SELECT '005'||CRNCY_ALIAS_NUM||TOD.BORROWING_BACID ACCOUNT,CCY,'005' SOL_ID,'C' INDICATOR,ABS(FCY_AMOUNT) AMOUNT,'TREASURY DEAL BAL - '||TRIM(DEAL_IDENTIFIER) PERTICULARS, DEAL_IDENTIFIER
FROM (select PRODUCT_TYPE,DEAL_IDENTIFIER,a.INDICATOR,CCY,FCY_AMOUNT ,EQU_ACCT_TYPE,BORROWING_BACID from TREASURY_OPEN_DEALS a
left join treasury_product_mapping b  on trim(a.PRODUCT_TYPE) = trim(b.DEPT_NAME) and trim(a.SUBTYPE) = trim(b.SUBTYPE) and trim(a.INDICATOR) = trim(b.INDICATOR)
) TOD 
LEFT JOIN TBAADM.CNC C ON CRNCY_CODE=CCY  AND BANK_ID='01'
WHERE BORROWING_BACID IS NOT NULL and EQU_ACCT_TYPE NOT  IN('R3','R4','R1')
UNION ALL
SELECT '005'||CRNCY_ALIAS_NUM||TOD.PLACEMENT_BACID ACCOUNT,CCY,'005' SOL_ID,'D' INDICATOR,ABS(FCY_AMOUNT) AMOUNT,'TREASURY DEAL BAL - '||TRIM(DEAL_IDENTIFIER) PERTICULARS, DEAL_IDENTIFIER
FROM (select PRODUCT_TYPE,DEAL_IDENTIFIER,a.INDICATOR,CCY, FCY_AMOUNT ,EQU_ACCT_TYPE,PLACEMENT_BACID from TREASURY_OPEN_DEALS a
left join treasury_product_mapping b  on trim(a.PRODUCT_TYPE) = trim(b.DEPT_NAME) and trim(a.SUBTYPE) = trim(b.SUBTYPE) and trim(a.INDICATOR) = trim(b.INDICATOR)
) TOD 
LEFT JOIN TBAADM.CNC C ON CRNCY_CODE=CCY  AND BANK_ID='01'
WHERE PLACEMENT_BACID IS NOT NULL and EQU_ACCT_TYPE NOT  IN('R3','R4','R1')
UNION ALL
SELECT CASE WHEN TRIM(SCACT)='VC' THEN '900' ELSE '005' END||CRNCY_ALIAS_NUM||'520000'||to_char(TRIM(SCACT)) ACCOUNT,to_char(TRIM(SCCCY)) SCCCY,CASE WHEN TRIM(SCACT)='VC' THEN '900' ELSE '005' END SOL_ID,CASE WHEN SCBAL < 0 THEN 'C' ELSE 'D' END INDICATOR,ABS(SCBAL/C8PWD) AMOUNT,'TREASURY MIGRA BALANCE','' FROM SCPF
LEFT JOIN C8PF ON C8CCY = SCCCY
LEFT JOIN TBAADM.CNC C ON CRNCY_CODE=TRIM(SCCCY)  AND BANK_ID='01'
WHERE (SCACT IN('R1','R3','R4','T1','T2','V1','V2','V5','V3','V4','V6','VC','W1','W2','W3','W4','W5','W6','S7','S8','S9','D1','F1','F2','M1','M2','V7') OR SCAB||SCAN||SCAS='0781800225414') AND SCBAL <> 0;


COMMIT;

----CHANGE FINACLE ACCOUNT NUMBER FOR INTERBANK PLACEMENT OPICS
--UPDATE ttum_excel_TREASURY A SET ACCOUNT =( SELECT NEW_ACCOUNT FROM(
--SELECT DEAL_IDENTIFIER,ACCOUNT,SUBSTR(TRIM(ACCOUNT),1,5)||'10401000' NEW_ACCOUNT FROM ttum_excel_TREASURY WHERE TRIM(DEAL_IDENTIFIER) IN(
--SELECT TRIM(DEAL_IDENTIFIER) FROM COM_LOAN_O_TABLE WHERE DEPT_NAME='MM' AND SUBTYPE='BANK' AND SIDE_SIDE_ONE_LONG_OR_SHORT='LONG' AND COUNTERPARTY_STRING='CENTRALKWT'
--)
--) B WHERE TRIM(A.DEAL_IDENTIFIER) = TRIM(B.DEAL_IDENTIFIER)
--) WHERE TRIM(A.DEAL_IDENTIFIER) IN(
--SELECT TRIM(DEAL_IDENTIFIER) FROM COM_LOAN_O_TABLE WHERE DEPT_NAME='MM' AND SUBTYPE='BANK' AND SIDE_SIDE_ONE_LONG_OR_SHORT='LONG' AND COUNTERPARTY_STRING='CENTRALKWT'
--);

COMMIT;

--INVESTMENT DEAL

INSERT INTO ttum_excel_TREASURY
SELECT '005'||CRNCY_ALIAS_NUM||ON_BOOK_BACID ACCOUNT, ISSUE_CCY CCY, '005' SOL_ID, CASE WHEN AMOUNT <0 THEN 'D' ELSE 'C' END INDICATOR, ROUND(ABS(AMOUNT),C8CED)AMOUNT,TO_CHAR('TREASURY INV BAL - '||DEAL_IDENTIFIER) PERTICULARS,DEAL_IDENTIFIER FROM (
SELECT DEAL_IDENTIFIER,ON_BOOK_BACID,ISSUE_CCY,AMOUNT AMOUNT FROM (
select DEAL_IDENTIFIER,INSTRUMENT_CLASS_DATA_NAME,SUBTYPE,BUY_OR_SELL,ISSUE_CCY,CASE WHEN BUY_OR_SELL='SELL' THEN 1 ELSE -1 END*QTY QTY,CASE WHEN substr(TRIM(NAME),1,3) IN('CBK','KTB') THEN 1 ELSE  BID END  BID,CASE WHEN BUY_OR_SELL='SELL' THEN 1 ELSE -1 END*QTY*CASE WHEN substr(TRIM(NAME),1,3) IN('CBK','KTB') THEN 1 ELSE  BID END  AMOUNT from SEC_BUY_SELL_O_TABLE a
left join SECURITY_DEFN_O_TABLE b on trim(b.NAME) = trim(a.SEC_DEFN_NAME)
left join spsh on trim(dealno) = trim(DEAL_IDENTIFIER)
left join SECURITY_PRICES_O_TABLE c on trim(a.SEC_DEFN_NAME) = trim(c.SECURITY)
WHERE TRIM(B.NAME) NOT IN(SELECT TRIM(SECID) FROM ttum_excel_TREASURY_deal)
UNION
select DEAL_IDENTIFIER,INSTRUMENT_CLASS_DATA_NAME,SUBTYPE,BUY_OR_SELL,ISSUE_CCY,CASE WHEN BUY_OR_SELL='SELL' THEN 1 ELSE -1 END*nvl(QTY_TRADED,round(SETTLEMENT/PRICE_STRING,2)) QTY,price,CASE WHEN BUY_OR_SELL='SELL' THEN 1 ELSE -1 END*nvl(QTY_TRADED,round(SETTLEMENT/PRICE_STRING,2))*price AMOUNT from EQUITY_MF_O_TABLE a
left join EQUITY_DEFN_O_TABLE b on trim(b.NAME) = trim(a.EQUITY_MF_DEFN_NAME)
left join EQUITY_PRICES_O_TABLE c on trim(a.EQUITY_MF_DEFN_NAME) = trim(c.SECURITY)
) A
LEFT JOIN TREASURY_INV_PRODUCT_MAPPING B ON TRIM(INSTRUMENT_CLASS_DATA_NAME) = TRIM(INSTRUMENT_CLASS) AND TRIM(A.SUBTYPE) = TRIM(B.SUBTYPE) AND TRIM(BUY_OR_SELL) = TRIM(INDICATOR)
WHERE ON_BOOK_BACID LIKE '151%'
)
LEFT JOIN TBAADM.CNC C ON CRNCY_CODE=TRIM(ISSUE_CCY)  AND BANK_ID='01'
LEFT JOIN C8PF ON C8CCY = CRNCY_CODE
UNION 
SELECT TO_CHAR(CASE WHEN TRIM(SCACT)='VC' THEN '900' ELSE '005' END||CRNCY_ALIAS_NUM||'520000'||(TRIM(SCACT))) ACCOUNT,(TRIM(SCCCY)) SCCCY,'005' SOL_ID,CASE WHEN SCBAL < 0 THEN 'C' ELSE 'D' END INDICATOR,ABS(SCBAL/C8PWD) AMOUNT,'TREASURY INVEST MIG BALANCE',N'' FROM SCPF
LEFT JOIN C8PF ON C8CCY = SCCCY
LEFT JOIN TBAADM.CNC C ON CRNCY_CODE=TRIM(SCCCY)  AND BANK_ID='01'
WHERE SCACT IN('3A','3D','3G','3K','3W','3X','3Y','3Z','4A','4D') AND SCBAL <> 0;

COMMIT;

--UPDATE TTUM_EXCEL_TREASURY_INV SET AMOUNT = AMOUNT- 0.029 WHERE  TRIM(PERTICULARS)='TREASURY INV BAL - 4440016';

--commit;

INSERT INTO ttum_excel_TREASURY
SELECT ACCOUNT, CCY, SOL_ID, INDICATOR, ROUND(ABS(AMOUNT),C8CED), 'TRY INV - '||trim(SECID), trim(SECID) DEAL_IDENTIFIER FROM ttum_excel_TREASURY_deal
LEFT JOIN C8PF ON C8CCY=CCY 
;

--FVR MANUAL DATA

INSERT INTO ttum_excel_TREASURY
SELECT ACCOUNT, CCY, SOL_ID, INDICATOR, AMOUNT, PERTICULARS, '' DEAL_IDENTIFIER FROM ttum_excel_TREASURY_FVR
UNION 
SELECT '005'||CRNCY_ALIAS_NUM||'520000'||(TRIM(SCACT)) ACCOUNT,(TRIM(SCCCY)) SCCCY,TO_NCHAR('005') SOL_ID,TO_NCHAR(CASE WHEN SCBAL < 0 THEN 'C' ELSE 'D' END) INDICATOR,TO_NCHAR(ABS(SCBAL/C8PWD)) AMOUNT,TO_NCHAR('TREASURY INVEST MIG BALANCE'),'' FROM SCPF
LEFT JOIN C8PF ON C8CCY = SCCCY
LEFT JOIN TBAADM.CNC C ON CRNCY_CODE=TRIM(SCCCY)  AND BANK_ID='01'
WHERE SCACT IN('YM','TY') AND SCBAL <> 0
AND TRIM(SCAN) IN('804225','804250','804930','804935','804950','804955','804960','804965');

COMMIT;

update ttum_excel_TREASURY set ACCOUNT='0050110201000' where trim(DEAL_IDENTIFIER) like '%3019801%';
 --0050110200000

truncate table ttum4_try_o_table;

insert into ttum4_try_o_table
select 
--Account Number
    rpad(ACCOUNT,16,' '),
--Currency Code     
    rpad(ccy,3,' '),
--SOLID
    rpad(SOL_ID,8,' '),
--Part Tran Type
    INDICATOR,
--Transaction Amount
    lpad(abs(AMOUNT),17,' '),
--Transaction Particular
    rpad(PERTICULARS,30,' '),
    rpad(' ',5,' '),
    rpad(' ',20,' '),
    rpad(' ',5,' '),
    rpad(' ',10,' '),
    rpad(' ',6,' '),
    rpad(' ',16,' '),
    rpad(' ',1,' '),
    lpad(abs(AMOUNT),17,' '),
    rpad(ccy,3,' '),
    rpad(' ',5,' '),
    rpad(' ',15,' '),
    rpad(get_param('EOD_DATE'),10,' '),
    rpad(' ',10,' '),
    rpad(' ',5,' '),
    rpad(' ',6,' '),
    rpad(' ',6,' '),
    rpad(' ',2,' '),
    rpad(' ',1,' '),
    rpad(' ',12,' '),
    rpad(' ',10,' '),
    rpad(' ',20,' '),
    rpad(' ',5,' '),
    rpad(' ',30,' '),
    rpad(' ',40,' '),
    rpad(' ',40,' '),
    rpad(' ',40,' '),
    rpad(' ',40,' '),
    rpad(' ',40,' '),
    rpad(' ',17,' '),
    rpad(' ',17,' '),
    rpad(' ',17,' '),
    rpad(' ',17,' '),
    rpad(' ',17,' '),
    rpad(' ',30,' '),
    rpad(' ',16,' '),
    rpad(' ',12,' '),
    rpad(' ',10,' '),
    rpad(' ',10,' '),
    rpad(' ',9,' '),
    rpad(' ',4,' '),
    rpad(' ',34,' '),
    rpad(' ',256,' '),
    rpad(' ',16,' '),
    rpad(' ',5,' '),
    rpad(' ',5,' ')
from ttum_excel_TREASURY;

commit;

delete TTUM4_TRY_O_TABLE where TRANSACTION_AMOUNT=0;

COMMIT;
exit;


--validation
--select* from (select substr(trim(ACCOUNT_NUMBER),6,5) GLSH,CURRENCY_CODE,PART_TRAN_TYPE,sum(TRANSACTION_AMOUNT) TRANSACTION_AMOUNT from TTUM4_TRY_O_TABLE where TRANSACTION_PARTICULAR not like '%MIGR%' group by substr(trim(ACCOUNT_NUMBER),6,5),CURRENCY_CODE,PART_TRAN_TYPE)
--left join (select GL_SUB_HEADCODE,CURRENCY,CREDIT_DEBIT_INDICATOR,sum(abs(BALANCE))  BALANCE from PREMOCK_TREASURY_RECON  group by GL_SUB_HEADCODE,CURRENCY,CREDIT_DEBIT_INDICATOR) on  GL_SUB_HEADCODE = GLSH and CURRENCY_CODE = CURRENCY
--and CREDIT_DEBIT_INDICATOR = PART_TRAN_TYPE 


--SELECT SUBSTR(ACCOUNT,6,5),CCY,SUM(CASE WHEN INDICATOR='D' THEN  -1*AMOUNT ELSE TO_NUMBER(AMOUNT) END) AMOUNT FROM ttum_excel_TREASURY WHERE NOT REGEXP_LIKE(ACCOUNT,'[A-Z]') GROUP BY SUBSTR(ACCOUNT,6,5),CCY HAVING 
--SUM(CASE WHEN INDICATOR='D' THEN  -1*AMOUNT ELSE TO_NUMBER(AMOUNT) END) <> 0
--
--
--SELECT GL_SUB_HEADCODE,CURRENCY,SUM(BALANCE) FROM PREMOCK_TREASURY_RECON where NVL(trim(scact),' ') not in('NL','NT','OT') GROUP BY GL_SUB_HEADCODE,CURRENCY HAVING SUM(BALANCE) <> 0
--

--select* from (select substr(trim(ACCOUNT_NUMBER),6)  bacid,CURRENCY_CODE,sum(case when PART_TRAN_TYPE='D' then -1*TRANSACTION_AMOUNT else 1*TRANSACTION_AMOUNT end) TRANSACTION_AMOUNT from TTUM4_TRY_O_TABLE group by substr(trim(ACCOUNT_NUMBER),6),CURRENCY_CODE) ttum
--left join (select bacid,acct_crncy_code,sum(clr_bal_amt) from tbaadm.gam where bank_id='01' group by bacid,acct_crncy_code) gam on  gam.bacid = ttum.bacid and acct_crncy_code = CURRENCY_CODE 
