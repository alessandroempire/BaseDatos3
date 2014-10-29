define FILE = s.sql
spool &FILE

select count (*) from(
select supp_nation, cust_nation, l_year, sum(volume) as revenue
from (select
n1.n_name as supp_nation,
n2.n_name as cust_nation,
extract(year from l_shipdate) as l_year,
l_extendedprice * (1 - l_discount) as volume
from CI5313.supplier, 
     CI5313.lineitem, 
     CI5313.orders, 
     CI5313.customer, 
     CI5313.nation n1, 
     CI5313.nation n2
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

--------------------------------------------------------------------------------------------------
--Q2: Prioridad de envío 


select count (*) from(
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



spool off;
