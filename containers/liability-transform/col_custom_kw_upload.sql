

UPDATE COL_PORTFOLIO_DATA SET COLLATERAL_REFERENCE='003008471 KAMCO SKC 32370044   CASH'  WHERE TRIM(COLLATERAL_REFERENCE)='003008471 KAMCO SKC 32370044 CASH';

UPDATE COL_PORTFOLIO_DATA SET COLLATERAL_REFERENCE='003008471 KAMCO SKC 32370044   UNQT'  WHERE TRIM(COLLATERAL_REFERENCE)='003008471 KAMCO SKC 32370044 UNQT';
commit; 





TRUNCATE TABLE CUST_PORTFOLIO_COLL_TBL;
insert into CUST_PORTFOLIO_COLL_TBL
SELECT '' ROW_ID,
       c.SECU_SRL_NUM SECU_SRL_NUM,
       COL_CODE SECU_CODE,
       trim(HYCCY) SECU_CCY,
       COL_TYPE SECU_TYPE,
       GET_PARAM('BANK_ID') BANK_ID,
       '1' CUST_CLTRL_SRL_NUM,
       'SHARES' CUST_CLTRL_TYPE,
       nvl(trim(COMPANY_CODE),SUBSTR(TRIM(CO_CODE),1,20)) TICKER_CODE,--DEFAULTED -- NEED TO CHECK LENGTH
       '9999999999999' CAPITAL_BASE,--DEFAULTED
       '9999999999999' DEGREE_VALUE,--DEFAULTED
       trim(HYCCY) CRNCY_CODE,
       '' SECURITY_NAME,
       nvl(REF_DESC,TRIM(PORTFOLIO_MANAGER))PFOLIO_MNG_CMPNY,
       trim(P_NO) PFOLIO_NUM,--NEED TO CHECK
       trim(PORTFOLIO_OWNER) PFOLIO_OWNER,
       to_date(GET_PARAM('EOD_DATE'),'dd-mm-yyyy') PFOLIO_DATE,--DEFAULTED
       nvl(NO_OF_SHARES,0)  QUANTITY,
       nvl(PRICE,0) MARKET_PRICE,
       round(nvl(NO_OF_SHARES,0)*nvl(PRICE,0),3) TOTAL_VALUE,
       'C' PFOLIO_TYPE,--DEFAULTED
       trim(GRADE) REMARKS,
       round(nvl(NO_OF_SHARES,0)*nvl(PRICE,0),3) PFOLIO_CCY_AMT,
       'N' DEL_FLG,
       '' LCHG_TIME,
       '' LCHG_USER_ID,
       '' RCRE_USER_ID,
       '' RCRE_TIME
  FROM COL_OTHERS_O_TABLE a
    inner join map_cif on FIN_CIF_ID = CIF_ID
    inner join hypf on  trim(hycus)=trim(gfcus) and nvl(trim(hyclc),' ')=nvl(trim(gfclc),' ')  and  trim(ASSET_CODE) = trim(HYCLR)
    inner join c8pf on c8ccy=hyccy 
    inner join (select * from COL_PORTFOLIO_DATA where COLLATERAL_REFERENCE NOT LIKE '%CASH%'-- AND CASH is null
    ) portf on TRIM(portf.COLLATERAL_REFERENCE) = TRIM(CC_FINONE_ACCNT)
    left join MIGADM.C_COLLOTHERS c on SRL_NUM = SERIAL_NUMBER
    left join tbaadm.asm on SUBSTR(TRIM(CO_CODE),1,20) = secu_code and asm.bank_id='01' and COMPANY_CODE is not null
    left join tbaadm.rct on REF_REC_TYPE='58' and rct.bank_id='01' and upper(trim(REF_CODE)) = upper(TRIM(PORTFOLIO_MANAGER)) and rct.DEL_FLG='N'
  where COL_CODE='PORTFOLI' --and CC_FINONE_ACCNT like '%QUOT%'
  order by secu_srl_num;

