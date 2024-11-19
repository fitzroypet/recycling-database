CREATE TABLE recycling.MaterialTransaction (
    MaterialTransactionID INT IDENTITY(1,1) PRIMARY KEY,
    TransactionID INT FOREIGN KEY REFERENCES recycling.RecyclingTransactions(TransactionID),
    RecordID INT FOREIGN KEY REFERENCES recycling.WasteRecords(RecordID),
    MaterialID INT FOREIGN KEY REFERENCES recycling.Materials(MaterialID),
    Quantity DECIMAL(10,2),
    Unit NVARCHAR(20),
    PricePerUnit DECIMAL(10,2),
    TotalPrice DECIMAL(10,2),
    Notes NVARCHAR(500),
    IsActive BIT DEFAULT 1,
    DeletedAt DATETIME2 NULL,
    DeletedBy NVARCHAR(128) NULL
);