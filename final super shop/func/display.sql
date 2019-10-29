create or replace function display1
		
		return varchar
		is 
		name varchar;
	begin 
	 
	 select c_name into name from customer@site_link1 where c_id=1001;
	 
	 return name;
	 
	 
	 
	 
end	; 
/