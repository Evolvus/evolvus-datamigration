-- File Name        : gen_map_cif.sql
-- File Created for    : generation of CIF
-- Created By        : Kumaresan.B
-- Client              : ABK for UAE
-- Created On        : 18-04-2016
-------------------------------------------------------------------
alter session set "_hash_join_enabled" = true;
drop SEQUENCE cif_seq;
CREATE SEQUENCE cif_seq
 START WITH     1
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;
truncate table map_cif;
truncate table CIF_AC_SEQ;
insert into map_cif 
select gfcpnc,
--gfbrnm,
case when trim(gfbrnm) is not null then trim(gfbrnm)
else lpad(nvl(trim(gfclc),'0800'),4,0) end,
lpad(to_char(to_number(cabbn))||gfcpnc,10,'0'),
--gfclc||gfcus,
--'1'||LPAD(cif_seq.nextval,9,'0'),
--case when trim(gfbrnm) is not null then trim(gfbrnm)
--else lpad(nvl(trim(gfclc),'0600'),4,0) end,
map_sol.fin_sol_id,
GFCUN,
decode(GFCTP,
'EA','Y',
'EB','Y',
'EC','Y',
'EL','Y',
'EM','Y',
'ET','Y',
'EU','Y',
'EW','Y',
'N'),
gfcus,gfclc,gfcpnc,gfbrnm,'','N' 
from gfpf
inner join (select distinct scan from scpf where  (scai30 ='N' or (scai30 ='Y' and scbal <> 0)
or (scai30='Y' and case when sccad<>0 then to_date(get_date_fm_btrv(sccad),'YYYYMMDD')end between to_date(get_param('FTP_START_DT'),'DD-MM-YYYY') and to_date(get_param('FTP_END_DT'),'DD-MM-YYYY')
and scai47 = 'N')))scpf on scan = gfcpnc
left join capf on case when trim(gfbrnm) is not null then to_char(trim(gfbrnm))
when lpad(nvl(trim(gfclc),'0800'),4,0)='0800' then 'ABKD'
else to_char(lpad(trim(gfclc),4,0))  end = cabrnm
left join map_sol on br_code= cabbn ;
commit;
insert into map_cif
select 
gfcpnc,
--gfbrnm,
case when trim(gfbrnm) is not null then trim(gfbrnm)
else lpad(nvl(trim(gfclc),'0800'),4,0) end,
lpad(to_char(to_number(cabbn))||gfcpnc,10,'0'),
--gfclc||gfcus,
--'1'||LPAD(cif_seq.nextval,9,'0'),
--case when trim(gfbrnm) is not null then trim(gfbrnm)
--else lpad(nvl(trim(gfclc),'0600'),4,0) end,
map_sol.fin_sol_id,
GFCUN,
decode(GFCTP,
'EA','Y',
'EB','Y',
'EC','Y',
'EL','Y',
'EM','Y',
'ET','Y',
'EU','Y',
'EW','Y',
'N'),
gfcus,gfclc,gfcpnc,gfbrnm,'','N'  
from 
gfpf
left join capf on case when trim(gfbrnm) is not null then to_char(trim(gfbrnm))
when lpad(nvl(trim(gfclc),'0800'),4,0)='0800' then 'ABKD'
else to_char(lpad(trim(gfclc),4,0))  end = cabrnm
left join map_sol on br_code= cabbn 
where (GFYOPI='Y' or GFYTRI = 'Y')
and not exists(select * from map_cif where trim(map_cif.gfcus)=trim(gfpf.gfcus) and nvl(map_cif.gfclc,' ')=nvl(gfpf.gfclc,' '));
update map_cif set leg_cust_branch='ABKD',fin_sol_id='800' where fin_sol_id is  null;
commit;
insert into CIF_AC_SEQ select fin_cif_id , 1 from map_cif;
commit;
--SBA,CAA,ODA----
truncate table map_acc;
insert into map_acc
select 
distinct
scab,
scan,
scas,
'',
gfpf.gfcus,
gfctp,
scact,
scab||scan||scas,
map_cif.fin_cif_id,
--substr(scab,2,3),
map_sol.fin_sol_id,
null,null, null, 
migappuae.get_gl_subhead_code(scact,scccy,SCCTP,scbal,scodl,'','','','',scaig4,trim(v5pf.v5dlp),trim(DERIVED_FROM_BASE),trim(ACTUAL_RATE),scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,
case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
SUBSTR (get_schm_type_code (scact,
                                          scccy,
                                          SCCTP,
                                          scbal,
                                          scodl,
                                          '',
                                          '',
                                          '',
                                          '',
                                          scaig4,
                                          TRIM (v5dlp),
                                          TRIM (DERIVED_FROM_BASE),
                                          TRIM (ACTUAL_RATE),
                                          scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,
										  case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
                    INSTR (get_schm_type_code (scact,
                                                   scccy,
                                                   SCCTP,
                                                   scbal,
                                                   scodl,
                                                   '',
                                                   '',
                                                   '',
                                                   '',
                                                   scaig4,
                                                   TRIM (v5dlp),
                                                   TRIM (DERIVED_FROM_BASE),
                                                   TRIM (ACTUAL_RATE),
                                                   scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,
												   case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
                           '|')
                  + 1,
                  3)
             SCHEME_TYPE,
          SUBSTR (get_schm_type_code (scact,
                                          scccy,
                                          SCCTP,
                                          scbal,
                                          scodl,
                                          '',
                                          '',
                                          '',
                                          '',
                                          scaig4,
                                          TRIM (v5dlp),
                                          TRIM (DERIVED_FROM_BASE),
                                          TRIM (ACTUAL_RATE),
                                          scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,
										  case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
                  1,
                    INSTR (get_schm_type_code (scact,
                                                   scccy,
                                                   SCCTP,
                                                   scbal,
                                                   scodl,
                                                   '',
                                                   '',
                                                   '',
                                                   '',
                                                   scaig4,
                                                   TRIM (v5dlp),
                                                   TRIM (DERIVED_FROM_BASE),
                                                   TRIM (ACTUAL_RATE),
                                                   scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,
												   case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
                           '|')
                  - 1) schm_code,
scccy,
NEIBAN ,
'' ttum1_plc,
'',
''
from scpf
left join nepf on scab=neab and scan=nean and scas=neas
left join (select * from map_cif where del_flg<>'Y') map_cif on scan=map_cif.gfcpnc
left join gfpf on gfpf.gfcpnc = scan 
left join (select * from v5pf where v5bal<>0)v5pf on v5pf.v5abd||v5pf.v5and||v5pf.v5asd = scab||scan||scas
left join DEAL_RATE a on trim(a.dBRNM)||trim(a.dDLP)||trim(a.dDLR)=trim(v5pf.V5BRNM)||trim(v5pf.V5DLP)||trim(v5pf.V5DLR)
left join hrl_deals on trim(v5dlr)=trim(IDEAL_REF)
left join map_sol on scab = br_code
where (scai30='N' or (scai30='Y' and scbal <> 0)) and scai47 <> 'Y'
and (SUBSTR (get_schm_type_code (scact,
                                          scccy,
                                          SCCTP,
                                          scbal,
                                          scodl,
                                          '',
                                          '',
                                          '',
                                          '',
                                          scaig4,
                                          TRIM (v5dlp),
                                          TRIM (DERIVED_FROM_BASE),
                                          TRIM (ACTUAL_RATE),
                                          scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,
										  case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
                    INSTR (get_schm_type_code (scact,
                                                   scccy,
                                                   SCCTP,
                                                   scbal,
                                                   scodl,
                                                   '',
                                                   '',
                                                   '',
                                                   '',
                                                   scaig4,
                                                   TRIM (v5dlp),
                                                   TRIM (DERIVED_FROM_BASE),
                                                   TRIM (ACTUAL_RATE),
                                                   scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,
												   case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
                           '|')
                  + 1,
                  3)) in ('SBA','CAA','ODA','PCA','OOO'); 
commit;
--closed ACCOUNT SBA,CAA,ODA----
insert into map_acc
select 
scab,
scan,
scas,
'',
gfpf.gfcus,
gfctp,
scact,
scab||scan||scas,
map_cif.fin_cif_id,
--substr(scab,2,3),
map_sol.fin_sol_id,
null,null, null, 
migappuae.get_gl_subhead_code(scact,scccy,SCCTP,scbal,scodl,'','','','',scaig4,trim(v5dlp),trim(DERIVED_FROM_BASE),trim(ACTUAL_RATE),scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,
case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
SUBSTR (get_schm_type_code (scact,
                                          scccy,
                                          SCCTP,
                                          scbal,
                                          scodl,
                                          '',
                                          '',
                                          '',
                                          '',
                                          scaig4,
                                          TRIM (v5dlp),
                                          TRIM (DERIVED_FROM_BASE),
                                          TRIM (ACTUAL_RATE),
                                          scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
                    INSTR (get_schm_type_code (scact,
                                                   scccy,
                                                   SCCTP,
                                                   scbal,
                                                   scodl,
                                                   '',
                                                   '',
                                                   '',
                                                   '',
                                                   scaig4,
                                                   TRIM (v5dlp),
                                                   TRIM (DERIVED_FROM_BASE),
                                                   TRIM (ACTUAL_RATE),
                                                   scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
                           '|')
                  + 1,
                  3)
             SCHEME_TYPE,
          SUBSTR (get_schm_type_code (scact,
                                          scccy,
                                          SCCTP,
                                          scbal,
                                          scodl,
                                          '',
                                          '',
                                          '',
                                          '',
                                          scaig4,
                                          TRIM (v5dlp),
                                          TRIM (DERIVED_FROM_BASE),
                                          TRIM (ACTUAL_RATE),
                                          scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
                  1,
                    INSTR (get_schm_type_code (scact,
                                                   scccy,
                                                   SCCTP,
                                                   scbal,
                                                   scodl,
                                                   '',
                                                   '',
                                                   '',
                                                   '',
                                                   scaig4,
                                                   TRIM (v5dlp),
                                                   TRIM (DERIVED_FROM_BASE),
                                                   TRIM (ACTUAL_RATE),
                                                   scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
                           '|')
                  - 1) schm_code,
scccy,
NEIBAN ,
'' ttum1_plc,
'',
'CLOSED'
from scpf
left join nepf on scab=neab and scan=nean and scas=neas
left join (select * from map_cif where del_flg<>'Y') map_cif on scan=map_cif.gfcpnc
left join gfpf on gfpf.gfcpnc = scan
left join (select * from v5pf where v5bal<>0)v5pf on v5abd||v5and||v5asd = scab||scan||scas
left join DEAL_RATE a on trim(a.dBRNM)||trim(a.dDLP)||trim(a.dDLR)=trim(v5pf.V5BRNM)||trim(v5pf.V5DLP)||trim(v5pf.V5DLR)
left join hrl_deals on trim(v5dlr)=trim(IDEAL_REF)
left join map_sol on scab = br_code
where scai30='Y' and case when sccad<>0 then to_date(get_date_fm_btrv(sccad),'YYYYMMDD')end between to_date(get_param('FTP_START_DT'),'DD-MM-YYYY') and to_date(get_param('FTP_END_DT'),'DD-MM-YYYY')
and scbal=0 and scai47<>'Y'
and (SUBSTR (get_schm_type_code (scact,
                                          scccy,
                                          SCCTP,
                                          scbal,
                                          scodl,
                                          '',
                                          '',
                                          '',
                                          '',
                                          scaig4,
                                          TRIM (v5dlp),
                                          TRIM (DERIVED_FROM_BASE),
                                          TRIM (ACTUAL_RATE),
                                          scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
                    INSTR (get_schm_type_code (scact,
                                                   scccy,
                                                   SCCTP,
                                                   scbal,
                                                   scodl,
                                                   '',
                                                   '',
                                                   '',
                                                   '',
                                                   scaig4,
                                                   TRIM (v5dlp),
                                                   TRIM (DERIVED_FROM_BASE),
                                                   TRIM (ACTUAL_RATE),
                                                   scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
                           '|')
                  + 1,
                  3)) in ('SBA','CAA','ODA','PCA'); 
--update map_acc set schm_code='CACOR'  where schm_code='CABNK';
commit;
--------------------Single deals account number should be as is--------------
drop table single_deal;
create table single_deal
as
select trim(v5brnm)||trim(v5dlp)||trim(v5dlr) leg_acc_num,neab||nean||neas fin_acc_num from 
(
select v5abd,v5and,v5asd from vw_active_dep_deals group by v5abd,v5and,v5asd  having count(*) = 1
union
select v5abd,v5and,v5asd from vw_active_loans group by v5abd,v5and,v5asd  having count(*) = 1
)a
inner join v5pf b on a.v5abd = b.v5abd and a.v5and = b.v5and and a.v5asd = b.v5asd
inner join nepf on a.v5abd = neab and a.v5and = nean and a.v5asd = neas;
create index single_deal_idx on single_deal(leg_acc_num);

---TDA and LAA Accounts from EQ3---
insert into map_acc
select
scab,
scan,
scas,
trim(v5brnm)||trim(v5dlp)||trim(v5dlr),
gfpf.gfcus,
gfctp,
scact,
case when single_deal.fin_acc_num is not null then to_char(single_deal.fin_acc_num) else '' end,
map_cif.fin_cif_id,
--substr(scab,2,3),
map_sol.fin_sol_id,
null,null, null, 
migappuae.get_gl_subhead_code(scact,scccy,SCCTP,scbal,scodl,'','','','',scaig4,trim(v5dlp),trim(DERIVED_FROM_BASE),trim(ACTUAL_RATE),scab,scan,scas,scai81,nvl(scaco,' '),scai47,case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
SUBSTR (get_schm_type_code (scact,
                                          scccy,
                                          SCCTP,
                                          scbal,
                                          scodl,
                                          '',
                                          '',
                                          '',
                                          '',
                                          scaig4,
                                          TRIM (v5dlp),
                                          TRIM (DERIVED_FROM_BASE),
                                          TRIM (ACTUAL_RATE),
                                          scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
                    INSTR (get_schm_type_code (scact,
                                                   scccy,
                                                   SCCTP,
                                                   scbal,
                                                   scodl,
                                                   '',
                                                   '',
                                                   '',
                                                   '',
                                                   scaig4,
                                                   TRIM (v5dlp),
                                                   TRIM (DERIVED_FROM_BASE),
                                                   TRIM (ACTUAL_RATE),
                                                   scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
                           '|')
                  + 1,
                  3)
             SCHEME_TYPE,
          SUBSTR (get_schm_type_code (scact,
                                          scccy,
                                          SCCTP,
                                          scbal,
                                          scodl,
                                          '',
                                          '',
                                          '',
                                          '',
                                          scaig4,
                                          TRIM (v5dlp),
                                          TRIM (DERIVED_FROM_BASE),
                                          TRIM (ACTUAL_RATE),
                                          scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
                  1,
                    INSTR (get_schm_type_code (scact,
                                                   scccy,
                                                   SCCTP,
                                                   scbal,
                                                   scodl,
                                                   '',
                                                   '',
                                                   '',
                                                   '',
                                                   scaig4,
                                                   TRIM (v5dlp),
                                                   TRIM (DERIVED_FROM_BASE),
                                                   TRIM (ACTUAL_RATE),
                                                   scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
                           '|')
                  - 1) schm_code,
scccy,
'',
'' ttum1_plc,
trim(v5dlp),
''
from scpf 
left join (select * from map_cif where del_flg<>'Y') map_cif on scan=map_cif.gfcpnc
left join gfpf on gfpf.gfcpnc = scpf.scan 
left join map_sol on scab = br_code
left join v5pf on v5abd||v5and||v5asd = scab||scan||scas
left join single_deal on trim(v5brnm)||trim(v5dlp)||trim(v5dlr) = single_deal.leg_acc_num
left join ospf on trim(v5brnm)||trim(v5dlp)||trim(v5dlr)=trim(osbrnm)||trim(osdlp)||trim(osdlr)
left join DEAL_RATE a on trim(a.dBRNM)||trim(a.dDLP)||trim(a.dDLR)=trim(v5pf.V5BRNM)||trim(v5pf.V5DLP)||trim(v5pf.V5DLR)
left join hrl_deals on trim(v5dlr)=trim(IDEAL_REF)
where (scai30='N' or (scai30='Y' and scbal <> 0)) and scai47 <> 'Y' and v5and is not null
and v5bal<>0 and   ((v5arc <> 'A' OR v5arc IS NULL)) and (oscanr <> 'C' OR oscanr IS NULL OR oscanr = '');
commit;
/*---TDA and LAA closed  Accounts from EQ3---
insert into map_acc
select
scab,
scan,
scas,
trim(v5brnm)||trim(v5dlp)||trim(v5dlr),
gfpf.gfcus,
gfctp,
scact,
case when single_deal.fin_acc_num is not null then to_char(single_deal.fin_acc_num) else '' end,
map_cif.fin_cif_id,
--substr(scab,2,3),
map_sol.fin_sol_id,
null,null, null,
migappuae.get_gl_subhead_code(scact,scccy,SCCTP,scbal,scodl,'','','','',scaig4,trim(v5dlp),trim(DERIVED_FROM_BASE),trim(ACTUAL_RATE),scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
SUBSTR (get_schm_type_code (scact,
                                          scccy,
                                          SCCTP,
                                          scbal,
                                          scodl,
                                          '',
                                          '',
                                          '',
                                          '',
                                          scaig4,
                                          TRIM (v5dlp),
                                          TRIM (DERIVED_FROM_BASE),
                                          TRIM (ACTUAL_RATE),
                                          scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
                    INSTR (get_schm_type_code (scact,
                                                   scccy,
                                                   SCCTP,
                                                   scbal,
                                                   scodl,
                                                   '',
                                                   '',
                                                   '',
                                                   '',
                                                   scaig4,
                                                   TRIM (v5dlp),
                                                   TRIM (DERIVED_FROM_BASE),
                                                   TRIM (ACTUAL_RATE),
                                                   scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
                           '|')
                  + 1,
                  3)
             SCHEME_TYPE,
          SUBSTR (get_schm_type_code (scact,
                                          scccy,
                                          SCCTP,
                                          scbal,
                                          scodl,
                                          '',
                                          '',
                                          '',
                                          '',
                                          scaig4,
                                          TRIM (v5dlp),
                                          TRIM (DERIVED_FROM_BASE),
                                          TRIM (ACTUAL_RATE),
                                          scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
                  1,
                    INSTR (get_schm_type_code (scact,
                                                   scccy,
                                                   SCCTP,
                                                   scbal,
                                                   scodl,
                                                   '',
                                                   '',
                                                   '',
                                                   '',
                                                   scaig4,
                                                   TRIM (v5dlp),
                                                   TRIM (DERIVED_FROM_BASE),
                                                   TRIM (ACTUAL_RATE),
                                                   scab,scan,scas,scai81,nvl(trim(scaco),' '),scai47,case when hrl_deals.IDEAL_REF is not null then 'Y'
else 'N' end),
                           '|')
                  - 1) schm_code,
scccy,
'',
'' ttum1_plc,
trim(v5dlp),
'CLOSED'
from scpf 
left join (select * from map_cif where del_flg<>'Y') map_cif on scan=map_cif.gfcpnc
left join gfpf on gfpf.gfcpnc = scpf.scan 
left join map_sol on scab = br_code
left join v5pf on v5abd||v5and||v5asd = scab||scan||scas
left join single_deal on trim(v5brnm)||trim(v5dlp)||trim(v5dlr) = single_deal.leg_acc_num
left join ospf on trim(v5brnm)||trim(v5dlp)||trim(v5dlr)=trim(osbrnm)||trim(osdlp)||trim(osdlr)
left join DEAL_RATE a on trim(a.dBRNM)||trim(a.dDLP)||trim(a.dDLR)=trim(v5pf.V5BRNM)||trim(v5pf.V5DLP)||trim(v5pf.V5DLR)
left join hrl_deals on trim(v5dlr)=trim(IDEAL_REF)
where  v5and is not null
and   ((v5arc <> 'A' OR v5arc IS NULL)) and (oscanr <> 'C' OR oscanr IS NULL OR oscanr = '')
and V5TDT='D' and (case when v5mdt <>'9999999' then 
to_date(get_date_fm_btrv(v5mdt),'YYYYMMDD')
 end) between to_date(get_param('FTP_START_DT'),'DD-MM-YYYY') and to_date(get_param('FTP_END_DT'),'DD-MM-YYYY');
commit;*/
update map_acc set schm_code='LFR' , GL_SUB_HEADCODE='13111' where leg_acc_num in
('ABKDFINFINREV1394402','ABKDFINREV0016023002','ABKDFINREV0016023003','ABKDFINREV0016023004','ABKDFINREV0016023005','ABKDFINREV0016023006','ABKDFINFIN0016278002','ABKDFINFIN0016278003','ABKDFINREV016012009','ABKDFINREV0016023007',
'ABKDFINFIN0016278004','ABKDFINREV016012010','ABKDFINREV016012011','ABKDFINREV0016023008','ABKDFINREV016012012');
commit;
DROP TABLE assigned_scas;
create table assigned_scas as 
select distinct to_char(scan) scan,to_char(scas) scas from scpf
union
select distinct to_char(substr(fin_acc_num,5,6)),to_char(substr(fin_acc_num,11,3)) from map_acc where schm_type in('TDA','CLA','LAA');
DECLARE
 CURSOR c1
 is
 select * from map_acc where fin_acc_num is null and schm_type<>'OOO' 
 order by leg_scan;
 cus_no nvarchar2(6);
 v_seq_no number; 
 BEGIN
 FOR l_record IN c1
 LOOP   
select min(al.seq_no) seq_no  into v_seq_no   from
(
select * from
(
select distinct scan from scpf)a, seq_number
where scan = l_record.leg_scan
)al
left join assigned_scas b on al.scan = b.scan and lpad(al.seq_no,3,'0') = b.scas
where b.scan is null;
update map_acc set fin_acc_num = l_record.leg_branch_id||l_record.leg_scan||lpad(v_seq_no,3,'0') where l_record.fin_acc_num is null and l_record.schm_type<>'OOO' 
and LEG_ACC_NUM=l_record.LEG_ACC_NUM;
commit;
insert into assigned_scas values (l_record.leg_scan,lpad(v_seq_no,3,'0'));
commit; 
end loop;
commit;
end;
/
update map_acc set ttum1_plc = 
case 
when schm_type = 'SBA' then '52000001'
when schm_type = 'CAA' then '52000002'
when schm_type = 'ODA' then '52000003'
when schm_type = 'TDA' then '52000004'
when schm_type = 'LAA' then '52000005'
when schm_type = 'CLA' then '52000006'
when schm_type = 'PCA' then '52000007'
else '' end;
commit;
drop table acct_interest_tbl;
create table acct_interest_tbl
as
select a.*,int_tbl_code,base_pcnt_dr,base_pcnt_cr,
case 
when s5trcc like 'C%' then int_tbl_code
when s5trcd is not null then s5trcd
when s5trcc is not null then s5trcc
when s5trcd is not null and s5trcc is not null then 'ZERO'
when s5brrd is not null and s5brrc  is not null then 'ZERO'
else int_tbl_code end TBL_CODE_MIGR
,
case 
when s5trcd is not null then 0
when nvl(s5ratd,0) <> 0 then (nvl(s5ratd,0) - (nvl(base_pcnt_dr,0)+nvl(dr_nrml_int_pcnt,0)))
when (nvl(dr_base_rate,0) + nvl(diff_dr_rate,0) + nvl(dr_margin_rate,0)) <> nvl(base_pcnt_dr,0) + nvl(dr_nrml_int_pcnt,0)
 then ((nvl(dr_base_rate,0) + nvl(diff_dr_rate,0) + nvl(dr_margin_rate,0)) - (nvl(base_pcnt_dr,0)+nvl(dr_nrml_int_pcnt,0)))
else 0 end dr_pref_rate
,
case 
when s5trcc is not null then 0
when nvl(s5ratc,0) <> 0 then (nvl(s5ratc,0) - (nvl(base_pcnt_cr,0)+nvl(cr_nrml_int_pcnt,0)))
when (nvl(cr_base_rate,0) + nvl(diff_cr_rate,0) - nvl(cr_margin_rate,0)) <> nvl(base_pcnt_cr,0) + nvl(cr_nrml_int_pcnt,0) then 
((nvl(cr_base_rate,0) + nvl(diff_cr_rate,0) - nvl(cr_margin_rate,0))-(nvl(base_pcnt_cr,0)+nvl(cr_nrml_int_pcnt,0)))
else 0 end cr_pref_rate
,
cr_nrml_int_pcnt
,
dr_nrml_int_pcnt
from
acct_interest a
left join
(
select a.schm_code, a.crncy_code, a.int_tbl_code,base_pcnt_dr,base_pcnt_cr  ,
nvl(c.nrml_int_pcnt,0)cr_nrml_int_pcnt,
nvl(d.nrml_int_pcnt,0)dr_nrml_int_pcnt
from
(
select * from tbaadm.csp where del_flg = 'N' and bank_id = get_param('BANK_ID')
)a
left join (select c.* from tbaadm.icv c
inner join ( 
select a.int_tbl_code,a.crncy_code,a.INT_TBL_VER_NUM,min(a.INT_VERSION) INT_VERSION 
from tbaadm.icv a
inner join ( 
select  int_tbl_code,crncy_code,max(INT_TBL_VER_NUM) INT_TBL_VER_NUM 
from tbaadm.icv where del_flg = 'N' and bank_id = get_param('BANK_ID') 
group by int_tbl_code,crncy_code) b on a.int_tbl_code=b.int_tbl_code and a.crncy_code=b.crncy_code and a.INT_TBL_VER_NUM=b.INT_TBL_VER_NUM
where a.del_flg = 'N' and a.bank_id = get_param('BANK_ID')
group by a.int_tbl_code,a.crncy_code, a.INT_TBL_VER_NUM) d 
on d.int_tbl_code=c.int_tbl_code and d.crncy_code=c.crncy_code and d.INT_TBL_VER_NUM=c.INT_TBL_VER_NUM 
and c.INT_VERSION=d.INT_VERSION
where c.del_flg = 'N' and c.bank_id = get_param('BANK_ID'))b  on a.int_tbl_code =b.int_tbl_code  and  a.CRNCY_CODE = b.CRNCY_CODE 
left join (select c.* from tbaadm.ivs c
inner join (
select  a.int_tbl_code,a.crncy_code, MIN(a.INT_SLAB_SRL_NUM)INT_SLAB_SRL_NUM,a.INT_TBL_VER_NUM from  tbaadm.ivs a
inner join (
select  int_tbl_code,crncy_code,max(INT_TBL_VER_NUM) INT_TBL_VER_NUM 
from tbaadm.ivs where del_flg = 'N' and bank_id = get_param('BANK_ID') 
and int_slab_dr_cr_flg = 'C'
group by int_tbl_code,crncy_code) b on a.int_tbl_code=b.int_tbl_code and a.crncy_code=b.crncy_code and a.INT_TBL_VER_NUM=b.INT_TBL_VER_NUM
where a.del_flg = 'N' and a.bank_id = get_param('BANK_ID') 
and a.int_slab_dr_cr_flg = 'C'
group by a.int_tbl_code,a.crncy_code,a.INT_TBL_VER_NUM
)d on c.int_tbl_code=d.int_tbl_code and c.crncy_code=d.crncy_code and c.INT_SLAB_SRL_NUM=d.INT_SLAB_SRL_NUM and c.INT_TBL_VER_NUM=d.INT_TBL_VER_NUM
where c.del_flg = 'N' and c.bank_id = get_param('BANK_ID') 
and c.int_slab_dr_cr_flg = 'C'  )C  on C.int_tbl_code =a.int_tbl_code  and  a.CRNCY_CODE = C.CRNCY_CODE 
left join (select c.* from tbaadm.ivs c
inner join (
select  a.int_tbl_code,a.crncy_code, MIN(a.INT_SLAB_SRL_NUM)INT_SLAB_SRL_NUM,a.INT_TBL_VER_NUM from  tbaadm.ivs a
inner join (
select  int_tbl_code,crncy_code,max(INT_TBL_VER_NUM) INT_TBL_VER_NUM 
from tbaadm.ivs where del_flg = 'N' and bank_id = get_param('BANK_ID') 
and int_slab_dr_cr_flg = 'D'
group by int_tbl_code,crncy_code) b on a.int_tbl_code=b.int_tbl_code and a.crncy_code=b.crncy_code and a.INT_TBL_VER_NUM=b.INT_TBL_VER_NUM
where a.del_flg = 'N' and a.bank_id = get_param('BANK_ID') 
and a.int_slab_dr_cr_flg = 'D' 
group by a.int_tbl_code,a.crncy_code,a.INT_TBL_VER_NUM
)d on c.int_tbl_code=d.int_tbl_code and c.crncy_code=d.crncy_code and c.INT_SLAB_SRL_NUM=d.INT_SLAB_SRL_NUM and c.INT_TBL_VER_NUM=d.INT_TBL_VER_NUM
where c.del_flg = 'N' and c.bank_id = get_param('BANK_ID') 
and c.int_slab_dr_cr_flg = 'D'  )d  on d.int_tbl_code =a.int_tbl_code  and  a.CRNCY_CODE = d.CRNCY_CODE
)fin_int
on a.schm_code = fin_int.schm_code and a.s5ccy = fin_int.crncy_code;
create index acct_idx on acct_interest_tbl(s5ab,s5an,s5as);
--This has been commented becuases this is temparery fix for that mock5 not for permanent fix-- This is commented on 29-01-2017 based on Vijaya and kumaresan confirmation
--update  acct_interest_tbl c set CR_PREF_RATE=(
--select S5CAPR from s5pf  a
--inner join acct_interest_tbl b on a.s5ab||a.s5an||a.s5as=b.s5ab||b.s5an||b.s5as  
--where a.s5ab||a.s5an||a.s5as in(
--'0800004964150',
--'0800006532151',
--'0800006858151',
--'0800012311151',
--'0800015195151',
--'0800015654151',
--'0800015850151',
--'0800015960150',
--'0800015974150',
--'0800016146151',
--'0800016147151',
--'0801030315151') and  a.s5ab||a.s5an||a.s5as =c.s5ab||c.s5an||c.s5as)
--where exists
--(
--select S5CAPR from s5pf  a
--inner join acct_interest_tbl b on a.s5ab||a.s5an||a.s5as=b.s5ab||b.s5an||b.s5as  
--where a.s5ab||a.s5an||a.s5as in(
--'0800004964150',
--'0800006532151',
--'0800006858151',
--'0800012311151',
--'0800015195151',
--'0800015654151',
--'0800015850151',
--'0800015960150',
--'0800015974150',
--'0800016146151',
--'0800016147151',
--'0801030315151') and  a.s5ab||a.s5an||a.s5as =c.s5ab||c.s5an||c.s5as);
--commit;
drop table all_final_trial_balance;
create table all_final_trial_balance as select * from final_trial_balance;
CREATE INDEX ALL_final_IDX1 ON all_final_trial_balance(DEAL_REF_NUM);
CREATE INDEX ALL_final_IDX ON all_final_trial_balance("SCAB"||"SCAN"||"SCAS");
update all_final_trial_balance set SCHM_CODE_TYPE='DROP|OOO'  where scact ='DI' and scbal='0';
commit;
drop table map_off_acc;
create table map_off_acc as
select leg_acc_num,scact,scccy,scbal,fin_acc_num from all_final_trial_balance where scheme_type='OAB';
drop table int_recv_pay_balance_trfr;
create table int_recv_pay_balance_trfr
as
SELECT 
s5ab,contra_basic,c8ccyn,S5ACT, INTEREST_FCY,leg_acc_num,scheme_code,scheme_type, int_paid_bacid,int_coll_bacid,int_pandl_bacid_cr,int_pandl_bacid_dr 
FROM ACCT_WISE_INT_RECV_PAY_MAP a
inner join all_final_trial_balance on leg_acc_num = BRN||TRIM(a.DEAL_TYPE)||TRIM(a.DEAL_REF)
left join (select schm_code,int_paid_bacid,int_coll_bacid,int_pandl_bacid_cr,int_pandl_bacid_dr from tbaadm.gsp where bank_id = '02' and del_flg = 'N')gss 
on gss.schm_code = scheme_code
where INTEREST_FCY <> 0; 
exit;
