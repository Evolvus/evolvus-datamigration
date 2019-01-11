--With split Overdue and Accrual Interest receviable--
drop table int_recv_pay_balance_trfr_bkp;
create table int_recv_pay_balance_trfr_bkp as
SELECT 
s5ab,contra_basic,c8ccyn,S5ACT, INTEREST_FCY,b.leg_acc_num,b.scheme_code,b.scheme_type, int_paid_bacid,int_coll_bacid,int_pandl_bacid_cr,int_pandl_bacid_dr,
fin_sol_id,new_fin_sol_id
FROM ACCT_WISE_INT_RECV_PAY_MAP a
inner join (select * from all_final_trial_balance)b on b.leg_acc_num = BRN||TRIM(a.DEAL_TYPE)||TRIM(a.DEAL_REF)
left join (select schm_code,int_paid_bacid,int_coll_bacid,int_pandl_bacid_cr,int_pandl_bacid_dr from tbaadm.gsp where bank_id = '01' and del_flg = 'N')gss 
on gss.schm_code = b.scheme_code
where INTEREST_FCY <> 0; 
drop table account_where_int_match_bk;
create table account_where_int_match_bk
as
select scab brn,scan basic,scas suf,scbal/power(10,c8ced)bal,interest from
(
select * from all_final_trial_balance where scact in ('YD','YI')
and isnumber(fin_acc_num) = 0 and scbal <> 0
)a
left join
(
select s5ab,contra_basic,c8ccyn,sum(interest_fcy)interest from int_recv_pay_balance_trfr_bkp
group by s5ab,contra_basic,c8ccyn
)b
on scab||scan||scas = s5ab||contra_basic||c8ccyn
inner join c8pf on c8ccy = scccy;
--With out split Overdue and Accrual Interest receviable--
drop table int_recv_pay_balance_trfr_bkp1;
create table int_recv_pay_balance_trfr_bkp1 as
SELECT 
s5ab,contra_basic,c8ccyn,S5ACT, INTEREST_FCY,b.leg_acc_num,b.scheme_code,b.scheme_type, int_paid_bacid,int_coll_bacid,int_pandl_bacid_cr,int_pandl_bacid_dr,
fin_sol_id,new_fin_sol_id	
FROM ACCT_WISE_INT_RECV_PAY_MAP1 a
inner join (select * from all_final_trial_balance)b on b.leg_acc_num = BRN||TRIM(a.DEAL_TYPE)||TRIM(a.DEAL_REF)
left join (select schm_code,int_paid_bacid,int_coll_bacid,int_pandl_bacid_cr,int_pandl_bacid_dr from tbaadm.gsp where bank_id = '01' and del_flg = 'N')gss 
on gss.schm_code = b.scheme_code
where INTEREST_FCY <> 0; 

