CREATE TABLE recycling.AddressComponents (
    BusinessID INT,
    ComponentType NVARCHAR(50),
    LongName NVARCHAR(255),
    ShortName NVARCHAR(100),
    PRIMARY KEY (BusinessID, ComponentType),
    FOREIGN KEY (BusinessID) REFERENCES recycling.Businesses(BusinessID)
); 