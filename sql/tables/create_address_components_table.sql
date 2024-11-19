CREATE TABLE recycling.AddressComponents (
    BusinessID INT,
    StreetAddress NVARCHAR(255),
    City NVARCHAR(100),
    State NVARCHAR(100),
    PostalCode NVARCHAR(20),
    Country NVARCHAR(100),
    PRIMARY KEY (BusinessID),
    FOREIGN KEY (BusinessID) REFERENCES recycling.Businesses(BusinessID)
);