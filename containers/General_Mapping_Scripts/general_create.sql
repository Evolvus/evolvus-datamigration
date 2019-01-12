--/oradata/devmig/sql/setup/general/finacle
spool $MIG_PATH/logs/general.txt;
CREATE OR REPLACE function MIGAPP.get_schm_type_code(i_Ac_type varchar2, i_accy varchar2,i_cust_cat varchar2,i_splt_cat varchar2 default NULL)
return varchar2
is
--i_Ac_type varchar2(25); --SCACT
--i_ccy varchar2(10) -- SCCCY;
--i_cust_category varchar2(25); -- GFCTP
--i_splt_cat varchar2(1):--SCAIJ4 specail candition for super savings
t_return varchar2(15);
begin
select
case
when i_Ac_type  ='CP'  then  '352|SBA'
when i_Ac_type  ='SA'  then  '360|SBA'
when i_Ac_type  in('SB','CA') and i_accy='DH ' and i_splt_cat='Y' then '359|SBA'
when i_Ac_type  ='SB' and  i_accy='DH '  and i_splt_cat='N'  then  '350|SBA'
when i_Ac_type  ='SB'   then  '350|SBA'
when i_Ac_type  ='SF'   then  '353|SBA'
when i_Ac_type  ='SG'   then  '358|SBA'
when i_Ac_type  ='SH'   then  '355|SBA'
when i_Ac_type  ='SI'  then  '373|SBA'
when i_Ac_type  ='SJ'  then  '354|SBA'
when i_Ac_type  ='SK'  then  '357|SBA'
when i_Ac_type  ='SL'  then  '375|SBA'
when i_Ac_type  ='SP'  then  '374|SBA'
when i_Ac_type  ='SV'  then  '356|SBA'
when i_Ac_type  ='CA'  then  '370|ODA'
when i_Ac_type  ='CE'  then  '371|ODA'
when i_Ac_type  ='SC'  then  '372|ODA'
when i_Ac_type  ='FI'  then  '569|TDA'
when i_Ac_type  ='FJ'  then  '568|TDA'
when i_Ac_type  ='FK'  then  '567|TDA'
when i_Ac_type  ='FL'  then  '556|TDA'
when i_Ac_type  ='FH'  then  '570|TDA'
when i_Ac_type  ='EB'  then  '351|TUA'
when i_Ac_type  ='FA'  then  '512|TUA'
when i_Ac_type  ='FB'  then  '513|TUA'
when i_Ac_type  ='FC'  then  '514|TUA'
when i_Ac_type  ='FD'  then  '515|TUA'
when i_Ac_type  ='FE'  then  '516|TUA'
when i_Ac_type  ='FF'  then  '517|TUA'
when i_Ac_type  ='FG'  then  '518|TUA'
else '000|OOO' end
into t_return
from dual;
    return t_return;
end;
/
CREATE OR REPLACE function MIGAPP.get_segment(custtype varchar2,segment1 varchar2,ret_type number)
--If you want segment pass ret_type = 1
--If you want sub segment pass ret_type = 2
--If you want package pass ret_type = 3
--If you want package type pass ret_type = 4
--If you want Preference code ret_type = 5
return varchar2
is
    seg varchar2(50);
    subg varchar2(50);
    pack varchar2(50);
    packg varchar2(50);
    pref varchar2(50);
    segval varchar2(500);
