CREATE TABLE recycling.BusinessServices (
    ServiceID INT IDENTITY(1,1) PRIMARY KEY,
    BusinessID INT FOREIGN KEY REFERENCES recycling.Businesses(BusinessID),
    ServiceName NVARCHAR(100) NOT NULL,
    Description NVARCHAR(500),
    IsBookingEnabled BIT DEFAULT 0,
    PriceInfo NVARCHAR(MAX), -- JSON field for flexible pricing structure
    CreatedDate DATETIME2 DEFAULT SYSUTCDATETIME(),
    ModifiedDate DATETIME2 DEFAULT SYSUTCDATETIME()
); 