COMMIT;  
  

COMMIT;  
TRUNCATE TABLE CUST_PORTFOLIO_COLLSUM_TBL;
INSERT INTO CUST_PORTFOLIO_COLLSUM_TBL
SELECT c.SECU_SRL_NUM SECU_SRL_NUM,
       COL_CODE SECU_CODE,
       trim(HYCCY) SECU_CCY,
       COL_TYPE SECU_TYPE,
       '01' BANK_ID,
       case when a.CC_FINONE_ACCNT  like '%CASH%' then COL_VALUE else n'0' end CASH_EQUIVALENT,
       case when a.CC_FINONE_ACCNT  like '%CASH%' then COL_VALUE else n'0' end MGMT_FEE,
       '1' NET_CLTRL_VALUE,
       '' DESCRIPTION,
       'N' DEL_FLG,
       '' LCHG_TIME,
       '' LCHG_USER_ID,
       '' RCRE_USER_ID,
       '' RCRE_TIME
  FROM COL_OTHERS_O_TABLE  a
    inner join map_cif on FIN_CIF_ID = CIF_ID
    inner join hypf on  trim(hycus)=trim(gfcus) and nvl(trim(hyclc),' ')=nvl(trim(gfclc),' ')  and  trim(ASSET_CODE) = trim(HYCLR)
    inner join c8pf on c8ccy=hyccy 
    --left join (select * from COL_PORTFOLIO_DATA where COLLATERAL_REFERENCE LIKE '%CASH%' and CASH is not null ) portf on TRIM(COLLATERAL_REFERENCE) = TRIM(CC_FINONE_ACCNT)
    left join MIGADM.C_COLLOTHERS c on SRL_NUM = SERIAL_NUMBER
  where COL_CODE='PORTFOLI' --and a.CC_FINONE_ACCNT like '%CASH%'
  order by secu_srl_num;
  commit;

TRUNCATE TABLE COL_CUSTOM_O_TABLE;


INSERT INTO COL_CUSTOM_O_TABLE (SECU_SRL_NUM, SECU_CODE, SECU_TYPE_IND, COLL_REF,COLLATERAL_LOCATION,BASEL_COLLATERAL_CATEGORY,FREE_TEXT1,MIN_STIP_COVG,SALE_CUT_OFF,TOP_UP)
SELECT distinct b.SECU_SRL_NUM,COL_CODE,COL_TYPE,a.CC_FINONE_ACCNT,a.COL_LOCATION,case when a.COL_CODE like '%KWD%' then 'Cash _Collateral_KD' else 'Cash_collateral_FC' end BASEL_COLLATERAL_CATEGORY,a.LAST_REVIEW_DATE,CCC5_COVG MIN_STIP_COVG,x.SALE_CUT_OFF,x.TOP_UP FROM COL_DEP_O_TABLE a
left join MIGADM.C_COLLDEPOSITS b on SRL_NUM = SERIAL_NUMBER
left join (select distinct TRIM(HYDBNM)||TRIM(HYDLP)||TRIM(HYDLR) deal_num,CCC5_CLR,CCC5_COVG from YCCLC5PF01 
inner join hypf on nvl(trim(HYCLR),' ')= trim(CCC5_CLR) or  TRIM(HYDBNM)||'-'||TRIM(HYDLP)||'-'||TRIM(HYDLR) = trim(CCC5_CLR) 
where nvl(trim(CCC5_UNSF),' ')!='U' and trim(hyclp)='021') on trim(deal_num) = trim(a.CC_FINONE_ACCNT)
left join col_sale_cut_off_data x on x.CIF_ID = a.CIF_ID ;

