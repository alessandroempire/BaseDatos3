
Session altered.

Enter value for nation1: IRAN
Enter value for nation2: PERU
old  14: and ((n1.n_name = '&NATION1' and n2.n_name = '&NATION2')
new  14: and ((n1.n_name = 'IRAN' and n2.n_name = 'PERU')
Enter value for nation2: PERU
Enter value for nation1: IRAN
old  15: or (n1.n_name = '&NATION2' and n2.n_name = '&NATION1'))
new  15: or (n1.n_name = 'PERU' and n2.n_name = 'IRAN'))


Execution Plan
----------------------------------------------------------                      
Plan hash value: 1636081246                                                     
                                                                                
--------------------------------------------------------------------------------
---------------                                                                 
                                                                                
| Id  | Operation                  | Name     | Rows  | Bytes |TempSpc| Cost (%C
PU)| Time     |                                                                 
                                                                                
--------------------------------------------------------------------------------
---------------                                                                 
                                                                                
|   0 | SELECT STATEMENT           |          |     1 |       |       | 18620   
(1)| 00:03:44 |                                                                 
                                                                                
|   1 |  SORT AGGREGATE            |          |     1 |       |       |         
   |          |                                                                 
                                                                                
|   2 |   VIEW                     |          |    22M|       |       | 18620   
(1)| 00:03:44 |                                                                 
                                                                                
|   3 |    HASH GROUP BY           |          |    22M|  4622M|       |         
   |          |                                                                 
                                                                                
|   4 |     CONCATENATION          |          |       |       |       |         
   |          |                                                                 
                                                                                
|*  5 |      HASH JOIN             |          |    22M|  4622M|       | 14536   
(1)| 00:02:55 |                                                                 
                                                                                
|*  6 |       TABLE ACCESS FULL    | NATION   |     1 |    40 |       |     2   
(0)| 00:00:01 |                                                                 
                                                                                
|*  7 |       HASH JOIN            |          |  5532K|   944M|       | 14465   
(1)| 00:02:54 |                                                                 
                                                                                
|*  8 |        TABLE ACCESS FULL   | NATION   |     1 |    40 |       |     2   
(0)| 00:00:01 |                                                                 
                                                                                
|*  9 |        HASH JOIN           |          |  1383K|   183M|       | 14445   
(1)| 00:02:54 |                                                                 
                                                                                
|  10 |         TABLE ACCESS FULL  | SUPPLIER | 11178 |   283K|       |     2   
(0)| 00:00:01 |                                                                 
                                                                                
|* 11 |         HASH JOIN          |          |  1383K|   149M|  5216K| 14438   
(1)| 00:02:54 |                                                                 
                                                                                
|  12 |          TABLE ACCESS FULL | CUSTOMER |   140K|  3566K|       |     2   
(0)| 00:00:01 |                                                                 
                                                                                
|* 13 |          HASH JOIN         |          |  1383K|   114M|    58M|  7699   
(1)| 00:01:33 |                                                                 
                                                                                
|  14 |           TABLE ACCESS FULL| ORDERS   |  1615K|    40M|       |     4  (
50)| 00:00:01 |                                                                 
                                                                                
|* 15 |           TABLE ACCESS FULL| LINEITEM |  1383K|    80M|       |     2   
(0)| 00:00:01 |                                                                 
                                                                                
|* 16 |      HASH JOIN             |          |  2213 |   473K|       |  3984   
(1)| 00:00:48 |                                                                 
                                                                                
|* 17 |       TABLE ACCESS FULL    | NATION   |     1 |    40 |       |     2   
(0)| 00:00:01 |                                                                 
                                                                                
|* 18 |       HASH JOIN            |          | 55328 |  9671K|  5216K|  3982   
(1)| 00:00:48 |                                                                 
                                                                                
|  19 |        TABLE ACCESS FULL   | CUSTOMER |   140K|  3566K|       |     2   
(0)| 00:00:01 |                                                                 
                                                                                
