SELECT
    upper(LastName) AS LastNameUpper, FirstName
FROM
    customers
WHERE
    length(FirstName) > 5 AND length(LastName)
ORDER BY LastName ASC