select tracks.Name as canciones, sum(invoice_items.Quantity) as cantidad from tracks
join invoice_items on tracks.TrackId = invoice_items.TrackId group by tracks.TrackId order by cantidad desc limit 5
