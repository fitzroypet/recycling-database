CREATE VIEW recycling.BusinessSearchView AS
SELECT 
    b.BusinessID,
    b.Name AS BusinessName,
    b.FormattedAddress,
    b.Latitude,
    b.Longitude,
    b.PhoneNumber,
    b.Website,
    b.Rating,
    STRING_AGG(mc.CategoryName, ', ') WITHIN GROUP (ORDER BY mc.CategoryName) AS MaterialsHandled,
    ac.LongName AS City,
    MAX(CASE WHEN ac.ComponentType = 'country' THEN ac.LongName END) AS Country,
    MAX(CASE WHEN ac.ComponentType = 'administrative_area_level_1' THEN ac.LongName END) AS State,
    wa.MaterialsFound AS WebsiteAnalysisResults
FROM recycling.Businesses b
LEFT JOIN recycling.BusinessMaterials bm ON b.BusinessID = bm.BusinessID
LEFT JOIN recycling.MaterialCategories mc ON bm.CategoryID = mc.CategoryID
LEFT JOIN recycling.AddressComponents ac ON b.BusinessID = ac.BusinessID
LEFT JOIN recycling.WebsiteAnalysis wa ON b.BusinessID = wa.BusinessID
WHERE b.IsActive = 1
GROUP BY 
    b.BusinessID,
    b.Name,
    b.FormattedAddress,
    b.Latitude,
    b.Longitude,
    b.PhoneNumber,
    b.Website,
    b.Rating,
    ac.LongName,
    wa.MaterialsFound; 