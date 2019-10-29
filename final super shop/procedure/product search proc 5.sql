

/* product search(Without canonical expression) */
   create or replace procedure product_av_withoutcanon(search_av varchar) is

prod_name product.p_name%TYPE;
  p_quan stores_in.p_quantity%TYPE; 
  b_loc branch.location%type;  
  b_phone branch.phone%type;
  
begin 
  SELECT p.p_name into prod_name from product@site_link1 p inner join stores_in@site_link1 st on p.p_id = st.p_id where p.p_name LIKE search_av;
  
  SELECT st.p_quantity into p_quan from product@site_link1 p inner join stores_in@site_link1 st on p.p_id = st.p_id where p.p_name LIKE search_av;
  
  SELECT b.location into b_loc from product@site_link1 p inner join stores_in@site_link1 st on p.p_id = st.p_id inner join branch@site_link1 b on b.branch_id = st.branch_id where p.p_name LIKE search_av;

  DBMS_OUTPUT.PUT_LINE('Without Canonical Expression:');
  DBMS_OUTPUT.PUT_LINE('-----------------------------');
  DBMS_OUTPUT.PUT_LINE('Product' || '                '|| 'Quantity' || '   ' || 'Location');
  DBMS_OUTPUT.PUT_LINE(prod_name || '  ' || p_quan || '       ' || b_loc);
  DBMS_OUTPUT.PUT_LINE(chr(10));

end product_av_withoutcanon;
/