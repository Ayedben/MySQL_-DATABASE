
-- DAY 2 



-- UNIQUE is to make a data unique DOES NOT ALLOW DUPLICATE
-- PRIMARY KEY a table can have oneprimary key and UNIQUE and NOT NULL 
-- AUTO_INCREMENT automatically adds a unique, increasing number.Used for columns like id in most cases. No need to manually give a value for it while inserting.
-- FOREIGN KEY is a constraint that links two tables together . It ensures that the value in one column (or set of columns) matches the value in a column of another table

create table products (
	 product_id int,
     product_name varchar(100) unique ,
     price decimal (5,2)
);


insert into products
value (01, "Computer",36.8),
	  (02, "Phone" ,15.7),
	  (03,"Camera",65.9),
	  (04,"Mousepad",50),
	  (05, "Headphone",22.6 )
      ;


alter table products
auto_increment = 100

;
select *
from products
;


create table customers (
	 customer_id int primary key auto_increment,
     fisrt_name  varchar(100) ,
     last_name varchar(100)
);

insert into customers (fisrt_name, last_name)
value 
        ("Ben","Ayed"),
       ("Mark","Dot"),
       ("Mos","hıs")
;
select *
from customers
;

create table transactions (
	transactions_id int primary key auto_increment,
     amount decimal(5,2)  ,
     customer_id int ,
     foreign key(customer_id) references customers(customer_id)
);

select *
from transactions
;



