
Session altered.

Enter value for nation1: IRAN
Enter value for nation2: PERU
old  14:     and ((n1.n_name = '&NATION1' and n2.n_name = '&NATION2')
new  14:     and ((n1.n_name = 'IRAN' and n2.n_name = 'PERU')
Enter value for nation2: PERU
Enter value for nation1: IRAN
old  15:     or (n1.n_name = '&NATION2' and n2.n_name = '&NATION1'))
new  15:     or (n1.n_name = 'PERU' and n2.n_name = 'IRAN'))

  COUNT(*)                                                                      
----------                                                                      
         4                                                                      

