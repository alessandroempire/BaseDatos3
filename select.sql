--Consultas Proyecto Fase I - Tipo A (CI5313):

--------------------------------------------------------------------------------------------------
--Q1: Valor de los productos enviados de un país a otro 

select count(*) from (select * from CI5313.nation n1, CI5313.nation n2 where (n1.n_name = '&name' and n2.n_name = '&name') or (n1.n_name = '&name' and n2.n_name = '&name'));
--select count(*) from (select * from CI5313.nation n1, CI5313.nation n2 where (n1.n_name = 'IRAN' and n2.n_name = 'CHINA') or (n1.n_name = 'CHINA' and n2.n_name = 'IRAN'));
--(2/25)= 0,08

select count(*) from (select * from CI5313.lineitem where l_shipdate between date '1995-01-01' and date '1996-12-31');
--(1828450/6001215) = 0,3

-- Al ser un and se multiplican las selectividades y nos da una selectividad general de 0,3*0,08 = 0.024 
--------------------------------------------------------------------------------------------------
--Q2: Prioridad de envío 


select count(*) from (select * from CI5313.CUSTOMER where C_MKTSEGMENT = '&segment');
-- Usando esta consulta
--(29949/150000)= 0.11
select count(*) from (select * from CI5313.orders,CI5313.lineitem where O_ORDERDATE < '&date' and L_SHIPDATE > '&date');
--CON VALORES MUY CERCA COMO POR EJEMPLO
--select count(*) from (select * from CI5313.orders,CI5313.lineitem where O_ORDERDATE < '13-JAN-94' and L_SHIPDATE > '13-JAN-95');
--- (461334/1500000)*(3394472/6001215) =  0.17

select count(*) from (select * from CI5313.orders,CI5313.lineitem where O_ORDERDATE < '13-JAN-93' and L_SHIPDATE > '13-JAN-96');

select count(*) from (select * from CI5313.lineitem where L_SHIPDATE > '13-JAN-95');

select count(*) from (select * from CI5313.orders where O_ORDERDATE < '13-JAN-94'); 

--select count(*) from (select * from CI5313.orders,CI5313.lineitem where O_ORDERDATE < '13-JAN-93' and L_SHIPDATE > '13-JAN-95');

--CON VALORES MUY LEJOS (234640/1500000) * (3394472/6001215) = 0.088

-- Al ser un and se multiplican las selectividades en el caso de rangos cercanos y nos da una selectividad general de 0.11*0.17 = 0.0187 ---- Mientras mas cerca es el rango mayor selectividad

-- Al ser un and se multiplican las selectividades en el caso de rangos lejanos y nos da una selectividad general de 0.11*0.00968 = 0.0010648 ---- Mientras mas lejos menor selectividad



 


--------------------------------------------------------------------------------------------------
--Q3: Relación entre libros y fabricantes 

select count(*) from (select * from CI5313.part where P_BRAND = 'Brand#51'); 
--7920/200000=0.0396
 
select count(*) from (select * from CI5313.part where P_TYPE like 'STANDARD PLATED COPPER' ); 
-- 1354/200000=0.00677
--select count(*) from PS_SUPPKEY not in (select S_SUPPKEY from CI5313.SUPPLIER where S_COMMENT like '%Customer%Complaints');
--select count(*) from (select * from PS_SUPPKEY not in (select S_SUPPKEY from CI5313.SUPPLIER where S_COMMENT like 'regular foxes boost ')); 
-- 3804/10000= 0.38

--Selectividad total =0.03*0.006*0.38 = 0.0000684

--------------------------------------------------------------------------------------------------
--Q4: Distribución de clientes 

--Selectividad 0


--------------------------------------------------------------------------------------------------
--Q5: Proveedor con el menor precio 



select count(*) from (select * from CI5313.part where P_SIZE = '&psize'); 
--select count(*) from (select * from CI5313.part where P_SIZE = '6'); 
--3964/200000=0.019

select count(*) from (select * from CI5313.part where P_TYPE like '&ptype');
--select count(*) from (select * from CI5313.part where P_TYPE like 'PROMO PLATED STEEL');  
 
#1354/200000=0.00677

select count(*) from (select * from CI5313.REGION where R_NAME='&name' ); 
--select count(*) from (select * from CI5313.REGION where R_NAME='ASIA' ); 

#1/5 =0.2

--0.2*0.01*0.006= 0.000012
--------------------------------------------------------------------------------------------------
