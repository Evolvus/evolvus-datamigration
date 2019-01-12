set head off
set feedback off
set term off
set lines 600
set pagesize 0
set pages 0
set trimspool on
spool $MIG_PATH/output/finacle/cifkw/RC009.txt
SELECT trim(ORGKEY)||'|'||
trim(COMMUNICATION_LANGUAGE)||'|'||
trim(PREFERRED_ADDRESS_MODE)||'|'||
trim(BEHAVIOURAL_SCORE)||'|'||
trim(RISK_BEHAVIOUR)||'|'||
trim(OTHER_BEHAVIOURAL_PROFILE)||'|'||
trim(LIFE_CYCLE_STAGE)||'|'||
trim(SERVICE_PERSONALISE)||'|'||
trim(PSYCHOGRAPHICTYPE)||'|'||
trim(PRIORITY_IDENTIFIER)||'|'||
trim(HOUSEHOLD_NUMBER)||'|'||
trim(PREFERRED_REP)||'|'||
trim(SEGMENTATION_CLASS)||'|'||
trim(PREFERREDNAME)||'|'||
trim(NUMBEROFDEPENDANTS)||'|'||
trim(NUMBEROFDEPENDANTCHILDREN)||'|'||
trim(STMTDATEFORCOMBSTMT)||'|'||
trim(SUBSEGMENT)||'|'||
trim(HOBBYFIELD1)||'|'||
trim(HOBBYFIELD2)||'|'||
trim(HOBBYFIELD3)||'|'||
trim(HOBBYFIELD4)||'|'||
trim(HOBBYFIELD5)||'|'||
trim(HOBBYFIELD6)||'|'||
trim(PROFILE_FIELD1)||'|'||
trim(PROFILE_FIELD2)||'|'||
trim(PROFILE_FIELD3)||'|'||
trim(PROFILE_FIELD4)||'|'||
trim(ALERT1)||'|'||
trim(ALERT2)||'|'||
trim(ALERT3)||'|'||
trim(ALERT4)||'|'||
trim(ALERT5)||'|'||
trim(FLAG1)||'|'||
trim(FLAG2)||'|'||
trim(FLAG3)||'|'||
trim(FLAG4)||'|'||
trim(FLAG5)||'|'||
trim(BANK_DEFINED_PREFER_VAR1)||'|'||
trim(BANK_DEFINED_PREFER_VAR2)||'|'||
trim(BANK_DEFINED_PREFER_VAR3)||'|'||
trim(BANK_DEFINED_PREFER_DATE1)||'|'||
trim(BANK_DEFINED_PREFER_DATE2)||'|'||
trim(BANK_DEFINED_PREFER_DATE3)||'|'||
trim(USERFIELD1)||'|'||
trim(USERFIELD2)||'|'||
trim(USERFIELD3)||'|'||
trim(USERFIELD4)||'|'||
trim(USERFIELD5)||'|'||
trim(USERFIELD6)||'|'||
trim(SPSERVICEREQUIRED1)||'|'||
trim(SPSERVICEREQUIRED2)||'|'||
trim(SPSERVICEREQUIRED3)||'|'||
trim(SPSERVICEREQUIRED4)||'|'||
trim(SPSERVICEREQUIRED5)||'|'||
trim(USERFLAG1)||'|'||
trim(USERFLAG2)||'|'||
trim(PREFRELSHIPDISCOUNT1)||'|'||
trim(PREFRELSHIPDISCOUNT2)||'|'||
trim(PREFRELSHIPDISCOUNTPERCENT1)||'|'||
trim(PREFRELSHIPDISCOUNTPERCENT2)||'|'||
trim(USERFIELD7)||'|'||
trim(USERFIELD8)||'|'||
trim(USERFIELD9)||'|'||
trim(USERFIELD10)||'|'||
trim(USERFIELD11)||'|'||
trim(USERFIELD12)||'|'||
trim(USERFIELD13)||'|'||
trim(AMOUNT1)||'|'||
trim(AMOUNT2)||'|'||
trim(AMOUNT3)||'|'||
trim(AMOUNT4)||'|'||
trim(AMOUNT5)||'|'||
trim(AMOUNT6)||'|'||
trim(AMOUNT7)||'|'||
trim(INTFIELD1)||'|'||
trim(INTFIELD2)||'|'||
trim(INTFIELD3)||'|'||
trim(INTFIELD4)||'|'||
trim(INTFIELD5)||'|'||
trim(STATEMENTTYPE)||'|'||
trim(STATEMENTFREQUENCY)||'|'||
trim(STMTDATEWEEKDAY)||'|'||
trim(STMTMONTHLYSTARTDATE)||'|'||
trim(ACTIONDURINGHOLIDAY)||'|'||
trim(DESPATCHMODE)||'|'||
trim(CALENDERTYPE)||'|'||
trim(DISCOUNTAVAILED)||'|'||
trim(DISCOUNTTYPE)||'|'||
trim(PREFEFFECTIVEDATE)||'|'||
trim(PREFEXPIRYDATE)||'|'||
trim(LASTCONTACTEDDATE)||'|'||
trim(LASTCONTACTEDCHANNEL)||'|'||
trim(FAMILYTYPE)||'|'||
trim(NOOFEARNERS)||'|'||
trim(REMARKS)||'|'||
trim(COMMUNITY)||'|'||
trim(LTVINDICATOR)||'|'||
trim(ASSETCLASSIFICATION)||'|'||
trim(ASSETCLASSIFICATIONDESC)||'|'||
trim(ASSETCLASSIFIEDON)||'|'||
trim(CUSTHEALTHCODE)||'|'||
trim(CREDITDISCOUNTPERCENT)||'|'||
trim(DEBITDISCOUNTPERCENT)||'|'||
trim(PREFERRENTIALEXPIRYDATE)||'|'||
trim(INTERESTDESCRIPTION)||'|'||
trim(STMTWEEKOFMONTH)||'|'||
trim(CUSTCHARGECODE)||'|'||
trim(CUSTCHARGE)||'|'||
trim(CHARGEDEBITFORACID)||'|'||
trim(CHARGEDEBITSOLID)||'|'||
trim(CHARGEHISTORYFLAG)||'|'||
trim(CUSTOMERCURRENCY)||'|'||
trim(LOANSSTATEMENTTYPE)||'|'||
trim(TDSSTATEMENTTYPE)||'|'||
trim(COMBSTMTCHARGECODE)||'|'||
trim(TDSCUSTFLOORLIMIT)||'|'||
trim(COMMUNITY_CODE)||'|'||
trim(CUST_HEALTH_REF_CODE)||'|'||
trim(CUST_PREF_TILL_DATE)||'|'||
trim(CU_TDSCUSTFLOORLIMIT)||'|'||
trim(CHECKSUM1)||'|'||
trim(PREFERRED_LOCALE)||'|'||
trim(BANK_ID)||'|'||
trim(NATURE_OF_ACT)
FROM CU9_O_TABLE;
spool off;
exit;
 
