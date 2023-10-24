UPDATE Invoices
SET Total = Total +
    CASE
        WHEN BillingCity = 'France' THEN 3
        WHEN BillingCity = 'USA' THEN 5
        ELSE 1
    END;
