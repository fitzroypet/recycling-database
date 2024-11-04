-- Test Business Creation
DECLARE @TestBusinessID INT;

INSERT INTO recycling.Businesses (
    Name,
    FormattedAddress,
    Latitude,
    Longitude,
    PhoneNumber,
    Website
)
VALUES (
    'Test Recycling Company',
    '456 Recycling Ave, Green City',
    -1.2921,
    36.8219,
    '+254123456789',
    'www.testrecycling.com'
);

SET @TestBusinessID = SCOPE_IDENTITY();
PRINT 'Created test business with ID: ' + CAST(@TestBusinessID AS NVARCHAR(10));

-- Verify business creation
IF EXISTS (SELECT 1 FROM recycling.Businesses WHERE BusinessID = @TestBusinessID)
    PRINT 'Business creation test: PASSED'
ELSE
    THROW 50000, 'Business creation test: FAILED', 1; 