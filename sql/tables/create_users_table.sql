CREATE TABLE recycling.Users (
    UserID INT IDENTITY(1,1) PRIMARY KEY,
    Email NVARCHAR(255) NOT NULL UNIQUE,
    PhoneNumber NVARCHAR(50),
    FirstName NVARCHAR(100),
    LastName NVARCHAR(100),
    DefaultAddress NVARCHAR(500),
    DefaultLatitude DECIMAL(10, 8),
    DefaultLongitude DECIMAL(11, 8),
    UserRole NVARCHAR(50), -- Residential, Commercial, Waste Picker
    IsPhoneVerified BIT DEFAULT 0,
    CreatedDate DATETIME2 DEFAULT SYSUTCDATETIME(),
    ModifiedDate DATETIME2 DEFAULT SYSUTCDATETIME(),
    IsActive BIT DEFAULT 1,
    DeletedAt DATETIME2 NULL,
    DeletedBy NVARCHAR(128) NULL
); 

-- Create an index for the Users table
CREATE INDEX IX_Users_Email ON recycling.Users(Email);