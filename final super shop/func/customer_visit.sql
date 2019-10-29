



select distinct(count (*)) from customer@site_link1
union all
select distinct(count (*)) from customer@site_link2; 