drop table account_where_int_match_bk1;
create table account_where_int_match_bk1
as
select scab brn,scan basic,scas suf,scbal/power(10,c8ced)bal,interest from
(
select * from all_final_trial_balance where scact in ('YD','YI')
and isnumber(fin_acc_num) = 0 and scbal <> 0
)a
left join
(
select s5ab,contra_basic,c8ccyn,sum(interest_fcy)interest from int_recv_pay_balance_trfr_bkp1
group by s5ab,contra_basic,c8ccyn
)b
on scab||scan||scas = s5ab||contra_basic||c8ccyn
inner join c8pf on c8ccy = scccy;
TRUNCATE TABLE PREMOCK_RECON_temp;
INSERT INTO PREMOCK_RECON_temp
select distinct scab,scan,scas,EXTERNAL_ACC external_no,scccy,scctp,scact,SCACD,scheme_type,scheme_code,
a.GL_SUB_HEADCODE,
a.fin_Acc_num,
scbal/power(10,c8ced)balance ,((scbal/power(10,c8ced))*c8rte)  kwd_balance,case when scbal < 0 then 'D' else 'C' end CREDIT_DEBIT_INDICATOR
,''MASTER_REF,'C' indicator
from ALL_FINAL_TRIAL_BALANCE
left join map_acc a on leg_branch_id||leg_scan||leg_scas = scab||scan||scas   
inner join c8pf on c8ccy = scccy  
where scheme_type in ('SBA','CAA','ODA') and scheme_code not in('PISLA') --and scab||scan||scas not in(select LEG_BRANCH_ID||LEG_SCAN||leg_scas from map_acc_temp)
/*union all
select distinct scab,scan,scas,EXTERNAL_ACC external_no,scccy,scctp,scact,SCACD,scheme_type,scheme_code,
a.GL_SUB_HEADCODE,
TTUM1_MIGR_ACCT,
scbal/power(10,c8ced)balance ,((scbal/power(10,c8ced))*c8rte)  kwd_balance,case when scbal < 0 then 'D' else 'C' end CREDIT_DEBIT_INDICATOR
,''MASTER_REF,'C' indicator
from ALL_FINAL_TRIAL_BALANCE
left join map_acc_temp a on leg_branch_id||leg_scan||leg_scas = scab||scan||scas   
inner join c8pf on c8ccy = scccy  
where  scab||scan||scas  in(select LEG_BRANCH_ID||LEG_SCAN||leg_scas from map_acc_temp)*/
----TDA LAA and CLA Accounts
union all
select scab,scan,scas,trim(neean)external_no ,scccy,scctp,scact,SCACD,scheme_type,scheme_code, GL_SUB_HEAD_CODE , a.fin_Acc_num,-(otdla/POWER(10,c8pf.C8CED)),-((otdla/power(10,c8ced))*c8rte)  kwd_balance,case when -(otdla/POWER(10,c8pf.C8CED)) < 0 then 'D' else 'C' end CREDIT_DEBIT_INDICATOR
,''MASTER_REF,'C' indicator
from ALL_FINAL_TRIAL_BALANCE b
left join map_acc a on a.leg_acc_num   =b.deal_ref_num
left join (select * from otpf where  OTDLA <> 0)otpf on otbrnm||trim(otdlp)||trim(otdlr) =b.deal_ref_num
left join nepf on neab=scab and nean=scan and neas=scas
inner join c8pf on c8ccy = scccy  
where scheme_type in ('LAA')
and scab||scan||scas<>'0615755484300'
union all
select scab,scan,scas,trim(neean)external_no ,scccy,scctp,scact,SCACD,scheme_type,scheme_code, GL_SUB_HEAD_CODE , b.fin_Acc_num,scbal/power(10,c8ced),((scbal/power(10,c8ced))*c8rte)  kwd_balance,case when scbal < 0 then 'D' else 'C' end CREDIT_DEBIT_INDICATOR
,''MASTER_REF,'C' indicator
from ALL_FINAL_TRIAL_BALANCE b
left join map_acc a on a.leg_acc_num   =b.deal_ref_num
left join nepf on neab=scab and nean=scan and neas=scas
inner join c8pf on c8ccy = scccy  
where (scheme_type in ('TDA','PCA') or scheme_code  in('PISLA'))
union all
select scab,scan,scas,trim(neean)external_no, scccy,scctp,scact,SCACD,scheme_type,scheme_code,GL_SUB_HEAD_CODE, fin_Acc_num,scbal/power(10,c8ced),((scbal/power(10,c8ced))*c8rte)  kwd_balance,case when scbal < 0 then 'D' else 'C' end CREDIT_DEBIT_INDICATOR
,''MASTER_REF,'C' indicator
from ALL_FINAL_TRIAL_BALANCE b
left join nepf on neab=scab and nean=scan and neas=scas
inner join c8pf on c8ccy = scccy  
where scheme_type = 'CLA' 
--Dropped accounts
union all
select scab,scan,scas,trim(neean)external_no ,scccy,scctp,scact,SCACD,scheme_type,scheme_code,b.GL_SUB_HEAD_CODE,nvl(trim(a.fin_Acc_num),TTUM1_MIGR_ACCT),scbal/power(10,c8ced),((scbal/power(10,c8ced))*c8rte)  kwd_balance,case when scbal < 0 then 'D' else 'C' end CREDIT_DEBIT_INDICATOR
,''MASTER_REF,'O' indicator
from ALL_FINAL_TRIAL_BALANCE b
left join map_acc a on leg_branch_id||leg_scan||leg_scas = scab||scan||scas 
left join nepf on neab=scab and nean=scan and neas=scas
inner join c8pf on c8ccy = scccy  
where scheme_type in ('OOO') and scact not in('YU','T2','V5','V6','VC','W6','V7','R3','W5')  --and scab||scan||scas not in(select LEG_BRANCH_ID||LEG_SCAN||leg_scas from map_acc_temp)
--OAB Account without product split
union all
select scab,scan,scas,trim(neean)external_no,scccy,scctp,scact,SCACD,scheme_type,scheme_code,GL_SUB_HEAD_CODE gl_sub_head,
fin_acc_num ,
scbal/power(10,c8ced),((scbal/power(10,c8ced))*c8rte)  kwd_balance,case when scbal < 0 then 'D' else 'C' end CREDIT_DEBIT_INDICATOR
,''MASTER_REF,'O' indicator
from ALL_FINAL_TRIAL_BALANCE
left join nepf on neab=scab and nean=scan and neas=scas
inner join c8pf on c8ccy = scccy  
--where scheme_type= 'OAB' and scact not in('RL','TL','YD','YI','J1','YP','4D','NL','NT','OT','R3','S9')--Changed on 05-10-2017
where scheme_type= 'OAB' and scact not in('YD','YI','J1','YP','4D','NL','NT','OT','R3','S9')
and leg_acc_num   not in(select leg_acc_num from tfs_sol_map_acc) and leg_acc_num<>'0781800225414'
--unmapped office accounts
union all
select scab,scan,scas,trim(neean)external_no,scccy,scctp,scact,SCACD,scheme_type,scheme_code,GL_SUB_HEAD_CODE gl_sub_head,
fin_acc_num ,
scbal/power(10,c8ced),((scbal/power(10,c8ced))*c8rte)  kwd_balance,case when scbal < 0 then 'D' else 'C' end CREDIT_DEBIT_INDICATOR
,''MASTER_REF,'O' indicator
from ALL_FINAL_TRIAL_BALANCE
left join nepf on neab=scab and nean=scan and neas=scas
inner join c8pf on c8ccy = scccy  
where scheme_type= 'OAB' and scact  ='J1'
union all
select scab,scan,scas,trim(neean)external_no,scccy,scctp,scact,SCACD,scheme_type,scheme_code,GL_SUB_HEAD_CODE gl_sub_head,fin_Acc_num,scbal/power(10,c8ced),((scbal/power(10,c8ced))*c8rte)  kwd_balance,case when scbal < 0 then 'D' else 'C' end CREDIT_DEBIT_INDICATOR
,''MASTER_REF,'O' indicator
from ALL_FINAL_TRIAL_BALANCE
left join nepf on neab=scab and nean=scan and neas=scas
inner join c8pf on c8ccy = scccy  
where scheme_type= 'TFS' and scbal=0
union all
select scab,scan,scas,trim(neean)external_no,scccy,scctp,scact,SCACD,scheme_type,scheme_code,GL_SUB_HEAD_CODE gl_sub_head,fin_Acc_num,scbal/power(10,c8ced),((scbal/power(10,c8ced))*c8rte)  kwd_balance,case when scbal < 0 then 'D' else 'C' end CREDIT_DEBIT_INDICATOR,
''MASTER_REF,'O' indicator
from ALL_FINAL_TRIAL_BALANCE
left join nepf on neab=scab and nean=scan and neas=scas
inner join c8pf on c8ccy = scccy  
where scheme_type= 'TRY' and scbal<>0 and  scact not in('3A','3D','3G','3K','3W','3X','3Y','3Z','4A',
'D1','F1','F2','M1','M2','R4','S7','S8','V1','V2','V3','V4','W3','W4','W5','W6','V5','V6','VC','T2','R3','S9','T1','R1','V7','W1','W2')
and scan not in(
'804225','804250','804930','804935','804950','804955','804965','804960') ;
commit; 
 -- RL TL COMMITMENT accounts
