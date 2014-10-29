define FILE=dba_segmentSpool.sql
spool &FILE

set line 256
set trimout on
set space 1
set tab off

select segment_name,
       bytes/1024/1024 "MB",
       blocks
from dba_segments
where owner='CI5313' and tablespace_name='TBS3' and
      segment_name='NATION';

------------------------------------------------------      
select segment_name,
       bytes/1024/1024 "MB",
       blocks
from dba_segments
where owner='CI5313' and tablespace_name='TBS3' and
      segment_name='REGION';

-------------------------------------------------------------
select segment_name,
       bytes/1024/1024 "MB",
       blocks
from dba_segments
where owner='CI5313' and tablespace_name='TBS3' and
      segment_name='LINEITEM';

-----------------------------------------------------------
select segment_name,
       bytes/1024/1024 "MB",
       blocks
from dba_segments
where owner='CI5313' and tablespace_name='TBS3' and
      segment_name='ORDERS';
      
---------------------------------------------------------------
select segment_name,
       bytes/1024/1024 "MB",
       blocks
from dba_segments
where owner='CI5313' and tablespace_name='TBS3' and
      segment_name='PARTSUPPLIER';

-----------------------------------------------------------      
select segment_name,
       bytes/1024/1024 "MB",
       blocks
from dba_segments
where owner='CI5313' and tablespace_name='TBS3' and
      segment_name='CUSTOMER';

-----------------------------------------------------------

select segment_name,
       bytes/1024/1024 "MB",
       blocks
from dba_segments
where owner='CI5313' and tablespace_name='TBS3' and
      segment_name='SUPPLIER';

------------------------------------------------------------
select segment_name,
       bytes/1024/1024 "MB",
       blocks
from dba_segments
where owner='CI5313' and tablespace_name='TBS3' and
      segment_name='PART';
     
spool off;
