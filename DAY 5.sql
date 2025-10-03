-- DAY 5
-- Group By clause is used to group rows that have the same values in specified columns into summary rows, like "total quantity per product" or "number of users per country."
-- HAVING clause is used to filter results after GROUP BY aggregation — it's like a WHERE clause, but for aggregated/grouped data.
-- LIMIT clause is used to restrict the number of rows returned by a query.

select *
from products
;
alter table products
add column purchase_date date after price
;

update products
set  purchase_date = current_timestamp()
where product_id = 1
;

update products
set  purchase_date = "2025-03-08"
where product_id = 5
;

select product_name, sum(price) as total_price
from products
group by product_name
;
select  sum(price) as total_price
from products
;

select product_name, sum(price) as total_price
from products
group by product_name  -- This shows the total sales for each product
;

select product_name,  avg(price)
from products
group by product_name 
having  avg (price) > 30
;
select product_name
from products
limit  3 
;