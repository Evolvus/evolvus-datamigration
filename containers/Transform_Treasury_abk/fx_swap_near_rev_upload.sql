TRUNCATE TABLE FX_SWAP_NEAR_DEALS_O_TABLE;
INSERT INTO FX_SWAP_NEAR_DEALS_O_TABLE
SELECT DISTINCT
'' Response,
CASE WHEN TRIM(F.PORT) ='CORP' THEN 'FX_SPOT_SALES' ELSE 'FX_SPOT_MARKET' END PRODUCT_TYPE,
TO_CHAR(TO_DATE(DEALDATE,'YYYY-MM-DD'),'DD-Mon-YYYY') DEAL_DATE,--***
DEALNO||'_SWAP_NEAR_REV' DEAL_IDENTIFIER,
CASE WHEN trim(PORT)='FXBK' THEN '/ABK/KUWAIT/BANKING/FX/TREASURY'
     WHEN trim(PORT)='MMBK' THEN '/ABK/KUWAIT/BANKING/FX/TREASURY'
     WHEN trim(PORT)='CORP' THEN '/ABK/KUWAIT/BANKING/FX/TREASURY'
     WHEN trim(PORT)='FXTR' THEN '/ABK/KUWAIT/TRADING/FX/DEALER1'
     WHEN trim(PORT)='PORT' THEN '/ABK/KUWAIT/TRADING/DERIVATIVES/DEALER1'
     END TRADING_BOOK,
CASE WHEN trim(PORT)='FXBK' THEN '/ABK/KUWAIT/BANKING/FX/TREASURY'
     WHEN trim(PORT)='MMBK' THEN '/ABK/KUWAIT/BANKING/FX/TREASURY'
     WHEN trim(PORT)='CORP' THEN '/ABK/KUWAIT/BANKING/FX/TREASURY'
     WHEN trim(PORT)='FXTR' THEN '/ABK/KUWAIT/TRADING/FX/DEALER1'
     WHEN trim(PORT)='PORT' THEN '/ABK/KUWAIT/TRADING/DERIVATIVES/DEALER1'
     END MAIN_LEG_SPOT_TRD_BOOK,
CASE WHEN TRIM(BR)='01' AND trim(PORT) = 'CORP' THEN 'CORP'
     WHEN TRIM(BR)='01' AND trim(PORT) != 'CORP' THEN 'BANK'
     WHEN TRIM(BR)='51' AND TRIM(C.BIC) IS NULL THEN 'CORP'
     WHEN TRIM(BR)='51' AND TRIM(C.BIC) IS NOT NULL THEN 'BANK'
END SUBTYPE,
'FX' DEPT_NAME,--*** We had mapped to PRODCODE column
'' ACCOUNTING_CODE,
CASE WHEN TRIM(BR)='51' THEN 'ABKUAE' ELSE 'ABKKWT' END ENTITY_NAME,
CASE WHEN TRIM(BR)='51' THEN 'ABKUAE' ELSE 'ABKKWT' END MAIN_LEG_SPOT_RISK_ENTITY,
trim(CMNE) MAIN_LEG_CPTY,
CASE WHEN CCYTERMS='M' THEN TRIM(CCY)||'/'||TRIM(CTRCCY) ELSE TRIM(CTRCCY)||'/'||TRIM(CCY) END MAIN_LEG_CCY_PAIR,
TRIM(CCY) SPOT_RISK_CCY,--case when CASE WHEN CCYTERMS='M' THEN TRIM(CCY)||'/'||TRIM(CTRCCY) ELSE TRIM(CTRCCY)||'/'||TRIM(CCY) END='JPY/KWD' then 'JPY' else CTRCCY end
DISAGGCCY DCO_CURRENCY,
CASE WHEN PS='P' AND CCYTERMS='M' THEN 'SELL' 
     WHEN PS='S' AND CCYTERMS='M' THEN 'BUY'
     WHEN PS='P' AND CCYTERMS='D' THEN 'BUY'
     WHEN PS='S' AND CCYTERMS='D' THEN 'SELL' 
     END MAIN_LEG_FX_BUY_SELL,
