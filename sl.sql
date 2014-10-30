define FILE=slSpool.sql
spool &FILE

set line 256
set trimout on
set space 1
set tab off


--Selectividad condiciondes Q3
select count(*) from (select * from CI5313.part where P_BRAND = 'Brand#51'); 
----(7920/200000)*100=3.96% 
select count(*) from (select * from CI5313.part where P_TYPE like 'STANDARD PLATED COPPER' ); 
----(1354/200000)*100=0.67%

--Selectividad condiciones Q5

select count(*) from (select * from CI5313.part where P_SIZE = '6'); 
--- (3964/200000)*100=1.9% de tuplas filtradas

select count(*) from (select * from CI5313.part where P_TYPE like 'PROMO PLATED STEEL');  
--- (1354/200000)*100=0.677

spool off;