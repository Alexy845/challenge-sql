SELECT
    e1.EmployeeId AS EmployeeId,
    e1.FirstName || ' ' || e1.LastName AS EmployeeFullName,
    e2.FirstName || ' ' || e2.LastName AS ReportsToFullName
FROM
    employees e1
LEFT JOIN
    employees e2 ON e1.ReportsTo = e2.EmployeeId;
