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
  Creamos un indice compuesto bitmap para la consulta Q3,
  se coloca p_type primero porque es mas selectivo que p_brand
*/
--create bitmap index p_type_p_bran_idx on part(p_type, p_brand);

/*
  Creamos un indice compuesto bitmap sobre la consulta Q5,
  se coloca p_type primero porque es mas selectivo que p_size
*/
--create bitmap index p_type_p_size_idx on part(p_type, p_size);

# Los indices bitmap simples
create bitmap index p_type_idx on part(p_type);
create bitmap index p_size_idx on part(p_size);
create bitmap index p_brand_idx on part(p_brand); 

/*
   Creamos un indice B+ sobre el atributo s_comment de la 
   tabla supplier
*/
create index s_comment_idx on suppliers(s_comment);

/*
  No es necesario un indice sobre r_name porque el numero de
  tuplas es muy bajo
*/

spool off; 
