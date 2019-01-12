-- File Name		: gen_map_cif.sql
-- File Created for	: generation of CIF
-- Created By		: Kumaresan.B
-- Client	  	    : ABK
-- Created On		: 18-04-2016
-------------------------------------------------------------------
alter session set "_hash_join_enabled" = true;
-- as per mapping the below account should go to SCALL schm
update scpf set scai47='N' where scab||Scan||Scas='0600825210150';
commit;
drop SEQUENCE cif_seq;
CREATE SEQUENCE cif_seq
 START WITH     1
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;
truncate table map_cif;
truncate table CIF_AC_SEQ;
insert into map_cif 
select distinct gfcpnc,
case when trim(gfbrnm) is not null then trim(gfbrnm)
else lpad(nvl(trim(gfclc),'0600'),4,0) end,
--case when rjpf.rjr_cif is not null then  lpad(rjr_cif,10,'0')
-- else lpad(gfclc||gfcus,10,'0') end, -------------commented on 24-07-2017.Post 23-07-2017 meeting with nancy Vijay has confirmed to remove EJ joint cif logic
lpad(gfclc||gfcus,10,'0'),
--gfclc||gfcus,
--'1'||LPAD(cif_seq.nextval,9,'0'),
--case when trim(gfbrnm) is not null then trim(gfbrnm)
--else lpad(nvl(trim(gfclc),'0600'),4,0) end,
--case when rjpf.rjr_cif is not null then  rj_sol.fin_sol_id
--else map_sol.fin_sol_id end, -------------commented on 24-07-2017.Post 23-07-2017 meeting with nancy Vijay has confirmed to remove EJ joint cif logic
map_sol.fin_sol_id,
GFCUN,
decode(GFCTP,
'EA','Y',
'EB','Y',
'EC','Y',
'EJ','Y',
'ET','Y',
'EU','Y',
'EV','Y',
'EW','Y',
--'CH','Y',
'N'),
gfcus,gfclc,gfcpnc,gfbrnm,
--case when rjpf.rjr_cif is not null then  'Y'
--else 'N' end,'N' 
'N','N' -------------commented on 24-07-2017.Post 23-07-2017 meeting with nancy Vijay has confirmed to remove EJ joint cif logic
from gfpf
inner join (select distinct scan from scpf where  (scai30 ='N' or (scai30 ='Y' and scbal <> 0)
or (scai30='Y' and case when sccad<>0 then to_date(get_date_fm_btrv(sccad),'YYYYMMDD')end between to_date(get_param('FTP_START_DT'),'DD-MM-YYYY') and to_date(get_param('FTP_END_DT'),'DD-MM-YYYY')
and scai47 = 'N')))scpf on scan = gfcpnc
left join map_sol on br_code=case when trim(gfbrnm) is not null then trim(gfbrnm)
else lpad(nvl(trim(gfclc),'0600'),4,0) end
--left join ( select gfclc||gfcus rj_cif,min(rjrclc||rjrcus) rjr_cif from gfpf
--inner join rjpf on trim(rjcus)||trim(rjclc)=trim(gfcus)||trim(gfclc)
--where gfctp='EJ' --and trim(rjrel) in('JNP','JNC')--- as per vijaya confirmation  based on discussion with nancy related to migration and mk5 observation some EJ cif migrated as it's. Due to consideration of JNC and JNP relation type. This condition removed on 18-07-2017
--group by gfclc||gfcus)rjpf on rj_cif=gfclc||gfcus-------------commented on 24-07-2017.Post 23-07-2017 meeting with nancy Vijay has confirmed to remove EJ joint cif logic
--left join map_sol rj_sol on rj_sol.br_code=lpad(substr(rjpf.rjr_cif,1,3),4,'0')--Changed on 19-06-2017 for relationship migration -------------commented on 24-07-2017.Post 23-07-2017 meeting with nancy Vijay has confirmed to remove EJ joint cif logic
union
select distinct  gfcpnc,
case when trim(gfbrnm) is not null then trim(gfbrnm)
else lpad(nvl(trim(gfclc),'0600'),4,0) end,
--case when rjpf.rjr_cif is not null then  lpad(rjr_cif,10,'0')
 --else lpad(gfclc||gfcus,10,'0') end,-------------commented on 24-07-2017.Post 23-07-2017 meeting with nancy Vijay has confirmed to remove EJ joint cif logic
lpad(gfclc||gfcus,10,'0'),
 --gfclc||gfcus,
