CREATE TABLE recycling.WasteRecords (
    RecordID INT IDENTITY(1,1) PRIMARY KEY,
    BusinessID INT FOREIGN KEY REFERENCES recycling.Businesses(BusinessID),
    CollectionType NVARCHAR(20), -- 'DROPOFF', 'PICKUP', 'SALE'
    MaterialID INT FOREIGN KEY REFERENCES recycling.Materials(MaterialID),
    CategoryName NVARCHAR(50),
    Description NVARCHAR(500),
    Quantity DECIMAL(10,2),
    Unit NVARCHAR(20),
    RecordDate DATE,
    Notes NVARCHAR(500),
    CreatedDate DATETIME2 DEFAULT SYSUTCDATETIME()
);