INSERT INTO COL_CUSTOM_O_TABLE (SECU_SRL_NUM, SECU_CODE, SECU_TYPE_IND, COLL_REF,COLLATERAL_LOCATION,BASEL_COLLATERAL_CATEGORY,FREE_TEXT1,MIN_STIP_COVG,SALE_CUT_OFF,TOP_UP)
SELECT distinct SECU_SRL_NUM,COL_CODE,COL_TYPE,a.CC_FINONE_ACCNT,COL_LOCATION,'Bank Guarantee_KD_20%' BASEL_COLLATERAL_CATEGORY,a.LAST_REVIEW_DATE,CCC5_COVG MIN_STIP_COVG,x.SALE_CUT_OFF,x.TOP_UP FROM COL_G_O_TABLE a
left join MIGADM.C_COLLGUARANTEE b on SRL_NUM = SERIAL_NUMBER
left join (select distinct CCC5_CLR,CCC5_COVG from YCCLC5PF01 where nvl(trim(CCC5_UNSF),' ')!='U') on trim(CCC5_CLR) = trim(a.CC_FINONE_ACCNT) 
left join col_sale_cut_off_data x on x.CIF_ID = a.CIF_ID ;

INSERT INTO COL_CUSTOM_O_TABLE (SECU_SRL_NUM, SECU_CODE, SECU_TYPE_IND, COLL_REF,COLLATERAL_LOCATION,BASEL_COLLATERAL_CATEGORY,COLLATERAL_CLASSIFICATION,FREE_TEXT1,MIN_STIP_COVG,SALE_CUT_OFF,TOP_UP)
SELECT distinct SECU_SRL_NUM,COL_CODE,COL_TYPE,a.CC_FINONE_ACCNT,COL_LOCATION,'Real Estate – Income Producing (not land)_KD' BASEL_COLLATERAL_CATEGORY,nvl(REF_CODE,a.PROPERTY_RATING),a.LAST_REVIEW_DATE,CCC5_COVG MIN_STIP_COVG,x.SALE_CUT_OFF,x.TOP_UP FROM COL_IP_RE_O_TABLE a
left join MIGADM.C_COLLIMMOV b on SRL_NUM = SERIAL_NUMBER
left join (select distinct CCC5_CLR,CCC5_COVG from YCCLC5PF01 where nvl(trim(CCC5_UNSF),' ')!='U') on trim(CCC5_CLR) = trim(a.CC_FINONE_ACCNT) 
left join col_sale_cut_off_data x on x.CIF_ID = a.CIF_ID 
left join COL_CLASSIFICATION_MAP b on upper(trim(a.PROPERTY_RATING)) = trim(OLD_COL_CLASS) 
left join TBAADM.RCT on RCT.bank_id='01' and REF_REC_TYPE='59' and upper(trim(REF_DESC)) = upper(trim(new_COL_CLASS)) and del_flg='N';

INSERT INTO COL_CUSTOM_O_TABLE (SECU_SRL_NUM, SECU_CODE, SECU_TYPE_IND, COLL_REF,COLLATERAL_LOCATION,BASEL_COLLATERAL_CATEGORY,FREE_TEXT1,MIN_STIP_COVG,SALE_CUT_OFF,TOP_UP)
SELECT distinct SECU_SRL_NUM,COL_CODE,COL_TYPE,a.CC_FINONE_ACCNT,COL_LOCATION,'KSE Equity Shares_KD' BASEL_COLLATERAL_CATEGORY,a.LAST_REVIEW_DATE,CCC5_COVG MIN_STIP_COVG,x.SALE_CUT_OFF,x.TOP_UP FROM COL_MUTUAL_FUND_O_TABLE a
left join MIGADM.COLL_MUTUAL_FUND b on SRL_NUM = SERIAL_NUMBER
left join (select distinct CCC5_CLR,CCC5_COVG from YCCLC5PF01 where nvl(trim(CCC5_UNSF),' ')!='U') on trim(CCC5_CLR) = trim(a.CC_FINONE_ACCNT) 
left join col_sale_cut_off_data x on x.CIF_ID = a.CIF_ID ;

