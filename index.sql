define FILE=indexSpool.sql
spool &file
set lines 250
set trimout on
set space 1
set tab off

/*
   Creamos un index B+ sobre el atributo l_shipdate de la tabla
   lineitems
*/
create index l_shipdate_idx on lineitems(l_shipdate);

/*
   Creamos un indice Hash sobre el atributo n_name de la tabla
   NATIONS 
*/
create index n_name_idx on nations(n_name);

/*
  Creamos un indice Hash sobre el atributo c_mktsegment de la 
  tabla customers
*/
create index c_mktsegment_idx on customers(c_mktsegment);

/*
   Creamos un indice B+ sobre el atributo o_orderdate de la
   tabla orderss
*/
create index o_orderdate_idx on orderss(o_orderdate);

spool off; 
