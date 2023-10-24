SELECT
    FirstName,
    LastName,
    (strftime('%Y', 'now') - strftime('%Y', BirthDate)) - (strftime('%m-%d', 'now') < strftime('%m-%d', BirthDate)) AS ApproximateAge
FROM
    Employees
ORDER BY
    ApproximateAge ASC;
