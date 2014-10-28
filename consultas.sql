--Consultas Proyecto Fase I - Tipo A (CI5313):

--------------------------------------------------------------------------------------------------
--Q1: Valor de los productos enviados de un país a otro 

select supp_nation, cust_nation, l_year, sum(volume) as revenue
from (select
n1.n_name as supp_nation,
n2.n_name as cust_nation,
extract(year from l_shipdate) as l_year,
l_extendedprice * (1 - l_discount) as volume
from supplier, lineitem, orders, customer, nation n1, nation n2
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
l_year;

--------------------------------------------------------------------------------------------------
--Q2: Prioridad de envío 

select L_ORDERKEY, sum(L_EXTENDEDPRICE*(1-L_DISCOUNT)) as REVENUE,
O_ORDERDATE,
O_SHIPPRIORITY
from CUSTOMER, ORDERS, LINEITEM
where C_MKTSEGMENT = '&segment'
and C_CUSTKEY = O_CUSTKEY
and L_ORDERKEY = O_ORDERKEY
and O_ORDERDATE < '&date'
and L_SHIPDATE > '&date'
group by
L_ORDERKEY, O_ORDERDATE, O_SHIPPRIORITY
order by
REVENUE desc, O_ORDERDATE;

--------------------------------------------------------------------------------------------------
--Q3: Relación entre libros y fabricantes 

select P_BRAND, P_TYPE, count(distinct PS_SUPPKEY) as SUPPLIER_CNT
from PARTSUPPLIER, PART
where P_PARTKEY = PS_PARTKEY and
P_BRAND = '&brand' and
P_TYPE like '&type' and
PS_SUPPKEY not in (select S_SUPPKEY from SUPPLIER
where S_COMMENT like '%Customer%Complaints')
group by
P_BRAND, P_TYPE
order by
SUPPLIER_CNT desc, P_BRAND, P_TYPE;

--------------------------------------------------------------------------------------------------
--Q4: Distribución de clientes 

select C_COUNT, count(*) as CUSTDIST
from (select C_CUSTKEY, count(O_ORDERKEY) as C_COUNT
from CUSTOMER left outer join ORDERS on
C_CUSTKEY=O_CUSTKEY
group by C_CUSTKEY)
C_ORDERS
group by
C_COUNT
order by
CUSTDIST desc, C_COUNT desc;

--------------------------------------------------------------------------------------------------
--Q5: Proveedor con el menor precio 

select PS_SUPPKEY, S_NAME, S_NATIONKEY, S_PHONE, PS_SUPPCOST
from PARTSUPPLIER E, SUPPLIER, NATION, REGION, PART
where PS_PARTKEY=P_PARTKEY and
P_SIZE = &psize and
P_TYPE like '%&ptype' and
R_NAME='&name' and
PS_SUPPKEY = S_SUPPKEY and
S_NATIONKEY = N_NATIONKEY and
N_REGIONKEY=R_REGIONKEY and
PS_SUPPCOST=
(SELECT min( PS_SUPPCOST)
from PARTSUPPLIER I
where E.PS_PARTKEY=I.PS_PARTKEY);

--------------------------------------------------------------------------------------------------