begin
segval:='test';
case
 when custtype in('XZ','YA','YD') and segment1 ='S1'     then segval:='IPERB|ICLSS|MIGR|PFA|MIGR';
 when custtype in('XZ','YA','YD') and segment1 ='S2'     then segval:='IPERB|ISLCT|MIGR|PFA|MIGR';
 when custtype in('XZ','YA','YD') and segment1 ='S3'     then segval:='IPRIB|IPRTY|MIGR|PFA|MIGR';
 when custtype in('XZ','YA','YD') and segment1 ='S4'     then segval:='IPRIB|IPRTG|MIGR|PFA|MIGR';
 when custtype in('XZ','YA','YD') and segment1 ='S4'     then segval:='IPRIB|IPRTG|MIGR|PFA|MIGR';
 when custtype in('YA','YD') and segment1 in('SC','SM')     then segval:='IBUSB|IBBSB|MIGR|PFA|MIGR';
 when custtype in('YD','XZ') and segment1 in('SG','SP')     then segval:='IBUSB|IBBEC|MIGR|PFA|MIGR';
 when custtype in('XZ','YA','YD') and segment1 ='CP'     then segval:='ICORB|ICRPT|MIGR|PFA|MIGR';
 when custtype in('YI','YG','YM','WB','YB','YP','XA') and segment1 ='S1'     then segval:='CPERB|CPRSB|MIGR|PFA|MIGR';
 when custtype in('WA','VZ','XG','YG','YO','XA','YL','YP','YC','YQ','WC','XE','YN','XF','YI','YK','WD','YH','YE','ZA','WB','YM','XB','YB') and segment1 ='S2' then segval:='CPERB|CPRSB|MIGR|PFA|MIGR';
 when custtype in('WA','ZA','YQ','YH','XA','YP','YK','YI','YM','YG','YL','YO','YB','YE','YC') and segment1 ='S3' then segval:='CPRIB|CPRTB|MIGR|PFA|MIGR';
 when custtype in('YE','YM','WB','YG','YC','VZ','YN','YQ','YI','XB','YO','YL','WA','WD','YH','YB','YP','YK') and segment1 ='S4' then segval:='CPRIB|CPRTB|MIGR|PFA|MIGR';
 when custtype in('YE','WA','YN','YC','YL','VZ','YI','XG','YH','XD','YM','YO','YG','YB','YQ','YP','YK') and segment1 ='SC'then segval:='CBUSB|CBBSB|MIGR|PFA|MIGR';
 when custtype in('VZ','YI','YP','YO','YM','YL','YQ','YN') and segment1 ='SM'then segval:='CBUSB|CBBSB|MIGR|PFA|MIGR';
 when custtype in('YM','YO','YP','YL','YQ','YI','YB') and segment1 ='SG'then segval:='CBUSB|CBBEC|MIGR|PFA|MIGR';
 when custtype in('XG','YG','YL','YK','YQ','YI','YP','YM','YN','YE','YO','YB') and segment1 ='SP'then segval:='CBUSB|CBBEC|MIGR|PFA|MIGR';
 else segval:='MIGR|MIGR|MIGR|PFA|MIGR';
end case;
return trim(regexp_substr(segval,'[[:alpha:]]+|',1,ret_type));
end;
/
CREATE OR REPLACE PROCEDURE MIGAPP.SP_mig_Account_No_Gen Is
       Cursor Cur_CIF_Acct
           Is Select LEG_ACC_NUM ,  schm_code , schm_type, fin_cif_id  From map_acc ;
           seqno number;
           run_str varchar2(5);
Begin
    For g in Cur_CIF_Acct Loop
        select seq into seqno from CIF_AC_SEQ where FIN_CIF_ID = g.fin_cif_id ;
        if  g.schm_code =351 and g.schm_code > 500 or g.schm_type in ('TUA','TDA')   then
            run_str := substr(LPAD(seqno, 10 , '0'),-5,5);
        else
            run_str := substr(LPAD(seqno, 10 , '0'),-2,2);
        end if;
        update CIF_AC_SEQ set seq = seqno + 1  where FIN_CIF_ID = g.fin_cif_id ;
        update map_acc set FIN_ACC_NUM = g.schm_code || FIN_CIF_ID ||run_str where LEG_ACC_NUM = g.LEG_ACC_NUM;
        commit;        
    end loop;
End;
/
CREATE OR REPLACE function MIGAPP.get_param(param in varchar2) 
return varchar2 
as
begin
    if param = 'EOD_DATE' then
        return '1150630';
    end if;
    if param = 'Account_Review_Date' then
        return '1150630';
    end if;
    if param = 'BANK_ID' then
        return 'EI';
    end if;
end;
/
CREATE OR REPLACE FUNCTION MIGAPP.check_minor(inp_date IN DATE) return char as
   out_is_minor CHAR(1);
BEGIN
        IF inp_date is not null  then
        
            If inp_date > sysdate then
                out_is_minor := 'N';
            else
                out_is_minor :=
                            case when add_months(inp_date,12*18) > sysdate then 'Y'
                                else 'N'
                            end;
         
            end if;
         ELSE
            out_is_minor := 'N';
          END IF;
        return out_is_minor; 
