TRUNCATE TABLE SWAP_O_TABLE;
INSERT INTO SWAP_O_TABLE
SELECT 
'' Response,
'SWAP' Product_TYPE,
S1.DEALNO Identifier,
trim(C.CMNE) Counterparty, 
CASE WHEN TRIM(S1.NOTCCY)=TRIM(S2.NOTCCY) THEN TRIM(S1.NOTCCY) ELSE TRIM(S1.NOTCCY)||','||TRIM(S2.NOTCCY) END CURRENCY_STRING,
ABS(TO_CHAR(S1.NOTCCYAMT/S2.NOTCCYAMT,'999999999999999.99999999')) SWAP_FX_RATE,
CASE WHEN S1.FIXFLOATIND='L' THEN 'FLOAT' ELSE 'FIXED' END "SIDESIDE.CASH_FLOW_SIDE_TYPE",
TO_CHAR(S1.MATDATE,'DD-Mon-YYYY') END_DATE,--***
TO_CHAR(S1.STARTDATE,'DD-Mon-YYYY') "SIDE.PAY_SIDE.START_DATE",
TO_CHAR(S1.MATDATE,'DD-Mon-YYYY') "SIDE.PAY_SIDE.END_DATE",
CASE WHEN TRIM(S1.PRODTYPE)='IR' THEN '/ABK/KUWAIT/BANKING/DERIVATIVES' ELSE '/ABK/KUWAIT/TRADING/DERIVATIVES/DEALER1' END TRADING_BOOK,
'Derivatives' DEPT_NAME,
CASE WHEN TRIM(S1.PRODTYPE)='IR' THEN 'IRSH' ELSE 'CCIRST' END SUBTYPE,
'T' SIDE_PAY_IS_ALWAYS_SIDE_1,
ABS(S1.NOTCCYAMT) PAY_SIDE_NOTIONAL_AMT_VALUE,
TO_CHAR(S2.MATDATE,'DD-Mon-YYYY') SIDE_RECEIVE_SIDE_END_DATE,--***
S1.NOTCCY PAY_SIDE_NOTIONAL_AMOUNT_CCY,
CASE WHEN S2.FIXFLOATIND='L' THEN 'FLOAT' ELSE 'FIXED' END REC_SIDE_CASH_FLW_SIDE_TYPE,
CASE WHEN S2.FIXFLOATIND='L' THEN S2.RATECODE ELSE '' END SIDE_RECEIVE_SIDE_REFENCE_RATE,
CASE WHEN TRIM(S2.BASIS)='BOND' THEN '30/360' WHEN TRIM(S2.BASIS)='EBOND' THEN '30E/360' ELSE (SELECT TRIM(SUBSTR(S2.BASIS,1,1))||'/'||SUBSTR(S2.BASIS,2) FROM DUAL) END SIDE_RECEIVE_SIDE_BASIS_CODE,
S2.NOTCCY RECEIVE_SIDE_NOTIONAL_AMT_CCY,
'SHORT' RECEIVE_SIDE_LONG_OR_SHORT,
CASE WHEN TRIM(S2.INTPAYCYCLE)='S' THEN 'SEMI'
     WHEN TRIM(S2.INTPAYCYCLE)='Q' THEN 'QTRLY'
     ELSE '' END RECEIVE_SIDE_CREATION_FREQ,
CASE WHEN TRIM(S1.INTPAYCYCLE)='S' THEN 'SEMI'
     WHEN TRIM(S1.INTPAYCYCLE)='Q' THEN 'QTRLY'
     ELSE '' END PAY_SIDE_CREATION_FREQUENCY,
