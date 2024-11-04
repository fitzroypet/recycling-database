CREATE PROCEDURE recycling.usp_UpsertBusiness
    @Name NVARCHAR(255),
    @Address NVARCHAR(500),
    @Latitude DECIMAL(10, 8),
    @Longitude DECIMAL(11, 8),
    @Phone NVARCHAR(50),
    @Website NVARCHAR(500),
    @Rating DECIMAL(3, 2),
    @PlaceID NVARCHAR(255),
    @Materials NVARCHAR(MAX)  -- JSON array of material categories
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @BusinessID INT;
    
    -- Insert or update business
    MERGE recycling.Businesses AS target
    USING (SELECT @PlaceID AS PlaceID) AS source
    ON target.PlaceID = source.PlaceID
    WHEN MATCHED THEN
        UPDATE SET 
            Name = @Name,
            FormattedAddress = @Address,
            Latitude = @Latitude,
            Longitude = @Longitude,
            PhoneNumber = @Phone,
            Website = @Website,
            Rating = @Rating,
            LastUpdated = SYSUTCDATETIME()
    WHEN NOT MATCHED THEN
        INSERT (Name, FormattedAddress, Latitude, Longitude, PhoneNumber, Website, Rating, PlaceID)
        VALUES (@Name, @Address, @Latitude, @Longitude, @Phone, @Website, @Rating, @PlaceID)
    OUTPUT INSERTED.BusinessID INTO @BusinessID;

    -- Clear and update materials if specified
    IF @Materials IS NOT NULL
    BEGIN
        DELETE FROM recycling.BusinessMaterials WHERE BusinessID = @BusinessID;

        -- Insert materials based on JSON array
        INSERT INTO recycling.BusinessMaterials (BusinessID, CategoryID)
        SELECT @BusinessID, CategoryID
        FROM recycling.MaterialCategories
        WHERE CategoryName IN (SELECT value FROM OPENJSON(@Materials));
    END
END;
GO 