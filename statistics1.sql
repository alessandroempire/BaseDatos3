define FILE=statistics1Spool.sql
spool &file
set lines 356
set trimout on
set space 1 
set tab off

--------------------------------------------------------------
--Stats de NATION
SELECT table_name "name",blocks "blocks", num_rows "Tuplas",
       round((num_rows*avg_row_len)/(1024)) KB
FROM   all_tables
WHERE  table_name='NATION' and owner='CI5313' and num_rows > 0;

-----------------------------------------------------------------
--Stats de REGION
SELECT table_name "name", blocks "blocks", num_rows "Tuplas",
       round((num_rows*avg_row_len)) B
FROM   all_tables
WHERE  table_name='REGION' and owner='CI5313';

-----------------------------------------------------------------
--stats de LINEITEM
SELECT table_name "name", blocks "blocks", num_rows "Tuplas",
       round((num_rows*avg_row_len)/(1024*1024)) MB
FROM   all_tables
WHERE  table_name='LINEITEM' and owner='CI5313';

-----------------------------------------------------------------
--stats de ORDERS
SELECT table_name "name", blocks "blocks", num_rows "Tuplas",
        round((num_rows*avg_row_len)/(1024*1024)) MB
FROM   all_tables
WHERE  table_name='ORDERS' and owner='CI5313';

-----------------------------------------------------------------
--stats de PARTSUPPLIER
SELECT table_name "name", blocks "blocks", num_rows "Tuplas",
       round((num_rows*avg_row_len)/(1024*1024)) MB
FROM   all_tables
WHERE  table_name='PARTSUPPLIER' and owner='CI5313';

------------------------------------------------------------------
--stats de CUSTOMER
SELECT table_name "name", blocks "blocks", num_rows "Tuplas",
       round((num_rows*avg_row_len)/(1024*1024)) MB
FROM   all_tables
WHERE  table_name='CUSTOMER' and owner='CI5313';

-----------------------------------------------------------------
--stats de SUPPLIER
SELECT table_name "name", blocks "blocks", num_rows "Tuplas",
       round((num_rows*avg_row_len)/(1024*1024)) MB
FROM   all_tables
WHERE  table_name='SUPPLIER' and owner='CI5313';

-----------------------------------------------------------------
--stats de PART
SELECT table_name "name", blocks "blocks", num_rows "Tuplas",
       round((num_rows*avg_row_len)/(1024*1024)) MB
FROM   all_tables
WHERE  table_name='PART' and owner='CI5313';

-----------------------------------------------------------------
spool off; 
