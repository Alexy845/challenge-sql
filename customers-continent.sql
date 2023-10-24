SELECT
    FirstName,
    LastName,
    Country,
    CASE
        WHEN Country IN ('USA', 'Canada', 'Brazil', 'Argentina', 'Chile') THEN 'America'
        WHEN Country IN ('India') THEN 'Asia'
        WHEN Country IN ('Australia') THEN 'Oceania'
        ELSE 'Europe'
    END AS Continent
FROM
    customers