END  check_minor;
/
CREATE OR REPLACE Function MIGAPP.build_cif   RETURN varchar2
IS
    fin_cif_id varchar2(20);
    weigh_factor char(7) := '8765432';
    gen_cif char(7);
    nCounter NUMBER;
    tmp1 NUMBER := 0;
    rem1 NUMBER := 0;
BEGIN
    gen_cif := concat('1',substr(LPAD(cif_seq.nextval, 10 , '0'),-6,6));
    for nCounter in 1..7 LOOP
        tmp1 := tmp1 + (substr(weigh_factor,nCounter,1) * substr(gen_cif,nCounter,1));        
      end LOOP; 
    rem1 := 11 - mod(tmp1,11);
    IF rem1 = 11 THEN
     rem1 := 0;
    end if;
    IF rem1 = 10 THEN
     rem1 := 0;
    end if;
    return concat(gen_cif,rem1);
end;
/
CREATE OR REPLACE FUNCTION MIGAPP.convert_codes(code_type_in IN varchar2 , legacy_code_in IN varchar2) return varchar2 is
   fin_code_ret varchar2(100);
  def_fin_code_ret varchar2(100) := '';
BEGIN
    select FIN_CODE into def_fin_code_ret from map_codes where code_type = code_type_in and IS_DEFAULT = 'Y';
    select FIN_CODE into fin_code_ret from map_codes where code_type = code_type_in and leg_code = legacy_code_in;
    
    return fin_code_ret;
    exception
    when NO_DATA_FOUND then
        return def_fin_code_ret;
END;
/
CREATE OR REPLACE FUNCTION MIGAPP.get_date_fm_btrv(inp_date IN varchar2) return varchar2 as
  
  out_date varchar2(8);

BEGIN

    if LENGTH(inp_date) = 6 then
        out_date := '19'||substr(inp_date,1,6);
    elsif LENGTH(inp_date) = 7 then
        out_date := '20'||substr(inp_date,2,6);
    else
        out_date := 'ERROR';
    end if;
    
        if ((inp_date = '000000') or (trim(inp_date) = '') or inp_date is null) then
       out_date := 'ERROR';
    end if;
    RETURN (out_date);
    dbms_output.put_line('inp_date'||inp_date||'output'||out_date||'out');

END get_date_fm_btrv ;
/
CREATE OR REPLACE PROCEDURE MIGAPP.SP_mig_Account_No_Gen Is
       Cursor Cur_CIF_Acct
           Is Select LEG_ACC_NUM ,  schm_code ,  fin_cif_id  From map_acc ;
           seqno number;
           run_str varchar2(5);
Begin
    For g in Cur_CIF_Acct Loop
        select seq into seqno from CIF_AC_SEQ where FIN_CIF_ID = g.fin_cif_id ;
        if g.schm_code >= 400 and g.schm_code < 500 then
            run_str := substr(LPAD(seqno, 10 , '0'),-5,5);
        else
            run_str := substr(LPAD(seqno, 10 , '0'),-2,2);
        end if;
        update CIF_AC_SEQ set seq = seqno + 1  where FIN_CIF_ID = g.fin_cif_id ;
        update map_acc set FIN_ACC_NUM = g.schm_code || FIN_CIF_ID ||run_str where LEG_ACC_NUM = g.LEG_ACC_NUM;
        commit;
        
    end loop;
