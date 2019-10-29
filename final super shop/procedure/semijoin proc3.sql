/* check membership type(With Semi-join)*/
create or replace procedure check_membership_withoutjoin(id in int) is

v_type varchar(20);

begin 

	With member_semijoin as (select * from membership@site_link1 where exists ( select m_id from customer@site_link1 c where membership.m_id = c.m_id))

		select m.type into v_type from member_semijoin@site_link1 m inner join customer@site_link1 c on m.m_id = c.m_id where c.c_id = id;

		dbms_output.put_line('Semi-Join operation:');
		dbms_output.put_line('---------------');   
		DBMS_OUTPUT.PUT_LINE(v_type);
 
end check_membership_withoutjoin;
/