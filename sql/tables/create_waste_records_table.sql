CREATE TABLE recycling.WasteRecords (
    RecordID INT IDENTITY(1,1) PRIMARY KEY,
    BusinessID INT FOREIGN KEY REFERENCES recycling.Businesses(BusinessID),
    MaterialCategoryID INT FOREIGN KEY REFERENCES recycling.MaterialCategories(CategoryID),
    Quantity DECIMAL(10,2),
    Unit NVARCHAR(20),
    RecordDate DATE,
    Notes NVARCHAR(500),
    CreatedDate DATETIME2 DEFAULT SYSUTCDATETIME()
); 