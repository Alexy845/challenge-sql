SELECT
    c.FirstName || ' ' || UPPER(c.LastName)  AS FullName,
    SUM(i.Total) AS AllInvoices
FROM
    Customers c
JOIN
    Invoices i ON c.CustomerId = i.CustomerId
GROUP BY
    c.CustomerId
HAVING
    AllInvoices > 38
ORDER BY
    FullName ASC;
