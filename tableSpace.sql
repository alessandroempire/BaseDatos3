define FILE=tableSpaceSpool.sql
spool &FILE

----- creamos el tableSpace para nation y regions
create tablespace "cat1"
datafile 'tablespace/rosetta/rosetta/cat1.dbf' SIZE ?
AUTOEXTEND OFF

spool off; 
