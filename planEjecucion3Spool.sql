
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
Plan hash value: 2285965762                                                     
                                                                                
--------------------------------------------------------------------------------
--------------                                                                  
                                                                                
| Id  | Operation                 | Name     | Rows  | Bytes |TempSpc| Cost (%CP
U)| Time     |                                                                  
                                                                                
--------------------------------------------------------------------------------
--------------                                                                  
                                                                                
|   0 | SELECT STATEMENT          |          |     1 |       |       | 86339   (
1)| 00:17:17 |                                                                  
                                                                                
|   1 |  SORT AGGREGATE           |          |     1 |       |       |          
  |          |                                                                  
                                                                                
|   2 |   VIEW                    |          |  1464 |       |       | 86339   (
1)| 00:17:17 |                                                                  
                                                                                
|   3 |    HASH GROUP BY          |          |  1464 |   158K|   664K| 86339   (
1)| 00:17:17 |                                                                  
                                                                                
|*  4 |     HASH JOIN             |          |  5563 |   603K|  2936K| 86264   (
1)| 00:17:16 |                                                                  
                                                                                
|   5 |      TABLE ACCESS FULL    | CUSTOMER |   150K|  1171K|       |   929   (
1)| 00:00:12 |                                                                  
                                                                                
|*  6 |      HASH JOIN            |          |   139K|    13M|    13M| 84434   (
1)| 00:16:54 |                                                                  
                                                                                
|*  7 |       HASH JOIN           |          |   139K|    12M|       | 67255   (
1)| 00:13:28 |                                                                  
                                                                                
|*  8 |        HASH JOIN          |          |   799 | 51935 |       |    63   (
2)| 00:00:01 |                                                                  
                                                                                
|   9 |         NESTED LOOPS      |          |     2 |   116 |       |     4   (
0)| 00:00:01 |                                                                  
                                                                                
|* 10 |          TABLE ACCESS FULL| NATION   |     2 |    58 |       |     2   (
0)| 00:00:01 |                                                                  
                                                                                
|* 11 |          TABLE ACCESS FULL| NATION   |     1 |    29 |       |     1   (
0)| 00:00:01 |                                                                  
                                                                                
|  12 |         TABLE ACCESS FULL | SUPPLIER | 10000 | 70000 |       |    58   (
0)| 00:00:01 |                                                                  
                                                                                
|* 13 |        TABLE ACCESS FULL  | LINEITEM |  1739K|    44M|       | 67186   (
1)| 00:13:27 |                                                                  
                                                                                
|  14 |       TABLE ACCESS FULL   | ORDERS   |  1500K|    15M|       | 14853   (
1)| 00:02:59 |                                                                  
                                                                                
