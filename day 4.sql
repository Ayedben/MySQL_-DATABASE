-- Day 4 

-- Aggragate Function 
-- COUNT 
-- SUM 
-- AVG
-- MIN and MAX 



select *
from customers
;
alter table customers
add column job varchar(25) after last_name 
;

update customers
set job = "Mechanic"
where customer_id = 4
;
alter table customers 
modify salary int (55) after job
;
update customers
set salary = "90000"
where customer_id = 3
; 
select count(job) -- to count number of job 
from customers
;
select max(salary) -- to max salary  
from customers
;
select min(salary) -- to min salary  
from customers
; 

select avg(salary) --  avg salary  
from customers

;