--'1'||LPAD(cif_seq.nextval,9,'0'),
--case when trim(gfbrnm) is not null then trim(gfbrnm)
--else lpad(nvl(trim(gfclc),'0600'),4,0) end,
--case when rjpf.rjr_cif is not null then  rj_sol.fin_sol_id
--else map_sol.fin_sol_id end,-------------commented on 24-07-2017.Post 23-07-2017 meeting with nancy Vijay has confirmed to remove EJ joint cif logic
map_sol.fin_sol_id,
GFCUN,
decode(GFCTP,
'EA','Y',
'EB','Y',
'EC','Y',
'EJ','Y',
'ET','Y',
'EU','Y',
'EV','Y',
'EW','Y',
--'CH','Y',
'N'),
gfcus,gfclc,gfcpnc,gfbrnm,
--case when rjpf.rjr_cif is not null then  'Y'
--else 'N' end,'N'  
'N','N'  -------------commented on 24-07-2017.Post 23-07-2017 meeting with nancy Vijay has confirmed to remove EJ joint cif logic
from gfpf
--inner join (select distinct scan from scpf where  (scai30 ='N' or (scai30 ='Y' and scbal <> 0)
--or (scai30='Y' and case when sccad<>0 then to_date(get_date_fm_btrv(sccad),'YYYYMMDD')end between to_date(get_param('FTP_START_DT'),'DD-MM-YYYY') and to_date(get_param('FTP_END_DT'),'DD-MM-YYYY')
--and scai47 = 'N')))scpf on scan = gfcpnc
left join map_sol on br_code=case when trim(gfbrnm) is not null then trim(gfbrnm)
else lpad(nvl(trim(gfclc),'0600'),4,0) end
--left join ( select gfclc||gfcus rj_cif,min(rjrclc||rjrcus) rjr_cif from gfpf
--inner join rjpf on trim(rjcus)||trim(rjclc)=trim(gfcus)||trim(gfclc)
--where gfctp='EJ' --and trim(rjrel) in('JNP','JNC')--- as per vijaya confirmation  based on discussion with nancy related to migration and mk5 observation some EJ cif migrated as it's. Due to consideration of JNC and JNP relation type. This condition removed on 18-07-2017
--group by gfclc||gfcus)rjpf on rj_cif=gfclc||gfcus -------------commented on 24-07-2017.Post 23-07-2017 meeting with nancy Vijay has confirmed to remove EJ joint cif logic
--left join map_sol rj_sol on rj_sol.br_code=lpad(substr(rjpf.rjr_cif,1,3),4,'0')--Changed on 19-06-2017 for relationship migration -------------commented on 24-07-2017.Post 23-07-2017 meeting with nancy Vijay has confirmed to remove EJ joint cif logic
where gfc5r in('BK','BL','BM','BN','BP','BW');
commit;
drop table relation_cif;
create table relation_cif as
--select distinct  RJCUS,RJCLC from (select rjcus,rjclc from rjpf union select distinct rjrcus,rjrclc from rjpf)rel left join map_cif rel on  trim(GFCUS)=trim(rjcus) and nvl(GFCLC,' ')=nvl(rjclc,' ') where GFCUS is null and rjcus is not null
select distinct rjrcus rjcus,rjrclc rjclc from (select distinct rjclc,rjcus,rjrcus,rjrclc from rjpf)rel
inner join  map_cif rel on  trim(rjclc)||trim(rjcus)= trim(rel.gfclc)||trim(rel.gfcus) 
left join map_cif jnt on trim(rjrclc)||trim(rjrcus)= trim(jnt.gfclc)||trim(jnt.gfcus)
where jnt.gfcus is null and trim(rjrcus) is not null;---modified on 10-08-2017  because earlier all RJPF cif's are migrated. Now only for primary cif avaialble then joint cif migrating
--Relation SHIP INSERT---
insert into map_cif 
select distinct  gfcpnc,
case when trim(gfbrnm) is not null then trim(gfbrnm)
else lpad(nvl(trim(gfclc),'0600'),4,0) end,
lpad(gfclc||gfcus,10,'0'),
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
'EJ','Y',
'ET','Y',
'EU','Y',
'EV','Y',
'EW','Y',
--'CH','Y',
'N'),
gfcus,gfclc,gfcpnc,gfbrnm,'N','N' 
from relation_cif
inner join gfpf on trim(GFCUS)=trim(rjcus) and nvl(GFCLC,' ')=nvl(rjclc,' ')
left join map_sol on br_code=case when trim(gfbrnm) is not null then trim(gfbrnm)
else lpad(nvl(trim(gfclc),'0600'),4,0) end;
commit;
--TI AND TRY CIFs---
insert into map_cif 
select distinct 
gfcpnc,
case when trim(gfbrnm) is not null then trim(gfbrnm)
else lpad(nvl(trim(gfclc),'0600'),4,0) end,
lpad(gfclc||gfcus,10,'0'),
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
'EJ','Y',
'ET','Y',
'EU','Y',
'EV','Y',
'EW','Y',
--'CH','Y',
'N'),
gfcus,gfclc,gfcpnc,gfbrnm,'N','N'
from 
gfpf
inner join (select distinct scan from scpf where  (scai30 ='N' or (scai30 ='Y' and scbal <> 0)
or (scai30='Y' and case when sccad<>0 then to_date(get_date_fm_btrv(sccad),'YYYYMMDD')end between to_date(get_param('FTP_START_DT'),'DD-MM-YYYY') and to_date(get_param('FTP_END_DT'),'DD-MM-YYYY')
and scai47 = 'N')))scpf on scan = gfcpnc--Added on 23-05-2017 by Kumar
left join map_sol on br_code=case when trim(gfbrnm) is not null then trim(gfbrnm)
else lpad(nvl(trim(gfclc),'0600'),4,0) end 
where (GFYOPI='Y' or GFYTRI = 'Y')
and not exists(select * from map_cif where trim(map_cif.gfcus)=trim(gfpf.gfcus) and nvl(map_cif.gfclc,' ')=nvl(gfpf.gfclc,' '));
commit;
--Bank Limit customer CIF generation---
insert into map_cif 
select
distinct 
gfcpnc,
case when trim(gfbrnm) is not null then trim(gfbrnm)
else lpad(nvl(trim(gfclc),'0600'),4,0) end,
lpad(gfclc||gfcus,10,'0'),
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
'EJ','Y',
'ET','Y',
'EU','Y',
'EV','Y',
'EW','Y',
--'CH','Y',
'N'),
gfcus,gfclc,gfcpnc,gfbrnm,'N','N' 
from gfpf
inner join (select * from hhpf where  hhlc in('LS196','LS193','LS195','LS194') and hhama <> 0)hhpf on trim(hhgrp) = trim(gfgrp)
left join map_sol on br_code=case when trim(gfbrnm) is not null then trim(gfpf.gfbrnm)
else lpad(nvl(trim(gfpf.gfclc),'0600'),4,0) end
where   not exists(select 1 from map_cif where trim(map_cif.gfcus)||trim(map_cif.gfclc)  = trim(gfpf.gfcus)||trim(gfpf.gfclc));
commit;
------- Document number excuded in joint holder excel sheet
--DROP TABLE document_det;
--create table document_det as 
--select * from ( 
--select nvl(GFCLC,'')||GFCUS cif,regexp_replace(trim(BGDID1),'[A-Z, ,-]','') Docu 
--from map_cif 
--inner join  bgpf bgpf_kw on nvl(GFCLC,'')=nvl(BGPF_KW.BGCLC,'') and GFCUS=BGPF_KW.BGCUS
--where trim(regexp_replace(trim(BGDID1),'[A-Z, ,-]','')) is not null and is_joint<>'Y'
--union
--select nvl(GFCLC,'')||GFCUS,regexp_replace(trim(BGDID2),'[A-Z, ,-]','') 
--from map_cif 
--inner join  bgpf bgpf_kw on nvl(GFCLC,'')=nvl(BGPF_KW.BGCLC,'') and GFCUS=BGPF_KW.BGCUS
--where trim(regexp_replace(trim(BGDID2),'[A-Z, ,-]','')) is not null and is_joint<>'Y'
--union   
--select to_char(replace(acc_no,'-','')),regexp_replace(trim(ID_CODE),'[A-Z, ,-]','') from CBD_REGID 
--inner join map_cif on replace(acc_no,'-','')=map_cif.fin_cif_id
--where regexp_replace(trim(ID_CODE),'[A-Z, ,-]','') is not null and is_joint<>'Y'
--union
--select nvl(map_cif.GFCLC,'')||map_cif.GFCUS,regexp_replace(trim(GFCRF),'[A-Z, ,-]','') from map_cif 
--inner join gfpf   on trim(gfpf.gfclc)=trim(map_cif.gfclc) and  trim(gfpf.gfcus)=trim(map_cif.gfcus)
--where trim(regexp_replace(trim(GFCRF),'[A-Z, ,-]','')) is null and is_joint<>'Y'
--union
--select nvl(map_cif.GFCLC,'')||map_cif.GFCUS,regexp_replace(trim(svna2),'[-,_,&,#,A-Z, ,-,/,.]','')
--from svpf svpf_kw 
--inner join sxpf sxpf_kw  on sxpf_kw.sxseq=svpf_kw.svseq
--inner join map_cif on map_cif.gfcus = sxpf_kw.sxcus and map_cif.gfclc = sxpf_kw.sxclc
--where TRIM(SXPRIM)='9'AND TRIM(SVNA2) IS NOT NULL
--and trim(regexp_replace(trim(svna2),'[-,_,&,#,A-Z, ,-,/,.]','')) is not null and is_joint<>'Y' );
--------POA customer bgcus available but not in mapcif --------------------
--insert into map_cif 
--select distinct gfpf.gfcpnc,
--case when trim(gfpf.gfbrnm) is not null then trim(gfpf.gfbrnm)
--else lpad(nvl(trim(gfpf.gfclc),'0600'),4,0) end,
--lpad(gfpf.gfclc||gfpf.gfcus,10,'0'),
--map_sol.fin_sol_id,
--GFCUN,
--decode(GFCTP,
--'EA','Y',
--'EB','Y',
--'EC','Y',
--'EJ','Y',
--'ET','Y',
--'EU','Y',
--'EV','Y',
--'EW','Y',
----'CH','Y',
--'N'),
--gfpf.gfcus,gfpf.gfclc,gfpf.gfcpnc,gfpf.gfbrnm,'N','N' 
--from (SELECT DISTINCT * FROM POA_CUSTOMER) poa 
--inner  join map_cif p on nvl(p.GFCLC,' ')=nvl(trim(poa.gfclc),' ') and p.GFCUS=trim(poa.gfCUS)
--left  join map_cif on nvl(map_cif.GFCLC,' ')=nvl(BGCLC,' ') and map_cif.GFCUS=BGCUS
--left join gfpf  on nvl(trim(gfpf.gfclc),' ')=nvl(BGCLC,' ') and  trim(gfpf.gfcus)=trim(BGCUS)
--left join map_sol on br_code=lpad(nvl(trim(bgclc),'0600'),4,0)
--where trim(map_cif.gfcus) is null and regexp_replace(trim(bgrlnm),'[.,..]','') is not null and gfpf.gfclc is not null;
----and not exists   (select 1 from document_det where regexp_replace(trim(BGDIRL),'[A-Z, ,-]','')=docu)--As per confirmation by Vijay on 25-7-2017 duplicate CID removed from Zaqout provided excel data. 
--commit;
--------Guarantor customer  bgcus available but not in mapcif--------------------
--insert into map_cif 
--select distinct  gfpf.gfcpnc,
--case when trim(gfpf.gfbrnm) is not null then trim(gfpf.gfbrnm)
--else lpad(nvl(trim(gfpf.gfclc),'0600'),4,0) end,
--lpad(gfpf.gfclc||gfpf.gfcus,10,'0'),
--map_sol.fin_sol_id,
--GFCUN,
--decode(GFCTP,
--'EA','Y',
--'EB','Y',
--'EC','Y',
--'EJ','Y',
--'ET','Y',
--'EU','Y',
--'EV','Y',
--'EW','Y',
----'CH','Y',
--'N'),
--gfpf.gfcus,gfpf.gfclc,gfpf.gfcpnc,gfpf.gfbrnm,'N','N' 
--from guarantor_customer gtr 
--inner  join map_cif p on nvl(p.GFCLC,' ')=nvl(trim(gtr.loc),' ') and p.GFCUS=trim(gtr.customer)
--left  join map_cif on nvl(map_cif.GFCLC,' ')=nvl(trim(LOC1),' ') and map_cif.GFCUS=trim(cust_no)
--left join gfpf  on nvl(trim(gfpf.gfclc),' ')=nvl(trim(LOC1),' ') and  trim(gfpf.gfcus)=trim(cust_no)
--left join map_sol on br_code=lpad(nvl(trim(LOC1),'0600'),4,0)
--where trim(map_cif.gfcus) is null and trim(cust_no) is not null and gfpf.gfclc is not null
--and trim(GFCTP) not in ('EA','EB','EC','EJ','ET','EU','EV','EW');
----and not exists   (select 1 from document_det where regexp_replace(trim(CID_NO),'[A-Z, ,-]','')=docu) --As per confirmation by Vijay on 25-7-2017 duplicate CID removed from Zaqout provided excel data. 
------retail guatantor details excluded from excel sheet provided from bank and extracted from mail which is sent by vijay on 13-06-2017.
--commit;
----------------------guardian customer  bgcus available but not in mapcif--------------------
--insert into map_cif 
--select distinct gfpf.gfcpnc,
--case when trim(gfpf.gfbrnm) is not null then trim(gfpf.gfbrnm)
--else lpad(nvl(trim(gfpf.gfclc),'0600'),4,0) end,
--lpad(gfpf.gfclc||gfpf.gfcus,10,'0'),
--map_sol.fin_sol_id,
--GFCUN,
--decode(GFCTP,
--'EA','Y',
--'EB','Y',
--'EC','Y',
--'EJ','Y',
--'ET','Y',
--'EU','Y',
--'EV','Y',
--'EW','Y',
----'CH','Y',
--'N'),
--gfpf.gfcus,gfpf.gfclc,gfpf.gfcpnc,gfpf.gfbrnm,'N','N' 
--from guardian_customer gur 
--inner  join map_cif p on nvl(p.GFCLC,' ')=nvl(trim(LOC),' ') and p.GFCUS=trim(gur.CUS)
--left join gfpf  on nvl(trim(gfpf.gfclc),' ')=nvl(GUAR_LOC,' ') and  trim(gfpf.gfcus)=trim(GUAR_CUST)
--left join map_cif c on nvl(c.GFCLC,' ')=nvl(trim(GUAR_LOC),' ') and c.GFCUS=trim(GUAR_CUST)
--left join map_sol on br_code=lpad(nvl(trim(GUAR_LOC),'0600'),4,0)
--where c.gfcus is null and gfpf.gfcus is not null;
----and not exists   (select 1 from document_det where regexp_replace(trim(GUARDIAN_CID),'[A-Z, ,-]','')=docu) --As per confirmation by Vijay on 25-7-2017 duplicate CID removed from Zaqout provided excel data. 
--commit;
----------------------share holder customer  --------------------
--insert into map_cif 
--select distinct gfpf.gfcpnc,
--case when trim(gfpf.gfbrnm) is not null then trim(gfpf.gfbrnm)
--else lpad(nvl(trim(gfpf.gfclc),'0600'),4,0) end,
--lpad(gfpf.gfclc||gfpf.gfcus,10,'0'),
--map_sol.fin_sol_id,
--GFCUN,
--decode(GFCTP,
--'EA','Y',
--'EB','Y',
--'EC','Y',
--'EJ','Y',
--'ET','Y',
--'EU','Y',
--'EV','Y',
--'EW','Y',
----'CH','Y',
--'N'),
--gfpf.gfcus,gfpf.gfclc,gfpf.gfcpnc,gfpf.gfbrnm,'N','N' 
--from (SELECT DISTINCT GFCLC,GFCUS,DOC_ID,NAME,bgclc,bgcus  FROM shareholder_retail) shr
--inner  join map_cif p on nvl(p.GFCLC,' ')=nvl(trim(shr.gfclc),' ') and p.GFCUS=trim(shr.gfcus)
--left join gfpf  on nvl(trim(gfpf.gfclc),' ')=nvl(trim(shr.bgclc),' ') and  trim(gfpf.gfcus)=trim(shr.bgcus)
--left join map_cif c on nvl(c.GFCLC,' ')=nvl(trim(shr.bgclc),' ') and c.GFCUS=trim(shr.bgcus)
--left join map_sol on br_code=lpad(nvl(trim(shr.bgclc),'0600'),4,0)
--where c.gfcus is null and gfpf.gfcus is not null;
----from (SELECT DISTINCT GFCLC,GFCUS,DOC_ID,NAME  FROM shareholder_retail) shr
----inner join gfpf  on nvl(trim(gfpf.gfclc),' ')= nvl(trim(shr.gfclc),' ') and trim(gfpf.gfcus)=trim(shr.gfcus)
----left  join map_cif on nvl(map_cif.GFCLC,' ')=nvl(trim(shr.gfclc),' ') and map_cif.GFCUS=trim(shr.gfcus)
----left join map_sol on br_code=lpad(nvl(trim(gfpf.gfclc),'0600'),4,0)
----where trim(map_cif.gfcus) is null and regexp_replace(trim(name),'[.,..]','') is not null
----and not exists   (select 1 from document_det where regexp_replace(trim(DOC_ID),'[A-Z, ,-]','')=docu) --As per confirmation by Vijay on 25-7-2017 duplicate CID removed from Zaqout provided excel data. 
--commit;
---------- Guardian cif provided for non minor also in excel --As per confirmation from vijay on 15-08-2017 guardian for non minor is deleted from source data------------------------
delete from guardian_customer where loc||cus in (
select loc||cus from bgpf 
inner join guardian_customer on loc||cus=bgclc||bgcus
where case when trim(bgpf.BGDTOB) is not null and isnumber(bgdtob) = 1 and to_number(bgpf.BGDTOB)<>0 and  length(bgpf.BGDTOB)=8
       and to_number(substr(bgpf.BGDTOB,1,4)) between 1900 and 2017
       and to_number(substr(bgpf.BGDTOB,5,2)) between 1 and 12       
       and to_number(substr(bgpf.BGDTOB,7,2)) between 1 and 31
         and check_minor(to_date(bgpf.BGDTOB,'YYYYMMDD')) = 'Y' then 'Y'                 
        else 'N'  
        end ='N');
Commit;
--------------------- Primary cif avaialble but no joint cif in  map)cif. Hence insert to genetate poa,guarator,guardian and share holder----------------------
insert into map_cif 
select distinct gfpf.gfcpnc,
case when trim(gfpf.gfbrnm) is not null then trim(gfpf.gfbrnm)
else lpad(nvl(trim(gfpf.gfclc),'0600'),4,0) end,
lpad(gfpf.gfclc||gfpf.gfcus,10,'0'),
map_sol.fin_sol_id,
GFCUN,
decode(GFCTP,
'EA','Y',
'EB','Y',
'EC','Y',
'EJ','Y',
'ET','Y',
'EU','Y',
'EV','Y',
'EW','Y',
--'CH','Y',
'N'),
gfpf.gfcus,gfpf.gfclc,gfpf.gfcpnc,gfpf.gfbrnm,'N','N'
from (
  SELECT DISTINCT gfclc,gfcus,bgclc,bgcus,'p' aa FROM POA_CUSTOMER where trim(bgclc||bgcus) is not null and gfclc||gfcus<>bgclc||bgcus -- based on sandeep mail date 18-08-2017 primary and joint both are same has been excluded
  union 
  select distinct loc,customer,loc1,cust_no,'gu' aa from guarantor_customer where trim(loc1||cust_no) is not null and loc||customer<>loc1||cust_no -- based on sandeep mail date 18-08-2017 primary and joint both are same has been excluded
  union 
  select distinct loc,cus,guar_loc,guar_cust,'g' aa from guardian_customer where trim(guar_loc||guar_cust) is not null and loc||cus<>guar_loc||guar_cust -- based on sandeep mail date 18-08-2017 primary and joint both are same has been excluded
  union 
  select distinct gfclc,gfcus,bgclc,bgcus,'s' aa from shareholder_retail where  trim(bgclc||bgcus) is not null and gfclc||gfcus<>bgclc||bgcus) jnt -- based on sandeep mail date 18-08-2017 primary and joint both are same has been excluded
