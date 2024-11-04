CREATE PROCEDURE recycling.usp_RecordRecyclingTransaction
    @BusinessID INT,
    @UserID INT,
    @TransactionType NVARCHAR(20),
    @PaymentAmount DECIMAL(10,2),
    @PaymentCurrency NVARCHAR(3),
    @Notes NVARCHAR(500),
    @Materials NVARCHAR(MAX) -- JSON array of {materialCategoryID, quantity, unit, pricePerUnit}
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRANSACTION;
    
    BEGIN TRY
        -- Insert main transaction
        DECLARE @TransactionID INT;
        
        INSERT INTO recycling.RecyclingTransactions (
            BusinessID, UserID, TransactionType, 
            PaymentAmount, PaymentCurrency, PaymentStatus, Notes
        )
        VALUES (
            @BusinessID, @UserID, @TransactionType,
            @PaymentAmount, @PaymentCurrency, 'COMPLETED', @Notes
        );
        
        SET @TransactionID = SCOPE_IDENTITY();
        
        -- Insert transaction materials
        INSERT INTO recycling.TransactionMaterials (
            TransactionID, MaterialCategoryID, 
            Quantity, Unit, PricePerUnit, TotalPrice
        )
        SELECT 
            @TransactionID,
            JSON_VALUE(m.value, '$.materialCategoryID'),
            JSON_VALUE(m.value, '$.quantity'),
            JSON_VALUE(m.value, '$.unit'),
            JSON_VALUE(m.value, '$.pricePerUnit'),
            CAST(JSON_VALUE(m.value, '$.quantity') AS DECIMAL(10,2)) * 
            CAST(JSON_VALUE(m.value, '$.pricePerUnit') AS DECIMAL(10,2))
        FROM OPENJSON(@Materials) m;
        
        COMMIT TRANSACTION;
        
        SELECT @TransactionID AS TransactionID;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO 