SELECT
    invoices.InvoiceId AS InvoiceId,
    tracks.Name AS InvoiceItem,
    invoice_items.UnitPrice AS UnitPrice
FROM
    Invoices
JOIN
    invoice_items  ON invoices.InvoiceId = invoice_items.InvoiceId
JOIN
    tracks  ON invoice_items.TrackId = tracks.TrackId
WHERE
    invoices.InvoiceId = 10
ORDER BY
    tracks.Name ASC;
