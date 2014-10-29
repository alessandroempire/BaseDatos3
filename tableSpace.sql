define FILE=tableSpaceSpool.sql
spool &FILE

----- creamos el tableSpace para nation y regions
create tablespace "CAT1"
datafile 'tablespace/rosetta/rosetta/cat1.dbf' SIZE 1 MB
AUTOEXTEND OFF
PCTFREE 0
--BLOCKSIZE
--EXTENT_MANAGEMENT_CLAUSE UNIFORM SIZE 0.7
--SEGMENT_MANAGMENT_CLAUSE { AUTO | MANUAL }

create tablespace "CAT2"
datafile 'tablespace/rosetta/rosetta/cat2.dbf' size 1245 MB
--AUTOEXTEND OFF
--PCTUSED
--PCTFREE 
--BLOCKSIZE
--EXTENT_MANAGEMENT_CLAUSE LOCAL 
--SEGMENT_MANAGMENT_CLAUSE

spool off; 
