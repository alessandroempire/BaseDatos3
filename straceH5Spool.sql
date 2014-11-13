
Session altered.

Enter value for brand: Brand#51
old   5: P_BRAND = '&brand' and
new   5: P_BRAND = 'Brand#51' and
Enter value for type: STANDARD PLATED COPPER
old   6: P_TYPE like '&type' and
new   6: P_TYPE like 'STANDARD PLATED COPPER' and

  COUNT(*)                                                                                
----------                                                                                
         1                                                                                


Statistics
----------------------------------------------------------                                
          1  recursive calls                                                              
          0  db block gets                                                                
        380  consistent gets                                                              
        330  physical reads                                                               
          0  redo size                                                                    
        526  bytes sent via SQL*Net to client                                             
        523  bytes received via SQL*Net from client                                       
          2  SQL*Net roundtrips to/from client                                            
          1  sorts (memory)                                                               
          0  sorts (disk)                                                                 
          1  rows processed                                                               


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

  COUNT(*)                                                                                
----------                                                                                
         8                                                                                


Statistics
----------------------------------------------------------                                
          1  recursive calls                                                              
          0  db block gets                                                                
       1412  consistent gets                                                              
       1307  physical reads                                                               
          0  redo size                                                                    
        526  bytes sent via SQL*Net to client                                             
        523  bytes received via SQL*Net from client                                       
          2  SQL*Net roundtrips to/from client                                            
          1  sorts (memory)                                                               
          0  sorts (disk)                                                                 
          1  rows processed                                                               

