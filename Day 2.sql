
-- DAY 2 



-- UNIQUE is to make a data unique DOES NOT ALLOW DUPLICATE
-- PRIMARY KEY a table can have oneprimary key and UNIQUE and NOT NULL 
-- AUTO_INCREMENT automatically adds a unique, increasing number.Used for columns like id in most cases. No need to manually give a value for it while inserting.

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

select *
from products
;