inner  join map_cif p on nvl(p.GFCLC,' ')=nvl(trim(jnt.gfclc),' ') and p.GFCUS=trim(jnt.gfCUS)
left  join map_cif on nvl(map_cif.GFCLC,' ')=nvl(BGCLC,' ') and map_cif.GFCUS=BGCUS
left join gfpf  on nvl(trim(gfpf.gfclc),' ')=nvl(BGCLC,' ') and  trim(gfpf.gfcus)=trim(BGCUS)
left join map_sol on br_code=lpad(nvl(trim(bgclc),'0600'),4,0)
where trim(map_cif.gfcus) is null; 
commit;
insert into CIF_AC_SEQ select fin_cif_id , 1 from map_cif;
commit;
--------------------POA/guardian/guarantor customer bgcus is null and created cif-----------------------------
drop table seq_creation;
--create table seq_creation as select lpad(rownum,6,'0') seq from sapf where rownum < 1000000;
create table seq_creation as Select lpad(rownum,6,'0')  seq From dual Connect By Rownum <= 999999;
delete from seq_creation where seq in (select trim(gfcus) from reserved_cif);
commit; 
drop table joint_cif;
create table joint_cif as select rownum row_num, seq from seq_creation order by seq;
--------------POA cif is null ------------
--drop table poa_joint;
--create table poa_joint as
--select distinct  pri.gfcus LEG_CUST_NUMBER,
--lpad(nvl(trim(pri.gfclc),'0600'),4,0) LEG_CUST_BRANCH,
--rownum FIN_CIF_ID,
--map_sol.fin_sol_id, ---need to check
--BGRLNM CIF_NAME,
--'Y' individual,
--pri.gfcus,pri.gfclc,pri.gfcpnc,pri.gfclc GFBRNM,' ' is_joint,'N' del_flg,'POA' prim_gfcus,' ' prim_gfclc
--from (SELECT DISTINCT * FROM POA_CUSTOMER) poa 
--inner join map_cif pri on nvl(pri.GFCLC,'')=nvl(POA.GFCLC,'') and pri.GFCUS=POA.GFCUS
--left  join map_cif sec on nvl(sec.GFCLC,'')=nvl(BGCLC,'') and sec.GFCUS=BGCUS
----left join document_det on cif=nvl(sec.GFCLC,'')||sec.GFCUS --commented based on vijay confirmation 07-07-2017. because same cid already avaialble in equation cif
--left join map_sol on br_code=lpad(nvl(trim(pri.gfclc),'0600'),4,0)
--where trim(sec.gfcus) is null and (regexp_replace(trim(bgrlnm),'[.,..]','') is not null or regexp_replace(trim(bgdirl),'[.,..]','') is not null);
----and nvl(DOCU,' ') <> nvl(regexp_replace(trim(BGDIRL),'[A-Z, ,-]',''),' ') --commented based on vijay confirmation 07-07-2017. because same cid already avaialble in equation cif
----and not exists   (select 1 from document_det where regexp_replace(trim(BGDIRL),'[A-Z, ,-]','')=docu) --As per confirmation by Vijay on 25-7-2017 duplicate CID removed from Zaqout provided excel data. 
--------------guarantor cif is null ------------
--drop table gtr_joint;
--create table gtr_joint as
--select distinct  pri.gfcus leg_cust_number,
--lpad(nvl(trim(pri.gfclc),'0600'),4,0) leg_cust_branch,
--rownum fin_cif_id,
--map_sol.fin_sol_id, ---need to check
--GUARANTOR_NAME cif_name,
--'Y' individual,
--pri.gfcus,pri.gfclc,pri.gfcpnc,pri.gfclc gfbrnm,' ' is_joint,'N' del_flg,'GTR' prim_gfcus,' ' prim_gfclc 
--from guarantor_customer gtr  
--inner join map_cif pri on nvl(pri.GFCLC,' ')=nvl(trim(LOC),' ') and pri.GFCUS=trim(CUSTOMER)
--left  join map_cif sec on nvl(sec.GFCLC,' ')=nvl(trim(loc1),' ') and sec.GFCUS=trim(CUST_NO)
----left join document_det on cif=nvl(sec.GFCLC,'')||sec.GFCUS --commented based on vijay confirmation 07-07-2017. because same cid already avaialble in equation cif
--left join map_sol on br_code=lpad(nvl(trim(pri.gfclc),'0600'),4,0)
--where trim(sec.gfcus) is null and (trim(CID_NO) is not null or regexp_replace(trim(guarantor_name),'[.,.. ]','') is not null);
----and nvl(DOCU,' ') <> nvl(regexp_replace(trim(CID_NO),'[A-Z, ,-.,..]',''),' ') --commented based on vijay confirmation 07-07-2017. because same cid already avaialble in equation cif
----and not exists   (select 1 from document_det where regexp_replace(trim(CID_NO),'[A-Z, ,-]','')=docu) --As per confirmation by Vijay on 25-7-2017 duplicate CID removed from Zaqout provided excel data. 
--------------guardian cif is null ------------
--drop table guardian_joint;
--create table guardian_joint as
--select distinct  pri.gfcus LEG_CUST_NUMBER,
--lpad(nvl(trim(pri.gfclc),'0600'),4,0) LEG_CUST_BRANCH,
--rownum FIN_CIF_ID,
--map_sol.fin_sol_id, ---need to check
--GUARDIAN_NAME CIF_NAME,
--'Y' individual,
--pri.gfcus,pri.gfclc,pri.gfcpnc,pri.gfclc GFBRNM,' ' is_joint,'N' del_flg,'GUAR' prim_gfcus,' ' prim_gfclc
--from guardian_customer guar
--inner join map_cif pri on nvl(pri.GFCLC,' ')=nvl(trim(guar.loc),' ') and pri.GFCUS=trim(guar.CUS)
--left  join map_cif sec on nvl(sec.GFCLC,' ')=nvl(trim(guar_loc),' ') and sec.GFCUS=trim(guar_cust) 
--left join map_sol on br_code=lpad(nvl(trim(pri.gfclc),'0600'),4,0)
----left join document_det on cif=nvl(sec.GFCLC,'')||sec.GFCUS --commented based on vijay confirmation 07-07-2017. because same cid already avaialble in equation cif
--where trim(sec.gfcus) is null and (regexp_replace(trim(GUARDIAN_NAME),'[.,..]','') is not null or regexp_replace(trim(GUARDIAN_CID),'[.,..]','') is not null);
----and nvl(DOCU,' ') <> nvl(regexp_replace(trim(GUARDIAN_CID),'[A-Z, ,-.,..]',''),' ')--commented based on vijay confirmation 07-07-2017. because same cid already avaialble in equation cif
----and not exists   (select 1 from document_det where regexp_replace(trim(GUARDIAN_CID),'[A-Z, ,-]','')=docu) --As per confirmation by Vijay on 25-7-2017 duplicate CID removed from Zaqout provided excel data. 
-------Share holder cif is null------------------------------
--drop table share_joint;
--create table share_joint as
--select distinct  pri.gfcus LEG_CUST_NUMBER,
--lpad(nvl(trim(pri.gfclc),'0600'),4,0) LEG_CUST_BRANCH,
--rownum FIN_CIF_ID,
--map_sol.fin_sol_id, ---need to check
--name CIF_NAME,
--'N' individual,
--pri.gfcus,pri.gfclc,pri.gfcpnc,pri.gfclc GFBRNM,' ' is_joint,'N' del_flg,'SHARE' prim_gfcus,' ' prim_gfclc
--from (SELECT DISTINCT GFCLC,GFCUS,DOC_ID,NAME,bgclc,bgcus  FROM shareholder_retail) shr
--inner join map_cif pri on nvl(pri.GFCLC,'')=nvl(shr.GFCLC,'') and pri.GFCUS=shr.GFCUS
--left  join map_cif sec on nvl(sec.GFCLC,' ')=nvl(trim(bgclc),' ') and sec.GFCUS=trim(bgcus) 
--left join map_sol on br_code=lpad(nvl(trim(pri.gfclc),'0600'),4,0)
--where trim(sec.gfcus) is null and (regexp_replace(trim(name),'[.,..]','') is not null or regexp_replace(trim(doc_id),'[.,..]','') is not null);
----from (SELECT DISTINCT GFCLC,GFCUS,DOC_ID,NAME  FROM shareholder_retail) shr
----inner join map_cif pri on nvl(pri.GFCLC,'')=nvl(shr.GFCLC,'') and pri.GFCUS=shr.GFCUS
----left join map_sol on br_code=lpad(nvl(trim(pri.gfclc),'0600'),4,0)
----left join document_det on cif=nvl(shr.GFCLC,'')||shr.GFCUS--commented based on vijay confirmation 07-07-2017. because same cid already avaialble in equation cif
----where (regexp_replace(trim(name),'[.,..]','') is not null or regexp_replace(trim(doc_id),'[.,..]','') is not null);
----and nvl(DOCU,' ') <> nvl(regexp_replace(trim(doc_id),'[A-Z, ,-.,..]',''),' ')--commented based on vijay confirmation 07-07-2017. because same cid already avaialble in equation cif
----and not exists   (select 1 from document_det where regexp_replace(trim(DOC_ID),'[A-Z, ,-]','')=docu) --As per confirmation by Vijay on 25-7-2017 duplicate CID removed from Zaqout provided excel data. 
--------POA customer insert into map_cif_joint table------------
--truncate table map_cif_joint;
--insert into map_cif_joint 
--select distinct LEG_CUST_NUMBER,LEG_CUST_BRANCH,LEG_CUST_BRANCH||seq,FIN_SOL_ID,CIF_NAME,INDIVIDUAL,GFCUS,GFCLC,GFCPNC,GFBRNM,IS_JOINT,DEL_FLG,PRIM_GFCUS,PRIM_GFCLC from poa_joint
--inner join joint_cif on row_num=fin_cif_id;
--commit;
----------------------Guarantor customer bgcus is null and created cif-----------------------------
--delete from joint_cif where seq in (select substr(trim(fin_cif_id),5,6) from map_cif_joint);
--commit; 
--drop table joint_cif1;
--create table joint_cif1 as select rownum row_num, seq from joint_cif order by seq;
--------Guarantor customer insert into map_cif_joint table------------
--insert into map_cif_joint select LEG_CUST_NUMBER,LEG_CUST_BRANCH,LEG_CUST_BRANCH||seq,FIN_SOL_ID,CIF_NAME,INDIVIDUAL,GFCUS,GFCLC,GFCPNC,GFBRNM,IS_JOINT,DEL_FLG,PRIM_GFCUS,PRIM_GFCLC from gtr_joint
--inner join joint_cif1 on row_num=fin_cif_id;
--commit;
----------------------Guardian customer bgcus is null and created cif-----------------------------
--delete from joint_cif where seq in (select substr(trim(fin_cif_id),5,6) from map_cif_joint);
--commit; 
--drop table joint_cif2;
--create table joint_cif2 as select rownum row_num, seq from joint_cif order by seq;
--------Guarantor customer insert into map_cif_joint table------------
--insert into map_cif_joint select LEG_CUST_NUMBER,LEG_CUST_BRANCH,LEG_CUST_BRANCH||seq,FIN_SOL_ID,CIF_NAME,INDIVIDUAL,GFCUS,GFCLC,GFCPNC,GFBRNM,IS_JOINT,DEL_FLG,PRIM_GFCUS,PRIM_GFCLC from guardian_joint
--inner join joint_cif2 on row_num=fin_cif_id;
--commit;
----------------------share holder customer bgcus is null and created cif-----------------------------
--delete from joint_cif where seq in (select substr(trim(fin_cif_id),5,6) from map_cif_joint);
--commit; 
--drop table joint_cif3;
--create table joint_cif3 as select rownum row_num, seq from joint_cif order by seq;
--------share holder customer insert into map_cif_joint table------------
--insert into map_cif_joint select LEG_CUST_NUMBER,LEG_CUST_BRANCH,LEG_CUST_BRANCH||seq,FIN_SOL_ID,CIF_NAME,INDIVIDUAL,GFCUS,GFCLC,GFCPNC,GFBRNM,IS_JOINT,DEL_FLG,PRIM_GFCUS,PRIM_GFCLC from share_joint 
--inner join joint_cif3 on row_num=fin_cif_id;
--commit;
----------------------- joint cif id not provided in the excel data. Hence we are creating new cif------------------------------------------
drop table map_cif_joint_data;
create table map_cif_joint_data as
select rownum FIN_CIF_ID,doc_id,cust_name
  from (
  select distinct bgdirl DOC_ID,trim(bgrlnm) cust_name from poa_customer poa 
  inner join map_cif pri on nvl(pri.GFCLC,'')=nvl(POA.GFCLC,'') and pri.GFCUS=POA.GFCUS
  where trim(bgclc||bgcus) is null  and (regexp_replace(trim(bgrlnm),'[-,_,&,#, ,-,/,.,0-9]','') is not null or regexp_replace(trim(bgdirl),'[-,_,&,#,A-Z,-,/,.]','') is not null)
  union
  select distinct  nvl(trim(cid_no),nvl(trim(COMMERCIAL_REG),passport_no)),trim(guarantor_name)   from guarantor_customer 
  inner join map_cif pri on nvl(pri.GFCLC,' ')=nvl(trim(LOC),' ') and pri.GFCUS=trim(CUSTOMER)
  where trim(loc1||cust_no) is null and (regexp_replace(trim(nvl(trim(cid_no),nvl(trim(COMMERCIAL_REG),passport_no))),'[-,_,&,#,A-Z,-,/,., ]','') is not null or regexp_replace(trim(guarantor_name),'[-,_,&,#,0-9,-,/,., ]','') is not null)
  union
  select distinct guardian_cid,trim(guardian_name) from guardian_customer guar 
  inner join map_cif pri on nvl(pri.GFCLC,' ')=nvl(trim(guar.loc),' ') and pri.GFCUS=trim(guar.CUS)
  where trim(guar_loc||guar_cust) is null and (regexp_replace(trim(GUARDIAN_CID),'[-,_,&,#,A-Z,-,/,., ]','') is not null or regexp_replace(trim(GUARDIAN_NAME),'[-,_,&,#,0-9,-,/,., ]','') is not null)
  union
  select distinct doc_id,trim(name) from   shareholder_retail shr
  inner join map_cif pri on nvl(pri.GFCLC,'')=nvl(shr.GFCLC,'') and pri.GFCUS=shr.GFCUS
  where trim(bgclc||bgcus) is null and (to_number(nvl(regexp_replace(trim(DOC_ID),'[-,_,&,#,A-Z,a-z,-,/,., ]',''),0)) <> 0 or regexp_replace(trim(NAME),'[-,_,&,#,0-9,(,),,;,,\,`,-,/,., ]','')is not null )
    );
