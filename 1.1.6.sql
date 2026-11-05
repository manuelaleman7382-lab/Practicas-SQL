select  country, count(firstname) as clientes_por_pais from customers group by country having count(firstname)>5;
