with ingresos_canciones as (
select trackid, sum(quantity * unitprice) as ingreso_por_cancion from invoice_items
group by trackid 
),
costo_generos as (
select genreid as genero, sum(ingreso_por_cancion) as costo_por_genero from ingresos_canciones
join tracks on ingresos_canciones.trackid = tracks.TrackId 
group by genreid )

select name, genreid, costo_por_genero from genres
join costo_generos on genreid = costo_generos.genero
order by costo_por_genero desc limit 1