define FILE=straceSpool.sql
spool &FILE

--Consultas Proyecto Fase I - Tipo A (CI5313):

--------------------------------------------------------------------------------------------------
--Q1: Valor de los productos enviados de un país a otro 

set autotrace on statistics;

select count(*) from (
select supp_nation, cust_nation, l_year, sum(volume) as revenue
from (select
n1.n_name as supp_nation,
n2.n_name as cust_nation,
extract(year from l_shipdate) as l_year,
l_extendedprice * (1 - l_discount) as volume
from CI5313.supplier, CI5313.lineitem, CI5313.orders, CI5313.customer, CI5313.nation n1, CI5313.nation n2
where s_suppkey = l_suppkey
and o_orderkey = l_orderkey
and c_custkey = o_custkey
and s_nationkey = n1.n_nationkey
and c_nationkey = n2.n_nationkey
and ((n1.n_name = '&NATION1' and n2.n_name = '&NATION2')
or (n1.n_name = '&NATION2' and n2.n_name = '&NATION1'))
and l_shipdate between date '1995-01-01' and date '1996-12-31')
group by supp_nation,
cust_nation,
l_year
order by supp_nation,
cust_nation,
l_year);

set autotrace off;
--------------------------------------------------------------------------------------------------
--Q2: Prioridad de envío 

set autotrace on statistics;

select count(*) from (
select L_ORDERKEY, sum(L_EXTENDEDPRICE*(1-L_DISCOUNT)) as REVENUE,
O_ORDERDATE,
O_SHIPPRIORITY
from CI5313.CUSTOMER, CI5313.ORDERS, CI5313.LINEITEM
where C_MKTSEGMENT = '&segment'
and C_CUSTKEY = O_CUSTKEY
and L_ORDERKEY = O_ORDERKEY
and O_ORDERDATE < '&date'
and L_SHIPDATE > '&date'
group by
L_ORDERKEY, O_ORDERDATE, O_SHIPPRIORITY
order by
REVENUE desc, O_ORDERDATE);

set autotrace off; 
--------------------------------------------------------------------------------------------------
--Q3: Relación entre libros y fabricantes 

set autotrace on statistics;

select count(*) from (
select P_BRAND, P_TYPE, count(distinct PS_SUPPKEY) as SUPPLIER_CNT
from CI5313.PARTSUPPLIER, CI5313.PART
where P_PARTKEY = PS_PARTKEY and
P_BRAND = '&brand' and
P_TYPE like '&type' and
PS_SUPPKEY not in (select S_SUPPKEY from CI5313.SUPPLIER
where S_COMMENT like '%Customer%Complaints')
group by
P_BRAND, P_TYPE
order by
SUPPLIER_CNT desc, P_BRAND, P_TYPE);

set autotrace off;
--------------------------------------------------------------------------------------------------
--Q4: Distribución de clientes 

set autotrace on statistics;

select count(*) from (
select C_COUNT, count(*) as CUSTDIST
from (select C_CUSTKEY, count(O_ORDERKEY) as C_COUNT
from CI5313.CUSTOMER left outer join CI5313.ORDERS on
C_CUSTKEY=O_CUSTKEY
group by C_CUSTKEY)
C_ORDERS
group by
C_COUNT
order by
CUSTDIST desc, C_COUNT desc);

set autotrace off; 

--------------------------------------------------------------------------------------------------
--Q5: Proveedor con el menor precio 

set autotrace on statistics;

select count(*) from (
select PS_SUPPKEY, S_NAME, S_NATIONKEY, S_PHONE, PS_SUPPCOST
from CI5313.PARTSUPPLIER E, CI5313.SUPPLIER, CI5313.NATION, CI5313.REGION, CI5313.PART
where PS_PARTKEY=P_PARTKEY and
P_SIZE = &psize and
P_TYPE like '%&ptype' and
R_NAME='&name' and
PS_SUPPKEY = S_SUPPKEY and
S_NATIONKEY = N_NATIONKEY and
N_REGIONKEY=R_REGIONKEY and
PS_SUPPCOST=
(SELECT min( PS_SUPPCOST)
from CI5313.PARTSUPPLIER I
where E.PS_PARTKEY=I.PS_PARTKEY));

set autotrace off;
---------------------------------------------------------------------
spool off;

