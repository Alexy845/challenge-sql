SELECT
    e.FirstName || ' ' || UPPER(e.LastName)  AS FullName,
    COUNT(c.CustomerId) AS NumberOfCustomers
FROM
    Employees e
JOIN
    Customers c ON e.EmployeeId = c.SupportRepId
WHERE
    e.Title = 'Sales Support Agent'
GROUP BY
    e.EmployeeId
ORDER BY
    NumberOfCustomers ASC;
