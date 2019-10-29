set serveroutput on size 30000;
set verify off;

accept c char prompt 'Please enter site name: '

begin 
	warehouse_dis('Sunsilk Shampoo 500ml',30,'&c');
	 
end; 
/
