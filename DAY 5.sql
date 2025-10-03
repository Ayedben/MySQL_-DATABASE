-- DAY 6

-- windows function unctions that perform calculations across a set of table rows that are somehow related to the current row. 
-- Unlike aggregate functions, window functions do not cause rows to become grouped into a single output row — the rows retain their separate identities.
-- PARTITION BY divides the result set into groups ("partitions"), and the window function is applied separately to each group.
-- ORDER BY defines the order of rows for the calculation.


select*
from transfers
; 


select payment_id, amount,customer_id,
    row_number() over  (order by amount desc)as no_payment  -- windows function 
from transfers

;

select payment_id, amount,customer_id,
    row_number() over  (order by amount desc)as no_payment, -- ROW_NUMBER() — Gives a unique row number to each row in its partition
	rank () over  (order by amount desc)as no_payment_R, -- RANK - Assigns rank to rows with ties (same value gets same rank, but skips next)
	dense_rank() over  (order by amount desc)as no_payment_DR -- DENSE_RANK() — Like RANK() but no gaps
    
from transfers
;

select payment_id, amount,customer_id,
    row_number() over  (partition by amount> 3.2 order  by amount desc)as no_payment  -- windows function 
from transfers
;