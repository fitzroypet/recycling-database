CREATE PROCEDURE recycling.usp_VerifyBusiness
    @BusinessID INT,
    @Email NVARCHAR(255),
    @BusinessName NVARCHAR(255),
    @Address NVARCHAR(500),
    @Phone NVARCHAR(50),
    @Website NVARCHAR(500),
    @Materials NVARCHAR(MAX)  -- JSON array of material categories
AS
BEGIN
    SET NOCOUNT ON;
    
    BEGIN TRANSACTION;
    
    BEGIN TRY
        -- Update business information
        UPDATE recycling.Businesses
        SET Name = @BusinessName,
            FormattedAddress = @Address,
            PhoneNumber = @Phone,
            Website = @Website,
            LastUpdated = SYSUTCDATETIME()
        WHERE BusinessID = @BusinessID;

        -- Create or update business account
        MERGE recycling.BusinessAccounts AS target
        USING (SELECT @BusinessID AS BusinessID, @Email AS Email) AS source
        ON target.BusinessID = source.BusinessID
        WHEN MATCHED THEN
            UPDATE SET 
                Email = @Email,
                ModifiedDate = SYSUTCDATETIME()
        WHEN NOT MATCHED THEN
            INSERT (BusinessID, Email)
            VALUES (@BusinessID, @Email);

        -- Update materials handled
        IF @Materials IS NOT NULL
        BEGIN
            DELETE FROM recycling.BusinessMaterials 
            WHERE BusinessID = @BusinessID;

            INSERT INTO recycling.BusinessMaterials (BusinessID, CategoryID, IsVerified)
            SELECT @BusinessID, CategoryID, 1
            FROM recycling.MaterialCategories
            WHERE CategoryName IN (SELECT value FROM OPENJSON(@Materials));
        END

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO 