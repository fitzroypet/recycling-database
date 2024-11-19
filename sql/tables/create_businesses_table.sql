CREATE TABLE recycling.Businesses (
    BusinessID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    FormattedAddress NVARCHAR(500) NOT NULL,
    Latitude DECIMAL(10, 8),
    Longitude DECIMAL(11, 8),
    PhoneNumber NVARCHAR(50),
    Website NVARCHAR(500),
    Rating DECIMAL(3, 2),
    PlaceID NVARCHAR(255),  -- Google Places ID
    DateAdded DATETIME2 DEFAULT SYSUTCDATETIME(),
    LastUpdated DATETIME2 DEFAULT SYSUTCDATETIME(),
    IsActive BIT DEFAULT 1,
    DeletedAt DATETIME2 NULL,
    DeletedBy NVARCHAR(128) NULL,
    SearchVector NVARCHAR(MAX), -- For full-text search
    ServiceKeywords NVARCHAR(MAX) -- JSON array of keywords
);

-- Create indexes for better search performance
CREATE INDEX IX_Businesses_Location ON recycling.Businesses(Latitude, Longitude);
CREATE INDEX IX_Businesses_Name ON recycling.Businesses(Name); 