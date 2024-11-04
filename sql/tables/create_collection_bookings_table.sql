CREATE TABLE recycling.CollectionBookings (
    BookingID INT IDENTITY(1,1) PRIMARY KEY,
    BusinessID INT FOREIGN KEY REFERENCES recycling.Businesses(BusinessID),
    UserID INT FOREIGN KEY REFERENCES recycling.Users(UserID),
    BookingType NVARCHAR(20), -- 'PICKUP', 'DROPOFF'
    ScheduledDate DATE,
    ScheduledTimeSlot NVARCHAR(50),
    Status NVARCHAR(20), -- 'PENDING', 'CONFIRMED', 'COMPLETED', 'CANCELLED'
    Address NVARCHAR(500),
    Latitude DECIMAL(10, 8),
    Longitude DECIMAL(11, 8),
    Notes NVARCHAR(500),
    CreatedDate DATETIME2 DEFAULT SYSUTCDATETIME(),
    ModifiedDate DATETIME2 DEFAULT SYSUTCDATETIME(),
    IsActive BIT DEFAULT 1,
    DeletedAt DATETIME2 NULL,
    DeletedBy NVARCHAR(128) NULL
); 