drop table map_Cif_joint;
create table map_Cif_joint as 
select '0618'||seq fin_cif_id,doc_id,cust_name cif_name from map_cif_joint_data
inner join joint_cif on row_num=fin_cif_id
order by fin_cif_id;  
-------------------------------------------------------------------------------------------------
--------------------Single deals account number should be as is--------------
drop table single_deal;
create table single_deal
as
select trim(v5brnm)||trim(v5dlp)||trim(v5dlr) leg_acc_num,trim(neean) fin_acc_num from 
(
select v5abd,v5and,v5asd from vw_active_dep_deals 
--where v5act<>'QM' 
group by v5abd,v5and,v5asd  having count(*) = 1
union
select v5abd,v5and,v5asd from vw_active_loans 
--where v5act<>'QM' 
group by v5abd,v5and,v5asd  having count(*) = 1
)a
inner join (select * from v5pf 
--where v5act<>'QM'
) b on a.v5abd = b.v5abd and a.v5and = b.v5and and a.v5asd = b.v5asd
inner join nepf on a.v5abd = neab and a.v5and = nean and a.v5asd = neas;
create index single_deal_idx on single_deal(leg_acc_num);
---------------------------------------------------
--update map_cif set fin_cif_id='0603744567',IS_JOINT='N' where gfclc||gfcus='603744567';
--commit;
--update map_cif set fin_cif_id='0603744602',IS_JOINT='N' where gfclc||gfcus='603744602';
--commit;
--update map_cif set fin_cif_id='0603399949',IS_JOINT='N' where gfclc||gfcus='603399949';
--commit;
--update map_cif set fin_cif_id='0603543633',IS_JOINT='N' where gfclc||gfcus='603543633';
--commit;------ 'EJ' joint cif exclusion dropped. Hence this has been commented
--SBA,CAA,ODA----
truncate table map_acc;
insert into map_acc
select distinct 
scab,
scan,
scas,
case when scact='KN' AND V5BAL <> 0 then
to_char(trim(v5brnm)||trim(v5dlp)||trim(v5dlr))
else '' end,
gfpf.gfcus,
gfctp,
scact,
case when scact='KN' AND V5BAL <> 0 then
''
else to_char(trim(neean)) end,
map_cif.fin_cif_id,
--substr(scab,2,3),
--map_sol.fin_sol_id,--As pre vijay sir conformation all CBD and IBD customers mapped to 603
case when nvl(to_number(trim(scaco)),0) between 100 and 198 then '603'
	 when nvl(to_number(trim(scaco)),0) between 350 and 399 then '603'
else map_sol.fin_sol_id end,
null,null, null, 
get_gl_subhead_code(scact,scccy,gfctp,SCBAL,scodl,trim(scaco),trim(v5pf.v5dlp),scai83,scai84,scaig4,scai81,scaij3,scas,case when v5abd||v5and||v5asd=v5abi||v5ani||v5asi then 'Y'
else 'N' end,scc3r,scc2r),
  SUBSTR (
             get_schm_type_code (
                SCACT,
                SCCCY,
                SCCTP,
                SCBAL,
                SCODL,
                TRIM (SCACO),
                TRIM (v5pf.v5dlp),
                scai83,
                scai84,
                scaig4,
                scai81,
                scaij3,
                scas,
                CASE
                   WHEN v5abd || v5and || v5asd = v5abi || v5ani || v5asi
                   THEN
                      'Y'
                   ELSE
                      'N'
                END,scc3r,scc2r),
               INSTR (
                  get_schm_type_code (
                     SCACT,
                     SCCCY,
                     SCCTP,
                     SCBAL,
                     SCODL,
                     TRIM (SCACO),
                     TRIM (v5pf.v5dlp),
                     scai83,
                     scai84,
                     scaig4,
                     scai81,
                     scaij3,
                     scas,
                     CASE
                        WHEN v5abd || v5and || v5asd =
                                v5abi || v5ani || v5asi
                        THEN
                           'Y'
                        ELSE
                           'N'
                     END,scc3r,scc2r),
                  '|')
             + 1,
             3) schm_type,
 SUBSTR (
             get_schm_type_code (
                SCACT,
                SCCCY,
                SCCTP,
                SCBAL,
                SCODL,
                TRIM (SCACO),
                TRIM (v5pf.v5dlp),
                scai83,
                scai84,
                scaig4,
                scai81,
                scaij3,
                scas,
                CASE
                   WHEN v5abd || v5and || v5asd = v5abi || v5ani || v5asi
                   THEN
                      'Y'
                   ELSE
                      'N'
                END,scc3r,scc2r),
             1,
               INSTR (
                  get_schm_type_code (
                     SCACT,
                     SCCCY,
                     SCCTP,
                     SCBAL,
                     SCODL,
                     TRIM (SCACO),
                     TRIM (v5pf.v5dlp),
                     scai83,
                     scai84,
                     scaig4,
                     scai81,
                     scaij3,
                     scas,
                     CASE
                        WHEN v5abd || v5and || v5asd =
                                v5abi || v5ani || v5asi
                        THEN
                           'Y'
                        ELSE
                           'N'
                     END,scc3r,scc2r),
                  '|')
             - 1) schm_code,
scccy,
case when scact='KN' AND single_deal.fin_acc_num is null then null
else NEIBAN end,
'' plc,
trim(NEEAN),
case when scact='KN' then
to_char(trim(v5dlp))
else '' end,
'' 
from scpf
left join nepf on scab=neab and scan=nean and scas=neas
left join (select * from map_cif where del_flg<>'Y') map_cif on scan=map_cif.gfcpnc
left join (select * from v5pf where v5bal<>0 
--and v5act<>'QM'
)v5pf on v5pf.v5abd||v5pf.v5and||v5pf.v5asd = scab||scan||scas
left join gfpf on gfpf.gfcpnc = scan 
left join single_deal on trim(v5brnm)||trim(v5dlp)||trim(v5dlr) = single_deal.leg_acc_num
left join map_sol on scab = br_code
where (scai30='N' or (scai30='Y' and scbal <> 0)) and scai47 <> 'Y' --and scact<>'QM'
and (scact='QG' or (  SUBSTR (
             get_schm_type_code (
                SCACT,
                SCCCY,
                SCCTP,
                SCBAL,
                SCODL,
                TRIM (SCACO),
                TRIM (v5pf.v5dlp),
                scai83,
                scai84,
                scaig4,
                scai81,
                scaij3,
                scas,
                CASE
                   WHEN v5abd || v5and || v5asd = v5abi || v5ani || v5asi
                   THEN
                      'Y'
                   ELSE
                      'N'
                END,scc3r,scc2r),
               INSTR (
                  get_schm_type_code (
                     SCACT,
                     SCCCY,
                     SCCTP,
                     SCBAL,
                     SCODL,
                     TRIM (SCACO),
                     TRIM (v5pf.v5dlp),
                     scai83,
                     scai84,
                     scaig4,
                     scai81,
                     scaij3,
                     scas,
                     CASE
                        WHEN v5abd || v5and || v5asd =
                                v5abi || v5ani || v5asi
                        THEN
                           'Y'
                        ELSE
                           'N'
                     END,scc3r,scc2r),
                  '|')
             + 1,
             3)) in ('SBA','CAA','ODA','OOO','PCA') ); 
commit;
--SBA,CAA,ODA closed accounts----
insert into map_acc
select 
scab,
scan,
scas,
case when scact='KN' AND V5BAL <> 0 then
to_char(trim(v5brnm)||trim(v5dlp)||trim(v5dlr))
else '' end,
gfpf.gfcus,
gfctp,
scact,
case when scact='KN' AND V5BAL <> 0  then
''
else to_char(trim(neean)) end,
map_cif.fin_cif_id,
--substr(scab,2,3),
--map_sol.fin_sol_id,--As pre vijay sir conformation all CBD and IBD customers mapped to 603
case when nvl(to_number(trim(scaco)),0) between 100 and 198 then '603'
	 when nvl(to_number(trim(scaco)),0) between 350 and 399 then '603'
else map_sol.fin_sol_id end,
null,null, null, 
get_gl_subhead_code(scact,scccy,gfctp,SCBAL,scodl,trim(scaco),trim(v5pf.v5dlp),scai83,scai84,scaig4,scai81,scaij3,scas,case when v5abd||v5and||v5asd=v5abi||v5ani||v5asi then 'Y'
else 'N' end,scc3r,scc2r),
  SUBSTR (
             get_schm_type_code (
                SCACT,
                SCCCY,
                SCCTP,
                SCBAL,
                SCODL,
                TRIM (SCACO),
                TRIM (v5pf.v5dlp),
                scai83,
                scai84,
                scaig4,
                scai81,
                scaij3,
                scas,
                CASE
                   WHEN v5abd || v5and || v5asd = v5abi || v5ani || v5asi
                   THEN
                      'Y'
                   ELSE
                      'N'
                END,scc3r,scc2r),
               INSTR (
                  get_schm_type_code (
                     SCACT,
                     SCCCY,
                     SCCTP,
                     SCBAL,
                     SCODL,
                     TRIM (SCACO),
                     TRIM (v5pf.v5dlp),
                     scai83,
                     scai84,
                     scaig4,
                     scai81,
                     scaij3,
                     scas,
                     CASE
                        WHEN v5abd || v5and || v5asd =
                                v5abi || v5ani || v5asi
                        THEN
                           'Y'
                        ELSE
                           'N'
                     END,scc3r,scc2r),
                  '|')
             + 1,
             3) schm_type,
 SUBSTR (
             get_schm_type_code (
                SCACT,
                SCCCY,
                SCCTP,
                SCBAL,
                SCODL,
                TRIM (SCACO),
                TRIM (v5pf.v5dlp),
                scai83,
                scai84,
                scaig4,
                scai81,
                scaij3,
                scas,
                CASE
                   WHEN v5abd || v5and || v5asd = v5abi || v5ani || v5asi
                   THEN
                      'Y'
                   ELSE
                      'N'
                END,scc3r,scc2r),
             1,
               INSTR (
                  get_schm_type_code (
                     SCACT,
                     SCCCY,
                     SCCTP,
                     SCBAL,
                     SCODL,
                     TRIM (SCACO),
                     TRIM (v5pf.v5dlp),
                     scai83,
                     scai84,
                     scaig4,
                     scai81,
                     scaij3,
                     scas,
                     CASE
                        WHEN v5abd || v5and || v5asd =
                                v5abi || v5ani || v5asi
                        THEN
                           'Y'
                        ELSE
                           'N'
                     END,scc3r,scc2r),
                  '|')
             - 1) schm_code,
scccy,
case when scact='KN' AND single_deal.fin_acc_num is null then null
else NEIBAN end,
'' plc,
trim(NEEAN),
case when scact='KN' then
to_char(trim(v5dlp))
else '' end,
'CLOSED' 
from scpf
left join nepf on scab=neab and scan=nean and scas=neas
left join (select * from map_cif where del_flg<>'Y') map_cif on scan=map_cif.gfcpnc
left join (select * from v5pf where v5bal<>0 
--and v5act='QM'
)v5pf on v5pf.v5abd||v5pf.v5and||v5pf.v5asd = scab||scan||scas
left join single_deal on trim(v5brnm)||trim(v5dlp)||trim(v5dlr) = single_deal.leg_acc_num
left join gfpf on gfpf.gfcpnc = scan 
left join map_sol on scab = br_code
where scai30='Y' and case when sccad<>0 then to_date(get_date_fm_btrv(sccad),'YYYYMMDD')end between to_date(get_param('FTP_START_DT'),'DD-MM-YYYY') and to_date(get_param('FTP_END_DT'),'DD-MM-YYYY')
and scbal=0 and scai47<>'Y' --and scact<>'QM'
and (  SUBSTR (
             get_schm_type_code (
                SCACT,
                SCCCY,
                SCCTP,
                SCBAL,
                SCODL,
                TRIM (SCACO),
                TRIM (v5pf.v5dlp),
                scai83,
                scai84,
                scaig4,
                scai81,
                scaij3,
                scas,
                CASE
                   WHEN v5abd || v5and || v5asd = v5abi || v5ani || v5asi
                   THEN
                      'Y'
                   ELSE
                      'N'
                END,scc3r,scc2r),
               INSTR (
                  get_schm_type_code (
                     SCACT,
                     SCCCY,
                     SCCTP,
                     SCBAL,
                     SCODL,
                     TRIM (SCACO),
                     TRIM (v5pf.v5dlp),
                     scai83,
                     scai84,
                     scaig4,
                     scai81,
                     scaij3,
                     scas,
                     CASE
                        WHEN v5abd || v5and || v5asd =
                                v5abi || v5ani || v5asi
                        THEN
                           'Y'
                        ELSE
                           'N'
                     END,scc3r,scc2r),
                  '|')
             + 1,
             3)) in ('SBA','CAA','ODA') ; 
commit;
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
--map_sol.fin_sol_id,--As pre vijay sir conformation all CBD and IBD customers mapped to 603
case when nvl(to_number(trim(scaco)),0) between 100 and 198 then '603'
	 when nvl(to_number(trim(scaco)),0) between 350 and 399 then '603'
else map_sol.fin_sol_id end,
null,null, null, 
get_gl_subhead_code(scact,scccy,gfctp,SCBAL,scodl,trim(scaco),trim(v5pf.v5dlp),scai83,scai84,scaig4,scai81,scaij3,scas,case when v5abd||v5and||v5asd=v5abi||v5ani||v5asi then 'Y'
else 'N' end,scc3r,scc2r),
  SUBSTR (
             get_schm_type_code (
                SCACT,
                SCCCY,
                SCCTP,
                SCBAL,
                SCODL,
                TRIM (SCACO),
                TRIM (v5pf.v5dlp),
                scai83,
                scai84,
                scaig4,
                scai81,
                scaij3,
                scas,
                CASE
                   WHEN v5abd || v5and || v5asd = v5abi || v5ani || v5asi
                   THEN
                      'Y'
                   ELSE
                      'N'
                END,scc3r,scc2r),
               INSTR (
                  get_schm_type_code (
                     SCACT,
                     SCCCY,
                     SCCTP,
                     SCBAL,
                     SCODL,
                     TRIM (SCACO),
                     TRIM (v5pf.v5dlp),
                     scai83,
                     scai84,
                     scaig4,
                     scai81,
                     scaij3,
                     scas,
                     CASE
                        WHEN v5abd || v5and || v5asd =
                                v5abi || v5ani || v5asi
                        THEN
                           'Y'
                        ELSE
                           'N'
                     END,scc3r,scc2r),
                  '|')
             + 1,
             3) schm_type,
 SUBSTR (
             get_schm_type_code (
                SCACT,
                SCCCY,
                SCCTP,
                SCBAL,
                SCODL,
                TRIM (SCACO),
                TRIM (v5pf.v5dlp),
                scai83,
                scai84,
                scaig4,
                scai81,
                scaij3,
                scas,
                CASE
                   WHEN v5abd || v5and || v5asd = v5abi || v5ani || v5asi
                   THEN
                      'Y'
                   ELSE
                      'N'
                END,scc3r,scc2r),
             1,
               INSTR (
                  get_schm_type_code (
                     SCACT,
                     SCCCY,
                     SCCTP,
                     SCBAL,
                     SCODL,
                     TRIM (SCACO),
                     TRIM (v5pf.v5dlp),
                     scai83,
                     scai84,
                     scaig4,
                     scai81,
                     scaij3,
                     scas,
                     CASE
                        WHEN v5abd || v5and || v5asd =
                                v5abi || v5ani || v5asi
                        THEN
                           'Y'
                        ELSE
                           'N'
                     END,scc3r,scc2r),
                  '|')
             - 1) schm_code,
