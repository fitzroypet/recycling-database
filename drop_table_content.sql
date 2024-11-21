BEGIN TRANSACTION;

-- Disable foreign key constraints temporarily
ALTER TABLE recycling.BusinessHours NOCHECK CONSTRAINT ALL;
ALTER TABLE recycling.BusinessMaterials NOCHECK CONSTRAINT ALL;
ALTER TABLE recycling.BusinessServices NOCHECK CONSTRAINT ALL;
ALTER TABLE recycling.AddressComponents NOCHECK CONSTRAINT ALL;

-- Delete data from child tables first
DELETE FROM recycling.BusinessHours;
DELETE FROM recycling.BusinessMaterials;
DELETE FROM recycling.BusinessServices;
DELETE FROM recycling.AddressComponents;

-- Then delete from parent table
DELETE FROM recycling.Businesses;

-- Re-enable foreign key constraints
ALTER TABLE recycling.BusinessHours CHECK CONSTRAINT ALL;
ALTER TABLE recycling.BusinessMaterials CHECK CONSTRAINT ALL;
ALTER TABLE recycling.BusinessServices CHECK CONSTRAINT ALL;
ALTER TABLE recycling.AddressComponents CHECK CONSTRAINT ALL;

-- Reset identity columns if needed
DBCC CHECKIDENT ('recycling.Businesses', RESEED, 0);
DBCC CHECKIDENT ('recycling.BusinessHours', RESEED, 0);
DBCC CHECKIDENT ('recycling.BusinessServices', RESEED, 0);
DBCC CHECKIDENT ('recycling.AddressComponents', RESEED, 0);

COMMIT TRANSACTION;