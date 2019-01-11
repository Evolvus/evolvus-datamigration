set head off
set feedback off
set term off
set lines 5000
set pages 0
set colsep ''
set trimspool on
spool $MIG_PATH/output/finacle/TF/TF005_S.txt
SELECT
FUNC_CODE,
SOL_ID,
DC_NUM,
EVENT_AMOUNT,
EVENT_DATE,
DC_TYPE,
DC_CURRENCY_CIF_ID,
DC_CIF_ID,
DC_PARTY_NAME,
DC_PARTY_ADDRESS_1,
DC_PARTY_ADDRESS_2,
DC_PARTY_ADDRESS_3,
DC_PARTY_CITY,
DC_PARTY_STATE,
DC_PARTY_COUNTRY,
POSTAL_CODE,
DC_ACCOUNT_ID,
APPLICANT_REFERENCE_NUM,
TOLERANCE_LIMIT,
NEGATIVE_TOLERANCE_PCNT,
DC_RATE_CODE,
DC_RATE,
DC_ADVANCE_AMOUNT,
DC_INTEREST_PCNT,
DC_ADDITIONAL_AMT,
DC_INTEREST_REMARKS,
DC_MAX_CREDIT,
DC_PURCHASE_ORDER_NO,
DC_PORD_DATE,
DC_PUR_ORDER_LAST_AMEND_DATE,
DC_TOTAL_NUM_OF_AMENDMENTS,
PRE_ADVICE_FLAG,
PRE_ADVICE_DATE,
PRE_ADVICE_REF_NUM,
OTHER_BANK_REF_NUM,
DC_PAYSYS_ID,
DC_BENEFICIARY_CIF_ID,
DC_BENEFICIARY_NAME,
DC_BENEFICIARY_ADDRESS1,
DC_BENEFICIARY_ADDRESS2,
DC_BENEFICIARY_ADDRESS3,
DC_BENEFICIARY_CITY,
DC_BENEFICIARY_STATE,
DC_BENEFICIARY_COUNTRY,
DC_BENEFICIARY_PINCODE,
DC_APPLICANT_BRANCH,
DC_APPLICANT_BANK,
DC_APPLICANT_BANK_NAME,
DC_APPLICANT_BANK_ADDRESS1,
DC_APPLICANT_BANK_ADDRESS2,
DC_APPLICANT_BANK_ADDRESS3,
DC_APPLICANT_BANK_CITY,
DC_APPLICANT_BANK_STATE,
DC_APPLICANT_BANK_COUNTRY,
DC_APPLICANT_BANK_PINCODE,
DC_APPLICANT_BIC_CODE,
DC_PARTY_IDENTIFIER,
DC_APPLICANT_BANK_ADDRESS_TYPE,
DC_ISSUING_BRANCH,
DC_ISSUING_BANK,
DC_ISSUING_NAME,
DC_ISSUING_ADDRESS_1,
DC_ISSUING_ADDRESS_2,
DC_ISSUING_ADDRESS_3,
DC_ISSUING_CITY,
DC_ISSUING_STATE,
DC_ISSUING_COUNTRY,
DC_ISSUING_PIN_CODE,
DC_ISSUE_BIC_CODE,
DC_ISSUE_PARTY_ID,
DC_ISSUE_REF_NO,
DC_ISSUE_ADDRESS_TYPE,
DC_ADVISING_BRANCH_CODE,
DC_ADVISING_BANK_CODE,
DC_ADVISING_NAME,
DC_ADVISING_ADDRESS_1,
DC_ADVISING_ADDRESS_2,
DC_ADVISING_ADDRESS_3,
DC_ADVISING_CITY,
DC_ADVISING_STATE,
DC_ADVISING_COUNTRY,
DC_ADVISING_PIN_CODE,
DC_ADVISING_BIC_CODE,
DC_ADVISING_PARTY_ID,
DC_ADVISING_ADDRESS_TYPE,
DC_DRAWEE_BRANCH,
DC_DRAWEE_BANK,
DC_DRAWEE_NAME,
DC_DRAWEE_ADDRESS_1,
DC_DRAWEE_ADDRESS_2,
DC_DRAWEE_ADDRESS_3,
DC_DRAWEE_CITY,
DC_DRAWEE_STATE,
DC_DRAWEE_COUNTRY,
DC_DRAWEE_PIN_CODE,
DC_DRAWEE_BIC_CODE,
DC_DRAWEE_PARTY_ID,
DC_DRAWEE_ADDRESS_TYPE,
DC_AVAILABLE_WITH_BRANCH,
DC_AVAILABLE_WITH_BANK,
DC_AVAILABLE_WITH_NAME,
DC_AVAILABLE_WITH_ADDRESS_1,
DC_AVAILABLE_WITH_ADDRESS_2,
DC_AVAILABLE_WITH_ADDRESS_3,
DC_AVAILABLE_WITH_CITY,
DC_AVAILABLE_WITH_STATE,
DC_AVAILABLE_WITH_COUNTRY,
DC_AVAILABLE_WITH_PIN_CODE,
DC_AVAILABLE_WITH_BIC_CODE,
DC_AVAILABLE_WITH_PARTY_ID,
DC_AVAILABLE_BY,
DC_AVAILABLE_WITH_ADDRESS_TYPE,
DC_REIMBURSING_BRANCH,
DC_REIMBURSING_BANK,
DC_REIMBURSING_NAME,
DC_REIMBURSING_ADDRESS_1,
DC_REIMBURSING_ADDRESS_2,
DC_REIMBURSING_ADDRESS_3,
DC_REIMBURSING_CITY,
DC_REIMBURSING_STATE,
DC_REIMBURSING_COUNTRY,
DC_REIMBURSING_PIN_CODE,
DC_REIMBURSING_BIC_CODE,
DC_REIMBURSING_PARTY_ID,
DC_REIMBURSING_ADDRESS_TYPE,
DC_ADVISE_THROUGH_BRANCH,
DC_ADVISE_THROUGH_BANK,
DC_ADVISE_THROUGH_NAME,
DC_ADVISE_THROUGH_ADDRESS_1,
DC_ADVISE_THROUGH_ADDRESS_2,
DC_ADVISE_THROUGH_ADDRESS_3,
DC_ADVISE_THROUGH_CITY,
DC_ADVISE_THROUGH_STATE,
DC_ADVISE_THROUGH_COUNTRY,
DC_ADVISE_THROUGH_PIN_CODE,
DC_ADVISE_THROUGH_BIC_CODE,
DC_ADVISE_THROUGH_PARTY_ID,
DC_ADVISE_THROUGH_LOCATION,
DC_ADVISE_THROUGH_ADDRESS_TYPE,
PARTIAL_SHIPMENT_FLAG,
TRANS_SHIPMENT_FLAG,
LAST_SHIPMENT_DATE,
DC_NEGOTIATION_PERIOD,
SHIPMENT_MODE,
SHIPMENT_TERM,
DISPATCH_ORIGIN_PORT_CODE,
DISPATCH_DESTINATION_PORT_CODE,
PORT_OF_ORIGIN,
PORT_OF_DESTINATION,
HOUSE_AIR_BILL_FLAG,
SHIPMENT_DESC,
AGENT_CODE,
ORIGIN_OF_GOODS,
COMMODITY_CODE,
LICENSE_CODE,
INSURANCE_PCNT,
INSURED_AMOUNT,
INSURED_BY,
POLICY_NUM,
POLICY_DATE,
INSURED_COMPANY,
PAYABLE_AT,
PREMIUM_AMT,
DC_REIMBURSEMENT_MSG_FLAG,
DC_REIM_APPLICABLE_RULES,
NOSTRO_ACCT_NUM,
DC_CHARGES_BORNE_BY,
DC_CONFIRMATION_INSTRUCTIONS,
DC_CONFIRMATION_REQUIRED_BY,
DC_AGENT_COMMISSION_PCNT,
CAPITAL_ADEQUACY_CODE,
REVOCABLE_FLAG,
DC_IRREVOCABLE_FLAG,
DC_TRANSFERRABLE_FLAG,
DC_STANBY_MODE_FLAG,
DC_REVOLVING_FLAG,
DC_BACK_TO_BACK_FLAG,
DEFERRED_DC_FLAG,
RED_CLAUSE_DC_FLAG,
REINSTATEMENT_TYPE,
DC_REINSTATEMENT_DAY,
MAX_REINSTATEMENTS,
REINSTATEMENT_REMARKS,
DC_BACK_TO_BACK_REF_NUM,
DC_APPLICABLE_RULE,
DC_APPLICABLE_SUB_RULE,
DC_TENOR,
DC_EXPIRY_DATE,
DC_PLACE_OF_EXPIRY,
LIMITPREFIX,
LIMIT_SUFFIX,
LIMIT_MARGIN_PCNT,
INTERNAL_LIMITS,
AMENDMENT_INDICATOR,
AMENDMENT_STATUS,
AMENDMENT_REMARKS,
ADD_CONFIRMATION,
DC_CONFIRMATION_AMOUNT,
DC_CONFIRMATION_PCNT,
USANCE_PERIOD,
AMEND_TENOR_DETAILS,
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
BENEFACCTID,
INSURADDRLINE1,
INSURADDRLINE2,
INSURADDRLINE3,
INSURCITY,
INSURSTATE,
INSURCNTRY,
INSURPOSTALCODE,
INSUREXPDATE,
REMITRECVDTHROUGH,
RECVDREMITID,
RECVDPAYMENTDATE,
RECVDADVREMARKS,
CAPITALGOODSTRAN,
DUEDATEIND,
AUTOREINSTATEFLG,
COLLAUTOREINSCHRGS,
TENORMONTHS,
TENORDAYS
FROM TF005
where FUNC_CODE='E'
order by SOL_ID,DC_NUM,to_date(EVENT_DATE,'DD-MM-YYYY');
spool off;
 
