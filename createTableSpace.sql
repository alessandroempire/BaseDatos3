define FILE=tableSpaceSpool.sql
spool &FILE

----- creamos el tableSpace para nation y regions
create tablespace "CAT1"
datafile 'tablespace/rosetta/rosetta/cat1.dbf' SIZE 8 KB
AUTOEXTEND OFF
LOGGING ONLINE PERMANENT
EXTENT MANAGEMENT LOCAL SIZE 128 K
SEGMENT SPACE MANAGEMENT MANUAL;

--la suma de todas las tablas (menos nations y regions es 1079 MB)
create tablespace "CAT2"
datafile 'tablespace/rosetta/rosetta/cat2.dbf' size 2 GB
AUTOEXTEND ON NEXT ? MAXSIZE 4 GB
LOGGING ONLINE PERMANENT
EXTENT MANAGMENT LOCAL SIZE 4 MB
SEGMENT SPACE MANAGMENT MANUAL

spool off; 