--------------------------------------------------------------------------------
--------------                                                                  
                                                                                
                                                                                
Predicate Information (identified by operation id):                             
---------------------------------------------------                             
                                                                                
   4 - access("C_CUSTKEY"="O_CUSTKEY" AND "C_NATIONKEY"="N2"."N_NATIONKEY")     
   6 - access("O_ORDERKEY"="L_ORDERKEY")                                        
   7 - access("S_SUPPKEY"="L_SUPPKEY")                                          
   8 - access("S_NATIONKEY"="N1"."N_NATIONKEY")                                 
  10 - filter("N1"."N_NAME"='IRAN' OR "N1"."N_NAME"='PERU')                     
  11 - filter(("N2"."N_NAME"='IRAN' OR "N2"."N_NAME"='PERU') AND                
              ("N1"."N_NAME"='IRAN' AND "N2"."N_NAME"='PERU' OR "N1"."N_NAME"='P
ERU' AND                                                                        
                                                                                
              "N2"."N_NAME"='IRAN'))                                            
  13 - filter("L_SHIPDATE">=TO_DATE(' 1995-01-01 00:00:00', 'syyyy-mm-dd hh24:mi
:ss')                                                                           
                                                                                
              AND "L_SHIPDATE"<=TO_DATE(' 1996-12-31 00:00:00', 'syyyy-mm-dd hh2
4:mi:ss'))                                                                      
                                                                                


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
Plan hash value: 2587239670                                                     
                                                                                
--------------------------------------------------------------------------------
-------------------------------                                                 
                                                                                
| Id  | Operation                          | Name             | Rows  | Bytes |T
empSpc| Cost (%CPU)| Time     |                                                 
                                                                                
--------------------------------------------------------------------------------
-------------------------------                                                 
                                                                                
|   0 | SELECT STATEMENT                   |                  |     1 |     4 | 
      | 92654   (1)| 00:18:32 |                                                 
                                                                                
|   1 |  SORT AGGREGATE                    |                  |     1 |     4 | 
      |            |          |                                                 
                                                                                
|   2 |   VIEW                             |                  |   212K|   829K| 
      | 92654   (1)| 00:18:32 |                                                 
                                                                                
|   3 |    HASH GROUP BY                   |                  |   212K|    12M| 
   14M| 92654   (1)| 00:18:32 |                                                 
                                                                                
|*  4 |     HASH JOIN                      |                  |   212K|    12M| 
 3528K| 89598   (1)| 00:17:56 |                                                 
                                                                                
|*  5 |      HASH JOIN                     |                  | 73572 |  2658K| 
      | 15160   (1)| 00:03:02 |                                                 
                                                                                
|*  6 |       VIEW                         | index$_join$_002 | 28967 |   452K| 
      |   288   (1)| 00:00:04 |                                                 
                                                                                
|*  7 |        HASH JOIN                   |                  |       |       | 
      |            |          |                                                 
                                                                                
|   8 |         BITMAP CONVERSION TO ROWIDS|                  | 28967 |   452K| 
      |     4   (0)| 00:00:01 |                                                 
                                                                                
|*  9 |          BITMAP INDEX SINGLE VALUE | C_MKTSEGMENT_IDX |       |       | 
      |            |          |                                                 
                                                                                
|  10 |         INDEX FAST FULL SCAN       | PK_CUSTOMER      | 28967 |   452K| 
      |   354   (1)| 00:00:05 |                                                 
                                                                                
|* 11 |       TABLE ACCESS FULL            | ORDERS           |   235K|  4834K| 
      | 14871   (1)| 00:02:59 |                                                 
                                                                                
|* 12 |      TABLE ACCESS FULL             | LINEITEM         |  4237K|    92M| 
      | 67228   (1)| 00:13:27 |                                                 
                                                                                
--------------------------------------------------------------------------------
-------------------------------                                                 
                                                                                
                                                                                
Predicate Information (identified by operation id):                             
---------------------------------------------------                             
                                                                                
   4 - access("L_ORDERKEY"="O_ORDERKEY")                                        
   5 - access("C_CUSTKEY"="O_CUSTKEY")                                          
   6 - filter("C_MKTSEGMENT"='MACHINERY')                                       
   7 - access(ROWID=ROWID)                                                      
   9 - access("C_MKTSEGMENT"='MACHINERY')                                       
  11 - filter("O_ORDERDATE"<'13-JAN-93')                                        
  12 - filter("L_SHIPDATE">'13-JAN-94')                                         


Session altered.

Enter value for brand: Brand#51
old   5: P_BRAND = '&brand' and
new   5: P_BRAND = 'Brand#51' and
Enter value for type: STANDARD PLATED COPPER
old   6: P_TYPE like '&type' and
new   6: P_TYPE like 'STANDARD PLATED COPPER' and

Execution Plan
----------------------------------------------------------                      
Plan hash value: 2549332893                                                     
                                                                                
--------------------------------------------------------------------------------
--------------------                                                            
                                                                                
| Id  | Operation                        | Name            | Rows  | Bytes | Cos
t (%CPU)| Time     |                                                            
                                                                                
--------------------------------------------------------------------------------
--------------------                                                            
                                                                                
|   0 | SELECT STATEMENT                 |                 |     1 |     2 |   2
04   (1)| 00:00:03 |                                                            
                                                                                
|   1 |  SORT AGGREGATE                  |                 |     1 |     2 |    
        |          |                                                            
                                                                                
|   2 |   VIEW                           |                 |     1 |     2 |   2
04   (1)| 00:00:03 |                                                            
                                                                                
|   3 |    SORT GROUP BY                 |                 |     1 |   115 |   2
04   (1)| 00:00:03 |                                                            
                                                                                
|*  4 |     HASH JOIN ANTI               |                 |   178 | 20470 |   2
04   (1)| 00:00:03 |                                                            
                                                                                
|   5 |      NESTED LOOPS                |                 |   188 |  8836 |   1
45   (0)| 00:00:02 |                                                            
                                                                                
|   6 |       TABLE ACCESS BY INDEX ROWID| PART            |    47 |  1786 |    
51   (0)| 00:00:01 |                                                            
                                                                                
|*  7 |        INDEX RANGE SCAN          | P_COMPUESTOB    |    47 |       |    
 3   (0)| 00:00:01 |                                                            
                                                                                
|*  8 |       INDEX RANGE SCAN           | PK_PARTSUPPLIER |     4 |    36 |    
 2   (0)| 00:00:01 |                                                            
                                                                                
|*  9 |      TABLE ACCESS FULL           | SUPPLIER        |   500 | 34000 |    
58   (0)| 00:00:01 |                                                            
                                                                                
--------------------------------------------------------------------------------
--------------------                                                            
                                                                                
                                                                                
Predicate Information (identified by operation id):                             
---------------------------------------------------                             
                                                                                
   4 - access("PS_SUPPKEY"="S_SUPPKEY")                                         
   7 - access("P_TYPE"='STANDARD PLATED COPPER' AND "P_BRAND"='Brand#51')       
   8 - access("P_PARTKEY"="PS_PARTKEY")                                         
   9 - filter("S_COMMENT" LIKE '%Customer%Complaints')                          


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
                                                                                
|   0 | SELECT STATEMENT           |             |     1 |       |       | 19879
   (1)| 00:03:59 |                                                              
                                                                                
|   1 |  SORT AGGREGATE            |             |     1 |       |       |      
      |          |                                                              
                                                                                
|   2 |   VIEW                     |             |   100K|       |       | 19879
   (1)| 00:03:59 |                                                              
                                                                                
|   3 |    HASH GROUP BY           |             |   100K|  1278K|       | 19879
   (1)| 00:03:59 |                                                              
                                                                                
|   4 |     VIEW                   |             |   100K|  1278K|       | 19876
   (1)| 00:03:59 |                                                              
                                                                                
|   5 |      HASH GROUP BY         |             |   100K|  1573K|    34M| 19876
   (1)| 00:03:59 |                                                              
                                                                                
|*  6 |       HASH JOIN OUTER      |             |  1500K|    22M|  2496K| 16695
   (1)| 00:03:21 |                                                              
                                                                                
|   7 |        INDEX FAST FULL SCAN| PK_CUSTOMER |   150K|   732K|       |    79
   (2)| 00:00:01 |                                                              
                                                                                
|   8 |        TABLE ACCESS FULL   | ORDERS      |  1500K|    15M|       | 14853
   (1)| 00:02:59 |                                                              
                                                                                
--------------------------------------------------------------------------------
------------------                                                              
                                                                                
                                                                                
Predicate Information (identified by operation id):                             
---------------------------------------------------                             
                                                                                
   6 - access("C_CUSTKEY"="O_CUSTKEY"(+))                                       


Session altered.

Enter value for psize: 6
old   5: P_SIZE = &psize and
new   5: P_SIZE = 6 and
Enter value for ptype: PROMO PLATED STEEL
old   6: P_TYPE like '%&ptype' and
new   6: P_TYPE like '%PROMO PLATED STEEL' and
Enter value for name: ASIA
old   7: R_NAME='&name' and
new   7: R_NAME='ASIA' and

Execution Plan
----------------------------------------------------------                      
Plan hash value: 719851442                                                      
                                                                                
--------------------------------------------------------------------------------
--------------------                                                            
                                                                                
| Id  | Operation                        | Name            | Rows  | Bytes | Cos
t (%CPU)| Time     |                                                            
                                                                                
--------------------------------------------------------------------------------
--------------------                                                            
                                                                                
|   0 | SELECT STATEMENT                 |                 |     1 |    86 |  18
95   (1)| 00:00:23 |                                                            
                                                                                
|   1 |  SORT AGGREGATE                  |                 |     1 |    86 |    
        |          |                                                            
                                                                                
|*  2 |   FILTER                         |                 |       |       |    
        |          |                                                            
                                                                                
|*  3 |    HASH JOIN                     |                 |   139 | 11954 |  16
17   (1)| 00:00:20 |                                                            
                                                                                
|   4 |     TABLE ACCESS FULL            | NATION          |    25 |   150 |    
 2   (0)| 00:00:01 |                                                            
                                                                                
|*  5 |     HASH JOIN                    |                 |   695 | 55600 |  16
15   (1)| 00:00:20 |                                                            
                                                                                
|   6 |      NESTED LOOPS                |                 |       |       |    
        |          |                                                            
                                                                                
|   7 |       NESTED LOOPS               |                 |   695 | 50735 |  15
56   (1)| 00:00:19 |                                                            
                                                                                
|   8 |        MERGE JOIN CARTESIAN      |                 |   175 | 10325 |  10
31   (1)| 00:00:13 |                                                            
                                                                                
|*  9 |         TABLE ACCESS FULL        | REGION          |     1 |    29 |    
 2   (0)| 00:00:01 |                                                            
                                                                                
|  10 |         BUFFER SORT              |                 |   175 |  5250 |  10
29   (1)| 00:00:13 |                                                            
                                                                                
|* 11 |          TABLE ACCESS FULL       | PART            |   175 |  5250 |  10
29   (1)| 00:00:13 |                                                            
                                                                                
|* 12 |        INDEX RANGE SCAN          | PK_PARTSUPPLIER |     4 |       |    
 2   (0)| 00:00:01 |                                                            
                                                                                
|  13 |       TABLE ACCESS BY INDEX ROWID| PARTSUPPLIER    |     4 |    56 |    
 3   (0)| 00:00:01 |                                                            
                                                                                
|  14 |      TABLE ACCESS FULL           | SUPPLIER        | 10000 | 70000 |    
58   (0)| 00:00:01 |                                                            
                                                                                
|  15 |    SORT AGGREGATE                |                 |     1 |    10 |    
        |          |                                                            
                                                                                
|  16 |     TABLE ACCESS BY INDEX ROWID  | PARTSUPPLIER    |     4 |    40 |    
 4   (0)| 00:00:01 |                                                            
                                                                                
|* 17 |      INDEX RANGE SCAN            | PK_PARTSUPPLIER |     4 |       |    
 3   (0)| 00:00:01 |                                                            
                                                                                
--------------------------------------------------------------------------------
--------------------                                                            
                                                                                
                                                                                
Predicate Information (identified by operation id):                             
---------------------------------------------------                             
                                                                                
   2 - filter("PS_SUPPCOST"= (SELECT MIN("PS_SUPPCOST") FROM "CI5313"."PARTSUPPL
IER" "I"                                                                        
                                                                                
              WHERE "I"."PS_PARTKEY"=:B1))                                      
   3 - access("S_NATIONKEY"="N_NATIONKEY" AND "N_REGIONKEY"="R_REGIONKEY")      
   5 - access("PS_SUPPKEY"="S_SUPPKEY")                                         
   9 - filter("R_NAME"='ASIA')                                                  
  11 - filter("P_SIZE"=6 AND "P_TYPE" LIKE '%PROMO PLATED STEEL')               
  12 - access("PS_PARTKEY"="P_PARTKEY")                                         
  17 - access("I"."PS_PARTKEY"=:B1)                                             

