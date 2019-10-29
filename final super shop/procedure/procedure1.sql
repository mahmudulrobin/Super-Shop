

/* check membership type(With join)*/
create or replace procedure check_membership_withjoin(id in int) is

v_type varchar(20);

begin 

select m.type into v_type from membership@site_link1 m inner join customer@site_link1 c on m.m_id = c.m_id where c.c_id = id;

dbms_output.put_line('Join operation:');
dbms_output.put_line('---------------');
DBMS_OUTPUT.PUT_LINE(v_type);
dbms_output.put_line(chr(10));
 
end check_membership_withjoin;


/