End;
/
--Createt Table script for common---
CREATE TABLE MAP_CIF
(
  LEG_CUST_NUMBER  VARCHAR2(32 BYTE),
  LEG_CUST_BRANCH  VARCHAR2(32 BYTE),
  FIN_CIF_ID       VARCHAR2(32 BYTE),
  FIN_SOL_ID       VARCHAR2(32 BYTE),
  CIF_NAME         NVARCHAR2(250),
  INDIVIDUAL       CHAR(1 BYTE),
  CIF_SEQ          NUMBER(10),
  GFCUS            VARCHAR2(6 BYTE),
  GFCLC            VARCHAR2(3 BYTE),
  GFCPNC           VARCHAR2(6 BYTE), 
  GFBRNM           VARCHAR2(6 BYTE), 
  IS_JOINT         CHAR(1 BYTE),
  DEL_FLG          CHAR(1 BYTE)
);
CREATE TABLE MAP_ACC
(
  LEG_BRANCH_ID     VARCHAR2(32 BYTE),
  LEG_SCAN          VARCHAR2(32 BYTE),
  LEG_SCAS          VARCHAR2(32 BYTE),
  LEG_ACC_NUM       VARCHAR2(32 BYTE),
  LEG_CUST_ID       VARCHAR2(32 BYTE),
  LEG_CUST_TYPE     VARCHAR2(32 BYTE),
  LEG_ACCT_TYPE     VARCHAR2(32 BYTE),
  FIN_ACC_NUM       VARCHAR2(32 BYTE),
  FIN_CIF_ID        VARCHAR2(32 BYTE),
  FIN_SOL_ID        VARCHAR2(32 BYTE),
  INT_TBL_CODE      VARCHAR2(32 BYTE),
  ACCT_PREF_INT_CR  VARCHAR2(32 BYTE),
  ACCT_PREF_INT_DR  VARCHAR2(32 BYTE),
  GL_SUB_HEADCODE   VARCHAR2(32 BYTE),
  SCHM_TYPE         VARCHAR2(32 BYTE),
  SCHM_CODE         VARCHAR2(32 BYTE),
  CURRENCY          VARCHAR2(5 BYTE)
);
CREATE TABLE MAP_SOL
(
  BR_CODE      VARCHAR2(8 BYTE),
  BR_NAME      VARCHAR2(100 BYTE),
  LOCATION     VARCHAR2(8 BYTE),
  FIN_SOL_ID   VARCHAR2(8 BYTE),
  FIN_BR_CODE  VARCHAR2(8 BYTE)
);
CREATE TABLE MAP_CODES
(
  CODE_TYPE      VARCHAR2(32 BYTE),
  LEG_CODE       VARCHAR2(100 BYTE),
  LEG_CODE_DESC  VARCHAR2(500 BYTE),
  FIN_CODE       VARCHAR2(100 BYTE),
  FIN_CODE_DESC  VARCHAR2(500 BYTE),
  IS_DEFAULT     CHAR(1 BYTE)
);
CREATE TABLE MAP_OFF_ACC
(
  LEG_ACC_NUM        VARCHAR2(32 BYTE),
  LEG_ACCT_TYPE      VARCHAR2(32 BYTE),
  LEG_SOC_LINE_ITEM  VARCHAR2(32 BYTE),
  FIN_ACC_NUM        VARCHAR2(32 BYTE),
  FIN_SOL_ID         VARCHAR2(32 BYTE),
  FIN_SCHEME_CODE    VARCHAR2(32 BYTE),
  FIN_SCHEME_TYPE    VARCHAR2(32 BYTE),
  FIN_GL_SUB_HEAD    VARCHAR2(32 BYTE),
  FIN_PLACE_HOLDER   VARCHAR2(32 BYTE)
);
CREATE TABLE MAP_SCHM_CODE
(
  AC_TYPE           VARCHAR2(5 BYTE),
  AC_TYPE_DESC      VARCHAR2(200 BYTE),
  SRC_TYPE          VARCHAR2(10 BYTE),
  END_STATE         VARCHAR2(10 BYTE),
  SCHM_TYPE         VARCHAR2(5 BYTE),
  SCHM_CODE         VARCHAR2(5 BYTE),
  GL_SUB_HEAD_CODE  VARCHAR2(5 BYTE),
  REMARKS           VARCHAR2(100 BYTE)
);
CREATE TABLE MAP_SEG
(
  CUST_TYPE     VARCHAR2(10 BYTE),
  C4_RATING     VARCHAR2(10 BYTE),
  RC_CODE       VARCHAR2(10 BYTE),
  SEGMENTATION  VARCHAR2(50 BYTE),
  SUB_SEGMENT   VARCHAR2(50 BYTE),
  PACKAGE_CODE  VARCHAR2(50 BYTE),
  REMARKS       VARCHAR2(500 BYTE)
)