/*INSERT INTO PREMOCK_RECON_temp --Changed on 05-10-2017
select to_char(scab)scab,to_char(scan)scan,to_char(scas)scas, to_char(trim(neean))external_no,to_char(scccy) scccy,to_char(scctp) scctp,to_char(scact) scact,to_char(SCACD)SCACD,''scheme_type,''scheme_code,
gl_sub_head_code gl_sub_head ,'603'||SUBSTR(TTUM1_MIGR_ACCT,4,2)||'90300001' fin_acc_num,scbal/power(10,c8ced) balance, ((scbal/power(10,c8ced))*c8rte)  kwd_balance,
case when scbal < 0 then 'D' else 'C' end CREDIT_DEBIT_INDICATOR,''MASTER_REF,'O' indicator
from all_final_trial_balance
inner join c8pf on c8ccy=scccy
inner join nepf on neab||nean||neas=scab||scan||scas
where scbal <> 0  and SCHEME_TYPE='OAB' and scact='RL'  
union all
select  to_char(scab)scab,to_char(scan)scan,to_char(scas)scas, to_char(trim(neean))external_no,to_char(scccy) scccy,to_char(scctp) scctp,to_char(scact) scact,to_char(SCACD)SCACD,''scheme_type,''scheme_code,
gl_sub_head_code gl_sub_head ,'603'||SUBSTR(TTUM1_MIGR_ACCT,4,2)||'90300002' fin_acc_num,scbal/power(10,c8ced) balance, ((scbal/power(10,c8ced))*c8rte)  kwd_balance,
case when scbal < 0 then 'D' else 'C' end CREDIT_DEBIT_INDICATOR,''MASTER_REF,'O' indicator
from all_final_trial_balance
inner join c8pf on c8ccy=scccy
inner join nepf on neab||nean||neas=scab||scan||scas
where scbal <> 0  and SCHEME_TYPE='OAB' and scact='TL';
commit; */
--Interest Recevied in advance--
INSERT INTO PREMOCK_RECON_temp
select a.scab,a.scan,a.scas,trim(a.scab||a.scan||a.scas)external_no,b.scccy,scctp,scact,SCACD,scheme_type,scheme_code,substr(b.fin_Acc_num,6,5) gl_sub_head,b.fin_Acc_num,acbal ,acbal_kwd,Part_Tran_Type
,''MASTER_REF,'O' indicator
from (
select  * from all_final_trial_balance where scact='YU' and   scab='0603' and scan in('878100','872075') and scas='414')a
inner join (
select new_fin_sol_id,scccy,fin_acc_num,sum(acbal)  acbal,sum(acbal_kwd) acbal_kwd, Part_Tran_Type,case when fin_Acc_num='6030147007030'
then '872075'
else '878100' end scan from (
select   new_fin_sol_id,scccy,NEW_FIN_SOL_ID||cnc.CRNCY_ALIAS_NUM||gsp.ADVANCE_INT_BACID fin_acc_num,
abs((nvl(to_number(V4AIM1),0)-nvl(to_number(V5AM1),0)) / power(10,c8ced)) acbal,
abs((nvl(to_number(V4AIM1),0)-nvl(to_number(V5AM1),0)) / power(10,c8ced))*c8rte acbal_kwd
,'C' Part_Tran_Type  
from all_final_trial_balance
inner join v5pf on trim(v5brnm)||trim(v5dlp)||trim(v5dlr)=leg_acc_num
inner join c8pf on c8ccy = v5ccy
left join v4pf on trim(v4brnm)||trim(v4dlp)||trim(v4dlr) = trim(v5brnm)||trim(v5dlp)||trim(v5dlr)
left join (select * from tbaadm.gsp where bank_id=get_param('BANK_ID'))gsp on gsp.schm_code=scheme_code
left join (select * from tbaadm.cnc where bank_id=get_param('BANK_ID'))cnc on cnc.CRNCY_CODE=scccy
where  DEAL_TYPE iN('LDA','BDT') and scbaL<>0 and (nvl(to_number(V4AIM1),0)-nvl(to_number(V5AM1),0))<>0)
group by new_fin_sol_id,scccy,fin_acc_num,Part_Tran_Type) b on a.new_fin_sol_id=b.new_fin_sol_id and a.scan=b.scan
union all
select a.scab,a.scan,a.scas,trim(a.scab||a.scan||a.scas)external_no,a.scccy,a.scctp,a.scact,a.SCACD,'OOO'scheme_type,'00000' scheme_code,'52000'gl_sub_head_code,''fin_Acc_num,scbal/power(10,c8ced) ACBAL,(scbal/power(10,c8ced))*c8rte ACBAL_KWD,
case when scbal<0 then 'D'
else 'C' end PART_TRAN_TYPE,''MASTER_REF,'O'indicator
from scpf a
inner join c8pf on c8ccy=scccy
where scact='YU' and scbal<>0;
--union all
--select scab,scan,scas,trim(scab||scan||scas)external_no,scccy,scctp,scact,SCACD,scheme_type,scheme_code,gl_sub_head_code,fin_Acc_num,111.364 ACBAL,111.364 ACBAL_KWD,
--'C'PART_TRAN_TYPE,''MASTER_REF,'O'indicator
--from all_final_trial_balance where ttum1_migr_acct='60101520000YU' and gl_sub_head_code='52000' and scan='872205';
commit;
--YD YI CUSTOMER SPLIT
INSERT INTO PREMOCK_RECON_temp 
select scab,scan,scas, trim(neean)external_no,scccy,scctp,scact,SCACD,''scheme_type,''scheme_code,
gl_sub_head_code gl_sub_head ,fin_acc_num,scbal/power(10,c8ced) balance, ((scbal/power(10,c8ced))*c8rte)  kwd_balance,
case when scbal < 0 then 'D' else 'C' end CREDIT_DEBIT_INDICATOR,''MASTER_REF,'O' indicator
from all_final_trial_balance
inner join c8pf on c8ccy=scccy
inner join nepf on neab||nean||neas=scab||scan||scas
where scact in('YD','YI') and scbal <> 0 and isnumber(fin_acc_num)=1 
and scab||scan||scas   not in('0601871100414','0602871100414','0604871100414','0605871100414','0607871100414','0609871100414','0610871100414','0612871100414','0616871100414','0621871100414','0780871135840')
union all
select scab,scan,scas, trim(neean)external_no, scccy, scctp, scact, SCACD,''scheme_type,''scheme_code,
gl_sub_head_code gl_sub_head ,(case when new_fin_sol_id<>'005' then
'603' else
new_fin_sol_id end)||substr(fin_acc_num,4,13)  fin_acc_num,scbal/power(10,c8ced) balance, ((scbal/power(10,c8ced))*c8rte)  kwd_balance,
case when scbal < 0 then 'D' else 'C' end CREDIT_DEBIT_INDICATOR,''MASTER_REF,'O' indicator
from all_final_trial_balance
inner join c8pf on c8ccy=scccy
inner join nepf on neab||nean||neas=scab||scan||scas
where scact in('YD','YI') and scbal <> 0 and isnumber(fin_acc_num)=1 
and scab||scan||scas    in('0601871100414','0602871100414','0604871100414','0605871100414','0607871100414','0609871100414','0610871100414','0612871100414','0616871100414','0621871100414','0780871135840')
union all
select  scab,scan,scas, scab||scan||scas external_no,scccy,
scctp,scact,SCACD,''scheme_type,''scheme_code,
substr(
TO_CHAR (
MAP_SOL.FIN_SOL_ID 
|| TO_CHAR (CRNCY_ALIAS_NUM)
||
CASE 
WHEN scact='YI' and TRIM(INT_PAID_BACID) IS NOT NULL THEN INT_PAID_BACID 
WHEN scact='YD' and TRIM(INT_COLL_BACID) IS NOT NULL THEN INT_COLL_BACID 
WHEN TRIM(INT_PAID_BACID) IS NOT NULL THEN INT_PAID_BACID 
WHEN TRIM(INT_COLL_BACID) IS NOT NULL THEN INT_COLL_BACID 
END
),6,5)gl_sub_head,
TO_CHAR (
MAP_SOL.FIN_SOL_ID 
|| TO_CHAR (CRNCY_ALIAS_NUM)
||
CASE 
WHEN scact='YI' and TRIM(INT_PAID_BACID) IS NOT NULL THEN INT_PAID_BACID 
WHEN scact='YD' and TRIM(INT_COLL_BACID) IS NOT NULL THEN INT_COLL_BACID 
WHEN TRIM(INT_PAID_BACID) IS NOT NULL THEN INT_PAID_BACID 
WHEN TRIM(INT_COLL_BACID) IS NOT NULL THEN INT_COLL_BACID 
END
)fin_acc_num,
INTEREST_FCY balance,
round((INTEREST_FCY) * c8rte,3) kwd_balance,
case when INTEREST_FCY < 0 then 'D' else 'C' end CREDIT_DEBIT_INDICATOR,''MASTER_REF,'O' indicator
from
(
select * from all_final_trial_balance where scact in ('YD','YI')
and isnumber(fin_acc_num) = 0 and scbal <> 0
)a
inner join (select s5ab,contra_basic,c8ccyn,NVL(INT_PAID_BACID,' ')INT_PAID_BACID,NVL(INT_COLL_BACID,' ')INT_COLL_BACID, sum(interest_fcy)interest_fcy
from int_recv_pay_balance_trfr_bkp group by s5ab,contra_basic,c8ccyn,NVL(INT_PAID_BACID,' '),NVL(INT_COLL_BACID,' ')
)	 on scab||scan||scas = s5ab||contra_basic||c8ccyn
LEFT JOIN (SELECT * FROM tbaadm.cnc WHERE bank_id = get_param ('BANK_ID')) CNC ON SCCCY = CRNCY_CODE
LEFT JOIN MAP_SOL ON SCAB = BR_CODE
inner join account_where_int_match_bk on brn = scab and basic = scan and suf = scas
inner join c8pf on c8ccy = scccy
WHERE (TRIM(INT_PAID_BACID) IS NOT NULL OR TRIM(INT_COLL_BACID) IS NOT NULL);
commit; 
--YD YI MIGR BALANCE---
INSERT INTO PREMOCK_RECON_temp
select scab,scan,scas, scab||scan||scas EXTERNAL_NO,scccy,scctp,scact,scacd,''SCHEME_TYPE,''SCHEME_CODE,'52000'GL_SUB_HEADCODE,
ttum1_migr_acct, (scbal+scsuma)/power(10,c8ced) -nvl(interest,0) balance,
round(((scbal+scsuma)/power(10,c8ced) -nvl(interest,0))*c8rte,3) kwd_balance,case when (scbal+scsuma)/power(10,c8ced) -nvl(interest,0)<0 then 'D'
else 'C' end CREDIT_DEBIT_INDICATOR,''MASTER_REF,'O' INDICATOR
from scpf a
inner join
(select scab brn,scan basic,scas suf,scbal/power(10,c8ced)bal,interest,ttum1_migr_acct from
(
select * from all_final_trial_balance 
where scact in ('YD','YI')
and isnumber(fin_acc_num) = 0 and scbal <> 0
)a
left join
(
select s5ab,contra_basic,c8ccyn,sum(interest_fcy+nvl(overdue_amt,0))interest  from int_recv_pay_balance_trfr_bkp a
left join (select deal_no,sum(overdue_amt) overdue_amt from (
select leg_acc_num  deal_no,to_number(lsamtd - lsamtp)/POWER(10,c8pf.C8CED) overdue_amt
FROM map_acc
inner join lspf on  lsbrnm||trim(lsdlp)||trim(lsdlr) =leg_acc_num 
inner join c8pf on c8ccy = map_acc.currency
where map_acc.schm_type='LAA'
and lsmvt = 'I' and lsamtd <> 0 and (lsamtd -lsamtp) < 0 and lsdte <= get_param('EODCYYMMDD'))
where deal_no not in('0601ZAB1110505000045','0602NFX1090308000011','0612ZAB1111229000005','0615ZAB1111228000020')
group by deal_no) lat on lat.deal_no=a.leg_acc_num
WHERE (TRIM(INT_PAID_BACID) IS NOT NULL OR TRIM(INT_COLL_BACID) IS NOT NULL)
group by s5ab,contra_basic,c8ccyn
)b
on scab||scan||scas = s5ab||contra_basic||c8ccyn
inner join c8pf on c8ccy = scccy
where nvl(scbal/power(10,c8ced),0) <> nvl(interest,0)
)b
on brn||basic||suf = scab||scan||scas
inner join c8pf on c8ccy = scccy
where ((scbal+scsuma)/power(10,c8ced)) <> nvl(interest,0)
union all
select scab,scan,scas, scab||scan||scas EXTERNAL_NO,scccy,scctp,scact,scacd,''SCHEME_TYPE,''SCHEME_CODE,'52000'GL_SUB_HEADCODE,
ttum1_migr_acct,  -nvl(interest,0) balance,
round((-nvl(interest,0))*c8rte,3) kwd_balance,case when  -nvl(interest,0)<0 then 'D'
else 'C' end CREDIT_DEBIT_INDICATOR,''MASTER_REF,'O' INDICATOR
from scpf a
inner join
(select scab brn,scan basic,scas suf,scbal/power(10,c8ced)bal,interest,ttum1_migr_acct from
(
select * from all_final_trial_balance 
where scact in ('YD','YI')
and isnumber(fin_acc_num) = 0 and scbal <> 0
)a
inner join
(
select s5ab,contra_basic,c8ccyn,sum(nvl(overdue_amt,0))interest  from int_recv_pay_balance_trfr_bkp a
inner join (select deal_no,sum(overdue_amt) overdue_amt from (
select leg_acc_num  deal_no,to_number((lsamtd - lsamtp))/POWER(10,c8pf.C8CED) overdue_amt
FROM map_acc
inner join lspf on  lsbrnm||trim(lsdlp)||trim(lsdlr) =leg_acc_num 
inner join c8pf on c8ccy = map_acc.currency
where map_acc.schm_type='LAA'
and lsmvt = 'I' and lsamtd <> 0 and (lsamtd -lsamtp) < 0 and lsdte <= get_param('EODCYYMMDD'))
where deal_no  in('0601ZAB1110505000045','0602NFX1090308000011','0612ZAB1111229000005','0615ZAB1111228000020')
group by deal_no) lat on lat.deal_no=a.leg_acc_num
WHERE (TRIM(INT_PAID_BACID) IS NOT NULL OR TRIM(INT_COLL_BACID) IS NOT NULL)
group by s5ab,contra_basic,c8ccyn
)b
on scab||scan||scas = s5ab||contra_basic||c8ccyn
inner join c8pf on c8ccy = scccy
where nvl(scbal/power(10,c8ced),0) <> nvl(interest,0)
)b
on brn||basic||suf = scab||scan||scas
inner join c8pf on c8ccy = scccy
where ((scbal+scsuma)/power(10,c8ced)) <> nvl(interest,0);
commit;

