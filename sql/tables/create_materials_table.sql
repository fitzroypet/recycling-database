CREATE TABLE recycling.Materials (
    MaterialID INT IDENTITY(1,1) PRIMARY KEY,
    CategoryName NVARCHAR(50), -- e.g., 'plastic', 'metal', etc.
    Description NVARCHAR(500), -- Description of the material
    CO2Savings DECIMAL(10, 2)  -- CO2 savings per kg
    CONSTRAINT UQ_Description UNIQUE (Description)
); 