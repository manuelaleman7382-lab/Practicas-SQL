SELECT country, count(firstname) as clientes
	from customers group by country order by clientes desc;