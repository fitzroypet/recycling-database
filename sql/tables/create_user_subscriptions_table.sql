CREATE TABLE recycling.UserSubscriptions (
    SubscriptionID INT IDENTITY(1,1) PRIMARY KEY,
    UserID INT FOREIGN KEY REFERENCES recycling.Users(UserID),
    BusinessID INT FOREIGN KEY REFERENCES recycling.Businesses(BusinessID),
    NotificationsEnabled BIT DEFAULT 1,
    SubscriptionDate DATETIME2 DEFAULT SYSUTCDATETIME(),
    IsActive BIT DEFAULT 1,
    DeletedAt DATETIME2 NULL,
    DeletedBy NVARCHAR(128) NULL,
    UNIQUE (UserID, BusinessID)
); 