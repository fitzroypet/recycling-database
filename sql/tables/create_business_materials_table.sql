CREATE TABLE recycling.BusinessMaterials (
    BusinessID INT,
    CategoryID INT,
    IsVerified BIT DEFAULT 0,
    VerificationSource NVARCHAR(50),
    DateVerified DATETIME2,
    PRIMARY KEY (BusinessID, CategoryID),
    FOREIGN KEY (BusinessID) REFERENCES recycling.Businesses(BusinessID),
    FOREIGN KEY (CategoryID) REFERENCES recycling.MaterialCategories(CategoryID)
);

CREATE INDEX IX_BusinessMaterials_Category ON recycling.BusinessMaterials(CategoryID); 