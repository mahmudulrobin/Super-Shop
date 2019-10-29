set serveroutput on; 

declare 
	
	res varchar; 
	
begin 
	res := display1; 
	
		dbms_output.put_line('display the names of the customers from site 1 : ',res);
	
	
end; 
/