select distinct TRIM(HYCLR) LEG_COLLATERAL_REFERENCE,HYCLP LEG_COL_CODE,case when HYCLP in ('003','004') then 'PORTFOLI'
when HYCLP in ('022','026') then 'OTH-KWD'
end FIN_MAPPED_COL_CODE,SECU_CODE FIN_SECU_CODE, 
case when case when HYCLP in ('003','004') then 'PORTFOLI'
when HYCLP in ('022','026') then 'OTH-KWD'
end = SECU_CODE then 'TRUE' ELSE 'FALSE' END MATCH_SECU_CODE,
hyclc||hycus LEG_CIF_ID,case when map_cif.INDIVIDUAL='Y' then orgkey  else CORP_KEY end FIN_CIF_ID,
gfpf.GFACO LEG_RM_CODE,
hypf.hyccy LEG_CCY_CODE,FIN_COL_OTHERS.CRNCY_CODE FIN_CRNCY_CODE,case when hypf.hyccy = FIN_COL_OTHERS.CRNCY_CODE THEN 'TRUE' ELSE 'FALSE' END MATCH_CCY_CODE, 
to_char(to_number((hypf.hyclv)/power(10,c8ced)),'9999999999999999999.999') LEG_TOTAL_COLLATERAL_VALUE,to_char(SECU_VALUE,'9999999999999999999.999') FIN_SECU_VALUE,case when to_number((hypf.hyclv)/power(10,c8ced))  =SECU_VALUE then 'TRUE' ELSE 'FALSE' END MATCH_COLLATERAL_VALUE,
trim(HYNR1)||' '||trim(HYNR2)||' '||trim(HYNR3)||' '||trim(HYNR4) LEG_NOTES,FIN_COL_OTHERS.FREE_TEXT FIN_NOTES,case when trim(trim(HYNR1)||' '||trim(HYNR2)||' '||trim(HYNR3)||' '||trim(HYNR4))  =trim(FIN_COL_OTHERS.FREE_TEXT) then 'TRUE' ELSE 'FALSE' END MATCH_NOTES
from hypf  
inner join c8pf on c8ccy=hyccy 
inner join gfpf on trim(gfpf.gfcus)= trim(hycus) and nvl(trim(gfpf.gfclc),' ') = nvl(trim(hyclc),' ') 
left join map_cif on trim(hycus)=trim(map_cif.gfcus) and nvl(trim(hyclc),' ')=nvl(trim(map_cif.gfclc),' ') 
left join YCCLC5PF01 on   trim(HYCLR)=trim(CCC5_CLR)
left join (select * from map_acc where schm_type<>'OOO')map_acc on leg_branch_id||leg_scan||leg_scas=lpad(CCC5_CLC,4,0)||CCC5_CUS||lpad(CCC5_CSEQ,3,0)
LEFT JOIN (SELECT CC_FINONE_ACCNT,SCMT.SECU_CODE,SCMT.MAX_CEILING_LIM,SCMT.RETAIN_MARGIN_PCNT,GAM.FORACID,SCMT.ITEM_DUE_DATE,SCMT.FREE_TEXT,SCMT.CUST_ID,accounts.orgkey,SECU_VALUE,corporate.CORP_KEY,SCMT.CRNCY_CODE FROM TBAADM.SCMT 
left join crmuser.accounts on accounts.CORE_CUST_ID =SCMT.CUST_ID
left join crmuser.corporate on corporate.CORE_CUST_ID =SCMT.CUST_ID 
LEFT JOIN TBAADM.GAM 
ON GAM.ACID = SCMT.LIEN_ACID
left join MIGADM.C_COLLOTHERS moth on moth.SECU_SRL_NUM = scmt.SECU_SRL_NUM WHERE  SCMT.SECU_TYPE_IND='O' AND SCMT.BANK_ID=GET_PARAM('BANK_ID')) FIN_COL_OTHERS
 ON TRIM(FIN_COL_OTHERS.orgkey) = TRIM(map_cif.fin_cif_id)    and nvl(trim(CC_FINONE_ACCNT),' ') = nvl(trim(hyclr),' ')
 and case when HYCLP in ('003','004') then 'PORTFOLI'
when HYCLP in ('022','026') then 'OTH-KWD'
end = SECU_CODE
-- AND round(to_number((hypf.hyclv)/power(10,c8ced)))  = round(FIN_COL_OTHERS.MAX_CEILING_LIM) 
where ((HYCLP in ('003','004') and SUBSTR(HYCLR,32,4) in('QUOT','UNQT','CASH')) or (HYCLP IN('022','026'))) and hypf.hyclv >= 0
--and to_number((hypf.hyclv)/power(10,c8ced)) <> 0; 