scccy,
case when single_deal.fin_acc_num is not null then NEIBAN else null end iban,
'' ttumplc,
trim(NEEAN),
trim(v5dlp),
''
from scpf
left join nepf on scab=neab and scan=nean and scas=neas 
left join (select * from map_cif where del_flg<>'Y') map_cif on scan=map_cif.gfcpnc
left join gfpf on gfpf.gfcpnc = scpf.scan 
left join map_sol on scab = br_code
left join (select * from v5pf --where v5act<>'QM'
)v5pf on v5abd||v5and||v5asd = scab||scan||scas
left join ospf on trim(v5brnm)||trim(v5dlp)||trim(v5dlr)=trim(osbrnm)||trim(osdlp)||trim(osdlr)
left join single_deal on trim(v5brnm)||trim(v5dlp)||trim(v5dlr) = single_deal.leg_acc_num
where (scai30='N' or (scai30='Y' and scbal <> 0)) and scai47 <> 'Y' and v5and is not null 
--and v5act<>'QM'  --commented on 14-06-2017 for CLA changes
and v5bal<>0 and scact<>'KN' and  ((v5arc <> 'A' OR v5arc IS NULL) ) and (oscanr <> 'C' OR oscanr IS NULL OR oscanr = '')
----- the below are added on 14-06-2017 for CLA changes
and ((  SUBSTR (
             get_schm_type_code (
                SCACT,
                SCCCY,
                SCCTP,
                SCBAL,
                SCODL,
                TRIM (SCACO),
                TRIM (v5pf.v5dlp),
                scai83,
                scai84,
                scaig4,
                scai81,
                scaij3,
                scas,
                CASE
                   WHEN v5abd || v5and || v5asd = v5abi || v5ani || v5asi
                   THEN
                      'Y'
                   ELSE
                      'N'
                END,scc3r,scc2r),
               INSTR (
                  get_schm_type_code (
                     SCACT,
                     SCCCY,
                     SCCTP,
                     SCBAL,
                     SCODL,
                     TRIM (SCACO),
                     TRIM (v5pf.v5dlp),
                     scai83,
                     scai84,
                     scaig4,
                     scai81,
                     scaij3,
                     scas,
                     CASE
                        WHEN v5abd || v5and || v5asd =
                                v5abi || v5ani || v5asi
                        THEN
                           'Y'
                        ELSE
                           'N'
                     END,scc3r,scc2r),
                  '|')
             + 1,
             3)) in ('LAA','TDA','CLA') 
--             or SUBSTR ( get_schm_type_code (
--                SCACT,
--                SCCCY,
--                SCCTP,
--                SCBAL,
--                SCODL,
--                TRIM (SCACO),
--                TRIM (v5pf.v5dlp),
--                scai83,
--                scai84,
--                scaig4,
--                scai81,
--                scaij3,
--                scas,
--                CASE
--                   WHEN v5abd || v5and || v5asd = v5abi || v5ani || v5asi
--                   THEN
--                      'Y'
--                   ELSE
--                      'N'
--                END,scc3r,scc2r),
--             1,
--               INSTR (
--                  get_schm_type_code (
--                     SCACT,
--                     SCCCY,
--                     SCCTP,
--                     SCBAL,
--                     SCODL,
--                     TRIM (SCACO),
--                     TRIM (v5pf.v5dlp),
--                     scai83,
--                     scai84,
--                     scaig4,
--                     scai81,
--                     scaij3,
--                     scas,
--                     CASE
--                        WHEN v5abd || v5and || v5asd =
--                                v5abi || v5ani || v5asi
--                        THEN
--                           'Y'
--                        ELSE
--                           'N'
--                     END,scc3r,scc2r),
--                  '|')
--             - 1) in ('BDT')
			 ) ;
			 ----'LDA' schm code removed and added in the PCA schm type
