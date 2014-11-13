
Session altered.

Enter value for brand: Brand#51
old   6: P_BRAND = '&brand' and
new   6: P_BRAND = 'Brand#51' and
Enter value for type: STANDARD PLATED COPPER
old   7: P_TYPE like '&type' and
new   7: P_TYPE like 'STANDARD PLATED COPPER' and

Execution Plan
----------------------------------------------------------                                
Plan hash value: 95964908                                                                 
                                                                                          
------------------------------------------------------------------------------------------
---------------                                                                           
                                                                                          
| Id  | Operation                             | Name            | Rows  | Bytes | Cost (%C
PU)| Time     |                                                                           
                                                                                          
------------------------------------------------------------------------------------------
---------------                                                                           
                                                                                          
|   0 | SELECT STATEMENT                      |                 |     1 |     2 |   196   
(0)| 00:00:03 |                                                                           
                                                                                          
|   1 |  SORT AGGREGATE                       |                 |     1 |     2 |         
   |          |                                                                           
                                                                                          
|   2 |   VIEW                                |                 |     1 |     2 |   196   
(0)| 00:00:03 |                                                                           
                                                                                          
|   3 |    SORT GROUP BY                      |                 |     1 |   115 |   196   
(0)| 00:00:03 |                                                                           
                                                                                          
|*  4 |     HASH JOIN ANTI                    |                 |   178 | 20470 |   196   
(0)| 00:00:03 |                                                                           
                                                                                          
|   5 |      NESTED LOOPS                     |                 |   188 |  8836 |   138   
(0)| 00:00:02 |                                                                           
                                                                                          
|   6 |       TABLE ACCESS BY INDEX ROWID     | PART            |    47 |  1786 |    44   
(0)| 00:00:01 |                                                                           
                                                                                          
|   7 |        BITMAP CONVERSION TO ROWIDS    |                 |       |       |         
   |          |                                                                           
                                                                                          
|   8 |         BITMAP AND                    |                 |       |       |         
   |          |                                                                           
                                                                                          
|   9 |          BITMAP CONVERSION FROM ROWIDS|                 |       |       |         
   |          |                                                                           
                                                                                          
|* 10 |           INDEX RANGE SCAN            | P_TYPE_IDXB_    |       |       |     8   
(0)| 00:00:01 |                                                                           
                                                                                          
|  11 |          BITMAP CONVERSION FROM ROWIDS|                 |       |       |         
   |          |                                                                           
                                                                                          
|* 12 |           INDEX RANGE SCAN            | P_BRAND_IDXB    |       |       |    25   
(0)| 00:00:01 |                                                                           
                                                                                          
|* 13 |       INDEX RANGE SCAN                | PK_PARTSUPPLIER |     4 |    36 |     2   
(0)| 00:00:01 |                                                                           
                                                                                          
|* 14 |      TABLE ACCESS FULL                | SUPPLIER        |   500 | 34000 |    58   
(0)| 00:00:01 |                                                                           
                                                                                          
------------------------------------------------------------------------------------------
---------------                                                                           
                                                                                          
                                                                                          
Predicate Information (identified by operation id):                                       
---------------------------------------------------                                       
                                                                                          
   4 - access("PS_SUPPKEY"="S_SUPPKEY")                                                   
  10 - access("P_TYPE"='STANDARD PLATED COPPER')                                          
  12 - access("P_BRAND"='Brand#51')                                                       
  13 - access("P_PARTKEY"="PS_PARTKEY")                                                   
  14 - filter("S_COMMENT" LIKE '%Customer%Complaints')                                    


Session altered.

Enter value for psize: 6
old   7: P_SIZE = &psize and
new   7: P_SIZE = 6 and
Enter value for ptype: PROMO PLATED STEEL
old   8: P_TYPE like '%&ptype' and
new   8: P_TYPE like '%PROMO PLATED STEEL' and
Enter value for name: ASIA
old   9: R_NAME='&name' and
new   9: R_NAME='ASIA' and

Execution Plan
----------------------------------------------------------                                
Plan hash value: 1867856872                                                               
                                                                                          
------------------------------------------------------------------------------------------
-------------                                                                             
                                                                                          