TO_CHAR(CASE WHEN CCYTERMS='M' THEN ABS(CCYAMT) ELSE ABS(CTRAMT) END,'9999999999999999990.99999999') MAIN_LEG_CCY_ONE_AMOUNT,
TO_CHAR(CCYRATE_8,'9999999999999999990.99999999') MAIN_LEG_MARKET_SPOT_RATE, ----NEEDS TO CHECK PROPER LOGIC TO AVAIL CORRECT VALUE
TO_CHAR(CASE WHEN CCYTERMS='D' THEN ABS(CCYAMT) ELSE ABS(CTRAMT) END,'9999999999999999990.99999999') MAIN_LEG_CCY_TWO_AMOUNT,
TO_CHAR(TO_DATE(VDATE,'YYYY-MM-DD'),'DD-Mon-YYYY')  MAIN_LEG_VALUE_DATE_ONE,--***
TRIM(DEALTEXT) MEMO_FIELD_1,
CASE WHEN TRIM(C.BIC) IS NOT NULL THEN 'SWIFT' ELSE '' END CONFIRM_METHOD,--***
'' SI_FLOW_PAY_SSI_ID,--@@@
CASE WHEN PS='S' AND CCYTERMS='M' THEN CASE WHEN TRIM(CTRSMEANS) in ('BRDGE','BRIDGE') THEN 'BRIDGE_'||TRIM(CTRCCY)||CASE WHEN TRIM(BR)='51' THEN '_ABKU' ELSE '_ABKK' END ELSE CTRSACCT END  
     WHEN PS='P' AND CCYTERMS='M' THEN CASE WHEN TRIM(CCYSMEANS) in ('BRDGE','BRIDGE') THEN 'BRIDGE_'||TRIM(CCY)||CASE WHEN TRIM(BR)='51' THEN '_ABKU' ELSE '_ABKK' END ELSE CCYSACCT  END
     WHEN PS='S' AND CCYTERMS='D' THEN CASE WHEN TRIM(CTRSMEANS) in ('BRDGE','BRIDGE') THEN 'BRIDGE_'||TRIM(CTRCCY)||CASE WHEN TRIM(BR)='51' THEN '_ABKU' ELSE '_ABKK' END ELSE CTRSACCT END 
     WHEN PS='P' AND CCYTERMS='D' THEN CASE WHEN TRIM(CCYSMEANS) in ('BRDGE','BRIDGE') THEN 'BRIDGE_'||TRIM(CCY)||CASE WHEN TRIM(BR)='51' THEN '_ABKU' ELSE '_ABKK' END ELSE CCYSACCT  END  
END SI_FLOW_PAY_NOSTRO,--CASE WHEN TRIM(PS)='S' THEN CCYSACCT ELSE CTRSACCT END SI_FLOW_PAY_NOSTRO,
CASE WHEN CCYTERMS='M' AND TRIM(CCYSMEANS)='NOS' THEN 'SWIFT'  WHEN CCYTERMS='D' AND TRIM(CTRSMEANS)='NOS' THEN 'SWIFT' ELSE '' END SI_FLOW_PAY_SETT_METHOD,--***CASE WHEN TRIM(PS)='S' AND TRIM(CCYSMEANS)='NOS' THEN 'SWIFT' ELSE '' END
'' SI_FLOW_PAY_CPTY_AGENT,
'' SI_FLOW_REC_SSI_ID,--@@@@
CASE WHEN PS='S' AND CCYTERMS='M' THEN CASE WHEN TRIM(CCYSMEANS) in ('BRDGE','BRIDGE') THEN 'BRIDGE_'||TRIM(CCY)||CASE WHEN TRIM(BR)='51' THEN '_ABKU' ELSE '_ABKK' END ELSE CCYSACCT  END  
     WHEN PS='P' AND CCYTERMS='M' THEN CASE WHEN TRIM(CTRSMEANS) in ('BRDGE','BRIDGE') THEN 'BRIDGE_'||TRIM(CTRCCY)||CASE WHEN TRIM(BR)='51' THEN '_ABKU' ELSE '_ABKK' END ELSE CTRSACCT END
     WHEN PS='S' AND CCYTERMS='D' THEN CASE WHEN TRIM(CCYSMEANS) in ('BRDGE','BRIDGE') THEN 'BRIDGE_'||TRIM(CCY)||CASE WHEN TRIM(BR)='51' THEN '_ABKU' ELSE '_ABKK' END ELSE CCYSACCT  END 
     WHEN PS='P' AND CCYTERMS='D' THEN CASE WHEN TRIM(CTRSMEANS) in ('BRDGE','BRIDGE') THEN 'BRIDGE_'||TRIM(CTRCCY)||CASE WHEN TRIM(BR)='51' THEN '_ABKU' ELSE '_ABKK' END ELSE CTRSACCT END  
