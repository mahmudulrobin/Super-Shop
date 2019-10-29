
create or replace procedure available_seat   
(    
dept IN VARCHAR2)    
is 
 	 cursor my_cur_med is
		select seat_no  from  SEAT@site_link1 where status=0;
	cursor my_cur_ent is
		select seat_no  from  SEAT@site_link2 where status=0;
		
	theSeat SEAT.seat_no@site_link2%TYPE;
	
begin  

   IF dept='MEDICINE' THEN
  
		open my_cur_med;
		DBMS_OUTPUT.PUT_LINE('Available Seat_No');
		loop
			fetch my_cur_med into theSeat;
			exit when my_cur_med%notfound;
			DBMS_OUTPUT.PUT_LINE(TO_CHAR(theSeat));
			end loop;
		close my_cur_med;
  
  ELSIF dept='ENT' THEN
	  open my_cur_ent;
			DBMS_OUTPUT.PUT_LINE('Available Seat_No');
			loop
				fetch my_cur_ent into theSeat;
				exit when my_cur_ent%notfound;
				DBMS_OUTPUT.PUT_LINE(TO_CHAR(theSeat));
				end loop;
			close my_cur_ent;
	END IF;
end;    
/   