


create or replace function input
	(func_val in number)
	return number,number
	is
welcome_msg varchar2(50);

begin

select distinct(count (*)) into site1_var from customer@site_link1
union all
select distinct(count (*)) into site2_var from customer@site_link2;  



return site1_var,site2_var;
end;
/




