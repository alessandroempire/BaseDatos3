define FILE=statisticsSpool.sql
spool &file
set lines 250
set trimout on
set space 1 
set tab off

--------------------------------------------------------------
--Stats de NATION
execute DBMS_STATS.GATHER_TABLE_STATS('ci5313', 'NATION')

select column_name "column name", num_distinct "num distinct",
       nullable "nulidad", histogram "histogram"
from   all_tab_columns
where  table_name='NATION' and owner='CI5313';


-----------------------------------------------------------------
--Stats de REGION

execute DBMS_STATS.GATHER_TABLE_STATS('ci5313', 'REGION')

select column_name "column name", num_distinct "num distinct",
       nullable "nulidad", histogram "histogram"
from   all_tab_columns
where  table_name='REGION' and owner='CI5313';

-----------------------------------------------------------------
--stats de LINEITEM
execute DBMS_STATS.GATHER_TABLE_STATS('ci5313', 'LINEITEM')

select column_name "column name", num_distinct "num distinct",
       nullable "nulidad", histogram "histogram"
from   all_tab_columns
where  table_name='LINEITEM' and owner='CI5313';

-----------------------------------------------------------------
--stats de ORDERS
execute DBMS_STATS.GATHER_TABLE_STATS('ci5313', 'ORDERS')

select column_name "column name", num_distinct "num distinct",
       nullable "nulidad", histogram "histogram"
from   all_tab_columns
where  table_name='ORDERS' and owner='CI5313';

-----------------------------------------------------------------
--stats de PARTSUPPLIER
execute DBMS_STATS.GATHER_TABLE_STATS('ci5313', 'PARTSUPPLIER')

select column_name "column name", num_distinct "num distinct",
       nullable "nulidad", histogram "histogram"
from   all_tab_columns
where  table_name='PARTSUPPLIER' and owner='CI5313';

------------------------------------------------------------------
--stats de CUSTOMER
execute DBMS_STATS.GATHER_TABLE_STATS('ci5313', 'CUSTOMER')

select column_name "column name", num_distinct "num distinct",
       nullable "nulidad", histogram "histogram"
from   all_tab_columns
where  table_name='CUSTOMER' and owner='CI5313';
-----------------------------------------------------------------
--stats de SUPPLIER
execute DBMS_STATS.GATHER_TABLE_STATS('ci5313', 'SUPPLIER')

select column_name "column name", num_distinct "num distinct",
       nullable "nulidad", histogram "histogram"
from   all_tab_columns
where  table_name='SUPPLIER' and owner='CI5313';

-----------------------------------------------------------------
--stats de PART
execute DBMS_STATS.GATHER_TABLE_STATS('ci5313', 'PART')

select column_name "column name", num_distinct "num distinct",
       nullable "nulidad", histogram "histogram"
from   all_tab_columns
where  table_name='PART' and owner='CI5313';

-----------------------------------------------------------------
spool off; 
