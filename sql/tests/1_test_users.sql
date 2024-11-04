-- Test User Creation and Management
DECLARE @TestUserID INT;
DECLARE @TestEmail NVARCHAR(255) = 'test.user@example.com';

-- Create test user
INSERT INTO recycling.Users (
    Email, 
    PhoneNumber, 
    FirstName, 
    LastName, 
    DefaultAddress,
    DefaultLatitude,
    DefaultLongitude
)
VALUES (
    @TestEmail,
    '+1234567890',
    'Test',
    'User',
    '123 Test Street, Test City',
    -1.2921,
    36.8219
);

SET @TestUserID = SCOPE_IDENTITY();
PRINT 'Created test user with ID: ' + CAST(@TestUserID AS NVARCHAR(10));

-- Verify user creation
IF EXISTS (SELECT 1 FROM recycling.Users WHERE UserID = @TestUserID)
    PRINT 'User creation test: PASSED'
ELSE
    THROW 50000, 'User creation test: FAILED', 1; 