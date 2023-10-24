SELECT FirstName,
       LastName,
       strftime(HireDate) - strftime(BirthDate) AS ApproximateAge
FROM
    employees
ORDER BY
    ApproximateAge ASC;