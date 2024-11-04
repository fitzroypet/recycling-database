CREATE TABLE recycling.MaterialCategories (
    CategoryID INT IDENTITY(1,1) PRIMARY KEY,
    CategoryName NVARCHAR(100) NOT NULL,
    Description NVARCHAR(500),
    CONSTRAINT UQ_CategoryName UNIQUE (CategoryName)
); 