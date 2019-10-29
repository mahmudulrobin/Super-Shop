


/* sales report */
  create or replace procedure sales_report(fromDate date, toDate date) 
  is
  tot_cost number;
  tot_sold number;
  rpt number;
  
begin 
  SELECT SUM(Buying_Price) into tot_cost from warehouse@site_link1 where s_date between fromDate and toDate;
  select sum(total_price) into tot_sold from transaction@site_link1 where t_date between fromDate and toDate;
  
  rpt := tot_cost - tot_sold;
  
  DBMS_OUTPUT.PUT_LINE('Total Cost');
  DBMS_OUTPUT.PUT_LINE(tot_cost);
  
  DBMS_OUTPUT.PUT_LINE('Total Sold');
  DBMS_OUTPUT.PUT_LINE(tot_sold);
  
  DBMS_OUTPUT.PUT_LINE('Report');
  DBMS_OUTPUT.PUT_LINE(rpt);
  
end sales_report;
/