commit;
-----------------------------Table created to list assigned numbers---------------------------------
DROP TABLE assigned_scas;
create table assigned_scas as 
select distinct to_char(scan)scan,to_char(scas)scas from scpf  --where scact<>'QM' commented on 14-06-2017 for CLA Changes
union
select distinct to_char(substr(trim(neean),5,6)),to_char(substr(trim(neean),11,3)) from nepf
union
select distinct to_char(substr(fin_acc_num,5,6)),to_char(substr(fin_acc_num,11,3)) from map_acc where schm_type in('TDA','CLA','LAA');
create index assigned_cas_idx on assigned_scas(scan,scas);
-----------------------Assigning numbers loop for null finacle accounts----------------------------
---This loop is expensive, talk to PM and see if this can be done differently-------
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
select case when trim(neean) is null then nean else substr(trim(neean),5,6)  end nean from nepf
)a, seq_number
where nean = substr(l_record.EXTERNAL_ACC,5,6)
)al
left join assigned_scas b on al.nean = b.scan and lpad(al.seq_no,3,'0') = b.scas
where b.scan is null;
update map_acc set fin_acc_num = substr(l_record.EXTERNAL_ACC,1,4)||substr(l_record.EXTERNAL_ACC,5,6)||lpad(v_seq_no,3,'0') where l_record.fin_acc_num is null and l_record.schm_type<>'OOO' 
and LEG_ACC_NUM=l_record.LEG_ACC_NUM;
commit;
insert into assigned_scas values (substr(l_record.EXTERNAL_ACC,5,6),lpad(v_seq_no,3,'0'));
commit; 
end loop;
commit;
end;
/
update map_acc set schm_type='OOO', SCHM_CODE='00000' where LEG_BRANCH_ID||leg_scan||leg_scas in(
select LEG_BRANCH_ID||leg_scan||leg_scas from map_acc
inner join scpf on scab||scan||scas=LEG_BRANCH_ID||leg_scan||leg_scas
where schm_type ='CAA' and schm_code='CALAC' and leg_acct_type='QG' and scbal=0);
commit;
----CLA drawdown account number generation--
--drop table cla_ld_deal; 
--create table cla_ld_deal as 
-- SELECT scab,scan,scas,v5brnm||trim(v5dlp)||trim(v5dlr) leg_acc_num , --'LD' schm_code,  --commented on 14-06-2017 for CLA changes
-- SUBSTR (
--             get_schm_type_code (
--                SCACT,
--                SCCCY,
--                SCCTP,
--                SCBAL,
--                SCODL,
--                TRIM (SCACO),
--                TRIM (v5pf.v5dlp),
--                scai83,
--                scai84,
--                scaig4,
--                scai81,
--                scaij3,
--                scas,
--                CASE
--                   WHEN v5abd || v5and || v5asd = v5abi || v5ani || v5asi
--                   THEN
--                      'Y'
--                   ELSE
--                      'N'
--                END,scc3r,scc2r),
--             1,
--               INSTR (
--                  get_schm_type_code (
--                     SCACT,
--                     SCCCY,
--                     SCCTP,
--                     SCBAL,
--                     SCODL,
--                     TRIM (SCACO),
--                     TRIM (v5pf.v5dlp),
--                     scai83,
--                     scai84,
--                     scaig4,
--                     scai81,
--                     scaij3,
--                     scas,
--                     CASE
--                        WHEN v5abd || v5and || v5asd =
--                                v5abi || v5ani || v5asi
--                        THEN
--                           'Y'
--                        ELSE
--                           'N'
--                     END,scc3r,scc2r),
--                  '|')
--             - 1) schm_code,
-- v5ccy, CASE WHEN v5rat <> 0 THEN 'ZEROC' 
--         else convert_codes('INT_TBL_CODE_CLA',trim(v5brr)) END INT_TBL_CODE,
--    CASE 
--    WHEN convert_codes('INT_TBL_CODE_CLA',trim(v5brr)) <> 'ZEROC' THEN v5rtm +nvl(d5drar,0)
--    WHEN convert_codes('INT_TBL_CODE_CLA',trim(v5brr)) = 'ZEROC' and (trim(v5brr) is not null or v5rtm <> 0 )THEN nvl(d4brar,0) + v5rtm +nvl(d5drar,0)
--         ELSE to_number(v5rat)
--         END ACC_PREF_RATE 
--  FROM scpf 
--  inner join v5pf on v5abd||v5and||v5asd = scab||scan||scas
--  left join ospf on trim(v5brnm)||trim(v5dlp)||trim(v5dlr)=trim(osbrnm)||trim(osdlp)||trim(osdlr)
--  LEFT JOIN d4pf ON trim(v5brr) = d4brr and d4dte = 9999999 
--  LEFT JOIN d5pf ON trim(v5drr) = d5drr and d5dte = 9999999
--  left join map_codes on leg_code=trim(v5brr)
--  where (scai30='N' or (scai30='Y' and scbal <> 0)) and scai47 <> 'Y' and v5and is not null
--and v5bal<>0  and  ((v5arc <> 'A' OR v5arc IS NULL) ) and (oscanr <> 'C' OR oscanr IS NULL OR oscanr = '')
----and v5act='QM' --commented and below script added on  14-06-2017 for CLA Changes
--and ((  SUBSTR (
--             get_schm_type_code (
--                SCACT,
--                SCCCY,
--                SCCTP,
--                SCBAL,
--                SCODL,
--                TRIM (SCACO),
--                TRIM (v5pf.v5dlp),
--                scai83,
--                scai84,
--                scaig4,
--                scai81,
--                scaij3,
--                scas,
--                CASE
--                   WHEN v5abd || v5and || v5asd = v5abi || v5ani || v5asi
--                   THEN
--                      'Y'
--                   ELSE
--                      'N'
--                END,scc3r,scc2r),
--               INSTR (
--                  get_schm_type_code (
--                     SCACT,
--                     SCCCY,
--                     SCCTP,
--                     SCBAL,
--                     SCODL,
--                     TRIM (SCACO),
--                     TRIM (v5pf.v5dlp),
--                     scai83,
--                     scai84,
--                     scaig4,
--                     scai81,
--                     scaij3,
--                     scas,
--                     CASE
--                        WHEN v5abd || v5and || v5asd =
--                                v5abi || v5ani || v5asi
--                        THEN
--                           'Y'
--                        ELSE
--                           'N'
--                     END,scc3r,scc2r),
--                  '|')
--             + 1,
--             3)) in ('CLA') and SUBSTR (
--             get_schm_type_code (
--                SCACT,
--                SCCCY,
--                SCCTP,
--                SCBAL,
--                SCODL,
--                TRIM (SCACO),
--                TRIM (v5pf.v5dlp),
--                scai83,
--                scai84,
--                scaig4,
--                scai81,
--                scaij3,
--                scas,
--                CASE
--                   WHEN v5abd || v5and || v5asd = v5abi || v5ani || v5asi
--                   THEN
--                      'Y'
--                   ELSE
--                      'N'
--                END,scc3r,scc2r),
--             1,
--               INSTR (
--                  get_schm_type_code (
--                     SCACT,
--                     SCCCY,
--                     SCCTP,
--                     SCBAL,
--                     SCODL,
--                     TRIM (SCACO),
--                     TRIM (v5pf.v5dlp),
--                     scai83,
--                     scai84,
--                     scaig4,
--                     scai81,
--                     scaij3,
--                     scas,
--                     CASE
--                        WHEN v5abd || v5and || v5asd =
--                                v5abi || v5ani || v5asi
--                        THEN
--                           'Y'
--                        ELSE
--                           'N'
--                     END,scc3r,scc2r),
--                  '|')
--             - 1) not in ('BDT'));
------'LDA' schm code removed and added in the PCA schm type			 
--			 
--drop table ld_deal_int_wise;
--create table ld_deal_int_wise as 
--select t.*,DENSE_RANK() OVER (partition by scab,scan,scas order  BY scab,scan,scas,ACC_PREF_RATE ) serial_deal from cla_ld_deal t order by scab,scan,scas;
----select t.*,DENSE_RANK() OVER (partition by scab,scan,scas order  BY scab,scan,scas) serial_deal from cla_ld_deal t order by scab,scan,scas; --commented on 09-07-2017 because int rate wise account creation decision taken on mk5.
--create index ld_deal_int_wise_idx on ld_deal_int_wise(scab,scan,scas,leg_acc_num);
--drop table single_deal_cla;
--create table single_deal_cla
--as
--select trim(v5brnm)||trim(v5dlp)||trim(v5dlr) leg_acc_num,trim(neean) fin_acc_num from 
--(select scab,Scan,scas from (select distinct scab,Scan,scas,serial_deal from ld_deal_int_wise) group by scab,Scan,scas  having count(*) = 1)a
--inner join v5pf b on scab = b.v5abd and scan = b.v5and and scas = b.v5asd
--inner join nepf on scab= neab and scan = nean and scas = neas;
--create index single_deal_cla_idx on single_deal_cla(leg_acc_num);
--truncate table map_acc_cla;
--insert into map_acc_cla
--select distinct 
--scab,
--scan,
--scas,
--serial_deal,
--gfpf.gfcus,
--gfctp,
--scact,
--case when single_deal_cla.fin_acc_num is not null then to_char(single_deal_cla.fin_acc_num) else '' end,
--map_cif.fin_cif_id,
----map_sol.fin_sol_id,--As pre vijay sir conformation all CBD and IBD customers mapped to 603
--case when nvl(to_number(trim(scaco)),0) between 100 and 198 then '603'
--	 when nvl(to_number(trim(scaco)),0) between 350 and 399 then '603'
--else map_sol.fin_sol_id end,
--null,null, null, 
--get_gl_subhead_code(scact,scccy,gfctp,SCBAL,scodl,trim(scaco),trim(v5pf.v5dlp),scai83,scai84,scaig4,scai81,scaij3,scas,case when v5abd||v5and||v5asd=v5abi||v5ani||v5asi then 'Y'
--else 'N' end,scc3r,scc2r),
--  SUBSTR (
--             get_schm_type_code (
--                SCACT,
--                SCCCY,
--                SCCTP,
--                SCBAL,
--                SCODL,
--                TRIM (SCACO),
--                TRIM (v5pf.v5dlp),
--                scai83,
--                scai84,
--                scaig4,
--                scai81,
--                scaij3,
--                scas,
--                CASE
--                   WHEN v5abd || v5and || v5asd = v5abi || v5ani || v5asi
--                   THEN
--                      'Y'
--                   ELSE
--                      'N'
--                END,scc3r,scc2r),
--               INSTR (
--                  get_schm_type_code (
--                     SCACT,
--                     SCCCY,
--                     SCCTP,
--                     SCBAL,
--                     SCODL,
--                     TRIM (SCACO),
--                     TRIM (v5pf.v5dlp),
--                     scai83,
--                     scai84,
--                     scaig4,
--                     scai81,
--                     scaij3,
--                     scas,
--                     CASE
--                        WHEN v5abd || v5and || v5asd =
--                                v5abi || v5ani || v5asi
--                        THEN
--                           'Y'
--                        ELSE
--                           'N'
--                     END,scc3r,scc2r),
--                  '|')
--             + 1,
--             3) schm_type,
--SUBSTR (
--             get_schm_type_code (
--                SCACT,
--                SCCCY,
--                SCCTP,
--                SCBAL,
--                SCODL,
--                TRIM (SCACO),
--                TRIM (v5pf.v5dlp),
--                scai83,
--                scai84,
--                scaig4,
--                scai81,
--                scaij3,
--                scas,
--                CASE
--                   WHEN v5abd || v5and || v5asd = v5abi || v5ani || v5asi
--                   THEN
--                      'Y'
--                   ELSE
--                      'N'
--                END,scc3r,scc2r),
--             1,
--               INSTR (
--                  get_schm_type_code (
--                     SCACT,
--                     SCCCY,
--                     SCCTP,
--                     SCBAL,
--                     SCODL,
--                     TRIM (SCACO),
--                     TRIM (v5pf.v5dlp),
--                     scai83,
--                     scai84,
--                     scaig4,
--                     scai81,
--                     scaij3,
--                     scas,
--                     CASE
--                        WHEN v5abd || v5and || v5asd =
--                                v5abi || v5ani || v5asi
--                        THEN
--                           'Y'
--                        ELSE
--                           'N'
--                     END,scc3r,scc2r),
--                  '|')
--             - 1) schm_code,
--scccy,
--case when single_deal_cla.fin_acc_num is not null then NEIBAN else null end iban,
--'' ttumplc,
--trim(NEEAN),
--trim(v5dlp),
--''
--from scpf
--inner join (select distinct scab||scan||scas acc_num,serial_deal from ld_deal_int_wise)temp2 on acc_num=scab||Scan||scas
--left join nepf on scab=neab and scan=nean and scas=neas 
--left join (select * from map_cif where del_flg<>'Y') map_cif on scan=map_cif.gfcpnc
--left join gfpf on gfpf.gfcpnc = scpf.scan 
--left join map_sol on scab = br_code
--left join v5pf on v5abd||v5and||v5asd = scab||scan||scas
--left join ospf on trim(v5brnm)||trim(v5dlp)||trim(v5dlr)=trim(osbrnm)||trim(osdlp)||trim(osdlr)
--left join single_deal_cla on trim(v5brnm)||trim(v5dlp)||trim(v5dlr) = single_deal_cla.leg_acc_num
--where (scai30='N' or (scai30='Y' and scbal <> 0)) and scai47 <> 'Y' and v5and is not null
--and v5bal<>0 and scact<>'KN' and  ((v5arc <> 'A' OR v5arc IS NULL) ) and (oscanr <> 'C' OR oscanr IS NULL OR oscanr = '')
----and v5act='QM' --commented and below script added on  14-06-2017 for CLA Changes
--and ((  SUBSTR (
--             get_schm_type_code (
--                SCACT,
--                SCCCY,
--                SCCTP,
--                SCBAL,
--                SCODL,
--                TRIM (SCACO),
--                TRIM (v5pf.v5dlp),
--                scai83,
--                scai84,
--                scaig4,
--                scai81,
--                scaij3,
--                scas,
--                CASE
--                   WHEN v5abd || v5and || v5asd = v5abi || v5ani || v5asi
--                   THEN
--                      'Y'
--                   ELSE
--                      'N'
--                END,scc3r,scc2r),
--               INSTR (
--                  get_schm_type_code (
--                     SCACT,
--                     SCCCY,
--                     SCCTP,
--                     SCBAL,
--                     SCODL,
--                     TRIM (SCACO),
--                     TRIM (v5pf.v5dlp),
--                     scai83,
--                     scai84,
--                     scaig4,
--                     scai81,
--                     scaij3,
--                     scas,
--                     CASE
--                        WHEN v5abd || v5and || v5asd =
--                                v5abi || v5ani || v5asi
--                        THEN
--                           'Y'
--                        ELSE
--                           'N'
--                     END,scc3r,scc2r),
--                  '|')
--             + 1,
--             3)) in ('CLA') and SUBSTR (
--             get_schm_type_code (
--                SCACT,
--                SCCCY,
--                SCCTP,
--                SCBAL,
--                SCODL,
--                TRIM (SCACO),
--                TRIM (v5pf.v5dlp),
--                scai83,
--                scai84,
--                scaig4,
--                scai81,
--                scaij3,
--                scas,
--                CASE
--                   WHEN v5abd || v5and || v5asd = v5abi || v5ani || v5asi
--                   THEN
--                      'Y'
--                   ELSE
--                      'N'
--                END,scc3r,scc2r),
--             1,
--               INSTR (
--                  get_schm_type_code (
--                     SCACT,
--                     SCCCY,
--                     SCCTP,
--                     SCBAL,
--                     SCODL,
--                     TRIM (SCACO),
--                     TRIM (v5pf.v5dlp),
--                     scai83,
--                     scai84,
--                     scaig4,
--                     scai81,
--                     scaij3,
--                     scas,
--                     CASE
--                        WHEN v5abd || v5and || v5asd =
--                                v5abi || v5ani || v5asi
--                        THEN
--                           'Y'
--                        ELSE
--                           'N'
--                     END,scc3r,scc2r),
--                  '|')
--             - 1) not in ('BDT'));
------'LDA' schm code removed and added in the PCA schm type			 
--commit;
--DROP TABLE assigned_scas_cla;
--create table assigned_scas_cla as 
--select distinct to_char(scan)scan,to_char(scas)scas from scpf
--union
--select distinct to_char(substr(trim(neean),5,6)),to_char(substr(trim(neean),11,3)) from nepf where trim(neean) is not null
--union
--select distinct to_char(substr(fin_acc_num,5,6)),to_char(substr(fin_acc_num,11,3)) from map_acc where schm_type in('TDA','CLA','LAA')
--union
--select distinct to_char(substr(fin_acc_num,5,6)),to_char(substr(fin_acc_num,11,3)) from map_acc_cla where fin_acc_num is not null;
--DECLARE
--CURSOR c1
--is
--select * from map_acc_cla where fin_acc_num is null and schm_type<>'OOO' 
--order by leg_scan;
--cus_no nvarchar2(6);
--v_seq_no number; 
--BEGIN
--FOR l_record IN c1
--LOOP   
--select min(al.seq_no) seq_no  into v_seq_no   from
--(
--select * from
--(
--select case when trim(neean) is null then nean else substr(trim(neean),5,6)  end nean from nepf
--)a, seq_number
--where nean = substr(l_record.EXTERNAL_ACC,5,6)
--)al
--left join assigned_scas_cla b on al.nean = b.scan and lpad(al.seq_no,3,'0') = b.scas
--where b.scan is null;
--update map_acc_cla set fin_acc_num = substr(l_record.EXTERNAL_ACC,1,4)||substr(l_record.EXTERNAL_ACC,5,6)||lpad(v_seq_no,3,'0') where l_record.fin_acc_num is null and l_record.schm_type<>'OOO' 
--and LEG_ACC_NUM=l_record.LEG_ACC_NUM and leg_branch_id||leg_scan||leg_scas= l_record.leg_branch_id||l_record.leg_scan||l_record.leg_scas;
--commit;
--insert into assigned_scas_cla values (substr(l_record.EXTERNAL_ACC,5,6),lpad(v_seq_no,3,'0'));
--commit; 
--end loop;
--commit;
--end;
--/
--insert into map_acc
--select * from  map_acc_cla;
--commit;
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
--Update CAPOS schm code changed on 13-09-2017--
 update map_acc set schm_code='CAPOS' where leg_branch_id||leg_scan||leg_scas in(
 select leg_branch_id||leg_scan||leg_scas from map_acc
 inner join scpf on scab||scan||scas=leg_branch_id||leg_scan||leg_scas
 where trim(scp2r)='POS' and schm_type not in('ODA','SBA'));
 commit;
 update map_acc a set GL_SUB_HEADCODE=( 
 select  case when (scbal+scsuma)<0 then '13100'
 else '31001' end GL_SUB_HEAD_CODE from map_acc b
 inner join scpf on scab||scan||scas=b.leg_branch_id||b.leg_scan||b.leg_scas
 where  b.schm_code  ='CAPOS' and b.fin_Acc_num=a.fin_Acc_num )
 where exists( select  case when (scbal+scsuma)<0 then '13100'
 else '31001' end GL_SUB_HEAD_CODE from map_acc b
 inner join scpf on scab||scan||scas=b.leg_branch_id||b.leg_scan||b.leg_scas
 where  b.schm_code  ='CAPOS' and b.fin_Acc_num=a.fin_Acc_num )
 and a.schm_code  ='CAPOS';
 commit;
--Updated CAPOS GL_HEAD_CODE  updated from 31001 to 31004 on 17-10-2017
update map_acc set GL_SUB_HEADCODE='31004' where GL_SUB_HEADCODE='31001' and SCHM_CODE='CAPOS';
commit;
drop table pd_gl_sub_temp;
create table pd_gl_sub_temp as
select fin_acc_num,PD_GL_SUB_HEAD_CODE from map_acc
inner join (
    select lp10_acct acc_num,'Y' past_due_flg, LP10_LBD pass_due_dt, to_char(LP10_LGR_K) Suspence_amt from uzlp10pf where to_number(LP10_LMT_C)=0 
    union all
    select lp10_acct acc_num,'Y' past_due_flg, LP10_LXD pass_due_dt, to_char(LP10_LGR_K) Suspence_amt from uzlp10pf where trim(LP10_RMK)='EXPIRED' and to_number(LP10_LMT_C)<> 0
    union all
    select lp10_acct acc_num,'Y' past_due_flg, LP10_LED pass_due_dt, to_char(LP10_LGR_K) Suspence_amt from uzlp10pf where trim(LP10_RMK)='EXPIRED' and to_number(LP10_LMT_C)<> 0
    union all
    select lp10_acct acc_num,'Y' past_due_flg, LP10_LED pass_due_dt,to_char( to_number(LP10_LGR_K)-to_number(LP10_LMT_K)) Suspence_amt from uzlp10pf where trim(LP10_RMK)='EXCESS' and to_number(LP10_LMT_C)<> 0)past on fin_acc_num=trim(acc_num)
left join (select *  from tbaadm.gsp   where bank_id = get_param('BANK_ID') and del_flg = 'N')gsp on  map_acc.schm_code = gsp.schm_code;
--update map_acc c set c.GL_SUB_HEADCODE =(
--select distinct a.PD_GL_SUB_HEAD_CODE from pd_gl_sub_temp a
--inner join map_acc b on a.fin_acc_num=b.fin_acc_num
--where b.fin_acc_num=c.fin_acc_num)
--where exists(select distinct a.PD_GL_SUB_HEAD_CODE from pd_gl_sub_temp a
--inner join map_acc b on a.fin_acc_num=b.fin_acc_num
--where b.fin_acc_num=c.fin_acc_num);
--commit;--- BASED ON DISCUSSION BETWEEN  MATHEW AND VIJAY ON 05-07-2017. THIS HAS BEEN COMMENTED
---------------base tier rate  and differential tiar rate------------
drop table d9pf_d4pf_d5pf_merge_dr;
create table d9pf_d4pf_d5pf_merge_dr as select * from vw_d9pf_d4pf_d5pf_merge_dr;
drop table lht_dr; 
create table lht_dr
as
select leg_acc_num,s5ccy,d9trc,
0 begin_amt,
d9tlv0/power(10,c8ced) end_amt, b1 base_rate , d1 diff_rate, 1 slab_level
 from d9pf_d4pf_d5pf_merge_dr
 inner join c8pf on c8ccy = s5ccy