|* 20 |        HASH JOIN           |          | 55328 |  8266K|  7512K|  3293   
(1)| 00:00:40 |                                                                 
                                                                                
|* 21 |         HASH JOIN          |          | 55328 |  6861K|       |    11  (
46)| 00:00:01 |                                                                 
                                                                                
|* 22 |          HASH JOIN         |          |   447 | 29502 |       |     5  (
20)| 00:00:01 |                                                                 
                                                                                
|* 23 |           TABLE ACCESS FULL| NATION   |     1 |    40 |       |     2   
(0)| 00:00:01 |                                                                 
                                                                                
|  24 |           TABLE ACCESS FULL| SUPPLIER | 11178 |   283K|       |     2   
(0)| 00:00:01 |                                                                 
                                                                                
|* 25 |          TABLE ACCESS FULL | LINEITEM |  1383K|    80M|       |     2   
(0)| 00:00:01 |                                                                 
                                                                                
|  26 |         TABLE ACCESS FULL  | ORDERS   |  1615K|    40M|       |     4  (
50)| 00:00:01 |                                                                 
                                                                                
--------------------------------------------------------------------------------
---------------                                                                 
                                                                                
                                                                                
Predicate Information (identified by operation id):                             
---------------------------------------------------                             
                                                                                
   5 - access("C_NATIONKEY"="N2"."N_NATIONKEY")                                 
   6 - filter("N2"."N_NAME"='IRAN' AND ("N2"."N_NAME"='IRAN' OR "N2"."N_NAME"='P
ERU'))                                                                          
                                                                                
   7 - access("S_NATIONKEY"="N1"."N_NATIONKEY")                                 
   8 - filter("N1"."N_NAME"='PERU' AND ("N1"."N_NAME"='IRAN' OR "N1"."N_NAME"='P
ERU'))                                                                          
                                                                                
   9 - access("S_SUPPKEY"="L_SUPPKEY")                                          
  11 - access("C_CUSTKEY"="O_CUSTKEY")                                          
  13 - access("O_ORDERKEY"="L_ORDERKEY")                                        
  15 - filter("L_SHIPDATE">=TO_DATE(' 1995-01-01 00:00:00', 'syyyy-mm-dd hh24:mi
:ss')                                                                           
                                                                                
              AND "L_SHIPDATE"<=TO_DATE(' 1996-12-31 00:00:00', 'syyyy-mm-dd hh2
4:mi:ss'))                                                                      
                                                                                
  16 - access("C_NATIONKEY"="N2"."N_NATIONKEY")                                 
  17 - filter("N2"."N_NAME"='PERU' AND ("N2"."N_NAME"='IRAN' OR "N2"."N_NAME"='P
ERU'))                                                                          
                                                                                
  18 - access("C_CUSTKEY"="O_CUSTKEY")                                          
  20 - access("O_ORDERKEY"="L_ORDERKEY")                                        
  21 - access("S_SUPPKEY"="L_SUPPKEY")                                          
  22 - access("S_NATIONKEY"="N1"."N_NATIONKEY")                                 
  23 - filter("N1"."N_NAME"='IRAN' AND ("N1"."N_NAME"='IRAN' OR "N1"."N_NAME"='P
ERU'))                                                                          
                                                                                
  25 - filter("L_SHIPDATE">=TO_DATE(' 1995-01-01 00:00:00', 'syyyy-mm-dd hh24:mi
:ss')                                                                           
                                                                                
              AND "L_SHIPDATE"<=TO_DATE(' 1996-12-31 00:00:00', 'syyyy-mm-dd hh2
4:mi:ss'))                                                                      
                                                                                
                                                                                
Note                                                                            
-----                                                                           
   - dynamic sampling used for this statement (level=2)                         


Statistics
----------------------------------------------------------                      
        102  recursive calls                                                    
          0  db block gets                                                      
     611930  consistent gets                                                    
     624056  physical reads                                                     
          0  redo size                                                          
        526  bytes sent via SQL*Net to client                                   
        523  bytes received via SQL*Net from client                             
          2  SQL*Net roundtrips to/from client                                  
          0  sorts (memory)                                                     
          0  sorts (disk)                                                       
          1  rows processed                                                     


Session altered.

Enter value for segment: MACHINERY
old   6: where C_MKTSEGMENT = '&segment'
new   6: where C_MKTSEGMENT = 'MACHINERY'
Enter value for date: 13-JAN-93
old   9: and O_ORDERDATE < '&date'
new   9: and O_ORDERDATE < '13-JAN-93'
Enter value for date: 13-JAN-94
old  10: and L_SHIPDATE > '&date'
new  10: and L_SHIPDATE > '13-JAN-94'


Execution Plan
----------------------------------------------------------                      
Plan hash value: 3456036882                                                     
                                                                                
--------------------------------------------------------------------------------
--------------------------                                                      
                                                                                
| Id  | Operation                          | Name        | Rows  | Bytes |TempSp
c| Cost (%CPU)| Time     |                                                      
                                                                                
--------------------------------------------------------------------------------
--------------------------                                                      
                                                                                
|   0 | SELECT STATEMENT                   |             |     1 |     4 |      
 | 18632   (1)| 00:03:44 |                                                      
                                                                                
|   1 |  SORT AGGREGATE                    |             |     1 |     4 |      
 |            |          |                                                      
                                                                                
|   2 |   VIEW                             |             |   236K|   923K|      
 | 18632   (1)| 00:03:44 |                                                      
                                                                                
|   3 |    HASH GROUP BY                   |             |   236K|    16M|      
 | 18632   (1)| 00:03:44 |                                                      
                                                                                
|   4 |     MERGE JOIN                     |             |   236K|    16M|      
 | 18625   (1)| 00:03:44 |                                                      
                                                                                
|   5 |      SORT JOIN                     |             |  3721K|    92M|      
 |   826   (0)| 00:00:10 |                                                      
                                                                                
|   6 |       VIEW                         | VW_GBC_11   |  3721K|    92M|      
 |   826   (0)| 00:00:10 |                                                      
                                                                                
|   7 |        HASH GROUP BY               |             |  3721K|   170M|      
 |   826   (0)| 00:00:10 |                                                      
                                                                                
|*  8 |         TABLE ACCESS BY INDEX ROWID| LINEITEM    |  3721K|   170M|      
 |   826   (0)| 00:00:10 |                                                      
                                                                                
|   9 |          INDEX FULL SCAN           | PK_LINEITEM |  5139K|       |      
 |    26   (0)| 00:00:01 |                                                      
                                                                                
|* 10 |      SORT JOIN                     |             |   100K|  4732K|    11
M| 17798   (1)| 00:03:34 |                                                      
                                                                                
|  11 |       VIEW                         | VW_GBF_12   |   100K|  4732K|      
 | 16592   (1)| 00:03:20 |                                                      
                                                                                
|  12 |        HASH GROUP BY               |             |   100K|  7197K|      
 | 16592   (1)| 00:03:20 |                                                      
                                                                                
|* 13 |         HASH JOIN                  |             |   100K|  7197K|  1032
K| 16588   (1)| 00:03:20 |                                                      
                                                                                
|* 14 |          TABLE ACCESS FULL         | CUSTOMER    | 28421 |   693K|      
 |   930   (1)| 00:00:12 |                                                      
                                                                                
|* 15 |          TABLE ACCESS FULL         | ORDERS      |   258K|    11M|      
 | 14873   (1)| 00:02:59 |                                                      
                                                                                
--------------------------------------------------------------------------------
--------------------------                                                      
                                                                                
                                                                                
Predicate Information (identified by operation id):                             
---------------------------------------------------                             
                                                                                
   8 - filter("L_SHIPDATE">'13-JAN-94')                                         
  10 - access("ITEM_1"="ITEM_1")                                                
       filter("ITEM_1"="ITEM_1")                                                
  13 - access("C_CUSTKEY"="O_CUSTKEY")                                          
  14 - filter("C_MKTSEGMENT"='MACHINERY')                                       
  15 - filter("O_ORDERDATE"<'13-JAN-93')                                        
                                                                                
Note                                                                            
-----                                                                           
   - dynamic sampling used for this statement (level=2)                         


Statistics
----------------------------------------------------------                      
         42  recursive calls                                                    
          6  db block gets                                                      
     319890  consistent gets                                                    
     325079  physical reads                                                     
          0  redo size                                                          
        525  bytes sent via SQL*Net to client                                   
        523  bytes received via SQL*Net from client                             
          2  SQL*Net roundtrips to/from client                                  
          1  sorts (memory)                                                     
          1  sorts (disk)                                                       
          1  rows processed                                                     


Session altered.

Enter value for brand: Brand#51
old   5: P_BRAND = '&brand' and
new   5: P_BRAND = 'Brand#51' and
Enter value for type: STANDARD PLATED COPPER
old   6: P_TYPE like '&type' and
new   6: P_TYPE like 'STANDARD PLATED COPPER' and


Execution Plan
----------------------------------------------------------                      
Plan hash value: 982015837                                                      
                                                                                
--------------------------------------------------------------------------------
-----------                                                                     
                                                                                
| Id  | Operation               | Name            | Rows  | Bytes | Cost (%CPU)|
 Time     |                                                                     
                                                                                
--------------------------------------------------------------------------------
-----------                                                                     
                                                                                
|   0 | SELECT STATEMENT        |                 |     1 |     2 |  1203   (1)|
 00:00:15 |                                                                     
                                                                                
|   1 |  SORT AGGREGATE         |                 |     1 |     2 |            |
          |                                                                     
                                                                                
|   2 |   VIEW                  |                 | 21420 | 42840 |  1203   (1)|
 00:00:15 |                                                                     
                                                                                
|   3 |    SORT GROUP BY        |                 | 21420 |  2719K|  1203   (1)|
 00:00:15 |                                                                     
                                                                                
|*  4 |     HASH JOIN RIGHT ANTI|                 | 21420 |  2719K|  1203   (1)|
 00:00:15 |                                                                     
                                                                                
|*  5 |      TABLE ACCESS FULL  | SUPPLIER        |   559 | 36335 |    58   (0)|
 00:00:01 |                                                                     
                                                                                
|   6 |      NESTED LOOPS       |                 | 21420 |  1359K|  1144   (1)|
 00:00:14 |                                                                     
                                                                                
|*  7 |       TABLE ACCESS FULL | PART            |    23 |   897 |  1029   (1)|
 00:00:13 |                                                                     
                                                                                
|*  8 |       INDEX RANGE SCAN  | PK_PARTSUPPLIER |   950 | 24700 |     5   (0)|
 00:00:01 |                                                                     
                                                                                
--------------------------------------------------------------------------------
-----------                                                                     
                                                                                
                                                                                
Predicate Information (identified by operation id):                             
---------------------------------------------------                             
                                                                                
   4 - access("PS_SUPPKEY"="S_SUPPKEY")                                         
   5 - filter("S_COMMENT" LIKE '%Customer%Complaints')                          
   7 - filter("P_TYPE"='STANDARD PLATED COPPER' AND "P_BRAND"='Brand#51')       
   8 - access("P_PARTKEY"="PS_PARTKEY")                                         
                                                                                
Note                                                                            
-----                                                                           
   - dynamic sampling used for this statement (level=2)                         


Statistics
----------------------------------------------------------                      
         10  recursive calls                                                    
          0  db block gets                                                      
       4316  consistent gets                                                    
       4908  physical reads                                                     
          0  redo size                                                          
        526  bytes sent via SQL*Net to client                                   
        523  bytes received via SQL*Net from client                             
          2  SQL*Net roundtrips to/from client                                  
          1  sorts (memory)                                                     
          0  sorts (disk)                                                       
          1  rows processed                                                     


Session altered.



Execution Plan
----------------------------------------------------------                      
Plan hash value: 3772661115                                                     
                                                                                
--------------------------------------------------------------------------------
------------------                                                              
                                                                                
| Id  | Operation                  | Name        | Rows  | Bytes |TempSpc| Cost 
(%CPU)| Time     |                                                              
                                                                                
--------------------------------------------------------------------------------
------------------                                                              
                                                                                
|   0 | SELECT STATEMENT           |             |     1 |       |       | 18109
   (1)| 00:03:38 |                                                              
                                                                                
|   1 |  SORT AGGREGATE            |             |     1 |       |       |      
      |          |                                                              
                                                                                
|   2 |   VIEW                     |             |  1615K|       |       | 18109
   (1)| 00:03:38 |                                                              
                                                                                
|   3 |    HASH GROUP BY           |             |  1615K|    20M|       | 18109
   (1)| 00:03:38 |                                                              
                                                                                
|   4 |     VIEW                   |             |  1615K|    20M|       | 18061
   (1)| 00:03:37 |                                                              
                                                                                
|   5 |      HASH GROUP BY         |             |  1615K|    60M|       | 18061
   (1)| 00:03:37 |                                                              
                                                                                
|*  6 |       HASH JOIN OUTER      |             |  1615K|    60M|  3432K| 18013
   (1)| 00:03:37 |                                                              
                                                                                
|   7 |        INDEX FAST FULL SCAN| PK_CUSTOMER |   140K|  1783K|       |    79
   (0)| 00:00:01 |                                                              
                                                                                
|   8 |        TABLE ACCESS FULL   | ORDERS      |  1615K|    40M|       | 14854
   (1)| 00:02:59 |                                                              
                                                                                
--------------------------------------------------------------------------------
------------------                                                              
                                                                                
                                                                                
Predicate Information (identified by operation id):                             
---------------------------------------------------                             
                                                                                
   6 - access("C_CUSTKEY"="O_CUSTKEY"(+))                                       
                                                                                
Note                                                                            
-----                                                                           
   - dynamic sampling used for this statement (level=2)                         


Statistics
----------------------------------------------------------                      
          0  recursive calls                                                    
          0  db block gets                                                      
      55056  consistent gets                                                    
      55048  physical reads                                                     
          0  redo size                                                          
        526  bytes sent via SQL*Net to client                                   
        523  bytes received via SQL*Net from client                             
          2  SQL*Net roundtrips to/from client                                  
          0  sorts (memory)                                                     
          0  sorts (disk)                                                       
          1  rows processed                                                     


Session altered.

Enter value for psize: 6
old   5: P_SIZE = &psize and
new   5: P_SIZE = 6 and
Enter value for ptype: PROMO PLATED STEEL 
old   6: P_TYPE like '%&ptype' and
new   6: P_TYPE like '%PROMO PLATED STEEL ' and
Enter value for name: ASIA
old   7: R_NAME='&name' and
new   7: R_NAME='ASIA' and


Execution Plan
----------------------------------------------------------                      
Plan hash value: 3710929119                                                     
                                                                                
--------------------------------------------------------------------------------
-----------------------------                                                   
                                                                                
| Id  | Operation                         | Name            | Rows  | Bytes |Tem
pSpc| Cost (%CPU)| Time     |                                                   
                                                                                
--------------------------------------------------------------------------------
-----------------------------                                                   
                                                                                
|   0 | SELECT STATEMENT                  |                 |     1 |   197 |   
    |  3926   (1)| 00:00:48 |                                                   
                                                                                
|   1 |  SORT AGGREGATE                   |                 |     1 |   197 |   
    |            |          |                                                   
                                                                                
|*  2 |   HASH JOIN                       |                 |   203K|    38M|  3
832K|  3926   (1)| 00:00:48 |                                                   
                                                                                
|*  3 |    HASH JOIN                      |                 | 21420 |  3576K|   
    |  1661   (1)| 00:00:20 |                                                   
                                                                                
|*  4 |     TABLE ACCESS FULL             | REGION          |     1 |    40 |   
    |     2   (0)| 00:00:01 |                                                   
                                                                                
|*  5 |     HASH JOIN                     |                 |   107K|    13M|   
    |  1658   (1)| 00:00:20 |                                                   
                                                                                
|   6 |      TABLE ACCESS FULL            | NATION          |    25 |   650 |   
    |     2   (0)| 00:00:01 |                                                   
                                                                                
|*  7 |      HASH JOIN                    |                 |   107K|    10M|   
    |  1655   (1)| 00:00:20 |                                                   
                                                                                
|   8 |       TABLE ACCESS FULL           | SUPPLIER        | 11178 |   283K|   
    |    58   (0)| 00:00:01 |                                                   
                                                                                
|   9 |       NESTED LOOPS                |                 |       |       |   
    |            |          |                                                   
                                                                                
|  10 |        NESTED LOOPS               |                 |   107K|  8262K|   
    |  1596   (1)| 00:00:20 |                                                   
                                                                                
|* 11 |         TABLE ACCESS FULL         | PART            |   113 |  4520 |   
    |  1029   (1)| 00:00:13 |                                                   
                                                                                
|* 12 |         INDEX RANGE SCAN          | PK_PARTSUPPLIER |   950 |       |   
    |     5   (0)| 00:00:01 |                                                   
                                                                                
|  13 |        TABLE ACCESS BY INDEX ROWID| PARTSUPPLIER    |   950 | 37050 |   
    |     7   (0)| 00:00:01 |                                                   
                                                                                
|  14 |    VIEW                           | VW_SQ_1         |   694K|    17M|   
    |   826   (0)| 00:00:10 |                                                   
                                                                                
|  15 |     HASH GROUP BY                 |                 |   694K|    17M|   
    |   826   (0)| 00:00:10 |                                                   
                                                                                
|  16 |      TABLE ACCESS BY INDEX ROWID  | PARTSUPPLIER    |   694K|    17M|   
    |   826   (0)| 00:00:10 |                                                   
                                                                                
|  17 |       INDEX FULL SCAN             | PK_PARTSUPPLIER |   694K|       |   
    |    26   (0)| 00:00:01 |                                                   
                                                                                
--------------------------------------------------------------------------------
-----------------------------                                                   
                                                                                
                                                                                
Predicate Information (identified by operation id):                             
---------------------------------------------------                             
                                                                                
   2 - access("PS_SUPPCOST"="MIN(PS_SUPPCOST)" AND "E"."PS_PARTKEY"="ITEM_1")   
   3 - access("N_REGIONKEY"="R_REGIONKEY")                                      
   4 - filter("R_NAME"='ASIA')                                                  
   5 - access("S_NATIONKEY"="N_NATIONKEY")                                      
   7 - access("PS_SUPPKEY"="S_SUPPKEY")                                         
  11 - filter("P_SIZE"=6 AND "P_TYPE" LIKE '%PROMO PLATED STEEL ')              
  12 - access("PS_PARTKEY"="P_PARTKEY")                                         
                                                                                
Note                                                                            
-----                                                                           
   - dynamic sampling used for this statement (level=2)                         


Statistics
----------------------------------------------------------                      
        145  recursive calls                                                    
          0  db block gets                                                      
       6226  consistent gets                                                    
       4850  physical reads                                                     
          0  redo size                                                          
        525  bytes sent via SQL*Net to client                                   
        523  bytes received via SQL*Net from client                             
          2  SQL*Net roundtrips to/from client                                  
          0  sorts (memory)                                                     
          0  sorts (disk)                                                       
          1  rows processed                                                     

