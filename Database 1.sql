
-- Mysql How to create a database 

create database myDataBase;
-- create a table 
create table employees (
     employee_ids int , 
     first_name varchar(50), 
     last_name varchar(50),  
     hourly_pay decimal (5,2),  
     hire_date date  

);

select *
from employees