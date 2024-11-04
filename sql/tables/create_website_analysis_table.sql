CREATE TABLE recycling.WebsiteAnalysis (
    AnalysisID INT IDENTITY(1,1) PRIMARY KEY,
    BusinessID INT FOREIGN KEY REFERENCES recycling.Businesses(BusinessID),
    LastAnalyzed DATETIME2,
    RawContent NVARCHAR(MAX),
    MaterialsFound NVARCHAR(MAX),
    ConfidenceScore DECIMAL(5,2)
); 