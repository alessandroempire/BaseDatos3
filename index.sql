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
   Creamos un indice arbol B+ sobre el atributo n_name de la tabla
   NATIONS
*/
create index n_name_idx on nations(n_name);

/*
  Creamos un indice Bitmap sobre el atributo c_mktsegment de la 
  tabla customers (ver lamina de porque)
*/
create bitmap index c_mktsegment_idx on customers(c_mktsegment);

/*
   Creamos un indice B+ sobre el atributo o_orderdate de la
   tabla orderss
*/
create index o_orderdate_idx on orderss(o_orderdate);

/*
   Creamos un indice bitmap sobre el atributo p_brand de la 
   tabla part
*/
create bitmap index p_brand_idx on part(p_brand);

/*
   Creamos un indice bitmap sobre el atributo p_type de la 
   tabla part
*/
create bitmap index p_type_idx on part(p_type);

/*
   Creamos un indice B+ sobre el atributo s_comment de la 
   tabla supplier
*/
create index s_comment_idx on suppliers(s_commnet);

/*
   Creamos un indice bitmap sobre p_size de la tabla part
*/
create bitmap index p_size_idx on part(p_size);

/*
  No es necesario un indice sobre r_name porque el numero de
  tuplas es muy bajo
*/

spool off; 
