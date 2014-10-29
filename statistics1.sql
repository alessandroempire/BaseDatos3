define FILE=statistic1sSpool.sql
spool &file
set lines 250
set trimout on
set space 1 
set tab off

--------------------------------------------------------------
--Stats de NATION
SELECT table_name "name",blocks "blocks", num_rows "Tuplas"
FROM   all_tables
WHERE  table_name='NATION' and owner='CI5313';

-----------------------------------------------------------------
--Stats de REGION
SELECT table_name "name", blocks "blocks", num_rows "Tuplas"
FROM   all_tables
WHERE  table_name='REGION' and owner='CI5313';

-----------------------------------------------------------------
--stats de LINEITEM
SELECT table_name "name", blocks "blocks", num_rows "Tuplas"
FROM   all_tables
WHERE  table_name='LINEITEM' and owner='CI5313';

-----------------------------------------------------------------
--stats de ORDERS
SELECT table_name "name", blocks "blocks", num_rows "Tuplas"
FROM   all_tables
WHERE  table_name='ORDERS' and owner='CI5313';

-----------------------------------------------------------------
--stats de PARTSUPPLIER
SELECT table_name "name", blocks "blocks", num_rows "Tuplas"
FROM   all_tables
WHERE  table_name='PARTSUPPLIER' and owner='CI5313';

------------------------------------------------------------------
--stats de CUSTOMER
SELECT table_name "name", blocks "blocks", num_rows "Tuplas"
FROM   all_tables
WHERE  table_name='CUSTOMER' and owner='CI5313';

-----------------------------------------------------------------
--stats de SUPPLIER
SELECT table_name "name", blocks "blocks", num_rows "Tuplas"
FROM   all_tables
WHERE  table_name='SUPPLIER' and owner='CI5313';

-----------------------------------------------------------------
--stats de PART
SELECT table_name "name", blocks "blocks", num_rows "Tuplas"
FROM   all_tables
WHERE  table_name='PART' and owner='CI5313';

-----------------------------------------------------------------
spool off; 
