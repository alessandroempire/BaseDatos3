define FILE=tstatsSpool.sql
spool &FILE

----------------------------------------------
--tabla REGION
set autotrace traceonly statistics;

select *
from ci5313.REGION;

set autotrace off

----------------------------------------------
--tabla nations

set autotrace traceonly statistics;

select *
from ci5313.REGION;

set autotrace off

----------------------------------------------
--tabla part

set autotrace traceonly statistics;

select *
from ci5313.PART;

set autotrace off

----------------------------------------------
--tabla SUPPLIER

set autotrace traceonly statistics;

select *
from ci5313.SUPPLIER;

set autotrace off

----------------------------------------------
--tabla PARTSUPPLIER

set autotrace traceonly statistics;

select *
from ci5313.PARTSUPPLIER;

set autotrace off

----------------------------------------------
--tabla COSTUMER

set autotrace traceonly statistics;

select *
from ci5313.CUSTOMER;

set autotrace off

----------------------------------------------
--tabla ORDERS

set autotrace traceonly statistics;

select *
from ci5313.ORDERS;

set autotrace off

----------------------------------------------
--tabla LINEITEMS

set autotrace traceonly statistics;

select *
from ci5313.LINEITEM;

set autotrace off

---------------------------------------------
spool off;
