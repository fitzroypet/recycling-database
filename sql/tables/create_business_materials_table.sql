CREATE TABLE recycling.BusinessMaterials (
    BusinessID INT,
    MaterialID INT,
    CategoryName NVARCHAR(50),
    Description NVARCHAR(500),
    IsVerified BIT DEFAULT 0,
    VerificationSource NVARCHAR(50),
    DateVerified DATETIME2,
    PRIMARY KEY (BusinessID, MaterialID),
    FOREIGN KEY (BusinessID) REFERENCES recycling.Businesses(BusinessID),
    FOREIGN KEY (MaterialID) REFERENCES recycling.Materials(MaterialID)
);

-- Create index for the BusinessMaterials table
CREATE INDEX IX_BusinessMaterials_BusinessID ON recycling.BusinessMaterials(BusinessID);
CREATE INDEX IX_BusinessMaterials_CategoryName ON recycling.Materials(CategoryName);