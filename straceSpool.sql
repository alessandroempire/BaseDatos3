Enter value for nation1: IRAN
Enter value for nation2: PERU
old  14: and ((n1.n_name = '&NATION1' and n2.n_name = '&NATION2')
new  14: and ((n1.n_name = 'IRAN' and n2.n_name = 'PERU')
Enter value for nation2: PERU
Enter value for nation1: IRAN
old  15: or (n1.n_name = '&NATION2' and n2.n_name = '&NATION1'))
new  15: or (n1.n_name = 'PERU' and n2.n_name = 'IRAN'))

  COUNT(*)                                                                      
----------                                                                      
         4                                                                      


Statistics
----------------------------------------------------------                      
          1  recursive calls                                                    
          0  db block gets                                                      
     136355  consistent gets                                                    
     136127  physical reads                                                     
        116  redo size                                                          
        208  bytes sent via SQL*Net to client                                   
        252  bytes received via SQL*Net from client                             
          2  SQL*Net roundtrips to/from client                                  
          0  sorts (memory)                                                     
          0  sorts (disk)                                                       
          1  rows processed                                                     

Enter value for segment: MACHINERY
old   6: where C_MKTSEGMENT = '&segment'
new   6: where C_MKTSEGMENT = 'MACHINERY'
Enter value for date: 13-JAN-93
old   9: and O_ORDERDATE < '&date'
new   9: and O_ORDERDATE < '13-JAN-93'
Enter value for date: 13-JAN-94
old  10: and L_SHIPDATE > '&date'
new  10: and L_SHIPDATE > '13-JAN-94'

  COUNT(*)                                                                      
----------                                                                      
         0                                                                      


Statistics
----------------------------------------------------------                      
          1  recursive calls                                                    
          0  db block gets                                                      
     136134  consistent gets                                                    
     136124  physical reads                                                     
          0  redo size                                                          
        207  bytes sent via SQL*Net to client                                   
        252  bytes received via SQL*Net from client                             
          2  SQL*Net roundtrips to/from client                                  
          0  sorts (memory)                                                     
          0  sorts (disk)                                                       
          1  rows processed                                                     

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
          8  recursive calls                                                    
          0  db block gets                                                      
       4122  consistent gets                                                    
       3850  physical reads                                                     
          0  redo size                                                          
        208  bytes sent via SQL*Net to client                                   
        252  bytes received via SQL*Net from client                             
          2  SQL*Net roundtrips to/from client                                  
          0  sorts (memory)                                                     
          0  sorts (disk)                                                       
          1  rows processed                                                     


  COUNT(*)                                                                      
----------                                                                      
        42                                                                      


Statistics
----------------------------------------------------------                      
          1  recursive calls                                                    
          0  db block gets                                                      
      24393  consistent gets                                                    
      24385  physical reads                                                     
          0  redo size                                                          
        208  bytes sent via SQL*Net to client                                   
        252  bytes received via SQL*Net from client                             
          2  SQL*Net roundtrips to/from client                                  
          0  sorts (memory)                                                     
          0  sorts (disk)                                                       
          1  rows processed                                                     

Enter value for psize: 6
old   5: P_SIZE = &psize and
new   5: P_SIZE = 6 and
Enter value for ptype: PROMO PLATED STEEL
old   6: P_TYPE like '%&ptype' and
new   6: P_TYPE like '%PROMO PLATED STEEL' and
Enter value for name: ASIA
old   7: R_NAME='&name' and
new   7: R_NAME='ASIA' and

  COUNT(*)                                                                      
----------                                                                      
         8                                                                      


Statistics
----------------------------------------------------------                      
          8  recursive calls                                                    
          0  db block gets                                                      
       4187  consistent gets                                                    
       3856  physical reads                                                     
        116  redo size                                                          
        208  bytes sent via SQL*Net to client                                   
        252  bytes received via SQL*Net from client                             
          2  SQL*Net roundtrips to/from client                                  
          1  sorts (memory)                                                     
          0  sorts (disk)                                                       
          1  rows processed                                                     