| Id  | Operation                           | Name            | Rows  | Bytes | Cost (%CPU
)| Time     |                                                                             
                                                                                          
------------------------------------------------------------------------------------------
-------------                                                                             
                                                                                          
|   0 | SELECT STATEMENT                    |                 |     1 |    86 |  3055   (1
)| 00:00:37 |                                                                             
                                                                                          
|   1 |  SORT AGGREGATE                     |                 |     1 |    86 |           
 |          |                                                                             
                                                                                          
|*  2 |   FILTER                            |                 |       |       |           
 |          |                                                                             
                                                                                          
|*  3 |    HASH JOIN                        |                 |   139 | 11954 |  2777   (1
)| 00:00:34 |                                                                             
                                                                                          
|   4 |     TABLE ACCESS FULL               | NATION          |    25 |   150 |     2   (0
)| 00:00:01 |                                                                             
                                                                                          
|*  5 |     HASH JOIN                       |                 |   695 | 55600 |  2774   (1
)| 00:00:34 |                                                                             
                                                                                          
|   6 |      NESTED LOOPS                   |                 |       |       |           
 |          |                                                                             
                                                                                          
|   7 |       NESTED LOOPS                  |                 |   695 | 50735 |  2716   (1
)| 00:00:33 |                                                                             
                                                                                          
|   8 |        MERGE JOIN CARTESIAN         |                 |   175 | 10325 |  2191   (1
)| 00:00:27 |                                                                             
                                                                                          
|*  9 |         TABLE ACCESS FULL           | REGION          |     1 |    29 |     2   (0
)| 00:00:01 |                                                                             
                                                                                          
|  10 |         BUFFER SORT                 |                 |   175 |  5250 |  2189   (1
)| 00:00:27 |                                                                             
                                                                                          
|* 11 |          TABLE ACCESS BY INDEX ROWID| PART            |   175 |  5250 |  2189   (1
)| 00:00:27 |                                                                             
                                                                                          
|* 12 |           INDEX RANGE SCAN          | P_SIZE_IDXB     |  3507 |       |     7   (0
)| 00:00:01 |                                                                             
                                                                                          
|* 13 |        INDEX RANGE SCAN             | PK_PARTSUPPLIER |     4 |       |     2   (0
)| 00:00:01 |                                                                             
                                                                                          
|  14 |       TABLE ACCESS BY INDEX ROWID   | PARTSUPPLIER    |     4 |    56 |     3   (0
)| 00:00:01 |                                                                             
                                                                                          
|  15 |      TABLE ACCESS FULL              | SUPPLIER        | 10000 | 70000 |    58   (0
)| 00:00:01 |                                                                             
                                                                                          
|  16 |    SORT AGGREGATE                   |                 |     1 |    10 |           
 |          |                                                                             
                                                                                          
|  17 |     TABLE ACCESS BY INDEX ROWID     | PARTSUPPLIER    |     4 |    40 |     4   (0
)| 00:00:01 |                                                                             
                                                                                          
|* 18 |      INDEX RANGE SCAN               | PK_PARTSUPPLIER |     4 |       |     3   (0
)| 00:00:01 |                                                                             
                                                                                          
------------------------------------------------------------------------------------------
-------------                                                                             
                                                                                          
                                                                                          
Predicate Information (identified by operation id):                                       
---------------------------------------------------                                       
                                                                                          
   2 - filter("PS_SUPPCOST"= (SELECT MIN("PS_SUPPCOST") FROM "CI5313"."PARTSUPPLIER" "I" W
HERE                                                                                      
                                                                                          
              "I"."PS_PARTKEY"=:B1))                                                      
   3 - access("S_NATIONKEY"="N_NATIONKEY" AND "N_REGIONKEY"="R_REGIONKEY")                
   5 - access("PS_SUPPKEY"="S_SUPPKEY")                                                   
   9 - filter("R_NAME"='ASIA')                                                            
  11 - filter("P_TYPE" LIKE '%PROMO PLATED STEEL')                                        
  12 - access("P_SIZE"=6)                                                                 
  13 - access("PS_PARTKEY"="P_PARTKEY")                                                   
  18 - access("I"."PS_PARTKEY"=:B1)                                                       

