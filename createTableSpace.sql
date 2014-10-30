define FILE=tableSpaceSpool.sql
spool &FILE

----- creamos el tableSpace para nation y regions
create tablespace "CAT1"
datafile '/tablespace/rosetta/rosetta/catdb1.dbf' SIZE 1M
AUTOEXTEND OFF
LOGGING ONLINE PERMANENT
EXTENT MANAGEMENT LOCAL UNIFORM SIZE 128 K 
SEGMENT SPACE MANAGEMENT MANUAL;


--la suma de todas las tablas (menos nations y regions es 1079 MB)
create tablespace "CAT2"
datafile '/tablespace/rosetta/rosetta/catdb2.dbf' size 2 G
AUTOEXTEND ON NEXT 4M MAXSIZE 3 G
LOGGING ONLINE PERMANENT
EXTENT MANAGEMENT LOCAL
SEGMENT SPACE MANAGEMENT MANUAL;

spool off; 