--IIS INSERT
/*INSERT INTO PREMOCK_RECON_temp
select to_char(leg_branch_id) scab,to_char(leg_scan) scan,to_char(leg_scas) scas ,trim(neean) external_no,currency,'',
'J1'leg_acct_type,'','IIS' scheme_type,'IIS'scheme_code, substr(case when trim(NPL) in('20','50')
then to_char(map_acc.fin_sol_id||cnc.CRNCY_ALIAS_NUM||PAST_DUE_INT_COLL_BACID)
else to_char(map_acc.fin_sol_id||cnc.CRNCY_ALIAS_NUM||PRINCIPAL_LOSSLINE_BACID) end,6,5) gl_sub_head,
case when trim(NPL) in('20','50')
then to_char(map_acc.fin_sol_id||cnc.CRNCY_ALIAS_NUM||PAST_DUE_INT_COLL_BACID)
else to_char(map_acc.fin_sol_id||cnc.CRNCY_ALIAS_NUM||PRINCIPAL_LOSSLINE_BACID) end 
fin_Acc_num,-to_number(TOTAL_INTEREST_PAST_DUE) balance,-to_number(TOTAL_INTEREST_PAST_DUE) kwd_balance,
'D' CREDIT_DEBIT_INDICATOR,''MASTER_REF,'O' indicator 
from iis 
left join map_Acc on DEL_REF=substr(leg_acc_num,8,15) and trim(ACC_NO)=fin_cif_id
left join nepf on neab||nean||neas=leg_branch_id||leg_scan||leg_scas
left join (select * from tbaadm.gsp where bank_id=get_param('BANK_ID'))gss on gss.schm_code=MAP_ACC.SCHM_CODE
left join (select * from tbaadm.cnc where bank_id=get_param('BANK_ID'))cnc on cnc.CRNCY_CODE=map_acc.currency
where leg_acc_num is   not null and trim(PAST_DUE_INT_COLL_BACID) is not null and triM(PRINCIPAL_LOSSLINE_BACID) is not null
union all
select to_char(a.scab),to_char(a.scan),to_char(a.scas),a.scab||a.scan||a.scas external_no,to_char(scccy),to_char(scctp),to_char(scact),to_char(SCACD),
'IIS'scheme_type,'IIS'scheme_code,'52000'gl_sub_head,fin_acc_num,-TOTAL_INTEREST_PAST_DUE balance,-TOTAL_INTEREST_PAST_DUE*c8rte kwd_balance,
case when -TOTAL_INTEREST_PAST_DUE < 0 then 'D' else 'C' end CREDIT_DEBIT_INDICATOR,''MASTER_REF,'O' indicator
from all_final_trial_balance a
inner join c8pf on c8ccy=scccy
inner join (
select sum(to_number(TOTAL_INTEREST_PAST_DUE))TOTAL_INTEREST_PAST_DUE,case when npl in('20','50') then '879460'
else '879560' end scan
from iis 
left join map_Acc on DEL_REF=substr(leg_acc_num,8,15) and trim(ACC_NO)=fin_cif_id
left join (select * from tbaadm.gsp where bank_id=get_param('BANK_ID'))gss on gss.schm_code=MAP_ACC.SCHM_CODE
left join (select * from tbaadm.cnc where bank_id=get_param('BANK_ID'))cnc on cnc.CRNCY_CODE=map_acc.currency
where leg_acc_num is    null
group by case when npl in('20','50') then '879460'
else '879560' end) iis on iis.scan=a.scan;
commit;*/
--YP ACCOUNT INSERT--
INSERT INTO PREMOCK_RECON_temp 
select scab,scan,scas, trim(neean)external_no,scccy,scctp,scact,SCACD,''scheme_type,''scheme_code,
to_char(gl_sub_head_code) gl_sub_head ,fin_acc_num,scbal/power(10,c8ced) balance, ((scbal/power(10,c8ced))*c8rte)  kwd_balance,
case when scbal < 0 then 'D' else 'C' end CREDIT_DEBIT_INDICATOR,''MASTER_REF,'O' indicator
from all_final_trial_balance
inner join c8pf on c8ccy=scccy
inner join nepf on neab||nean||neas=scab||scan||scas
where scact in('YP') and scbal <> 0 and isnumber(gl_sub_head_code)=1
and leg_acc_num   not in(select leg_acc_num from tfs_sol_map_acc) 
--and leg_acc_num   not in(select leg_acc_num from tfs_sol_map_acc) and scan 
-- not in('900050','900055','900060','900075','900090','900190','901050','901075','901090','903290','903590',
--'907000','913500','915127','915128','915129','915130','915205','915210','915228','915229','915230','970800')
union all
--select scab,scan,scas, trim(neean)external_no,scccy,scctp,scact,SCACD,''scheme_type,''scheme_code,
--'52000' gl_sub_head ,fin_acc_num,scbal/power(10,c8ced) balance, ((scbal/power(10,c8ced))*c8rte)  kwd_balance,
--case when scbal < 0 then 'D' else 'C' end CREDIT_DEBIT_INDICATOR,''MASTER_REF,'O' indicator
--from all_final_trial_balance
--inner join c8pf on c8ccy=scccy
--inner join nepf on neab||nean||neas=scab||scan||scas
--where scact in('YP') and scbal <> 0  and scab||scan||scas='0781927640840'
--union all
select scab,scan,scas, trim(neean)external_no,scccy,scctp,scact,SCACD,''scheme_type,''scheme_code,
to_char(gl_sub_head_code) gl_sub_head ,case when substr(trim(FIN_ACC_NUM),6,5)  in('70004','70011') then  trim(FIN_ACC_NUM)
         when substr(trim(FIN_ACC_NUM),6,5)  in('70000','70001','70002','70003','70010','70020',
         '70021','70022','70030','70031','70040','70041','70042','70043','70099') then  trim(FIN_ACC_NUM)
         else fin_acc_num end fin_acc_num,scbal/power(10,c8ced) balance, ((scbal/power(10,c8ced))*c8rte)  kwd_balance,
