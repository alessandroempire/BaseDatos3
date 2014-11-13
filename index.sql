define FILE=indexSpool.sql
spool &file
set lines 250
set trimout on
set space 1
set tab off

-- Indices sobre tabla PART
-- Los indices bitmap simples
--create bitmap index p_type_idx on part(p_type);
--create bitmap index p_size_idx on part(p_size);
--create bitmap index p_brand_idx on part(p_brand); 

--create index p_type_idxb_ on part(p_type);
--create index p_size_idxb on part(p_size);
--create index p_brand_idxb on part(p_brand); 

create index p_compuestoA on part(p_type, p_size);
create index p_compuestoB on part(p_type, p_brand);

-- Indices sobre tabla LINEITEM
-- Cremaos index B+ sobre l_shipdate
create index l_shipdate_idx on lineitem(l_shipdate);

-- Indices sobre tabla CUSTOMER
-- Indce Bitmap sobre atributo c_mktsegment
create bitmap index c_mktsegment_idx on customer(c_mktsegment);

-- Indice sobre la tabla ORDERS
-- Indice B+
create index o_orderdate_idx on orders(o_orderdate);

-- Indice sobre tabla partsupplier
-- Indice B+ sobre atributo s_comment
--create index s_comment_idx on supplier(s_comment); no vale la pena?
create index ps_suppcost_idx on partsupplier(ps_suppcost);

/*
  Indice sobre tabla REGION
  No es necesario un indice sobre r_name porque el numero de
  tuplas es muy bajo
  No creamos indices en la tabla REGION porque tiene apenas 5 tuplas
  Entonces la tabla entera se puede cargar en memoria
*/

/*
  Indice sobre tabla NATION
  No crearemos un indice sobre la tabla NATION porque tiene apenas 25 tuplas
  y por tanto la tabla entera se puede cargar en memoria
*/

spool off; 