union
select leg_acc_num,s5ccy,d9trc,
(d9tlv0/power(10,c8ced)) + (1/power(10,c8ced)) begin_amt,
d9tlv1/power(10,c8ced), b2 base_rate , d2 diff_rate, 2
 from d9pf_d4pf_d5pf_merge_dr
 inner join c8pf on c8ccy = s5ccy
where d9tlv0 <>  999999999999999
union
select leg_acc_num,s5ccy,d9trc,
(d9tlv1/power(10,c8ced)) + (1/power(10,c8ced)) begin_amt,
d9tlv2/power(10,c8ced), b2 base_rate , d2 diff_rate, 3
 from d9pf_d4pf_d5pf_merge_dr
 inner join c8pf on c8ccy = s5ccy
where d9tlv1 <>  999999999999999
union
select leg_acc_num,s5ccy,d9trc,
(d9tlv2/power(10,c8ced)) + (1/power(10,c8ced)) begin_amt,
d9tlv3/power(10,c8ced), b3 base_rate , d3 diff_rate, 4
 from d9pf_d4pf_d5pf_merge_dr
 inner join c8pf on c8ccy = s5ccy
where d9tlv2 <>  999999999999999
union
select leg_acc_num,s5ccy,d9trc,
(d9tlv3/power(10,c8ced)) + (1/power(10,c8ced)) begin_amt,
d9tlv4/power(10,c8ced), b4 base_rate , d4 diff_rate, 5
 from d9pf_d4pf_d5pf_merge_dr
 inner join c8pf on c8ccy = s5ccy
where d9tlv3 <>  999999999999999
union
select leg_acc_num,s5ccy,d9trc,
(d9tlv4/power(10,c8ced)) + (1/power(10,c8ced)) begin_amt,
d9tlv5/power(10,c8ced), b5 base_rate , d5 diff_rate, 6
 from d9pf_d4pf_d5pf_merge_dr
 inner join c8pf on c8ccy = s5ccy
where d9tlv4 <>  999999999999999
union
select leg_acc_num,s5ccy,d9trc,
(d9tlv5/power(10,c8ced)) + (1/power(10,c8ced)) begin_amt,
d9tlv6/power(10,c8ced), b6 base_rate , d6 diff_rate, 7
 from d9pf_d4pf_d5pf_merge_dr
 inner join c8pf on c8ccy = s5ccy
where d9tlv5 <>  999999999999999
union
select leg_acc_num,s5ccy,d9trc,
(d9tlv6/power(10,c8ced)) + (1/power(10,c8ced)) begin_amt,
d9tlv7/power(10,c8ced), b7 base_rate , d7 diff_rate, 8
 from d9pf_d4pf_d5pf_merge_dr
 inner join c8pf on c8ccy = s5ccy
where d9tlv6 <>  999999999999999
union
select leg_acc_num,s5ccy,d9trc,
(d9tlv7/power(10,c8ced)) + (1/power(10,c8ced)) begin_amt,
d9tlv8/power(10,c8ced), b8 base_rate , d8 diff_rate, 9
 from d9pf_d4pf_d5pf_merge_dr
 inner join c8pf on c8ccy = s5ccy
where d9tlv7 <>  999999999999999
union
select leg_acc_num,s5ccy,d9trc,
(d9tlv8/power(10,c8ced)) + (1/power(10,c8ced)) begin_amt,
d9tlv9/power(10,c8ced), b9 base_rate , d9 diff_rate, 10
 from d9pf_d4pf_d5pf_merge_dr
 inner join c8pf on c8ccy = s5ccy
where d9tlv8 <>  999999999999999;
---------------------------------------------
drop table ACCT_INTEREST_TEMP;
create table ACCT_INTEREST_TEMP as
select * from ACCT_INTEREST where SCHM_TYPE<>'LAC';
CREATE INDEX ACCT_INTEREST_TEMP_IDX ON ACCT_INTEREST_TEMP(ACCOUNT_OPEN_DATE);
--ICV End date update for picking the Base rate based on the Interest table code start and End date added on 22-05-2017-----------------------------------
drop table  migr_int_icv;
 create table migr_int_icv as
 select icv.*,Lead(START_DATE-1, 1, to_date('31-12-2099','DD-MM-YYYY') ) OVER (partition by INT_TBL_CODE,CRNCY_CODE ORDER BY to_number(INT_TBL_VER_NUM)) AS modify_end_date
 from  tbaadm.icv where del_flg='N' and bank_id=get_param('BANK_ID') 
 order by int_tbl_code,crncy_code;
CREATE INDEX migr_int_icv_idx1 ON migr_int_icv(BASE_INT_TBL_CODE);
CREATE INDEX migr_int_icv_idx2 ON migr_int_icv(INT_VERSION);
CREATE INDEX migr_int_icv_idx3 ON migr_int_icv(RECORD_DATE);
CREATE UNIQUE INDEX migr_int_icv_idx4 ON migr_int_icv(INT_TBL_CODE, CRNCY_CODE, INT_TBL_VER_NUM, BANK_ID);
drop table acct_interest_tbl;
create table acct_interest_tbl
as
select a.*,tier_rate.b1 tier_base_rate,tier_rate.d1 tier_diff_rate,csp.int_tbl_code,base_pcnt_dr,base_pcnt_cr,
case 
when trim(s5trcc) like 'C%' then csp.int_tbl_code
when trim(s5trcd) is not null then s5trcd
when trim(s5trcc) is not null then s5trcc
when trim(s5trcd) is not null and trim(s5trcc) is not null then 'ZERO'
when trim(s5brrd) is not null and trim(s5brrc)  is not null then 'ZERO'
else csp.int_tbl_code end TBL_CODE_MIGR,
case 
when trim(s5trcd) is not null and LEG_ACC_NUM is not null and D9TLV0 <> 999999999999999 then (nvl(trim(b1),0)+nvl(trim(d1),0)) - (nvl(trim(base_pcnt_dr),0)+nvl(d.nrml_int_pcnt,0))
when trim(s5trcd) is not null and trim(s5trcd) <> 'ZERO' and D9TLV0 = 999999999999999 then (nvl(trim(b1),0)+nvl(trim(d1),0)) - (nvl(trim(base_pcnt_dr),0)+nvl(d.nrml_int_pcnt,0))----added on 26-09-2017 as per spira number 7035
when trim(s5trcd) is not null then  0
when nvl(trim(s5ratd),0) <> 0 then (nvl(trim(s5ratd),0) - (nvl(base_pcnt_dr,0)+nvl(d.nrml_int_pcnt,0)))
when (nvl(dr_base_rate,0) + nvl(diff_dr_rate,0) + nvl(dr_margin_rate,0)) <> nvl(base_pcnt_dr,0) + nvl(d.nrml_int_pcnt,0)
 then ((nvl(dr_base_rate,0) + nvl(diff_dr_rate,0) + nvl(dr_margin_rate,0)) - (nvl(base_pcnt_dr,0)+nvl(d.nrml_int_pcnt,0)))
else 0 end dr_pref_rate
,
case 
when trim(s5trcc) is not null then 0
when nvl(trim(s5ratc),0) <> 0 then (nvl(trim(s5ratc),0) - (nvl(base_pcnt_cr,0)+nvl(c.nrml_int_pcnt,0)))
when (nvl(cr_base_rate,0) + nvl(diff_cr_rate,0) - nvl(cr_margin_rate,0)) <> nvl(base_pcnt_cr,0) + nvl(c.nrml_int_pcnt,0) then 
((nvl(cr_base_rate,0) + nvl(diff_cr_rate,0) - nvl(cr_margin_rate,0))-(nvl(base_pcnt_cr,0)+nvl(c.nrml_int_pcnt,0)))
else 0 end cr_pref_rate,
nvl(c.nrml_int_pcnt,0)cr_nrml_int_pcnt,
nvl(d.nrml_int_pcnt,0)dr_nrml_int_pcnt
from
ACCT_INTEREST_TEMP a
left join(select * from tbaadm.csp where del_flg = 'N' and bank_id = get_param('BANK_ID'))csp on
a.schm_code = csp.schm_code and a.s5ccy = csp.crncy_code
left join (select a.int_tbl_code,a.crncy_code,a.int_tbl_ver_num,a.base_int_tbl_code from migr_int_icv a
inner join (select c.int_tbl_code,c.CRNCY_CODE,max(INT_TBL_VER_NUM) INT_TBL_VER_NUM from migr_int_icv c where c.del_flg = 'N' and c.bank_id = get_param('BANK_ID') and START_DATE <= to_date(get_param('EOD_DATE'),'DD-MM-YYYY')
group by c.int_tbl_code,c.CRNCY_CODE)b on  a.int_tbl_code =b.int_tbl_code  and  a.CRNCY_CODE = b.CRNCY_CODE and a.INT_TBL_VER_NUM=b.INT_TBL_VER_NUM
where a.del_flg = 'N' and a.bank_id = get_param('BANK_ID') and START_DATE <= to_date(get_param('EOD_DATE'),'DD-MM-YYYY')
)main_tbl  on  csp.int_tbl_code =main_tbl.int_tbl_code  and  csp.CRNCY_CODE = main_tbl.CRNCY_CODE
left join  (select *  from migr_int_icv c where c.del_flg = 'N' and c.bank_id = get_param('BANK_ID') and START_DATE <= to_date(get_param('EOD_DATE'),'DD-MM-YYYY')) base_rate on  base_rate.int_tbl_code =main_tbl.base_int_tbl_code  and  base_rate.CRNCY_CODE = main_tbl.CRNCY_CODE
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
and c.int_slab_dr_cr_flg = 'C'  )C  on C.int_tbl_code =csp.int_tbl_code  and  csp.CRNCY_CODE = C.CRNCY_CODE
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
and c.int_slab_dr_cr_flg = 'D'  )d  on d.int_tbl_code =csp.int_tbl_code  and  csp.CRNCY_CODE = d.CRNCY_CODE
left join d9pf_d4pf_d5pf_merge_dr tier_rate on tier_rate.leg_acc_num  =a.s5ab||a.s5an||a.s5as;
create index acct_idx on acct_interest_tbl(s5ab,s5an,s5as);
--update acct_interest_tbl set  tbl_code_migr = INT_TBL_CODE where tbl_code_migr = 'IKWDD'  and base_pcnt_dr = '2.25';
--commit;
drop table all_final_trial_balance;
create table all_final_trial_balance as select * from final_trial_balance;
CREATE INDEX ALL_IDX1 ON all_final_trial_balance(DEAL_REF_NUM);
CREATE INDEX ALL_IDX ON all_final_trial_balance("SCAB"||"SCAN"||"SCAS");
CREATE INDEX ALL_IDX2 ON all_final_trial_balance(SCAB,SCAN,SCAS);
CREATE INDEX ALL_IDX3 ON all_final_trial_balance(leg_acc_num);
create index ALL_IDX4 on all_final_trial_balance(fin_acc_num);
---interest receivable/Payable customer accounts Same sol added on 04-06-2017 by kumar
drop table int_recv_pay_balance_trfr;
create table int_recv_pay_balance_trfr
as
SELECT 
s5ab,contra_basic,c8ccyn,S5ACT, INTEREST_FCY,b.leg_acc_num,b.scheme_code,b.scheme_type, int_paid_bacid,int_coll_bacid,int_pandl_bacid_cr,int_pandl_bacid_dr 
FROM ACCT_WISE_INT_RECV_PAY_MAP a
inner join (select * from all_final_trial_balance where fin_sol_id=new_fin_sol_id)b on b.leg_acc_num = BRN||TRIM(a.DEAL_TYPE)||TRIM(a.DEAL_REF)
left join (select schm_code,int_paid_bacid,int_coll_bacid,int_pandl_bacid_cr,int_pandl_bacid_dr from tbaadm.gsp where bank_id = '01' and del_flg = 'N')gss 
on gss.schm_code = b.scheme_code
where INTEREST_FCY <> 0; 
---interest receivable/Payable customer accounts difference sol added on 04-06-2017 by kumar
drop table int_recv_pay_bal_trfr_dif_sol;
create table int_recv_pay_bal_trfr_dif_sol
as
SELECT 
s5ab,contra_basic,c8ccyn,S5ACT, INTEREST_FCY,b.leg_acc_num,b.scheme_code,b.scheme_type, int_paid_bacid,int_coll_bacid,int_pandl_bacid_cr,int_pandl_bacid_dr 
FROM ACCT_WISE_INT_RECV_PAY_MAP a
inner join (select * from all_final_trial_balance where fin_sol_id<>new_fin_sol_id)b on b.leg_acc_num = BRN||TRIM(a.DEAL_TYPE)||TRIM(a.DEAL_REF)
left join (select schm_code,int_paid_bacid,int_coll_bacid,int_pandl_bacid_cr,int_pandl_bacid_dr from tbaadm.gsp where bank_id = '01' and del_flg = 'N')gss 
on gss.schm_code = b.scheme_code
where INTEREST_FCY <> 0; 
update all_final_trial_balance set GL_SUB_HEAD_CODE='52000_YP_SPLIT' where scact ='YP' and scbal <> 0 and gl_sub_head_code = '52000';
commit;
--update all_final_trial_balance set GL_SUB_HEAD_CODE='52000_J1_SPLIT' where scact ='J1' and scbal <> 0 and gl_sub_head_code = '52000';
--commit;
--TRY LE CONSOLIDATION 
--update  all_final_trial_balance set TTUM1_MIGR_ACCT='005'||substr(TTUM1_MIGR_ACCT,4,2)||'520000V6',FIN_SOL_ID='005',NEW_FIN_SOL_ID='005' where scact in('VC','V6')  and length(trim(TTUM1_MIGR_ACCT))=13;
--commit;
--update  all_final_trial_balance set TTUM1_MIGR_ACCT='005'||substr(TTUM1_MIGR_ACCT,4,2)||'520000W6',FIN_SOL_ID='005',NEW_FIN_SOL_ID='005'  where scact in('W5','W6')  and length(trim(TTUM1_MIGR_ACCT))=13;
--commit;
--update  all_final_trial_balance set TTUM1_MIGR_ACCT='005'||substr(TTUM1_MIGR_ACCT,4,2)||'520000V0',FIN_SOL_ID='005',NEW_FIN_SOL_ID='005'  where scact in('YX','V0')  and length(trim(TTUM1_MIGR_ACCT))=13;
--commit;
--Draw down fin_acc_num ,GL_SUB_HEAD_CODE updated--changed on 21-08-2017
/*update all_final_trial_balance c set (c.fin_acc_num,c.GL_SUB_HEAD_CODE)=(
select map_acc.fin_acc_num,map_acc.GL_SUB_HEADCODE from all_final_trial_balance a
inner join  ld_deal_int_wise b on a.scab=b.scab and a.scan=b.scan and a.scas=b.scas and a.DEAL_REF_NUM=b.leg_acc_num
inner join (select * from map_acc where schm_type='CLA' and schm_code not in('BDT','LAC') )map_Acc on   leg_branch_id||leg_scan||leg_scas=a.scab||b.scan||b.scas and map_acc.leg_acc_num=to_char(b.SERIAL_DEAL)
where c.leg_acc_num=a.leg_acc_num)
where exists(select map_acc.fin_acc_num from all_final_trial_balance a
inner join  ld_deal_int_wise b on a.scab=b.scab and a.scan=b.scan and a.scas=b.scas and a.leg_acc_num=b.leg_acc_num
inner join (select * from map_acc where schm_type='CLA'and schm_code not in('BDT','LAC') )map_Acc on   leg_branch_id||leg_scan||leg_scas=a.scab||b.scan||b.scas and map_acc.leg_acc_num=to_char(b.SERIAL_DEAL)
where c.leg_acc_num=a.leg_acc_num) and c.scheme_type='CLA' and c.scheme_code not in('BDT','LAC') and c.scbal<>0;
commit;*/
--PCA updated--
drop table pca_temp_map;
create table pca_temp_map as
select a.fin_acc_num ,a.GL_SUB_HEADCODE,a.deal_no from (
select  trim(v5brnm)||trim(v5dlp)||trim(v5dlr) deal_no,fin_Acc_num,map_acc.gl_sub_headcode
from map_acc
  inner join v5pf on trim(v5abd)||trim(v5and)||trim(v5asd) = leg_branch_id||leg_scan||leg_scas
  left join ospf on trim(v5brnm)||trim(v5dlp)||trim(v5dlr)=trim(osbrnm)||trim(osdlp)||trim(osdlr)
  where map_acc.schm_type='PCA' and map_acc.schm_code='LDADV'
  and v5bal<>0 and v5act='LB' and  ((v5arc <> 'A' OR v5arc IS NULL) ) and (oscanr <> 'C' OR oscanr IS NULL OR oscanr = ''))a;
