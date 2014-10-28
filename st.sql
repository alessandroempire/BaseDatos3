define FILE=stSpool.sql
spool &file
set lines 356
set trimout on
set space 1 
set tab off

--------------------------------------------------------------
--Stats de NATION
execute DBMS_STATS.GATHER_TABLE_STATS('ci5313', 'NATION')

select table_name "nombre tabla" ,
       blocks "blocks", num_rows "num rows"
from all_tables
where table_name='NATION' and owner='CI5313';

select column_name "column name", num_distinct "num distinct",
       nullable "nulidad", histogram "histogram"
from   all_tab_columns
where  table_name='NATION' and owner='CI5313';

select table_name "table name",
       column_name "columna",
       endpoint_number "number",
       endpoint_value "value"
from ALL_TAB_HISTOGRAMS
where owner = 'CI5313' and table_name='NATION';
-----------------------------------------------------------------
--Stats de REGION

execute DBMS_STATS.GATHER_TABLE_STATS('ci5313', 'REGION')

select table_name "nombre tabla" ,
       blocks "blocks", num_rows "num rows"
from all_tables
where table_name='REGION' and owner='CI5313';

select column_name "column name", num_distinct "num distinct",
       nullable "nulidad", histogram "histogram"
from   all_tab_columns
where  table_name='REGION' and owner='CI5313';

select table_name "table name",
       column_name "columna",
       endpoint_number "number",
       endpoint_value "value"
from ALL_TAB_HISTOGRAMS
where owner = 'CI5313' and table_name='REGION';
-----------------------------------------------------------------

execute DBMS_STATS.GATHER_TABLE_STATS('ci5313', 'LINEITEM')

select table_name "nombre tabla" ,
       blocks "blocks", num_rows "num rows"
from all_tables
where table_name='LINEITEM' and owner='CI5313';

select column_name "column name", num_distinct "num distinct",
       nullable "nulidad", histogram "histogram"
from   all_tab_columns
where  table_name='LINEITEM' and owner='CI5313';

select table_name "table name",
       column_name "columna",
       endpoint_number "number",
       endpoint_value "value"
from ALL_TAB_HISTOGRAMS
where owner = 'CI5313' and table_name='LINEITEM';
-----------------------------------------------------------------

execute DBMS_STATS.GATHER_TABLE_STATS('ci5313', 'ORDERS')

select table_name "nombre tabla" ,
       blocks "blocks", num_rows "num rows"
from all_tables
where table_name='ORDERS' and owner='CI5313';

select column_name "column name", num_distinct "num distinct",
       nullable "nulidad", histogram "histogram"
from   all_tab_columns
where  table_name='ORDERS' and owner='CI5313';

select table_name "table name",
       column_name "columna",
       endpoint_number "number",
       endpoint_value "value"
from ALL_TAB_HISTOGRAMS
where owner = 'CI5313' and table_name='ORDERS';
-----------------------------------------------------------------

execute DBMS_STATS.GATHER_TABLE_STATS('ci5313', 'PARTSUPPLIER')

select table_name "nombre tabla" ,
       blocks "blocks", num_rows "num rows"
from all_tables
where table_name='PARTSUPPLIER' and owner='CI5313';

select column_name "column name", num_distinct "num distinct",
       nullable "nulidad", histogram "histogram"
from   all_tab_columns
where  table_name='PARTSUPPLIER' and owner='CI5313';

select table_name "table name",
       column_name "columna",
       endpoint_number "number",
       endpoint_value "value"
from ALL_TAB_HISTOGRAMS
where owner = 'CI5313' and table_name='PARTSUPPLIER';

------------------------------------------------------------------

execute DBMS_STATS.GATHER_TABLE_STATS('ci5313', 'CUSTOMER')

select table_name "nombre tabla" ,
       blocks "blocks", num_rows "num rows"
from all_tables
where table_name='CUSTOMER' and owner='CI5313';

select column_name "column name", num_distinct "num distinct",
       nullable "nulidad", histogram "histogram"
from   all_tab_columns
where  table_name='CUSTOMER' and owner='CI5313';

select table_name "table name",
       column_name "columna",
       endpoint_number "number",
       endpoint_value "value"
from ALL_TAB_HISTOGRAMS
where owner = 'CI5313' and table_name='CUSTOMER';
-----------------------------------------------------------------

execute DBMS_STATS.GATHER_TABLE_STATS('ci5313', 'SUPPLIER')

select table_name "nombre tabla" ,
       blocks "blocks", num_rows "num rows"
from all_tables
where table_name='SUPPLIER' and owner='CI5313';

select column_name "column name", num_distinct "num distinct",
       nullable "nulidad", histogram "histogram"
from   all_tab_columns
where  table_name='SUPPLIER' and owner='CI5313';

select table_name "table name",
       column_name "columna",
       endpoint_number "number",
       endpoint_value "value"
from ALL_TAB_HISTOGRAMS
where owner = 'CI5313' and table_name='SUPPLIER';
-----------------------------------------------------------------

execute DBMS_STATS.GATHER_TABLE_STATS('ci5313', 'PART')

select table_name "nombre tabla" ,
        blocks "blocks", num_rows "num rows"
from all_tables
where table_name='PART' and owner='CI5313';

select column_name "column name", num_distinct "num distinct",
       nullable "nulidad", histogram "histogram"
from   all_tab_columns
where  table_name='PART' and owner='CI5313';

select table_name "table name",
       column_name "columna",
       endpoint_number "number",
       endpoint_value "value"
from ALL_TAB_HISTOGRAMS
where owner = 'CI5313' and table_name='PART';
----------------------------------------------------------------
spool off; 
