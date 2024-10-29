-- Task: Query the customer info, first_name, last_name, email, store
select first_name, last_name, email, store_id
from customer;


-- FUNDAMENTALS OF SQL

-- Sort or Rearrange the above table
select first_name, last_name, email, store_id
from customer
order by first_name asc, store_id asc;

select *
from inventory
where store_id = 1 and year(last_update) = "2005";

-- Task: Query all payment made in 2006 and 2007 
select *
from payment
where staff_id = 1 and (year(payment_date) = "2006" or year(payment_date) = "2007");

SELECT STAFF_ID, SUM(AMOUNT)
FROM PAYMENT
GROUP BY STAFF_ID;

-- TASK: Query the Minimum, Maximum, Average and Sum of the Amount paid by each customer


select  customer_id,
         min(amount) as "min",
         max(amount) as "max",
         avg(amount) as "avg",
         sum(amount) as "sum" 
from payment
group by customer_id; 

-- CONDITIONAL STATEMENT

select active,
	   case
          when active = 1 then "Active"
          else "inactive"
		end as "Active status",
        count(*)
from customer
group by asc;





