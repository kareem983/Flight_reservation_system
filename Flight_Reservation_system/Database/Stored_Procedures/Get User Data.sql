-- Create Get User Data Stored Procedures
create or replace PROCEDURE PRO_GET_USER_DATA 
(  
email_ in PRO_CUSTOMER.EMAIL% TYPE ,
FName out PRO_CUSTOMER.FIRST_NAME% TYPE, 
LName out PRO_CUSTOMER.LAST_NAME% TYPE, 
ADDRESS_  out PRO_CUSTOMER.ADDRESS% TYPE,
PASS_NUM  out PRO_CUSTOMER.PASSPORT_NUM% TYPE ,
CreditNum  out PRO_CUSTOMER.CREDIT_NUM% TYPE 

)
AS
BEGIN
  
  select FIRST_NAME ,LAST_NAME , ADDRESS , PASSPORT_NUM ,CREDIT_NUM
  into FName , LName , ADDRESS_, PASS_NUM , CreditNum
  from PRO_CUSTOMER where EMAIL=email_ ;
  
END PRO_GET_USER_DATA;
