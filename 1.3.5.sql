WITH clientes_rock AS (
    SELECT DISTINCT invoices.CustomerId 
    FROM invoices
    JOIN invoice_items ON invoice_items.InvoiceId = invoices.InvoiceId
    JOIN tracks ON invoice_items.TrackId = tracks.TrackId
    JOIN genres ON genres.GenreId = tracks.GenreId
    WHERE genres.Name = 'Rock'
)
sELECT customers.FirstName || ' ' || customers.LastName AS cliente
FROM customers
WHERE customers.CustomerId NOT IN (SELECT CustomerId FROM clientes_rock);