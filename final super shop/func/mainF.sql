set serveroutput on;

DECLARE
 variable varchar2(100);
v_msg int(100);


begin
DBMS_output.put_line('enter what do you want to check ?  ');

DBMS_output.put_line('1. show all the customers from all the branches : ');
v_msg := 1;

variable :=input(v_msg);
dbms_output.put_line(variable);

end;
/



