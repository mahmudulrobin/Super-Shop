

set serveroutput on size 30000;
set verify off;
accept c char prompt 'Please enter customer id : '

 declare 
  var_Cust_ID int;
  var_Branch_ID int;
 


begin 
	select cust_id,branch_id from transaction@site_link1 into var_cust_id,branch_id  where cust_id='&c';
    dbms_output.put_line('show transaction details:' ||var_Cust_ID ||''||var_Branch_ID );
end; 
/

