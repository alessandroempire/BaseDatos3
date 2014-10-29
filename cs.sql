onsultas Proyecto Fase I - Tipo A (CI5313):

--------------------------------------------------------------------------------------------------
--Q1: Valor de los productos enviados de un país a otro 
select count (*) from(
select supp_nation, cust_nation, l_year, sum(volume) as revenue
from (select
n1.n_name as supp_nation,
n2.n_name as cust_nation,
extract(year from l_shipdate) as l_year,
l_extendedprice * (1 - l_discount) as volume
from supplier, lineitem, orders, customer, nation n1, nation n2
where 

select count(*) from (select * from CI5313.SUPPLIER,CI5313.lineitem where s_suppkey = l_suppkey)
#6001215

select count(*) from (select * from CI5313.orders,CI5313.lineitem where o_orderkey = l_orderkey)
#6001215

select count(*) from (select * from CI5313.customer,CI5313.orders where c_custkey = o_custkey);
#1500000

select count(*) from (select * from CI5313.supplier,CI5313.nation where s_nationkey = n_nationkey);
#10000

select count(*) from (select * from CI5313.customer,CI5313.nation where c_nationkey = n_nationkey);
#150000

select count(*) from (select * from CI5313.nation n1, CI5313.nation n2 where (n1.n_name = 'IRAN' and n2.n_name = 'CHINA') or (n1.n_name = 'CHINA' and n2.n_name = 'IRAN'));
#2/25= 8%


and ((n1.n_name = '&NATION1' and n2.n_name = '&NATION2'))
#25

El total de tuplas de Nations es (25/25)*100= 

or (n1.n_name = '&NATION2' and n2.n_name = '&NATION1'))
#25

select count(*) from (select * from CI5313.lineitem where l_shipdate between date '1995-01-01' and date '1996-12-31')
# 1828450/ 6001215 = 30.4%


--------------------------------------------------------------------------------------------------
--Q2: Prioridad de envío 


C_MKTSEGMENT = '&segment'
#5/5= 100%
select count(*) from (select * from CI5313.customer,CI5313.orders where c_custkey = o_custkey);
#1500000
select count(*) from (select * from CI5313.orders,CI5313.lineitem where o_orderkey = l_orderkey)
#6001215


O_ORDERDATE < '&date'
#2406/1500000= 0.16%
and L_SHIPDATE > '&date'
#2526/1500000= 0.16%






--------------------------------------------------------------------------------------------------
--Q3: Relación entre libros y fabricantes 

select count(*) from (select * from CI5313.part,CI5313.PARTSUPPLIER where P_PARTKEY = PS_PARTKEY);
# 800000
P_BRAND = '&brand' 
#25/200000=0.001%
P_TYPE like '&type' 
#150/200000=0.07%
PS_SUPPKEY not in (select S_SUPPKEY from SUPPLIER
where S_COMMENT like '%Customer%Complaints')
# 3804/800000= 0.4%

--------------------------------------------------------------------------------------------------
--Q4: Distribución de clientes 

#42/150000

from (select C_CUSTKEY, count(O_ORDERKEY) as C_COUNT
from CUSTOMER left outer join ORDERS on
C_CUSTKEY=O_CUSTKEY

--------------------------------------------------------------------------------------------------
--Q5: Proveedor con el menor precio 

select count(*) from (select * from CI5313.part,CI5313.PARTSUPPLIER where P_PARTKEY = PS_PARTKEY);
# 800000 
P_SIZE = &psize 
#50/  200000 = 0.02%
P_TYPE like '%&ptype' 
#150/ 200000 = 0.07%
R_NAME='&name' 
#5/5 100%

select count(*) from (select * from CI5313.SUPPLIER,CI5313.PARTSUPPLIER where PS_SUPPKEY = S_SUPPKEY);
#  800000



select count(*) from (select * from CI5313.supplier,CI5313.nation where s_nationkey = n_nationkey);
#10000

select count(*) from (select * from CI5313.REGION,CI5313.nation where N_REGIONKEY=R_REGIONKEY);
#25

PS_SUPPCOST=
select count(*) from (SELECT min(PS_SUPPCOST)
from CI5313.PARTSUPPLIER I
where PS_PARTKEY=PS_PARTKEY);
#1/800000= 0.000125 %

