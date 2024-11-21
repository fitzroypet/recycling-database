SET NOCOUNT ON;
SET XACT_ABORT ON;
DECLARE @ErrorLog TABLE (BusinessName NVARCHAR(255), ErrorMessage NVARCHAR(MAX));
BEGIN TRY
    BEGIN TRANSACTION;

        BEGIN TRY
            DECLARE @BusinessID_0 INT;
            
            INSERT INTO recycling.Businesses (
                Name, FormattedAddress, Latitude, Longitude, PhoneNumber, 
                Website, Rating, PlaceID, ServiceKeywords
            ) VALUES (
                'Household Waste Recycling Centre',
                'Billingham, Stockton-on-Tees, Billingham TS23 1PZ, UK',
                54.5970539,
                -1.2538864,
                NULL,
                NULL,
                4.5,
                'ChIJ7wv47FvtfkgR55MLtHRlRtI',
                ''
            );
            
            SET @BusinessID_0 = SCOPE_IDENTITY();
            
            -- Address Components insert
            INSERT INTO recycling.AddressComponents (
                BusinessID, StreetAddress, City, State, PostalCode, Country
            ) VALUES (
                @BusinessID_0,
                NULL,
                'Billingham',
                'England',
                'TS23 1PZ',
                'United Kingdom'
            );
        

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_0, 1,
                '08:00:00',
                '19:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_0, 2,
                '08:00:00',
                '19:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_0, 3,
                '08:00:00',
                '19:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_0, 4,
                '08:00:00',
                '19:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_0, 5,
                '08:00:00',
                '19:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_0, 6,
                '08:00:00',
                '19:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_0, 0,
                '08:00:00',
                '19:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessServices (
                BusinessID, ServiceName, Description
            ) VALUES (
                @BusinessID_0,
                'Recycling Collection',
                'General recycling services'
            );
            
        END TRY
        BEGIN CATCH
            INSERT INTO @ErrorLog (BusinessName, ErrorMessage)
            VALUES ('Household Waste Recycling Centre', ERROR_MESSAGE());
        END CATCH
        

        BEGIN TRY
            DECLARE @BusinessID_1 INT;
            
            INSERT INTO recycling.Businesses (
                Name, FormattedAddress, Latitude, Longitude, PhoneNumber, 
                Website, Rating, PlaceID, ServiceKeywords
            ) VALUES (
                'Palm Recycling',
                'Pearsons Yard, Puddlers Rd, Middlesbrough TS6 6TX, UK',
                54.5825347,
                -1.1727699,
                '01642 456274',
                NULL,
                4,
                'ChIJVfjWreDtfkgRP_qINIgvy_g',
                ''
            );
            
            SET @BusinessID_1 = SCOPE_IDENTITY();
            
            -- Address Components insert
            INSERT INTO recycling.AddressComponents (
                BusinessID, StreetAddress, City, State, PostalCode, Country
            ) VALUES (
                @BusinessID_1,
                'Puddlers Road',
                'Middlesbrough',
                'England',
                'TS6 6TX',
                'United Kingdom'
            );
        

            INSERT INTO recycling.BusinessServices (
                BusinessID, ServiceName, Description
            ) VALUES (
                @BusinessID_1,
                'Recycling Collection',
                'General recycling services'
            );
            
        END TRY
        BEGIN CATCH
            INSERT INTO @ErrorLog (BusinessName, ErrorMessage)
            VALUES ('Palm Recycling', ERROR_MESSAGE());
        END CATCH
        

        BEGIN TRY
            DECLARE @BusinessID_2 INT;
            
            INSERT INTO recycling.Businesses (
                Name, FormattedAddress, Latitude, Longitude, PhoneNumber, 
                Website, Rating, PlaceID, ServiceKeywords
            ) VALUES (
                'Haverton Hill Recyclying Centre',
                '1PY, Haverton Hill Rd, Stockton-on-Tees, Billingham TS23 1PY, UK',
                54.5969399,
                -1.2588367,
                '07723 466991',
                'https://digital.stockton.gov.uk/article/992/Book-a-slot-Household-Waste-Recycling-Centre-Haverton-Hill',
                4.4,
                'ChIJCd_O6E_tfkgRi4Zweue5c4k',
                ''
            );
            
            SET @BusinessID_2 = SCOPE_IDENTITY();
            
            -- Address Components insert
            INSERT INTO recycling.AddressComponents (
                BusinessID, StreetAddress, City, State, PostalCode, Country
            ) VALUES (
                @BusinessID_2,
                'Haverton Hill Road',
                'Billingham',
                'England',
                'TS23 1PY',
                'United Kingdom'
            );
        

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_2, 1,
                '08:00:00',
                '18:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_2, 2,
                '08:00:00',
                '18:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_2, 3,
                '08:00:00',
                '18:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_2, 4,
                '08:00:00',
                '18:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_2, 5,
                '08:00:00',
                '18:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_2, 6,
                '08:00:00',
                '18:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_2, 0,
                '08:00:00',
                '18:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_2, MaterialID, 'plastic', 'PP', 1
            FROM recycling.Materials
            WHERE Description = 'PP';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_2, MaterialID, 'plastic', 'Mixed Plastics', 1
            FROM recycling.Materials
            WHERE Description = 'Mixed Plastics';
            

            INSERT INTO recycling.BusinessServices (
                BusinessID, ServiceName, Description
            ) VALUES (
                @BusinessID_2,
                'Recycling Collection',
                'Recycling services for automotive, plastic'
            );
            
        END TRY
        BEGIN CATCH
            INSERT INTO @ErrorLog (BusinessName, ErrorMessage)
            VALUES ('Haverton Hill Recyclying Centre', ERROR_MESSAGE());
        END CATCH
        

        BEGIN TRY
            DECLARE @BusinessID_3 INT;
            
            INSERT INTO recycling.Businesses (
                Name, FormattedAddress, Latitude, Longitude, PhoneNumber, 
                Website, Rating, PlaceID, ServiceKeywords
            ) VALUES (
                'Thirteen Recycling Centre',
                'Cowpen Lane Industrial Estate, Unit 11 Royce Ave, Billingham TS23 4BX, UK',
                54.61327180000001,
                -1.263336,
                NULL,
                'http://www.thirteengroup.co.uk/',
                4,
                'ChIJB1x-76_yfkgR5jslLplxatM',
                ''
            );
            
            SET @BusinessID_3 = SCOPE_IDENTITY();
            
            -- Address Components insert
            INSERT INTO recycling.AddressComponents (
                BusinessID, StreetAddress, City, State, PostalCode, Country
            ) VALUES (
                @BusinessID_3,
                'Royce Avenue',
                'Billingham',
                'England',
                'TS23 4BX',
                'United Kingdom'
            );
        

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_3, MaterialID, 'metal', 'Mixed Metals', 1
            FROM recycling.Materials
            WHERE Description = 'Mixed Metals';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_3, MaterialID, 'plastic', 'PS', 1
            FROM recycling.Materials
            WHERE Description = 'PS';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_3, MaterialID, 'plastic', 'PP', 1
            FROM recycling.Materials
            WHERE Description = 'PP';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_3, MaterialID, 'plastic', 'Mixed Plastics', 1
            FROM recycling.Materials
            WHERE Description = 'Mixed Plastics';
            

            INSERT INTO recycling.BusinessServices (
                BusinessID, ServiceName, Description
            ) VALUES (
                @BusinessID_3,
                'Recycling Collection',
                'Recycling services for metal, plastic'
            );
            
        END TRY
        BEGIN CATCH
            INSERT INTO @ErrorLog (BusinessName, ErrorMessage)
            VALUES ('Thirteen Recycling Centre', ERROR_MESSAGE());
        END CATCH
        

        BEGIN TRY
            DECLARE @BusinessID_4 INT;
            
            INSERT INTO recycling.Businesses (
                Name, FormattedAddress, Latitude, Longitude, PhoneNumber, 
                Website, Rating, PlaceID, ServiceKeywords
            ) VALUES (
                'SUEZ recycling and recovery UK',
                'Tees Valley HWRC, Haverton Hill Rd, Stockton-on-Tees, Billingham TS23 1PY, UK',
                54.5950929,
                -1.2586443,
                '01642 202300',
                'https://bit.ly/GBP_SUEZ_North',
                4.3,
                'ChIJK5K-Z0_tfkgR8UAhj68WQJI',
                ''
            );
            
            SET @BusinessID_4 = SCOPE_IDENTITY();
            
            -- Address Components insert
            INSERT INTO recycling.AddressComponents (
                BusinessID, StreetAddress, City, State, PostalCode, Country
            ) VALUES (
                @BusinessID_4,
                'Haverton Hill Road',
                'Billingham',
                'England',
                'TS23 1PY',
                'United Kingdom'
            );
        

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_4, 1,
                '08:00:00',
                '19:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_4, 2,
                '08:00:00',
                '19:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_4, 3,
                '08:00:00',
                '19:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_4, 4,
                '08:00:00',
                '19:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_4, 5,
                '08:00:00',
                '19:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_4, 6,
                '08:00:00',
                '19:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_4, 0,
                '08:00:00',
                '19:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_4, MaterialID, 'plastic', 'PP', 1
            FROM recycling.Materials
            WHERE Description = 'PP';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_4, MaterialID, 'glass', 'Glass', 1
            FROM recycling.Materials
            WHERE Description = 'Glass';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_4, MaterialID, 'metal', 'Mixed Metals', 1
            FROM recycling.Materials
            WHERE Description = 'Mixed Metals';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_4, MaterialID, 'paper', 'Mixed Paper (general)', 1
            FROM recycling.Materials
            WHERE Description = 'Mixed Paper (general)';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_4, MaterialID, 'plastic', 'Mixed Plastics', 1
            FROM recycling.Materials
            WHERE Description = 'Mixed Plastics';
            

            INSERT INTO recycling.BusinessServices (
                BusinessID, ServiceName, Description
            ) VALUES (
                @BusinessID_4,
                'Recycling Collection',
                'Recycling services for organic, paper, plastic, hazardous, glass, metal'
            );
            
        END TRY
        BEGIN CATCH
            INSERT INTO @ErrorLog (BusinessName, ErrorMessage)
            VALUES ('SUEZ recycling and recovery UK', ERROR_MESSAGE());
        END CATCH
        

        BEGIN TRY
            DECLARE @BusinessID_5 INT;
            
            INSERT INTO recycling.Businesses (
                Name, FormattedAddress, Latitude, Longitude, PhoneNumber, 
                Website, Rating, PlaceID, ServiceKeywords
            ) VALUES (
                'CNC Recycling Ltd',
                'Vulcan St, Middlesbrough TS2 1PP, UK',
                54.5833191,
                -1.2317879,
                '01642 983188',
                'http://www.upvc-recycling.com/',
                4.7,
                'ChIJxfQdXkHtfkgRbJWz2h5Salg',
                ''
            );
            
            SET @BusinessID_5 = SCOPE_IDENTITY();
            
            -- Address Components insert
            INSERT INTO recycling.AddressComponents (
                BusinessID, StreetAddress, City, State, PostalCode, Country
            ) VALUES (
                @BusinessID_5,
                'Vulcan Street',
                'Middlesbrough',
                'England',
                'TS2 1PP',
                'United Kingdom'
            );
        

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_5, 1,
                '09:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_5, 2,
                '09:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_5, 3,
                '09:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_5, 4,
                '09:00:00',
                '05:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_5, 5,
                '09:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_5, 6,
                NULL,
                NULL,
                1
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_5, 0,
                NULL,
                NULL,
                1
            );
            

            INSERT INTO recycling.BusinessServices (
                BusinessID, ServiceName, Description
            ) VALUES (
                @BusinessID_5,
                'Recycling Collection',
                'General recycling services'
            );
            
        END TRY
        BEGIN CATCH
            INSERT INTO @ErrorLog (BusinessName, ErrorMessage)
            VALUES ('CNC Recycling Ltd', ERROR_MESSAGE());
        END CATCH
        

        BEGIN TRY
            DECLARE @BusinessID_6 INT;
            
            INSERT INTO recycling.Businesses (
                Name, FormattedAddress, Latitude, Longitude, PhoneNumber, 
                Website, Rating, PlaceID, ServiceKeywords
            ) VALUES (
                'Scott Bros Recycling',
                'Haverton Hill Road, Stockton-on-Tees, Billingham TS23 1PY, UK',
                54.5957514,
                -1.2535154,
                '01642 750666',
                'https://scottbros.com/other-services/recycling/',
                3.8,
                'ChIJaQ86d1ztfkgRx1e__k00qF8',
                ''
            );
            
            SET @BusinessID_6 = SCOPE_IDENTITY();
            
            -- Address Components insert
            INSERT INTO recycling.AddressComponents (
                BusinessID, StreetAddress, City, State, PostalCode, Country
            ) VALUES (
                @BusinessID_6,
                NULL,
                'Billingham',
                'England',
                'TS23 1PY',
                'United Kingdom'
            );
        

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_6, 1,
                '07:30:00',
                '16:30:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_6, 2,
                '07:30:00',
                '16:30:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_6, 3,
                '07:30:00',
                '16:30:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_6, 4,
                '07:30:00',
                '16:30:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_6, 5,
                '07:30:00',
                '16:30:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_6, 6,
                '07:30:00',
                '12:30:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_6, 0,
                NULL,
                NULL,
                1
            );
            

            INSERT INTO recycling.BusinessServices (
                BusinessID, ServiceName, Description
            ) VALUES (
                @BusinessID_6,
                'Recycling Collection',
                'General recycling services'
            );
            
        END TRY
        BEGIN CATCH
            INSERT INTO @ErrorLog (BusinessName, ErrorMessage)
            VALUES ('Scott Bros Recycling', ERROR_MESSAGE());
        END CATCH
        

        BEGIN TRY
            DECLARE @BusinessID_7 INT;
            
            INSERT INTO recycling.Businesses (
                Name, FormattedAddress, Latitude, Longitude, PhoneNumber, 
                Website, Rating, PlaceID, ServiceKeywords
            ) VALUES (
                'EMR Middlesbrough',
                'Depot Rd, Middlesbrough TS2 1LE, UK',
                54.5853775,
                -1.2398243,
                '01642 247419',
                'https://uk.emrlocal.com/yards/emr-middlesbrough-scrap-metal',
                4.5,
                'ChIJDdHbbWztfkgRfxZB6PrexyY',
                ''
            );
            
            SET @BusinessID_7 = SCOPE_IDENTITY();
            
            -- Address Components insert
            INSERT INTO recycling.AddressComponents (
                BusinessID, StreetAddress, City, State, PostalCode, Country
            ) VALUES (
                @BusinessID_7,
                'Depot Road',
                'Middlesbrough',
                'England',
                'TS2 1LE',
                'United Kingdom'
            );
        

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_7, 1,
                '07:00:00',
                '16:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_7, 2,
                '07:00:00',
                '16:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_7, 3,
                '07:00:00',
                '16:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_7, 4,
                '07:00:00',
                '16:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_7, 5,
                '07:00:00',
                '16:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_7, 6,
                '07:30:00',
                '11:15:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_7, 0,
                NULL,
                NULL,
                1
            );
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_7, MaterialID, 'plastic', 'PP', 1
            FROM recycling.Materials
            WHERE Description = 'PP';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_7, MaterialID, 'plastic', 'PVC', 1
            FROM recycling.Materials
            WHERE Description = 'PVC';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_7, MaterialID, 'glass', 'Glass', 1
            FROM recycling.Materials
            WHERE Description = 'Glass';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_7, MaterialID, 'metal', 'Mixed Metals', 1
            FROM recycling.Materials
            WHERE Description = 'Mixed Metals';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_7, MaterialID, 'paper', 'Mixed Paper (general)', 1
            FROM recycling.Materials
            WHERE Description = 'Mixed Paper (general)';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_7, MaterialID, 'plastic', 'Mixed Plastics', 1
            FROM recycling.Materials
            WHERE Description = 'Mixed Plastics';
            

            INSERT INTO recycling.BusinessServices (
                BusinessID, ServiceName, Description
            ) VALUES (
                @BusinessID_7,
                'Recycling Collection',
                'Recycling services for paper, plastic, hazardous, automotive, glass, batteries, metal'
            );
            
        END TRY
        BEGIN CATCH
            INSERT INTO @ErrorLog (BusinessName, ErrorMessage)
            VALUES ('EMR Middlesbrough', ERROR_MESSAGE());
        END CATCH
        

        BEGIN TRY
            DECLARE @BusinessID_8 INT;
            
            INSERT INTO recycling.Businesses (
                Name, FormattedAddress, Latitude, Longitude, PhoneNumber, 
                Website, Rating, PlaceID, ServiceKeywords
            ) VALUES (
                'Recycling IT',
                'Tees Court, Wallis Rd, Skippers Lane Industrial Estate, Middlesbrough TS6 6JB, UK',
                54.5717904,
                -1.1843371,
                '01642 455466',
                'http://www.recycling-it.co.uk/',
                NULL,
                'ChIJod7MksXtfkgROxRaqt_BiAE',
                ''
            );
            
            SET @BusinessID_8 = SCOPE_IDENTITY();
            
            -- Address Components insert
            INSERT INTO recycling.AddressComponents (
                BusinessID, StreetAddress, City, State, PostalCode, Country
            ) VALUES (
                @BusinessID_8,
                'Wallis Road',
                'Middlesbrough',
                'England',
                'TS6 6JB',
                'United Kingdom'
            );
        

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_8, 1,
                '09:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_8, 2,
                '09:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_8, 3,
                '09:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_8, 4,
                '09:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_8, 5,
                '09:00:00',
                '15:30:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_8, 6,
                NULL,
                NULL,
                1
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_8, 0,
                NULL,
                NULL,
                1
            );
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_8, MaterialID, 'glass', 'Glass', 1
            FROM recycling.Materials
            WHERE Description = 'Glass';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_8, MaterialID, 'metal', 'Mixed Metals', 1
            FROM recycling.Materials
            WHERE Description = 'Mixed Metals';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_8, MaterialID, 'paper', 'Mixed Paper (general)', 1
            FROM recycling.Materials
            WHERE Description = 'Mixed Paper (general)';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_8, MaterialID, 'plastic', 'Mixed Plastics', 1
            FROM recycling.Materials
            WHERE Description = 'Mixed Plastics';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_8, MaterialID, 'plastic', 'PS', 1
            FROM recycling.Materials
            WHERE Description = 'PS';
            

            INSERT INTO recycling.BusinessServices (
                BusinessID, ServiceName, Description
            ) VALUES (
                @BusinessID_8,
                'Recycling Collection',
                'Recycling services for organic, paper, electronics, plastic, glass, metal'
            );
            
        END TRY
        BEGIN CATCH
            INSERT INTO @ErrorLog (BusinessName, ErrorMessage)
            VALUES ('Recycling IT', ERROR_MESSAGE());
        END CATCH
        

        BEGIN TRY
            DECLARE @BusinessID_9 INT;
            
            INSERT INTO recycling.Businesses (
                Name, FormattedAddress, Latitude, Longitude, PhoneNumber, 
                Website, Rating, PlaceID, ServiceKeywords
            ) VALUES (
                'Trinity recycling center',
                'Billingham Reach Industrial Estate, Stockton-on-Tees, Billingham TS23 1PS, UK',
                54.586885,
                -1.2668026,
                NULL,
                NULL,
                NULL,
                'ChIJFXjAhortfkgREsue4n3basg',
                ''
            );
            
            SET @BusinessID_9 = SCOPE_IDENTITY();
            
            -- Address Components insert
            INSERT INTO recycling.AddressComponents (
                BusinessID, StreetAddress, City, State, PostalCode, Country
            ) VALUES (
                @BusinessID_9,
                NULL,
                'Billingham',
                'England',
                'TS23 1PS',
                'United Kingdom'
            );
        

            INSERT INTO recycling.BusinessServices (
                BusinessID, ServiceName, Description
            ) VALUES (
                @BusinessID_9,
                'Recycling Collection',
                'Recycling services for general'
            );
            
        END TRY
        BEGIN CATCH
            INSERT INTO @ErrorLog (BusinessName, ErrorMessage)
            VALUES ('Trinity recycling center', ERROR_MESSAGE());
        END CATCH
        

        BEGIN TRY
            DECLARE @BusinessID_10 INT;
            
            INSERT INTO recycling.Businesses (
                Name, FormattedAddress, Latitude, Longitude, PhoneNumber, 
                Website, Rating, PlaceID, ServiceKeywords
            ) VALUES (
                'J&B Recycling (South Tees)',
                'Normanby Wharf, Middlesbrough TS3 8AT, UK',
                54.5806834,
                -1.1961986,
                '01642 232215',
                'https://www.jbrecycling.co.uk/',
                NULL,
                'ChIJ0YHkS7btfkgR9i75ANg5WSY',
                ''
            );
            
            SET @BusinessID_10 = SCOPE_IDENTITY();
            
            -- Address Components insert
            INSERT INTO recycling.AddressComponents (
                BusinessID, StreetAddress, City, State, PostalCode, Country
            ) VALUES (
                @BusinessID_10,
                NULL,
                'Middlesbrough',
                'England',
                'TS3 8AT',
                'United Kingdom'
            );
        

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_10, 1,
                '07:00:00',
                '16:30:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_10, 2,
                '07:00:00',
                '16:30:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_10, 3,
                '07:00:00',
                '16:30:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_10, 4,
                '07:00:00',
                '16:30:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_10, 5,
                '07:00:00',
                '16:30:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_10, 6,
                NULL,
                NULL,
                1
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_10, 0,
                NULL,
                NULL,
                1
            );
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_10, MaterialID, 'plastic', 'PP', 1
            FROM recycling.Materials
            WHERE Description = 'PP';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_10, MaterialID, 'glass', 'Glass', 1
            FROM recycling.Materials
            WHERE Description = 'Glass';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_10, MaterialID, 'paper', 'Mixed Paper (general)', 1
            FROM recycling.Materials
            WHERE Description = 'Mixed Paper (general)';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_10, MaterialID, 'plastic', 'Mixed Plastics', 1
            FROM recycling.Materials
            WHERE Description = 'Mixed Plastics';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_10, MaterialID, 'plastic', 'PS', 1
            FROM recycling.Materials
            WHERE Description = 'PS';
            

            INSERT INTO recycling.BusinessServices (
                BusinessID, ServiceName, Description
            ) VALUES (
                @BusinessID_10,
                'Recycling Collection',
                'Recycling services for organic, paper, plastic, hazardous, glass, metal'
            );
            
        END TRY
        BEGIN CATCH
            INSERT INTO @ErrorLog (BusinessName, ErrorMessage)
            VALUES ('J&B Recycling (South Tees)', ERROR_MESSAGE());
        END CATCH
        

        BEGIN TRY
            DECLARE @BusinessID_11 INT;
            
            INSERT INTO recycling.Businesses (
                Name, FormattedAddress, Latitude, Longitude, PhoneNumber, 
                Website, Rating, PlaceID, ServiceKeywords
            ) VALUES (
                'Signif Recycling',
                'Middlesbrough TS3 8BT, UK',
                54.5703116,
                -1.1990574,
                '07462 005205',
                NULL,
                NULL,
                'ChIJL7GDg2vtfkgRtb3sM2NLVNI',
                ''
            );
            
            SET @BusinessID_11 = SCOPE_IDENTITY();
            
            -- Address Components insert
            INSERT INTO recycling.AddressComponents (
                BusinessID, StreetAddress, City, State, PostalCode, Country
            ) VALUES (
                @BusinessID_11,
                NULL,
                'Middlesbrough',
                'England',
                'TS3 8BT',
                'United Kingdom'
            );
        

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_11, 1,
                '09:00:00',
                '04:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_11, 2,
                '09:00:00',
                '04:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_11, 3,
                '09:00:00',
                '04:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_11, 4,
                '09:00:00',
                '04:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_11, 5,
                '09:00:00',
                '04:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_11, 6,
                '09:00:00',
                '04:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_11, 0,
                '09:00:00',
                '04:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessServices (
                BusinessID, ServiceName, Description
            ) VALUES (
                @BusinessID_11,
                'Recycling Collection',
                'General recycling services'
            );
            
        END TRY
        BEGIN CATCH
            INSERT INTO @ErrorLog (BusinessName, ErrorMessage)
            VALUES ('Signif Recycling', ERROR_MESSAGE());
        END CATCH
        

        BEGIN TRY
            DECLARE @BusinessID_12 INT;
            
            INSERT INTO recycling.Businesses (
                Name, FormattedAddress, Latitude, Longitude, PhoneNumber, 
                Website, Rating, PlaceID, ServiceKeywords
            ) VALUES (
                'Scott Bros Recycling Ltd. South Tees Recycle Centre',
                'Holden close, Bolkow Industrial Estate, Holden Cl, Middlesbrough TS6 7BN, UK',
                54.5794329,
                -1.1580166,
                '01642 750666',
                'http://www.scottbros.com/contact-us/',
                3,
                'ChIJNx7_p3PufkgRQM1s2v_egaY',
                ''
            );
            
            SET @BusinessID_12 = SCOPE_IDENTITY();
            
            -- Address Components insert
            INSERT INTO recycling.AddressComponents (
                BusinessID, StreetAddress, City, State, PostalCode, Country
            ) VALUES (
                @BusinessID_12,
                'Holden Close',
                'Middlesbrough',
                'England',
                'TS6 7BN',
                'United Kingdom'
            );
        

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_12, 1,
                '07:30:00',
                '17:30:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_12, 2,
                '07:30:00',
                '17:30:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_12, 3,
                '07:30:00',
                '17:30:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_12, 4,
                '07:30:00',
                '17:30:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_12, 5,
                '07:30:00',
                '17:30:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_12, 6,
                '07:30:00',
                '13:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_12, 0,
                NULL,
                NULL,
                1
            );
            

            INSERT INTO recycling.BusinessServices (
                BusinessID, ServiceName, Description
            ) VALUES (
                @BusinessID_12,
                'Recycling Collection',
                'General recycling services'
            );
            
        END TRY
        BEGIN CATCH
            INSERT INTO @ErrorLog (BusinessName, ErrorMessage)
            VALUES ('Scott Bros Recycling Ltd. South Tees Recycle Centre', ERROR_MESSAGE());
        END CATCH
        

        BEGIN TRY
            DECLARE @BusinessID_13 INT;
            
            INSERT INTO recycling.Businesses (
                Name, FormattedAddress, Latitude, Longitude, PhoneNumber, 
                Website, Rating, PlaceID, ServiceKeywords
            ) VALUES (
                'Scott Bros Ltd',
                'Haverton Hill Rd, Stockton-on-Tees TS23 1PY, UK',
                54.5907838,
                -1.2613822,
                '01642 750666',
                'https://scottbros.com/commercial-refinishing/',
                4.3,
                'ChIJGxj380_tfkgRO8lcAtUfCZk',
                ''
            );
            
            SET @BusinessID_13 = SCOPE_IDENTITY();
            
            -- Address Components insert
            INSERT INTO recycling.AddressComponents (
                BusinessID, StreetAddress, City, State, PostalCode, Country
            ) VALUES (
                @BusinessID_13,
                'Haverton Hill Road',
                'Stockton-on-Tees',
                'England',
                'TS23 1PY',
                'United Kingdom'
            );
        

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_13, 1,
                '07:00:00',
                '16:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_13, 2,
                '07:00:00',
                '16:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_13, 3,
                '07:00:00',
                '16:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_13, 4,
                '07:00:00',
                '16:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_13, 5,
                '07:00:00',
                '16:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_13, 6,
                '07:00:00',
                '12:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_13, 0,
                NULL,
                NULL,
                1
            );
            

            INSERT INTO recycling.BusinessServices (
                BusinessID, ServiceName, Description
            ) VALUES (
                @BusinessID_13,
                'Recycling Collection',
                'General recycling services'
            );
            
        END TRY
        BEGIN CATCH
            INSERT INTO @ErrorLog (BusinessName, ErrorMessage)
            VALUES ('Scott Bros Ltd', ERROR_MESSAGE());
        END CATCH
        

        BEGIN TRY
            DECLARE @BusinessID_14 INT;
            
            INSERT INTO recycling.Businesses (
                Name, FormattedAddress, Latitude, Longitude, PhoneNumber, 
                Website, Rating, PlaceID, ServiceKeywords
            ) VALUES (
                'DCE Recycle ITLtd',
                'Collingwood Court Riverside Park Industrial Estate, 36 Collingwood Ct, Middlesbrough TS2 1RP, UK',
                54.5873996,
                -1.2547553,
                '07597 126327',
                NULL,
                NULL,
                'ChIJJ23SEUTtfkgRjPy7QxdNOm8',
                ''
            );
            
            SET @BusinessID_14 = SCOPE_IDENTITY();
            
            -- Address Components insert
            INSERT INTO recycling.AddressComponents (
                BusinessID, StreetAddress, City, State, PostalCode, Country
            ) VALUES (
                @BusinessID_14,
                'Collingwood Court',
                'Middlesbrough',
                'England',
                'TS2 1RP',
                'United Kingdom'
            );
        

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_14, 1,
                '09:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_14, 2,
                '09:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_14, 3,
                '09:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_14, 4,
                '09:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_14, 5,
                '09:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_14, 6,
                '09:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_14, 0,
                NULL,
                NULL,
                1
            );
            

            INSERT INTO recycling.BusinessServices (
                BusinessID, ServiceName, Description
            ) VALUES (
                @BusinessID_14,
                'Recycling Collection',
                'General recycling services'
            );
            
        END TRY
        BEGIN CATCH
            INSERT INTO @ErrorLog (BusinessName, ErrorMessage)
            VALUES ('DCE Recycle ITLtd', ERROR_MESSAGE());
        END CATCH
        

        BEGIN TRY
            DECLARE @BusinessID_15 INT;
            
            INSERT INTO recycling.Businesses (
                Name, FormattedAddress, Latitude, Longitude, PhoneNumber, 
                Website, Rating, PlaceID, ServiceKeywords
            ) VALUES (
                'Middlesbrough Snap Skips Rental',
                'Lodore Grove, Middlesbrough TS5 8PA, UK',
                54.5443498,
                -1.25948,
                '01642 937747',
                NULL,
                4,
                'ChIJf37TiwrtfkgR72u17i8Ovlw',
                ''
            );
            
            SET @BusinessID_15 = SCOPE_IDENTITY();
            
            -- Address Components insert
            INSERT INTO recycling.AddressComponents (
                BusinessID, StreetAddress, City, State, PostalCode, Country
            ) VALUES (
                @BusinessID_15,
                'Lodore Grove',
                'Middlesbrough',
                'England',
                'TS5 8PA',
                'United Kingdom'
            );
        

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_15, 1,
                '08:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_15, 2,
                '08:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_15, 3,
                '08:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_15, 4,
                '08:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_15, 5,
                '08:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_15, 6,
                '08:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_15, 0,
                NULL,
                NULL,
                1
            );
            

            INSERT INTO recycling.BusinessServices (
                BusinessID, ServiceName, Description
            ) VALUES (
                @BusinessID_15,
                'Recycling Collection',
                'General recycling services'
            );
            
        END TRY
        BEGIN CATCH
            INSERT INTO @ErrorLog (BusinessName, ErrorMessage)
            VALUES ('Middlesbrough Snap Skips Rental', ERROR_MESSAGE());
        END CATCH
        

        BEGIN TRY
            DECLARE @BusinessID_16 INT;
            
            INSERT INTO recycling.Businesses (
                Name, FormattedAddress, Latitude, Longitude, PhoneNumber, 
                Website, Rating, PlaceID, ServiceKeywords
            ) VALUES (
                'Quick stop recycle ltd',
                '4 Depot Rd, Middlesbrough TS2 1LE, UK',
                54.5841568,
                -1.2364611,
                NULL,
                NULL,
                NULL,
                'ChIJWS8wLADtfkgR6Dj8S6sBw5M',
                ''
            );
            
            SET @BusinessID_16 = SCOPE_IDENTITY();
            
            -- Address Components insert
            INSERT INTO recycling.AddressComponents (
                BusinessID, StreetAddress, City, State, PostalCode, Country
            ) VALUES (
                @BusinessID_16,
                'Depot Road',
                'Middlesbrough',
                'England',
                'TS2 1LE',
                'United Kingdom'
            );
        

            INSERT INTO recycling.BusinessServices (
                BusinessID, ServiceName, Description
            ) VALUES (
                @BusinessID_16,
                'Recycling Collection',
                'General recycling services'
            );
            
        END TRY
        BEGIN CATCH
            INSERT INTO @ErrorLog (BusinessName, ErrorMessage)
            VALUES ('Quick stop recycle ltd', ERROR_MESSAGE());
        END CATCH
        

        BEGIN TRY
            DECLARE @BusinessID_17 INT;
            
            INSERT INTO recycling.Businesses (
                Name, FormattedAddress, Latitude, Longitude, PhoneNumber, 
                Website, Rating, PlaceID, ServiceKeywords
            ) VALUES (
                'Smart Recycling - Cash 4 Clothes',
                'Pavilion Shopping Centre, Thornaby, Stockton-on-Tees TS17 9FF, UK',
                54.5406426,
                -1.2910924,
                '01609 780555',
                'http://www.smartrecycling.org.uk/',
                2.4,
                'ChIJQylBNzmTfkgR8sV-LPHVyng',
                ''
            );
            
            SET @BusinessID_17 = SCOPE_IDENTITY();
            
            -- Address Components insert
            INSERT INTO recycling.AddressComponents (
                BusinessID, StreetAddress, City, State, PostalCode, Country
            ) VALUES (
                @BusinessID_17,
                NULL,
                'Stockton-on-Tees',
                'England',
                'TS17 9FF',
                'United Kingdom'
            );
        

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_17, 1,
                '09:30:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_17, 2,
                '09:30:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_17, 3,
                '09:30:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_17, 4,
                '09:30:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_17, 5,
                '09:30:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_17, 6,
                '09:30:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_17, 0,
                NULL,
                NULL,
                1
            );
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_17, MaterialID, 'metal', 'Mixed Metals', 1
            FROM recycling.Materials
            WHERE Description = 'Mixed Metals';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_17, MaterialID, 'plastic', 'PS', 1
            FROM recycling.Materials
            WHERE Description = 'PS';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_17, MaterialID, 'plastic', 'PP', 1
            FROM recycling.Materials
            WHERE Description = 'PP';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_17, MaterialID, 'plastic', 'Mixed Plastics', 1
            FROM recycling.Materials
            WHERE Description = 'Mixed Plastics';
            

            INSERT INTO recycling.BusinessServices (
                BusinessID, ServiceName, Description
            ) VALUES (
                @BusinessID_17,
                'Recycling Collection',
                'Recycling services for textile, metal, plastic'
            );
            
        END TRY
        BEGIN CATCH
            INSERT INTO @ErrorLog (BusinessName, ErrorMessage)
            VALUES ('Smart Recycling - Cash 4 Clothes', ERROR_MESSAGE());
        END CATCH
        

        BEGIN TRY
            DECLARE @BusinessID_18 INT;
            
            INSERT INTO recycling.Businesses (
                Name, FormattedAddress, Latitude, Longitude, PhoneNumber, 
                Website, Rating, PlaceID, ServiceKeywords
            ) VALUES (
                'Cupral',
                'Middlesbrough TS2 1DJ, UK',
                54.5757262,
                -1.2585161,
                NULL,
                NULL,
                2.8,
                'ChIJg51MqGrtfkgR0sz_zUHu3Hw',
                ''
            );
            
            SET @BusinessID_18 = SCOPE_IDENTITY();
            
            -- Address Components insert
            INSERT INTO recycling.AddressComponents (
                BusinessID, StreetAddress, City, State, PostalCode, Country
            ) VALUES (
                @BusinessID_18,
                NULL,
                'Middlesbrough',
                'England',
                'TS2 1DJ',
                'United Kingdom'
            );
        

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_18, 1,
                '08:00:00',
                '16:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_18, 2,
                '08:00:00',
                '16:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_18, 3,
                '08:00:00',
                '16:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_18, 4,
                '08:00:00',
                '16:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_18, 5,
                '08:00:00',
                '16:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_18, 6,
                NULL,
                NULL,
                1
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_18, 0,
                NULL,
                NULL,
                1
            );
            

            INSERT INTO recycling.BusinessServices (
                BusinessID, ServiceName, Description
            ) VALUES (
                @BusinessID_18,
                'Recycling Collection',
                'General recycling services'
            );
            
        END TRY
        BEGIN CATCH
            INSERT INTO @ErrorLog (BusinessName, ErrorMessage)
            VALUES ('Cupral', ERROR_MESSAGE());
        END CATCH
        

        BEGIN TRY
            DECLARE @BusinessID_19 INT;
            
            INSERT INTO recycling.Businesses (
                Name, FormattedAddress, Latitude, Longitude, PhoneNumber, 
                Website, Rating, PlaceID, ServiceKeywords
            ) VALUES (
                'Smart Recycling - Cash 4 Clothes',
                'Ind Est near Pets at Home, Cleveland Retail Park, Skippers Ln, Middlesbrough TS6 6UX, UK',
                54.56992510000001,
                -1.1804328,
                '01609 780555',
                'http://www.smartrecycling.org.uk/',
                3.7,
                'ChIJXyOI82DtfkgRDMUo_RGtESw',
                ''
            );
            
            SET @BusinessID_19 = SCOPE_IDENTITY();
            
            -- Address Components insert
            INSERT INTO recycling.AddressComponents (
                BusinessID, StreetAddress, City, State, PostalCode, Country
            ) VALUES (
                @BusinessID_19,
                'Skippers Lane',
                'Middlesbrough',
                'England',
                'TS6 6UX',
                'United Kingdom'
            );
        

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_19, 1,
                '10:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_19, 2,
                '10:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_19, 3,
                '10:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_19, 4,
                '10:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_19, 5,
                '10:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_19, 6,
                '10:00:00',
                '17:00:00',
                0
            );
            

            INSERT INTO recycling.BusinessHours (
                BusinessID, DayOfWeek, OpenTime, CloseTime, IsClosed
            ) VALUES (
                @BusinessID_19, 0,
                NULL,
                NULL,
                1
            );
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_19, MaterialID, 'metal', 'Mixed Metals', 1
            FROM recycling.Materials
            WHERE Description = 'Mixed Metals';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_19, MaterialID, 'plastic', 'PS', 1
            FROM recycling.Materials
            WHERE Description = 'PS';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_19, MaterialID, 'plastic', 'PP', 1
            FROM recycling.Materials
            WHERE Description = 'PP';
            

            INSERT INTO recycling.BusinessMaterials (
                BusinessID, MaterialID, CategoryName, Description, IsVerified
            )
            SELECT @BusinessID_19, MaterialID, 'plastic', 'Mixed Plastics', 1
            FROM recycling.Materials
            WHERE Description = 'Mixed Plastics';
            

            INSERT INTO recycling.BusinessServices (
                BusinessID, ServiceName, Description
            ) VALUES (
                @BusinessID_19,
                'Recycling Collection',
                'Recycling services for textile, metal, plastic'
            );
            
        END TRY
        BEGIN CATCH
            INSERT INTO @ErrorLog (BusinessName, ErrorMessage)
            VALUES ('Smart Recycling - Cash 4 Clothes', ERROR_MESSAGE());
        END CATCH
        
    COMMIT TRANSACTION;
    SELECT * FROM @ErrorLog WHERE ErrorMessage IS NOT NULL;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION;
    SELECT * FROM @ErrorLog WHERE ErrorMessage IS NOT NULL;
    THROW;
END CATCH