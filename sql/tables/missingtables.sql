CREATE TABLE recycling.CommunicationPreferences (
    UserID INT PRIMARY KEY FOREIGN KEY REFERENCES recycling.Users(UserID),
    EmailNotifications BIT DEFAULT 1,
    PushNotifications BIT DEFAULT 0,
    SMSNotifications BIT DEFAULT 0,
    NotificationFrequency NVARCHAR(20) DEFAULT 'DAILY',
    PreferredChannels NVARCHAR(MAX) -- JSON array of preferred communication methods
);

CREATE TABLE recycling.RecyclingAlerts (
    AlertID INT IDENTITY(1,1) PRIMARY KEY,
    BusinessID INT FOREIGN KEY REFERENCES recycling.Businesses(BusinessID),
    AlertType NVARCHAR(50), -- 'SCHEDULE_CHANGE', 'NEW_SERVICE', 'CONTAMINATION_FEEDBACK'
    Title NVARCHAR(200),
    Content NVARCHAR(MAX),
    Severity NVARCHAR(20),
    ValidFrom DATETIME2,
    ValidTo DATETIME2,
    CreatedAt DATETIME2 DEFAULT SYSUTCDATETIME()
);