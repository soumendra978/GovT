-- I want to know the list of our customers and their spending.
select cid, cname, sum(prodcost) from dealer_table
group by cid, cname;


-- I want to find out the top 3 car manufacturers that customers bought by sales (quantity) and the sales number -- for it in the current month.
select * from (select prodmanuf, count(prodmanuf), rank() over(order by count(prodmanuf) desc) rn
from table_name
where trunc(sale_date,'MM') = trunc(sysdate,'MM')
group by deptid)
where rn < 4