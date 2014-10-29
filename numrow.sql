 REGION        5              
       R_REGIONKEY  5 
       R_NAME       5
       R_COMMENT    5
       
       

TABLE NATIONS       25              
       N_NATIONKEY  25
       N_NAME       25
       N_REGIONKEY  5
       N_COMMENT    25
       
TABLA PART          200000
       P_PARTKEY    200000
       P_NAME       199932
       P_MFGR            5
       P_BRAND          25
       P_TYPE          150
       P_SIZE           50
       P_CONTAINER      40
       P_RETAILPRICE 20899
       P_COMMENT    131753
       


TABLA SUPPLIER      10000
       S_SUPPKEY    10000
       S_NAME       10000
       S_ADDRESS    10000
       S_NATIONKEY     25
       S_PHONE      10000
       S_ACCTBAL     9955
       S_COMMENT     9989
       
TABLA PARTSUPPLIER 800000
       PS_PARTKEY  200000
       PS_SUPPKEY   10000
       PS_AVAILQTY   9999
       PS_SUPPCOST  99865
       PS_COMMENT  747785
       
TABLA CUSTOMER     150000
       C_CUSTKEY   150000 
       C_NAME      150000 
       C_ADDRESS   150000 
       C_NATIONKEY     25
       C_PHONE     150000
       C_ACCTBAL   141408 
       C_MKTSEGMENT     5
       C_COMMENT   148896 
       
TABLA ORDERS             1500000
       O_ORDERKEY        1500000
       O_CUSTKEY          100712
       O_ORDERSTATUS           3
       O_TOTALPRICE      1456384
       O_ORDERDATE          2406
       O_ORDERPRIORITY         5
       O_CLERK              1000
       O_SHIPPRIORITY          1
       O_COMMENT         1472000
              

TABLA LINEITEM           6001215
       L_ORDERKEY        1479040
       L_PARTKEY          201968
       L_SUPPKEY           10000  
       L_LINENUMBER            7
       L_QUANTITY             50
       L_EXTENDEDPRICE    943232
       L_DISCOUNT             11
       L_TAX                   9
       L_RETURNFLAG            3
       L_LINESTATUS            2
       L_SHIPDATE           2526
       L_COMMITDATE         2466
       L_RECEIPTDATE        2554
       L_SHIPINSTRUCT          4
       L_SHIPMODE              7
       L_COMMENT         4647936
       
