define FILE=dvalSpool.sql
spool &FILE

set line 256
set trimout on
set space 1
set tab off

--Contar los valores de cada columna de la TABLA REGION
select count(distinct R_REGIONKEY) from CI5313.REGION;
select count(distinct R_NAME) from CI5313.REGION;
select count(distinct  R_COMMENT ) from CI5313.REGION;


--Contar los valores de cada columna de la TABLA NATION
select count(distinct  N_NATIONKEY) from CI5313.NATION;
select count(distinct  N_NAME) from CI5313.NATION;
select count(distinct  N_REGIONKEY) from CI5313.NATION;
select count(distinct  N_COMMENT) from CI5313.NATION;


--Contar los valores de cada columna de la TABLA PART
select count(distinct  P_PARTKEY) from CI5313.PART;
select count(distinct  P_NAME) from CI5313.PART;
select count(distinct  P_MFGR) from CI5313.PART;
select count(distinct  P_BRAND) from CI5313.PART;
select count(distinct  P_TYPE) from CI5313.PART;
select count(distinct  P_SIZE) from CI5313.PART;
select count(distinct  P_CONTAINER) from CI5313.PART;
select count(distinct  P_RETAILPRICE) from CI5313.PART;
select count(distinct  P_COMMENT) from CI5313.PART;

--Contar los valores de cada columna de la TABLA SUPPLIER
select count(distinct  S_SUPPKEY) from CI5313.SUPPLIER;       
select count(distinct  S_NAME) from CI5313.SUPPLIER; 
select count(distinct  S_ADDRESS) from CI5313.SUPPLIER; 
select count(distinct  S_NATIONKEY) from CI5313.SUPPLIER; 
select count(distinct  S_PHONE) from CI5313.SUPPLIER; 
select count(distinct  S_ACCTBAL) from CI5313.SUPPLIER; 
select count(distinct  S_COMMENT) from CI5313.SUPPLIER; 


--Contar los valores de cada columna de la TABLA PARTSUPPLIER
select count(distinct  PS_PARTKEY) from CI5313.PARTSUPPLIER;
select count(distinct  PS_SUPPKEY) from CI5313.PARTSUPPLIER;
select count(distinct  PS_AVAILQTY) from CI5313.PARTSUPPLIER;
select count(distinct  PS_SUPPCOST) from CI5313.PARTSUPPLIER;
select count(distinct  PS_COMMENT) from CI5313.PARTSUPPLIER;


--Contar los valores de cada columna de la TABLA CUSTOMER
select count(distinct  C_CUSTKEY) from CI5313.CUSTOMER;
select count(distinct  C_NAME ) from CI5313.CUSTOMER;
select count(distinct  C_ADDRESS) from CI5313.CUSTOMER;
select count(distinct  C_NATIONKEY) from CI5313.CUSTOMER;
select count(distinct  C_PHONE ) from CI5313.CUSTOMER;
select count(distinct  C_ACCTBAL) from CI5313.CUSTOMER;
select count(distinct  C_MKTSEGMENT ) from CI5313.CUSTOMER;


--Contar los valores de cada columna de la TABLA ORDERS
select count(distinct  O_ORDERKEY) from CI5313.ORDERS;
select count(distinct  O_CUSTKEY ) from CI5313.ORDERS;
select count(distinct  O_ORDERSTATUS) from CI5313.ORDERS;
select count(distinct  O_TOTALPRICE ) from CI5313.ORDERS;
select count(distinct  O_ORDERDATE) from CI5313.ORDERS;
select count(distinct  O_ORDERPRIORITY ) from CI5313.ORDERS;
select count(distinct  O_CLERK ) from CI5313.ORDERS;
select count(distinct  O_SHIPPRIORITY) from CI5313.ORDERS;
select count(distinct  O_COMMENT ) from CI5313.ORDERS;



--Contar los valores de cada columna de la TABLA LINEITEM
select count(distinct  L_ORDERKEY) from CI5313.LINEITEM;
select count(distinct  L_PARTKEY ) from CI5313.LINEITEM;
select count(distinct  L_SUPPKEY) from CI5313.LINEITEM;
select count(distinct  L_LINENUMBER) from CI5313.LINEITEM;
select count(distinct  L_QUANTITY) from CI5313.LINEITEM;
select count(distinct  L_EXTENDEDPRICE) from CI5313.LINEITEM;
select count(distinct  L_DISCOUNT) from CI5313.LINEITEM;
select count(distinct  L_TAX  ) from CI5313.LINEITEM;
select count(distinct  L_RETURNFLAG) from CI5313.LINEITEM;
select count(distinct  L_LINESTATUS) from CI5313.LINEITEM;
select count(distinct  L_SHIPDATE ) from CI5313.LINEITEM;
select count(distinct  L_COMMITDATE) from CI5313.LINEITEM;
select count(distinct  L_RECEIPTDATE ) from CI5313.LINEITEM;
select count(distinct  L_SHIPINSTRUCT ) from CI5313.LINEITEM;
select count(distinct  L_SHIPMODE) from CI5313.LINEITEM;
select count(distinct  L_COMMENT ) from CI5313.LINEITEM;

spool off;

