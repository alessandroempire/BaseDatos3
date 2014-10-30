define FILE=histogramSpool.sql
spool &file
set lines 50
set trimout on
set space 1 
set tab off

--------------------------------------------------------------
select table_name "table name",
       column_name "columna",
       endpoint_number "number",
       endpoint_value "value"
from ALL_TAB_HISTOGRAMS
where owner = 'CI5313' and table_name='NATION';

---------------------------------------------------------------
select table_name "table name",
       column_name "columna",
       endpoint_number "number",
       endpoint_value "value"
from ALL_TAB_HISTOGRAMS
where owner = 'CI5313' and table_name='REGION';
-----------------------------------------------------------------
select table_name "table name",
       column_name "columna",
       endpoint_number "number",
       endpoint_value "value"
from ALL_TAB_HISTOGRAMS
where owner = 'CI5313' and table_name='LINEITEM';
-----------------------------------------------------------------
select table_name "table name",
       column_name "columna",
       endpoint_number "number",
       endpoint_value "value"
from ALL_TAB_HISTOGRAMS
where owner = 'CI5313' and table_name='ORDERS';
----------------------------------------------------------------
select table_name "table name",
       column_name "columna",
       endpoint_number "number",
       endpoint_value "value"
from ALL_TAB_HISTOGRAMS
where owner = 'CI5313' and table_name='PARTSUPPLIER';
---------------------------------------------------------------
select table_name "table name",
       column_name "columna",
       endpoint_number "number",
       endpoint_value "value"
from ALL_TAB_HISTOGRAMS
where owner = 'CI5313' and table_name='CUSTOMER';
---------------------------------------------------------------
select table_name "table name",
       column_name "columna",
       endpoint_number "number",
       endpoint_value "value"
from ALL_TAB_HISTOGRAMS
where owner = 'CI5313' and table_name='SUPPLIER';
-----------------------------------------------------------------
select table_name "table name",
       column_name "columna",
       endpoint_number "number",
       endpoint_value "value"
from ALL_TAB_HISTOGRAMS
where owner = 'CI5313' and table_name='PART';
--------------------------------------------------------------
spool off; 
