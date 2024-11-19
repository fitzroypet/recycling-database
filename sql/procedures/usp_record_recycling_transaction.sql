CREATE PROCEDURE recycling.usp_RecordRecyclingTransaction
    @BusinessID INT,
    @UserID INT,
    @TransactionType NVARCHAR(20),
    @PaymentAmount DECIMAL(10,2),
    @PaymentCurrency NVARCHAR(3),
    @Notes NVARCHAR(500),
    @Materials NVARCHAR(MAX) -- JSON array of {materialID, quantity, unit, pricePerUnit}
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRANSACTION;
    
    BEGIN TRY
        -- Validate BusinessID and UserID
        IF NOT EXISTS (SELECT 1 FROM recycling.Businesses WHERE BusinessID = @BusinessID)
            THROW 50000, 'Invalid BusinessID', 1;

        IF NOT EXISTS (SELECT 1 FROM recycling.Users WHERE UserID = @UserID)
            THROW 50001, 'Invalid UserID', 1;

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
        INSERT INTO recycling.MaterialTransaction (
            TransactionID, MaterialID, 
            Quantity, Unit, PricePerUnit, TotalPrice
        )
        SELECT 
            @TransactionID,
            JSON_VALUE(m.value, '$.materialID'),
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
        -- Log error or handle it as needed
        THROW;
    END CATCH
END;
GO 