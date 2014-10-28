define FILE=dSpool.sql

set ECHO OFF;
SET PAGESIZE 100;
SET LINESIZE 80;
SET VERIFY OFF;
COLUMN * FORMAT A24 JUSTIFY LEFT;
--SET HEADING OFF;

spool &FILE



--------------------------------------
--tabla REGION

EXECUTE DBMS_STATS.GATHER_TABLE_STATS( 'ci5313', 'REGION', method_opt => 'for all columns size skewonly');


SELECT column_name "Column name", 
       num_distinct "Num distinct", histogram "Histogram"
FROM   all_tab_columns
WHERE  table_name = 'REGION' and owner='CI5313';

set COLSEP '|'

SELECT table_name "name", blocks "blocks", num_rows "Tuplas"
FROM   all_tables
WHERE  table_name='REGION' and owner='CI5313';


/*
select distinct r.R_REGIONKEY, COUNT(*) as numInstances
from ci5313.REGION r
group by r.R_REGIONKEY;
*/

spool off;
--SET HEADING ON; 
