CREATE TABLE recycling.BusinessHours (
    HoursID INT IDENTITY(1,1) PRIMARY KEY,
    BusinessID INT FOREIGN KEY REFERENCES recycling.Businesses(BusinessID),
    DayOfWeek TINYINT,  -- 0 = Sunday, 1 = Monday, etc.
    OpenTime TIME,
    CloseTime TIME,
    IsClosed BIT DEFAULT 0
); 