ABS(S2.NOTCCYAMT) RECEIV_SIDE_NOTIONAL_AMT_VALUE,
S1.NOTCCY||','||S2.NOTCCY CCY_CALENDAR_SET,
'LONG' SIDE_PAY_SIDE_LONG_OR_SHORT,
TO_CHAR(S1.INTRATE_8,'999999999999990.99999999') SIDE_PAY_SIDE_FIX_RATE,
TO_CHAR(S1.STARTDATE,'DD-Mon-YYYY') START_DATE,--***
CASE WHEN TRIM(S1.BASIS)='BOND' THEN '30/360' WHEN TRIM(S1.BASIS)='EBOND' THEN '30E/360' ELSE (SELECT TRIM(SUBSTR(S1.BASIS,1,1))||'/'||SUBSTR(S1.BASIS,2) FROM DUAL) END SIDE_PAY_SIDE_BASIS_CODE,
'DEF_COC' COST_OF_CARRY_REF_RATE_CODE,
CASE WHEN S1.FIXFLOATIND='X' THEN 'FIX' ELSE 'FLT' END ||'/'||CASE WHEN S2.FIXFLOATIND='X' THEN 'FIX' ELSE 'FLT' END TYPE_STRING,
TO_CHAR(S2.STARTDATE,'DD-Mon-YYYY') SIDE_RECEIVE_SIDE_START_DATE,--***
CASE WHEN S1.FIXFLOATIND='L' THEN S1.RATECODE ELSE NULL END "SIDE.PAY_SIDE.REFERENCE_RATE",
CASE WHEN TRIM(S1.BR)='51' THEN 'ABKUAE' ELSE 'ABKKWT' END ENTITY_NAME,
CASE WHEN S2.FIXFLOATIND='L' THEN '' ELSE TO_CHAR (S2.INTRATE_8,'9999999999999999990.99999999') END "SIDE.RECIVE_SIDE.FIXED_RATE",
CASE WHEN TRIM(C.BIC) IS NOT NULL THEN 'SWIFT' ELSE '' END CONFIRM_METHOD,
''  SI_FLOW_PAY_SSI_ID,
case when s1.PRODTYPE='IR' and s1.INTSMEANS='NOS' then s1.INTSACCT else 'BRIDGE_'||TRIM(s1.NOTCCY)||CASE WHEN TRIM(s1.BR)='51' THEN '_ABKU' ELSE '_ABKK' END  end SI_FLOW_PAY_NOSTRO,
case when s1.INTSMEANS='NOS' then 'SWIFT' else '' end SI_FLOW_PAY_SETT_METHOD,
'' SI_FLOW_REC_SSI_ID,
case when s2.PRODTYPE='IR' and s2.INTSMEANS='NOS' then s2.INTSACCT else 'BRIDGE_'||TRIM(s2.NOTCCY)||CASE WHEN TRIM(s2.BR)='51' THEN '_ABKU' ELSE '_ABKK' END  end SI_FLOW_REC_NOSTRO,
case when s2.INTSMEANS='NOS' then 'SWIFT' else '' end SI_FLOW_REC_SETT_METHOD,
'FALSE' IS_RESET_IN_ARREARS,
CASE WHEN S1.NOTCCY LIKE '%USD%' THEN 'S' ELSE 'N' END START_DATE_DAY_CONVENTION,
CASE WHEN S1.NOTCCY LIKE '%USD%' THEN 'S' ELSE 'N' END SIDE_CASH_FLOW_DAY_CONVENTION,
CASE WHEN S1.NOTCCY LIKE '%USD%' THEN 'S' ELSE 'N' END END_DATE_DAY_CONVENTION,
s1.SPREAD_8 SIDE1_MARGIN ,
s2.SPREAD_8  SIDE2_MARGIN
FROM (select * from SWDT where trim(PAYRECIND)='P') S1 
INNER JOIN (select * from SWDT where trim(PAYRECIND)='R') S2 ON trim(S2.DEALNO)=trim(S1.DEALNO) 
INNER JOIN SWDH H ON trim(S1.DEALNO)=trim(H.DEALNO) AND TRIM(H.REVDATE) IS NULL
INNER JOIN CUST C ON C.CNO=H.CNO
WHERE S1.MATDATE>TO_DATE(get_param('EOD_DATE'),'DD-MM-YYYY');
COMMIT;
--UPDATE SWAP_O_TABLE SET SI_FLOW_PAY_NOSTRO='SCBDLE' WHERE TRIM(SI_FLOW_PAY_NOSTRO)='SCBLDE';
--UPDATE SWAP_O_TABLE SET SI_FLOW_REC_NOSTRO='SCBDLE' WHERE TRIM(SI_FLOW_REC_NOSTRO)='SCBLDE';
--COMMIT;
UPDATE SWAP_O_TABLE A SET SI_FLOW_PAY_SSI_ID=(SELECT TRIM(SSI_ID) FROM TREASURY_PAY_SSI_O_TABLE B WHERE 
 ROWID IN( SELECT  MIN(ROWID) FROM TREASURY_PAY_SSI_O_TABLE B WHERE SSI_TYPE='PRINCIPAL' GROUP BY  CPTY_NAME,NOSTRO_ID,CURRENCY) AND TRIM(A.COUNTERPARTY)=TRIM(B.CPTY_NAME) AND 
TRIM(B.NOSTRO_ID) = TRIM(A.SI_FLOW_PAY_NOSTRO) AND SUBSTR(A.CURRENCY_STRING,1,3) = TRIM(B.CURRENCY));
UPDATE SWAP_O_TABLE A SET SI_FLOW_REC_SSI_ID=(SELECT TRIM(SSI_ID) FROM (SELECT * FROM TREASURY_REC_SSI_O_TABLE WHERE 
ROWID IN( SELECT  MIN(ROWID) FROM TREASURY_REC_SSI_O_TABLE B WHERE SSI_TYPE='PRINCIPAL' GROUP BY  CPTY_NAME,NOSTRO_ID,CURRENCY) 
UNION SELECT * FROM TREASURY_PAY_SSI_O_TABLE WHERE ROWID IN( SELECT  MIN(ROWID) FROM TREASURY_PAY_SSI_O_TABLE B WHERE SSI_TYPE='PRINCIPAL' GROUP BY  CPTY_NAME,NOSTRO_ID,CURRENCY) 
) B WHERE TRIM(A.COUNTERPARTY)=TRIM(B.CPTY_NAME) AND 
TRIM(B.NOSTRO_ID) = TRIM(A.SI_FLOW_REC_NOSTRO) AND case when length(A.CURRENCY_STRING)=3 then  SUBSTR(A.CURRENCY_STRING,1,3) else SUBSTR(A.CURRENCY_STRING,5,3) end = TRIM(B.CURRENCY));
commit;
EXIT; 
