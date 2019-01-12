set head off
set feedback off
set term off
set linesize 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF010_LC_IMPORT.txt
SELECT
FUNCCODE,
BILLPARAMTYPE,
CIFID,
CRNCYCODE,
UNDERDC,
SOLID,
BILLID,
DISCAMT,
OTHERDED,
BILLAMT,
BILLTENOR,
LODGEDATE,
REFCODE,
OTHERBANKSREFNO,
PARTYNAME,
ADDRESS1,
ADDRESS2,
INVOICEAMT,
INVOICECRNCY,
BANKCODE,
BRCODE,
BICID,
DUEDATEIND,
BILLDATE,
DUEDATE,
ONBOARDDATE,
NUM,
FORACID,
OPPCHRGACCID,
CUSTLIABACCTID,
ADVAMTPAID,
OTHERBANKSREFDATE,
PAYSYSID,
PARTYCIF,
ADDRESS3,
CITYCODE,
STATECODE,
CNTRYCODE,
PINCODE,
DBBANKCODE,
DBBRCODE,
DBNAME,
DBADDRESS1,
DBADDRESS2,
DBADDRESS3,
DBCITYCODE,
DBSTATECODE,
DBCNTRYCODE,
DBPINCODE,
DBBICID,
DBPARTYID,
DBADDRTYPE,
CBNAME,
CBADDRESS1,
CBADDRESS2,
CBADDRESS3,
CBCITYCODE,
CBSTATECODE,
CBCNTRYCODE,
CBPINCODE,
CBBICID,
CBPARTYID,
CBADDRTYPE,
COBBANKCODE,
COBBRCODE,
COBNAME,
COBADDRESS1,
COBADDRESS2,
COBADDRESS3,
COBCITYCODE,
COBSTATECODE,
COBCNTRYCODE,
COBPINCODE,
COBBICID,
COBPARTYID,
COBADDRTYPE,
RBBANKCODE,
RBBRCODE,
RBNAME,
RBADDRESS1,
RBADDRESS2,
RBADDRESS3,
RBCITYCODE,
RBSTATECODE,
RBCNTRYCODE,
RBPINCODE,
RBBICID,
RBPARTYID,
RBADDRTYPE,
CABBANKCODE,
CABBRCODE,
CABNAME,
CABADDRESS1,
CABADDRESS2,
CABADDRESS3,
CABCITYCODE,
CABSTATECODE,
CABCNTRYCODE,
CABPINCODE,
CABBICID,
CABPARTYID,
CABADDRTYPE,
DRAFTNO,
FIXEDTRANSITPERIOD,
GRACEPERIOD,
DOCSRCVDON,
ACCEPTDATE,
TENORMONTH,
TENORDAY,
DCUTILAMT,
SHPGRNTORDNO1,
SHPGRNTORDNO2,
SHPGRNTORDNO3,
SHPGRNTORDNO4,
SHPGRNTORDNO5,
OTHRBANKPRFTAMT,
CARRIERCODE,
ORIGINOFGOODS,
PORTOFDEST,
CONSIGNEECNTRY,
SHPMTTERMS,
COMMCODE,
DOCRCVDFLG,
DOCSTATUS,
SOLID1,
ORDNO1,
SOLID2,
ORDNO2,
SOLID3,
ORDNO3,
SOLID4,
ORDNO4,
SOLID5,
ORDNO5,
EXPORDNO,
LICENSEDATE,
INSURPCNT,
INSURAMT,
INSUREDBY,
POLICYNO,
POLICYDATE,
INSURCOMPNAME,
PAYABLEAT,
PREMIUMCCY,
PREMIUMAMT,
INSURCONVRATECODE,
INSURCONVRATE,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
INVOICENO,
INVOICEDATE,
UNDERRESERVE,
INTERMTRADE,
PURPOSEBILL,
REGAPPROVALNO,
OURCOMMAMT,
OURPTAMT,
PURCHASEACCTID,
LCNDAACCTID,
GOODSINTRANACCTID,
PURCHASEAMT,
PAYABLEACCTID,
PRFXMURABHALMTID,
SFXMURABHALMTID,
PRFTTABLECODE,
PROMPURRCVD,
PROMPURDATE,
PROMPURREFNO,
PURACCEPTADVICE,
EXEADVNO1,
EXEADVNO2,
EXEADVNO3,
EXEADVNO4,
EXEADVNO5,
INVACCTID,
GOODSPURTHIRDPARTY,
ISLAMICRATECODE,
ISLAMICRATE,
CAPITALTRAN,
INTENDTOEXPORT,
INWARDDCREFNUM
FROM TF010_LC
WHERE FUNCCODE='G' and DUEDATEIND='G';
spool off;
 
