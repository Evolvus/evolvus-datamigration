
Truncate table cu6corp_o_table;
Insert into cu6corp_o_table
select
--FINANCIAL_DETAILS_ID
'',
--BANK_ID
get_param('BANK_ID'),
--STR4_ALT1
'',
--FINANCIAL_ID
'',
--FINANCEDETAIL_TYPE
'SH',
--STR1
'',
--STR2
'',
--STR3
'Retail',
--STR4
'',
--STR5
'',
--STR6
'',
--STR7
'',
--STR8
'',
--STR9
'',
--STR10
'',
--STR11
'',
--STR12
'',
--STR13
'',
--STR14
'',
--STR15
'',
--STR16
'',
--STR17
'',
--STR18
'',
--STR19
'',
--STR20
'',
--STR21
'',
--STR22
'',
--STR23
'',
--STR24
'',
--STR25
'',
--STR26
'',
--STR27
'',
--STR28
kyctr,
--STR29
'',
--STR30
'',
--DATE1
'',
--DATE2
'',
--DATE3
'',
--DATE4
'',
--DATE5
'',
--DATE6
'',
--DATE7
'',
--DATE8
'',
--DATE9
'',
--DATE10
'',
--AMOUNT1
to_number(KYCADA)/1000, --Below amounts divided by 1000 by Jagadeesh based on Email confirmation from Vijay for spira 6047
--AMOUNT2
to_number(KYCAWA)/1000, 
--AMOUNT3
to_number(KYCQDA)/1000,
--AMOUNT4
to_number(KYIFTA)/1000,
--AMOUNT5
to_number(KYOFTA)/1000,
--AMOUNT6
'',
--AMOUNT7
'',
--AMOUNT8
'',
--AMOUNT9
'',
--AMOUNT10
'',
--AMOUNT11
'',
--AMOUNT12
'',
--AMOUNT13
'',
--AMOUNT14
'',
--AMOUNT15
'',
--AMOUNT16
'',
--AMOUNT17
'',
--AMOUNT18
'',
--AMOUNT19
'',
--AMOUNT20
'',
--AMOUNT21
'',
--AMOUNT22
'',
--AMOUNT23
'',
--AMOUNT24
'',
--AMOUNT25
'',
--AMOUNT26
'',
--AMOUNT27
'',
--AMOUNT28
'',
--AMOUNT29
'',
--AMOUNT30
'',
--FLAG1
'',
--FLAG2
'',
--FLAG3
'',
--FLAG4
'',
--FLAG5
'',
--INT1
KYCADN,
--INT2
KYCAWN,
--INT3
KYCQDN,
--INT4
KYIFTN,
--INT5
KYOFTN,
--INT6
'',
--INT7
'',
--INT8
'',
--INT9
'',
--INT10
'',
--INT11
'',
--INT12
'',
--INT13
'',
--INT14
'',
--INT15
'',
--MLUSERFIELD1
'',
--MLUSERFIELD2
'',
--MLUSERFIELD3
'',
--MLUSERFIELD4
'',
--MLUSERFIELD5
'',
--ENTITYID
'',
--ENTITYKEY
'',
--CIFTYPE
'Corporate',
--ENTITYTYPE
'CUSTOMER',
--ORGKEY
map_cif.FIN_CIF_ID,
--STR31
'',
--STR32
'',
--STR33
'',
--STR34
'',
--STR35
'',
--INT16
'',
--INT17
'',
--INT18
'',
--INT19
'',
--INT20
'',
--AMOUNT31
'',
--AMOUNT32
'',
--AMOUNT33
'',
--AMOUNT34
'',
--AMOUNT35
'',
--DATE11
'',
--FINYEAR
'',
--FINMONTH
'',
--AUDITSTATUS
'',
--TANG_FIX_ASSETS
'',
--SG_RECEIPTS
'',
--GROSS_PROFIT
'',
--PROFIT_INT_DEP_TAXES
'',
--NET_PROFIT_RATIO
'',
--GROSS_GEARING_RATIO
'',
--NET_GEARING_RATIO
'',
--FREQUENCY
'',
--TMDATE
''
from map_cif 
--inner join gfpf   on trim(gfpf.gfclc)=trim(map_cif.gfclc) and  trim(gfpf.gfcus)=trim(map_cif.gfcus)
--left join  bgpf   on nvl(trim(gfpf.GFCLC),' ')=nvl(trim(bgpf.BGCLC),' ') and trim(gfpf.GFCUS)=bgpf.BGCUS 
left join  ukyc01pf a on nvl(a.kyclc,' ')=nvl(map_cif.gfclc,' ')  and  a.kycus=map_cif.gfcus
left join (select kycus,kyclc, LISTAGG(trim(kyctr), ',')  WITHIN GROUP (ORDER BY kycus,kyclc)kyctr from ( 
select kycus,kyclc,kyctr1 kyctr from UKYC01PF where trim(kyctr1) is not null union select kycus,kyclc,kyctr2 kyctr from UKYC01PF where trim(kyctr2) is not null
union select kycus,kyclc,kyctr3 kyctr from UKYC01PF where trim(kyctr3) is not null union select kycus,kyclc,kyctr4 kyctr from UKYC01PF where trim(kyctr4) is not null
union select kycus,kyclc,kyctr5 kyctr from UKYC01PF where trim(kyctr5) is not null ) group by kycus,kyclc
) act on nvl(act.kyclc,' ')=nvl(map_cif.gfclc,' ')  and  act.kycus=map_cif.gfcus
where map_cif.individual='N' and map_cif.del_flg<>'Y' ;
commit;
exit; 
