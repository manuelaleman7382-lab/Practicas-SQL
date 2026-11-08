with gasto_por_cliente as (
select invoiceid as id , sum(total) as gasto from invoices 
group by customerid  
)
select customers.FirstName || ' ' || customers.LastName as nombre, gasto from gasto_por_cliente
join customers on customers.CustomerId = id
where gasto > (select avg(gasto) from gasto_por_cliente)