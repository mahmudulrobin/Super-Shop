

/* machine learning */
create or replace procedure linear_reg(month in int) is

temp_x number;
temp_y number;
sum_month_x number;
sum_sales_y number;
mul_xy number;
month_x2 number;
sales_y2 number;
a number;
b number;
cnt number;
result number;

cursor sales_cur is select month,sales from sales@site_link2;

begin
	sum_month_x := 0;
	sum_sales_y := 0;
	mul_xy := 0;
	month_x2 := 0;
	sales_y2 := 0;
  cnt := 0;

	open sales_cur;

	loop
		fetch sales_cur into temp_x,temp_y;
		exit when sales_cur%notfound;
		
		cnt := cnt + 1;
		sum_month_x := sum_month_x + temp_x;
                sum_sales_y := sum_sales_y + temp_y;
		mul_xy := mul_xy + (temp_x * temp_y);
		month_x2 :=  month_x2 + (temp_x * temp_x);
		sales_y2 := sales_y2 + (temp_y * temp_y);
		
	end loop;
	
	close sales_cur;  
        
        /*formula for a and b */  
	a := (sum_sales_y * month_x2) - (sum_month_x * mul_xy);
        a := a /( (cnt * month_x2) - (sum_month_x * sum_month_x) );

   	b := (cnt * mul_xy) - (sum_month_x * sum_sales_y); 
	b := b/( (cnt * month_x2) - (sum_month_x * sum_month_x) );
        /*formula for a and b */
 	
	result := a + (b * month); /* y = a + bx */
	DBMS_OUTPUT.PUT_LINE('Predicted Sales for Month = '||month||' is '|| result);
	
end linear_reg;
/