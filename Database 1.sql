-- Day 3 

-- Joins  used to combine rows from two or more tables based on related columns.

select*
from transfers
;
CREATE TABLE transfers(
payment_id int ,
amount varchar(50),
customer_id varchar (50)

)
;
insert into transfers
value (100,2.56,02) ,
	  (101,23.6,3),
      (102,3.65,3),
      (103,6.95,4),
	  (104,9.99,5),
      (105,1.65,NULL)
;
insert into transfers
value (NULL,NULL,Null) ;

select*
from CUSTOMERS;


insert into customers
value (NULL,"Poppy","Puff") ;


-- INNER JOIN  // We are telling MySQL to select what these 2 table have in commun (Shows only matching rows in both tables)

select payment_id,amount, fisrt_name,last_name
from transfers inner join customers  -- the 2 tables will be join together the 2nd will be in the left means THE CUSTOMERS TABLE
on transfers.customer_id = customers.customer_id  -- customer_id column şs what they have in commun 

;
-- LEFT JOIN  // 

select *
from transfers left join customers  -- To dispaly everything on the left table also display any
on transfers.customer_id = customers.customer_id  
;
-- UNION 
select *
from transfers right join customers  -- To dispaly everything on the right table also display any
on transfers.customer_id = customers.customer_id  ;


select *
from transfers left join customers  -- To dispaly everything on the right table also display any
on transfers.customer_id = customers.customer_id  

union

select *
from transfers right join customers  -- To dispaly everything on the right table also display any
on transfers.customer_id = customers.customer_id  ;
