CREATE TABLE recycling.RecyclingTransactions (
    TransactionID INT IDENTITY(1,1) PRIMARY KEY,
    BusinessID INT FOREIGN KEY REFERENCES recycling.Businesses(BusinessID),
    UserID INT FOREIGN KEY REFERENCES recycling.Users(UserID),
    TransactionDate DATETIME2 DEFAULT SYSUTCDATETIME(),
    PaymentAmount DECIMAL(10,2),
    PaymentCurrency NVARCHAR(3),
    PaymentStatus NVARCHAR(20), -- 'PENDING', 'COMPLETED', 'CANCELLED'
    Notes NVARCHAR(500),
    CreatedDate DATETIME2 DEFAULT SYSUTCDATETIME(),
    ModifiedDate DATETIME2 DEFAULT SYSUTCDATETIME(),
    IsActive BIT DEFAULT 1,
    DeletedAt DATETIME2 NULL,
    DeletedBy NVARCHAR(128) NULL
); 