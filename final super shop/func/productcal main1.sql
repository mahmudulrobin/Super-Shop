set serveroutput on size 30000;
set verify off;

accept c char prompt 'Please enter dept to see available seat: '



declare 
  
  
  
	
	seat_no varchar2(30);
   
	
begin
  
	
	
	
	
	available_seat('&c');
	
	

	
	
	
	
	
 
end;          
/            