SELECT
    upper(LastName) AS LastNameUpper, FirstName
FROM
    customers
WHERE
    length(FirstName) > 5
ORDER BY LastName ASC