END SI_FLOW_REC_NOSTRO,--CASE WHEN TRIM(PS)='S' THEN CTRSACCT ELSE CCYSACCT END SI_FLOW_REC_NOSTRO,
CASE WHEN CCYTERMS='M' AND TRIM(CTRSMEANS)='NOS' THEN 'SWIFT'  WHEN CCYTERMS='D' AND TRIM(CCYSMEANS)='NOS' THEN 'SWIFT' ELSE '' END SI_FLOW_REC_SETT_METHOD,--***CASE WHEN TRIM(PS)='S' AND TRIM(CTRSMEANS)='NOS' THEN 'SWIFT' ELSE '' END
'' SI_FLOW_REC_CPTY_AGENT,
CASE WHEN TRIM(F.PORT) ='CORP' THEN TO_CHAR(F.CORPSPREAD_8,'99999990.99999999') END  SPOT_MARGIN_POINTS
FROM FXDH F
INNER JOIN CUST C ON TRIM(C.CNO)=TRIM(F.CUST)
LEFT JOIN GFPF GF ON TRIM(GF.GFOCID) = TRIM(C.CMNE)
WHERE dealno in(
select DEAL_IDENTIFIER from FX_SWAP_O_TABLE where to_date(NEAR_LEG_VALUE_DATE_ONE,'dd-Mon-yyyy') <= to_date(get_param('EOD_DATE'),'dd-mm-yyyy')
);
COMMIT;
--UPDATE FX_SWAP_NEAR_DEALS_O_TABLE SET SI_FLOW_PAY_NOSTRO='SCBDLE' WHERE TRIM(SI_FLOW_PAY_NOSTRO)='SCBLDE';
--UPDATE FX_SWAP_NEAR_DEALS_O_TABLE SET SI_FLOW_REC_NOSTRO='SCBDLE' WHERE TRIM(SI_FLOW_REC_NOSTRO)='SCBLDE';
--COMMIT;
--UPDATE FX_SPOT_DEALS_O_TABLE SET SUBTYPE='INTGRP' WHERE TRIM(MAIN_LEG_CPTY)='AEAHLK';
UPDATE FX_SPOT_DEALS_O_TABLE A SET SI_FLOW_PAY_SSI_ID=(SELECT TRIM(SSI_ID) FROM TREASURY_PAY_SSI_O_TABLE B WHERE 
 ROWID IN( SELECT  MIN(ROWID) FROM TREASURY_PAY_SSI_O_TABLE B WHERE SSI_TYPE='PRINCIPAL' GROUP BY  CPTY_NAME,NOSTRO_ID,CURRENCY) AND TRIM(A.MAIN_LEG_CPTY)=TRIM(B.CPTY_NAME) AND 
TRIM(B.NOSTRO_ID) = TRIM(A.SI_FLOW_PAY_NOSTRO) AND SUBSTR(A.MAIN_LEG_CCY_PAIR,1,3) = TRIM(B.CURRENCY));
UPDATE FX_SPOT_DEALS_O_TABLE A SET SI_FLOW_REC_SSI_ID=(SELECT TRIM(SSI_ID) FROM (SELECT * FROM TREASURY_REC_SSI_O_TABLE WHERE 
ROWID IN( SELECT  MIN(ROWID) FROM TREASURY_REC_SSI_O_TABLE B WHERE SSI_TYPE='PRINCIPAL' GROUP BY  CPTY_NAME,NOSTRO_ID,CURRENCY) 
UNION SELECT * FROM TREASURY_PAY_SSI_O_TABLE WHERE ROWID IN( SELECT  MIN(ROWID) FROM TREASURY_PAY_SSI_O_TABLE B WHERE SSI_TYPE='PRINCIPAL' GROUP BY  CPTY_NAME,NOSTRO_ID,CURRENCY) 
) B WHERE TRIM(A.MAIN_LEG_CPTY)=TRIM(B.CPTY_NAME) AND 
TRIM(B.NOSTRO_ID) = TRIM(A.SI_FLOW_REC_NOSTRO) AND SUBSTR(A.MAIN_LEG_CCY_PAIR,5,3) = TRIM(B.CURRENCY));
COMMIT;
EXIT;
/ 