case when scbal < 0 then 'D' else 'C' end CREDIT_DEBIT_INDICATOR,''MASTER_REF,'O' indicator
from all_final_trial_balance
inner join c8pf on c8ccy=scccy
inner join nepf on neab||nean||neas=scab||scan||scas
where  leg_acc_num    in(select leg_acc_num from tfs_sol_map_acc) and scbal<>0
union all
--select scab,scan,scas, trim(neean)external_no,scccy,scctp,scact,SCACD,''scheme_type,''scheme_code,
--to_char(gl_sub_head_code) gl_sub_head ,case when  scan in(
--'900050','900055','900060','900075','900090','900190','901050','901075',
--'901090','903290','903590','907000','915127','915128','915129','915130',
--'915205','915210','915228','915229','915230','970800') then  '700'||substr(trim(FIN_ACC_NUM),4,13)
--when scan='913500' then '900'||substr(trim(FIN_ACC_NUM),4,13) end fin_acc_num,scbal/power(10,c8ced) balance, ((scbal/power(10,c8ced))*c8rte)  kwd_balance,
--case when scbal < 0 then 'D' else 'C' end CREDIT_DEBIT_INDICATOR,''MASTER_REF,'O' indicator
--from all_final_trial_balance
--inner join c8pf on c8ccy=scccy
--inner join nepf on neab||nean||neas=scab||scan||scas
--where   scbal<>0  and scan 
-- in('900050','900055','900060','900075','900090','900190','901050','901075','901090','903290','903590',
--'907000','913500','915127','915128','915129','915130','915205','915210','915228','915229','915230','970800')
--union all
select  scab,scan,scas, scab||scan||scas external_no,scccy,
scctp,scact,SCACD,''scheme_type,''scheme_code,
to_char(substr(Finacle_PLC,1,5))gl_sub_head,
SUBSTR(FIN_ACC_NUM,1,5)||TO_CHAR(Finacle_PLC) fin_acc_num,
(SCBAL/POWER(10,C8CED)) balance,
round ((SCBAL/POWER(10,C8CED)) * c8rte,3) kwd_balance,
case when SCBAL < 0 then 'D' else 'C' end CREDIT_DEBIT_INDICATOR,''MASTER_REF,'O' indicator
FROM
(
select * from all_final_trial_balance where scact = 'YP' and substr(fin_acc_num,6,8) like '52000%' AND SCBAL <> 0
 )A
