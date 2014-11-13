
Session altered.

Enter value for nation1: IRAN
Enter value for nation2: PERU
old  17: and ((n1.n_name = '&NATION1' and n2.n_name = '&NATION2')
new  17: and ((n1.n_name = 'IRAN' and n2.n_name = 'PERU')
Enter value for nation2: PERU
Enter value for nation1: IRAN
old  18: or (n1.n_name = '&NATION2' and n2.n_name = '&NATION1'))
new  18: or (n1.n_name = 'PERU' and n2.n_name = 'IRAN'))

Execution Plan
----------------------------------------------------------                                                                                                                                                                                                
Plan hash value: 2605521148                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                          
------------------------------------------------------------------------------------------------------------                                                                                                                                              
| Id  | Operation                         | Name           | Rows  | Bytes |TempSpc| Cost (%CPU)| Time     |                                                                                                                                              
------------------------------------------------------------------------------------------------------------                                                                                                                                              
|   0 | SELECT STATEMENT                  |                |     1 |       |       |  1731K  (1)| 05:46:17 |                                                                                                                                              
|   1 |  SORT AGGREGATE                   |                |     1 |       |       |            |          |                                                                                                                                              
|   2 |   VIEW                            |                |  1464 |       |       |  1731K  (1)| 05:46:17 |                                                                                                                                              
|   3 |    HASH GROUP BY                  |                |  1464 |   158K|   664K|  1731K  (1)| 05:46:17 |                                                                                                                                              
|*  4 |     HASH JOIN                     |                |  5563 |   603K|  2936K|  1731K  (1)| 05:46:16 |                                                                                                                                              
|   5 |      TABLE ACCESS FULL            | CUSTOMER       |   150K|  1171K|       |   929   (1)| 00:00:12 |                                                                                                                                              
|*  6 |      HASH JOIN                    |                |   139K|    13M|    13M|  1729K  (1)| 05:45:54 |                                                                                                                                              
|*  7 |       HASH JOIN                   |                |   139K|    12M|       |  1712K  (1)| 05:42:28 |                                                                                                                                              
|*  8 |        HASH JOIN                  |                |   799 | 51935 |       |    63   (2)| 00:00:01 |                                                                                                                                              
|   9 |         NESTED LOOPS              |                |     2 |   116 |       |     4   (0)| 00:00:01 |                                                                                                                                              
|* 10 |          TABLE ACCESS FULL        | NATION         |     2 |    58 |       |     2   (0)| 00:00:01 |                                                                                                                                              
|* 11 |          TABLE ACCESS FULL        | NATION         |     1 |    29 |       |     1   (0)| 00:00:01 |                                                                                                                                              
|  12 |         TABLE ACCESS FULL         | SUPPLIER       | 10000 | 70000 |       |    58   (0)| 00:00:01 |                                                                                                                                              
|  13 |        TABLE ACCESS BY INDEX ROWID| LINEITEM       |  1739K|    44M|       |  1712K  (1)| 05:42:27 |                                                                                                                                              
|* 14 |         INDEX RANGE SCAN          | L_SHIPDATE_IDX |  1739K|       |       |  4629   (1)| 00:00:56 |                                                                                                                                              
|  15 |       TABLE ACCESS FULL           | ORDERS         |  1500K|    15M|       | 14853   (1)| 00:02:59 |                                                                                                                                              
------------------------------------------------------------------------------------------------------------                                                                                                                                              
                                                                                                                                                                                                                                                          
Predicate Information (identified by operation id):                                                                                                                                                                                                       
---------------------------------------------------                                                                                                                                                                                                       
                                                                                                                                                                                                                                                          
   4 - access("C_CUSTKEY"="O_CUSTKEY" AND "C_NATIONKEY"="N2"."N_NATIONKEY")                                                                                                                                                                               
   6 - access("O_ORDERKEY"="L_ORDERKEY")                                                                                                                                                                                                                  
   7 - access("S_SUPPKEY"="L_SUPPKEY")                                                                                                                                                                                                                    
   8 - access("S_NATIONKEY"="N1"."N_NATIONKEY")                                                                                                                                                                                                           
  10 - filter("N1"."N_NAME"='IRAN' OR "N1"."N_NAME"='PERU')                                                                                                                                                                                               
  11 - filter(("N2"."N_NAME"='IRAN' OR "N2"."N_NAME"='PERU') AND ("N1"."N_NAME"='IRAN' AND                                                                                                                                                                
              "N2"."N_NAME"='PERU' OR "N1"."N_NAME"='PERU' AND "N2"."N_NAME"='IRAN'))                                                                                                                                                                     
  14 - access("L_SHIPDATE">=TO_DATE(' 1995-01-01 00:00:00', 'syyyy-mm-dd hh24:mi:ss') AND                                                                                                                                                                 
              "L_SHIPDATE"<=TO_DATE(' 1996-12-31 00:00:00', 'syyyy-mm-dd hh24:mi:ss'))                                                                                                                                                                    