INSERT INTO COL_CUSTOM_O_TABLE (SECU_SRL_NUM, SECU_CODE, SECU_TYPE_IND, COLL_REF,COLLATERAL_LOCATION,BASEL_COLLATERAL_CATEGORY,PORTFOLIO_NUMBER,FREE_TEXT1,MIN_STIP_COVG,SALE_CUT_OFF,TOP_UP)
SELECT distinct c.SECU_SRL_NUM,COL_CODE,COL_TYPE,a.CC_FINONE_ACCNT,COL_LOCATION,'KSE Equity Shares_KD' BASEL_COLLATERAL_CATEGORY,PFOLIO_NUM,a.LAST_REVIEW_DATE,CCC5_COVG MIN_STIP_COVG,x.SALE_CUT_OFF,x.TOP_UP FROM COL_OTHERS_O_TABLE A
LEFT JOIN (SELECT SECU_SRL_NUM, LISTAGG(PFOLIO_NUM, ',') WITHIN GROUP (ORDER BY SECU_SRL_NUM) AS PFOLIO_NUM
FROM (SELECT DISTINCT SECU_SRL_NUM,PFOLIO_NUM  FROM CUST_PORTFOLIO_COLL_TBL) GROUP BY SECU_SRL_NUM) B ON TRIM(A.SERIAL_NUMBER) = TRIM(B.SECU_SRL_NUM)
left join MIGADM.C_COLLOTHERS c on SRL_NUM = SERIAL_NUMBER
left join (select distinct CCC5_CLR,CCC5_COVG from YCCLC5PF01 where nvl(trim(CCC5_UNSF),' ')!='U') on trim(CCC5_CLR) = trim(a.CC_FINONE_ACCNT) 
left join col_sale_cut_off_data x on x.CIF_ID = a.CIF_ID ;

INSERT INTO COL_CUSTOM_O_TABLE (SECU_SRL_NUM, SECU_CODE, SECU_TYPE_IND, COLL_REF,COLLATERAL_LOCATION,BASEL_COLLATERAL_CATEGORY,CERTIFICATE_NUMBER,SHAREHOLDER_NUMBER,FREE_TEXT1,MIN_STIP_COVG,SALE_CUT_OFF,TOP_UP)
SELECT distinct SECU_SRL_NUM,COL_CODE,COL_TYPE,b.CC_FINONE_ACCNT,COL_LOCATION,'KSE Equity Shares_KD' BASEL_COLLATERAL_CATEGORY,a.DP_ID,a.HOLDING_PATTERN,a.LAST_REVIEW_DATE,CCC5_COVG MIN_STIP_COVG,x.SALE_CUT_OFF,x.TOP_UP FROM COL_TRADEABLE_O_TABLE a
left join MIGADM.C_COLLTRADE b on SRL_NUM = SERIAL_NUMBER
left join (select distinct CCC5_CLR,CCC5_COVG from YCCLC5PF01 where nvl(trim(CCC5_UNSF),' ')!='U') on trim(CCC5_CLR) = trim(a.CC_FINONE_ACCNT) 
left join col_sale_cut_off_data x on x.CIF_ID = a.CIF_ID ;


COMMIT;


exit;


--update custom.CUST_PORTFOLIO_COLL_TBL a  set TICKER_CODE =(select COMPANY_CODE from tbaadm.asm b where bank_id='01' and del_flg='N'  and a.TICKER_CODE = b.SECU_CODE and COMPANY_CODE is not null)
--where TICKER_CODE in(select SECU_CODE from tbaadm.asm where bank_id='01' and del_flg='N' and  COMPANY_CODE is not null)
--
--
--update custom.CUST_PORTFOLIO_COLL_TBL a  set PFOLIO_MNG_CMPNY =(select REF_DESC from tbaadm.rct b where bank_id='01' and del_flg='N' and REF_REC_TYPE='58' and trim(b.REF_CODE) = trim(a.PFOLIO_MNG_CMPNY))
--where trim(PFOLIO_MNG_CMPNY) in(select trim(REF_CODE) from tbaadm.rct where bank_id='01' and del_flg='N' and REF_REC_TYPE='58') 