LEFT JOIN YP_MAPPING ON  MigR_placeholder = substr(fin_acc_num,6,8)
INNER JOIN C8PF ON C8CCY = SCCCY;
commit; 





--Overdue Interest--
INSERT INTO PREMOCK_RECON_temp
select LEG_BRANCH_ID,LEG_SCAN,LEG_SCAS,EXTERNAL_ACC,CURRENCY,LEG_CUST_TYPE,LEG_ACCT_TYPE,scacd,schm_type,schm_code,
GL_SUB_HEADCODE,
fin_Acc_num,sum(OVERDUE_AMT) OVERDUE_AMT,sum(OVERDUE_AMT_KWD)OVERDUE_AMT_KWD,CREDIT_DEBIT_INDICATOR,'' MASTER_REF,'O'INDICATOR
from(
select leg_branch_id,leg_scan,leg_scas,
map_acc.EXTERNAL_ACC,MAP_ACC.CURRENCY,MAP_ACC.LEG_ACCT_TYPE,MAP_ACC.LEG_CUST_TYPE,scpf.scacd,MAP_ACC.SCHM_TYPE,'OVERDUE_INT' SCHM_code,
substr(lsp.LOAN_INT_BACID,1,5) GL_SUB_HEADCODE,
MAP_ACC.FIN_SOL_ID||cnc.CRNCY_ALIAS_NUM||lsp.LOAN_INT_BACID fin_acc_num,to_number(lsamtd - lsamtp)/POWER(10,c8pf.C8CED) overdue_amt,
(to_number(lsamtd - lsamtp)/POWER(10,c8pf.C8CED))*c8rte overdue_amt_kwd,case when to_number(lsamtd - lsamtp)/POWER(10,c8pf.C8CED)<0 then 'D'
else 'C' end CREDIT_DEBIT_INDICATOR
FROM map_acc
inner join lspf on  lsbrnm||trim(lsdlp)||trim(lsdlr) =leg_acc_num 
inner join c8pf on c8ccy = map_acc.currency
inner join (select * from tbaadm.lsp where bank_id=get_param('BANK_ID'))lsp on lsp.schm_code=map_acc.schm_code
inner join (select * from tbaadm.cnc where bank_id=get_param('BANK_ID'))cnc on cnc.crncy_code=MAP_ACC.CURRENCY
inner join scpf on leg_branch_id||leg_scan||leg_scas=scab||scan||scas
where map_acc.schm_type='LAA' 
--and leg_Acc_num not in('0609NFX1160823000046','0612NFX1160823000060','0612NFX1170221000011','0633NFX1160228000013' --This deal_no execlude for 30 JUN DATA
	and leg_Acc_num not in('0600NFX1170316000052','0609NFX1170516000008','0612NFX1170112000043','0612NFX1160823000060','0612NFX1170221000011','0624NFX1161215000051','0624NFX1170511000046','0633NFX1160228000013','0635NFX1151122000013'
--and leg_Acc_num not in('0600NFX1170316000052','0602NFX1151004000015','0607NFX1140211000041','0609NFX1150723000018','0612NFX1160823000060','0612NFX1170221000011','0633NFX1160228000013','0635NFX1151122000013'
--,'0601ZAB1110505000045','0602NFX1090308000011','0612ZAB1111229000005','0615ZAB1111228000020'
)
and lsmvt = 'I' and lsamtd <> 0 and (lsamtd -lsamtp) < 0 and lsdte <= get_param('EODCYYMMDD'))
group by LEG_BRANCH_ID,LEG_SCAN,LEG_SCAS,EXTERNAL_ACC,CURRENCY,LEG_ACCT_TYPE,LEG_CUST_TYPE,scacd,schm_type,schm_code,GL_SUB_HEADCODE,fin_Acc_num,CREDIT_DEBIT_INDICATOR;
commit;


INSERT INTO PREMOCK_RECON_temp
SELECT 
'' SCAB,
'' SCAN,
'' SCAS,
'0'||SUBSTR(TRIM(PCP.CUS_MNM),8,3)||SUBSTR(TRIM(PCP.CUS_MNM),1,6) EXTERNAL_NO,
T4.CURRENCY,
'' SCCTP,
T4.ACCOUNT_TYPE SCACT,
'' SCACD,
'' SCHEME_TYPE,
T4.PRODUCT_CODE SCHEME_CODE,
SUBSTR(T4.DEBIT_BACID,1,5) GL_SUB_HEADCODE,
TRIM(T4.TARGET_SOL_ID)||T4.CNC_ALIAS||T4.DEBIT_BACID FIN_ACC_NUM,
TO_NUMBER(0-T4.AMOUNT) BALANCE,
TO_NUMBER(0-KWD_EQUIVALENT) KWD_BALANCE,
'D' CREDIT_DEBIT_INDICATOR,
T4.ID MASTER_REF,'TF' indicator
FROM TF_TTUM04 T4
LEFT JOIN MASTER_ODS MA ON T4.ID=MA.MASTER_REF
LEFT JOIN LCMASTER_ODS LC ON LC.KEY97=MA.KEY97
LEFT JOIN PARTYDTLS_ODS PCP ON PCP.KEY97=MA.PRIMARYCUS
WHERE T4.ACCOUNT_TYPE IN ('SM','RJ','SY','XG','SQ','SO','SR','SU','SV','ST','SS','SW','RK')
UNION ALL
SELECT 
'' SCAB,
'' SCAN,
'' SCAS,
'0'||SUBSTR(TRIM(PCP.CUS_MNM),8,3)||SUBSTR(TRIM(PCP.CUS_MNM),1,6) EXTERNAL_NO,
T4.CURRENCY,
'' SCCTP,
T4.ACCOUNT_TYPE SCACT,
'' SCACD,
'' SCHEME_TYPE,
T4.PRODUCT_CODE SCHEME_CODE,
SUBSTR(T4.DEBIT_BACID,1,5) GL_SUB_HEADCODE,
TRIM(T4.TARGET_SOL_ID)||T4.CNC_ALIAS||T4.DEBIT_BACID FIN_ACC_NUM,
TO_NUMBER(0-T4.AMOUNT) BALANCE,
TO_NUMBER(0-KWD_EQUIVALENT) KWD_BALANCE,
'D' CREDIT_DEBIT_INDICATOR,
T4.ID MASTER_REF,'TF' indicator
FROM TF_TTUM04 T4
LEFT JOIN MASTER_ODS MA ON T4.ID=MA.MASTER_REF
LEFT JOIN LCMASTER_ODS LC ON LC.KEY97=MA.KEY97
LEFT JOIN PARTYDTLS_ODS PCP ON PCP.KEY97=LC.RCVD_PTY
WHERE ACCOUNT_TYPE IN ('RV','RC')
UNION ALL
SELECT 
'' SCAB,
'' SCAN,
'' SCAS,
'0'||SUBSTR(TRIM(PCP.CUS_MNM),8,3)||SUBSTR(TRIM(PCP.CUS_MNM),1,6) EXTERNAL_NO,
T4.CURRENCY,
'' SCCTP,
T4.ACCOUNT_TYPE SCACT,
'' SCACD,
'' SCHEME_TYPE,
T4.PRODUCT_CODE SCHEME_CODE,
SUBSTR(T4.DEBIT_BACID,1,5) GL_SUB_HEADCODE,
TRIM(T4.TARGET_SOL_ID)||T4.CNC_ALIAS||T4.DEBIT_BACID FIN_ACC_NUM,
TO_NUMBER(0-T4.AMOUNT) BALANCE,
TO_NUMBER(0-KWD_EQUIVALENT) KWD_BALANCE,
'D' CREDIT_DEBIT_INDICATOR,
T4.ID MASTER_REF,'TF' indicator
FROM TF_TTUM04 T4
LEFT JOIN MASTER_ODS MA ON T4.ID=MA.MASTER_REF
LEFT JOIN LCMASTER_ODS LC ON LC.KEY97=MA.KEY97
LEFT JOIN PARTYDTLS_ODS PCP ON PCP.KEY97=LC.APP_PTY
WHERE ACCOUNT_TYPE IN ('LQ','RA','RB','RH','XA','XB')
UNION ALL
SELECT 
'' SCAB,
'' SCAN,
'' SCAS,
'0'||SUBSTR(TRIM(PCP.CUS_MNM),8,3)||SUBSTR(TRIM(PCP.CUS_MNM),1,6) EXTERNAL_NO,
T4.CURRENCY,
'' SCCTP,
T4.ACCOUNT_TYPE SCACT,
'' SCACD,
'' SCHEME_TYPE,
T4.PRODUCT_CODE SCHEME_CODE,
SUBSTR(T4.CREDIT_BACID,1,5) GL_SUB_HEADCODE,
TRIM(T4.TARGET_SOL_ID)||T4.CNC_ALIAS||T4.CREDIT_BACID FIN_ACC_NUM,
TO_NUMBER(T4.AMOUNT) BALANCE,
TO_NUMBER(KWD_EQUIVALENT) KWD_BALANCE,
'C' CREDIT_DEBIT_INDICATOR,
T4.ID MASTER_REF,'TF' indicator
FROM TF_TTUM04 T4
LEFT JOIN MASTER_ODS MA ON T4.ID=MA.MASTER_REF
LEFT JOIN LCMASTER_ODS LC ON LC.KEY97=MA.KEY97
LEFT JOIN PARTYDTLS_ODS PCP ON PCP.KEY97=MA.PRIMARYCUS
WHERE T4.ACCOUNT_TYPE IN ('DJ','DK')
union all
SELECT 
SUBSTR(EQUATION_MAP_AC,1,4) SCAB,
SUBSTR(EQUATION_MAP_AC,5,6) SCAN,
SUBSTR(EQUATION_MAP_AC,11,3) SCAS,
'' EXTERNAL_NO,
T4.CURRENCY,
'' SCCTP,
T4.CONTRA_TYPE SCACT,
'' SCACD,
'' SCHEME_TYPE,
T4.PRODUCT_CODE SCHEME_CODE,
SUBSTR(T4.CREDIT_BACID,1,5) GL_SUB_HEADCODE,
TRIM(T4.TARGET_SOL_ID)||T4.CNC_ALIAS||T4.CREDIT_BACID FIN_ACC_NUM,
TO_NUMBER(T4.AMOUNT) BALANCE,
TO_NUMBER(KWD_EQUIVALENT) KWD_BALANCE,
'C' CREDIT_DEBIT_INDICATOR,
T4.ID MASTER_REF,'TF' indicator
FROM TF_TTUM04 T4
LEFT JOIN MASTER_ODS MA ON T4.ID=MA.MASTER_REF
LEFT JOIN LCMASTER_ODS LC ON LC.KEY97=MA.KEY97
LEFT JOIN PARTYDTLS_ODS PCP ON PCP.KEY97=MA.PRIMARYCUS
WHERE T4.CONTRA_TYPE IN ('TA','TB','TC','TE','TH','TJ','TK','TV','UG','UM','UY');
commit;
INSERT INTO PREMOCK_RECON_temp
SELECT trim(SCAB), trim(SCAN), trim(SCAS), trim(EXTERNAL_NO), trim(CURRENCY), trim(SCCTP), trim(SCACT), trim(SCACD), trim(SCHEME_TYPE), trim(SCHEME_CODE), trim(GL_SUB_HEADCODE), trim(FIN_ACC_NUM), trim(BALANCE), trim(KWD_BALANCE), 
trim(CREDIT_DEBIT_INDICATOR), trim(REFERENCE),'TR' indicator 
FROM PREMOCK_TREASURY_RECON;
commit;
drop table PREMOCK_RECON_temp_clean;
create table PREMOCK_RECON_temp_clean as 
select trim(SCAB)SCAB, trim(SCAN)SCAN, trim(SCAs)SCAs, trim(EXTERNAL_NO)EXTERNAL_NO, trim(CURRENCY)CURRENCY, trim(SCCTP)SCCTP, trim(SCACT)SCACT, trim(SCACD)SCACD,
trim(SCHEME_TYPE)SCHEME_TYPE, trim(SCHEME_CODE)SCHEME_CODE,trim(GL_SUB_HEADCODE)GL_SUB_HEADCODE,trim(FIN_ACC_NUM)FIN_ACC_NUM,trim(BALANCE)BALANCE,trim(round(KWD_BALANCE,3))KWD_BALANCE,
trim(CREDIT_DEBIT_INDICATOR) CREDIT_DEBIT_INDICATOR, trim(MASTER_REF)MASTER_REF, trim(INDICATOR)INDICATOR
from PREMOCK_RECON_temp; 
 