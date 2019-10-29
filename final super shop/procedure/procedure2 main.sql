set serveroutput on size 30000;
set verify off;

accept c char prompt 'Please enter site: '
begin 
	top_selling('02-JAN-2019','02-FEB-2019','Computer','&c');
end; 
/
