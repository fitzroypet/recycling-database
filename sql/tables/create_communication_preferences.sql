CREATE TABLE recycling.CommunicationPreferences (
    UserID INT PRIMARY KEY FOREIGN KEY REFERENCES recycling.Users(UserID),
    EmailNotifications BIT DEFAULT 1,
    PushNotifications BIT DEFAULT 0,
    SMSNotifications BIT DEFAULT 0,
    NotificationFrequency NVARCHAR(20) DEFAULT 'DAILY', -- Weekly, Monthly
    PreferredChannels NVARCHAR(MAX) -- JSON array of preferred communication methods
); 