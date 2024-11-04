-- Test Recycling Transaction
DECLARE @TestTransactionID INT;
DECLARE @MaterialsJSON NVARCHAR(MAX) = '[
    {
        "materialCategoryID": 1,
        "quantity": 10.5,
        "unit": "kg",
        "pricePerUnit": 20.00
    },
    {
        "materialCategoryID": 2,
        "quantity": 5.0,
        "unit": "kg",
        "pricePerUnit": 15.00
    }
]';

-- Execute transaction stored procedure
EXEC recycling.usp_RecordRecyclingTransaction
    @BusinessID = @TestBusinessID,
    @UserID = @TestUserID,
    @TransactionType = 'PURCHASE',
    @PaymentAmount = 285.00,  -- (10.5 * 20.00) + (5.0 * 15.00)
    @PaymentCurrency = 'KES',
    @Notes = 'Test transaction',
    @Materials = @MaterialsJSON;

-- Verify transaction
SELECT @TestTransactionID = MAX(TransactionID) 
FROM recycling.RecyclingTransactions 
WHERE BusinessID = @TestBusinessID AND UserID = @TestUserID;

IF EXISTS (
    SELECT 1 
    FROM recycling.RecyclingTransactions 
    WHERE TransactionID = @TestTransactionID
)
    PRINT 'Transaction creation test: PASSED'
ELSE
    THROW 50000, 'Transaction creation test: FAILED', 1;

-- Verify transaction materials
IF EXISTS (
    SELECT 1 
    FROM recycling.TransactionMaterials 
    WHERE TransactionID = @TestTransactionID
)
    PRINT 'Transaction materials test: PASSED'
ELSE
    THROW 50000, 'Transaction materials test: FAILED', 1; 