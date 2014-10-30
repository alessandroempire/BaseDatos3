Enter value for nation1: 1
Enter value for nation2: 2
old  19: and ((n1.n_name = '&NATION1' and n2.n_name = '&NATION2')
new  19: and ((n1.n_name = '1' and n2.n_name = '2')
Enter value for nation2: 2
Enter value for nation1: 1
old  20: or (n1.n_name = '&NATION2' and n2.n_name = '&NATION1'))
new  20: or (n1.n_name = '2' and n2.n_name = '1'))

  COUNT(*)                                                                      
----------                                                                      
         0                                                                      

Enter value for segment: 0
old   6: where C_MKTSEGMENT = '&segment'
new   6: where C_MKTSEGMENT = '0'
Enter value for date: 111111
old   9: and O_ORDERDATE < '&date'
new   9: and O_ORDERDATE < '111111'
Enter value for date: 111112
old  10: and L_SHIPDATE > '&date'
new  10: and L_SHIPDATE > '111112'

  COUNT(*)                                                                      
----------                                                                      
         0                                                                      