create index pca_idx on  pca_temp_map(deal_no);
update all_final_trial_balance c set (c.fin_acc_num,c.GL_SUB_HEAD_CODE)=(
select a.fin_acc_num ,a.GL_SUB_HEADCODE from  pca_temp_map a
where c.leg_acc_num=a.deal_no)
where exists(
select a.fin_acc_num ,a.GL_SUB_HEADCODE from  pca_temp_map a
where c.leg_acc_num=a.deal_no)and c.scheme_type='PCA' and c.scheme_code in('LDADV') and c.scbal<>0;
commit;
update   ALL_FINAL_TRIAL_BALANCE set  GL_SUB_HEAD_CODE='52000' where trim(fin_Acc_num) is null and scbal<>0 and GL_SUB_HEAD_CODE='NOT_P';
commit;
update   ALL_FINAL_TRIAL_BALANCE set  GL_SUB_HEAD_CODE='52000' where leg_acc_num='0781927640840' and scbal<>0 and GL_SUB_HEAD_CODE='NOT_P';
commit;
update   all_final_trial_balance  set scheme_type='TRY' where 
scact  in('3A','3D','3G','3K','3W','3X','3Y','3Z','4A','D1','F1','M1','M2','R4','S7','S8','V1','V2','V3','V4','W3','W4') and scbal<>0; 
commit;
--changed based on Rabbi email dated Wed 5/31/2017 2:57 PM
update all_final_trial_balance set fin_acc_num=substr(scab,2,4)||substr(fin_acc_num,4,13),ttum1_migr_acct=substr(scab,2,4)||substr(ttum1_migr_acct,4,13) where 
length(trim(fin_acc_num))=13 and scan in('932000','933250','932200','932100','932800','932500','932700','932300','933100','933125','915400','915500','932600','933300',
'933425','933200','933210','933150','932710','933000','933175','932381','933220','932377','932350','932355','932380','932365','932370','932375','932376','943708','946100','946101',
'946102','946103','946104','946105','946106','946107','946114','946115','946116','946118','946119','946120','946108','946111','946117','946112','946113','946122','946123','946125',
'947085','946124','946130','946131','946132','946133','946134','946135','946136','946137','946138','946139','946140','946145','946150','946151','946152','946153','946156','946157',
'946175','946158','946159','946160','946161','946162','946163','946164','946165','946166','946167','946168','946169','946170','946171','946180','946172','946181','946182','946183',
'946184','946185','946186','946187','946188','947188','946190','947077','947070','947071','947095','946191','946192','946195','946196','946197','946198','946199','946200','946201',
'947002','947003','947010','947015','947017','947018','947019','947090','947016','947020','947021','947076','947022','947023','944200','944201','944202','944205','944220','944230',
'944240','947030','947031','947032','947033','947034','947035','947850','951830','947050','947106','947107','947136','947080','949900','950001','950002','950277','950300','950301',
'950307','950600','950615','950602','950601','950671','950255','950291','950292','950293','950294','950295','950296','950500','950950','951000')
 and scab not  in('0600','0601','0602','0603','0604','0605','0606','0607','0608','0609','0610','0611','0612','0613',
'0614','0615','0616','0617','0618','0619','0620','0621','0622','0623','0624','0625','0626','0627','0628','0629','0630',
'0631','0632','0633','0634','0635','0636','0637','0638','0639','0640','0660',
'0780','0781','0782','0783','0784','0785','0795') and not exists(select* from incr_office_account_map where  INT_ACCT_NO=leg_acc_num);
commit;
--changed based on Rabbi email dated Thu 6/1/2017 7:56 PM and Fri 6/2/2017 4:45 PM and base on Sebi email Sun 6/4/2017 12:30 PM
update all_final_trial_balance c set (c.fin_acc_num,c.GL_SUB_HEAD_CODE) =(
select b.fin_acc_num, substr(b.fin_acc_num,6,5) from  all_final_trial_balance  a
inner join  incr_office_account_map b on a.leg_acc_num=trim(b.Int_Acct_No)
where a.leg_acc_num=c.leg_acc_num)
where exists(
select b.fin_acc_num,substr(b.fin_acc_num,6,5) from  all_final_trial_balance  a
inner join  incr_office_account_map b on a.leg_acc_num=trim(b.Int_Acct_No)
where a.leg_acc_num=c.leg_acc_num
);
commit;
update all_final_trial_balance set FIN_SOL_ID='005',NEW_FIN_SOL_ID='005'
where scact in('YX','V0');
commit;
update all_final_trial_balance set fin_acc_num='',SCHEME_TYPE='TRY',SCHEME_code='INV', SCHM_CODE_TYPE='TRY|INV',GL_SUB_HEAD_CODE='TRY' where scan in(
'804225','804250','804930','804935','804950','804955','804965','804960');
commit;
--As per sebi discusseion YU and gl_sub_head_code 47000 moved to migration account 
update all_final_trial_balance set SCHM_CODE_TYPE='00000|OOO',SCHEME_TYPE='OOO',SCHEME_CODE='00000',FIN_ACC_NUM='',GL_SUB_HEAD_CODE='52000'
where  scbaL<>0  and scact='YU';
commit;
update  all_final_trial_balance set FIN_ACC_NUM='',SCHM_CODE_TYPE='00000|OOO',SCHEME_TYPE='OOO', SCHEME_CODE='00000',GL_SUB_HEAD_CODE='52000' where scan='803735' and scbaL<>0;
commit;
--Changed as per Sharanappa conformation on 27-07-2017
update all_final_trial_balance set SCHEME_TYPE='OOO',SCHEME_CODE='00000',SCHM_CODE_TYPE='00000|OOO' ,FIN_ACC_NUM=' ',
GL_SUB_HEAD_CODE='TRY'
where scact in('V5','V6','VC','W5','W6','T2','V7','R3') and scbaL<>0;
commit;
--Changed as per Sharanappa conformation on 13-03-2017
update all_final_trial_balance set  FIN_ACC_NUM=' ',
GL_SUB_HEAD_CODE='TRY'
where scact in('R3','S9','4D') and scbaL<>0;
commit;
--Changed as per Sharanappa conformation on 29-09-2017
update all_final_trial_balance set  FIN_ACC_NUM=' ',
GL_SUB_HEAD_CODE='TRY'
where leg_acc_num='0781800225414' and scbaL<>0;
commit;
--Changed as pre Robbin mail on Sun 10/1/2017 2:05 PM
update all_final_trial_balance set SCHEME_TYPE='OOO',SCHEME_CODE='00000',SCHM_CODE_TYPE='00000|OOO' ,FIN_ACC_NUM=' ',GL_SUB_HEAD_CODE='52000' where  scab||Scan||scas in(
'0780845275840',
'0780845280840',
'0780801416840',
'0780801420840',
'0780846255840',
'0780846265840',
'0780847280840',
'0780847300840') and scbal<>0;
commit;
--Changed as pre Rabbi mail on Monday, October 02, 2017 10:11 PM
update all_final_trial_balance set SCHEME_TYPE='OOO',SCHEME_CODE='00000',SCHM_CODE_TYPE='00000|OOO' ,FIN_ACC_NUM=' ',GL_SUB_HEAD_CODE='52000'
where scan in('801400','801330');
commit;
--Changed as pre Rabbi mail on Monday, October 02, 2017 10:11 PM
update all_final_trial_balance set SCHEME_TYPE='OOO',SCHEME_CODE='00000',SCHM_CODE_TYPE='00000|OOO' ,FIN_ACC_NUM=' ',GL_SUB_HEAD_CODE='52000'
where scab||scan||scas in('0900861300414','0900861350414','0900865000414','0900865050414');
commit;
--Changed as pre Rabbi  on 05-10-2017
update all_final_trial_balance set SCHEME_TYPE='OOO',SCHEME_CODE='00000',SCHM_CODE_TYPE='00000|OOO' ,FIN_ACC_NUM=' ',GL_SUB_HEAD_CODE='52000'
where scact in('RL','TL');
commit;
--Changed as pre Vijay mail  on Thu 10/19/2017 8:15 PM
update all_final_trial_balance set SCHEME_TYPE='OOO',SCHEME_CODE='00000',SCHM_CODE_TYPE='00000|OOO' ,FIN_ACC_NUM=' ',GL_SUB_HEAD_CODE='52000'
where GL_SUB_HEAD_CODE in('91650','91651','91652','91653','91654','91655','91656','91657','91658','91659','91660','91661');
commit;
update  all_final_trial_balance set gl_sub_head_code='10104' where scact='CN' and fin_acc_num in('9000310101000','9000210101000','9000210101001','9000410101001');
commit;
update  all_final_trial_balance set gl_sub_head_code='10400' where scact='CN' and fin_acc_num='9000110101000';
commit;
update  all_final_trial_balance set gl_sub_head_code='91401' where scact='CN' and fin_acc_num in('9001010101000','9000410101007');
commit;
update all_final_trial_balance a set a.GL_SUB_HEAD_CODE=( 
select  case when (b.scbal)<0 then '13100'
else '31001' end GL_HEAD_CODE from all_final_trial_balance b
inner join scpf on scpf.scab||scpf.scan||scpf.scas=b.leg_Acc_num
where  b.scheme_code  ='CAPOS' and b.fin_Acc_num=a.fin_Acc_num )
where exists( select  case when (b.scbal)<0 then '13100'
else '31001' end GL_HEAD_CODE from all_final_trial_balance b
inner join scpf on scpf.scab||scpf.scan||scpf.scas=b.leg_Acc_num
where  b.scheme_code  ='CAPOS' and b.fin_Acc_num=a.fin_Acc_num )
and a.scheme_code  ='CAPOS';
commit;
--Updated CAPOS GL_HEAD_CODE  updated from 31001 to 31004 on 17-10-2017
update all_final_trial_balance set GL_SUB_HEAD_CODE='31004' where GL_SUB_HEAD_CODE='31001' and SCHEME_CODE='CAPOS';
commit;
--update  all_final_trial_balance set TTUM1_MIGR_ACCT=FIN_SOL_ID||substr(TTUM1_MIGR_ACCT,4,13) where  scbal<>0 and TTUM1_MIGR_ACCT in(
--'16301520000YF',
--'16301520000YN',
--'16302520000YF');
--commit;
drop table map_off_acc;
create table map_off_acc as
select leg_acc_num,scact,scccy,scbal,fin_acc_num from all_final_trial_balance where scheme_type='OAB';
--update all_final_trial_balance set GL_SUB_HEAD_CODE='52000_YU_SPLIT' where scact ='YU' and scbal <> 0 and gl_sub_head_code = '52000';
--commit;
exit;