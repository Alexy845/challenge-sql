UPDATE Invoices
SET Total =
    CASE
        WHEN BillingCity = 'France' THEN Total + 3
        WHEN BillingCity = 'USA' THEN Total + 5
        ELSE Total + 1
    END;
