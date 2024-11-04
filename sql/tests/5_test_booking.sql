-- Test Collection Booking
DECLARE @TestBookingID INT;

INSERT INTO recycling.CollectionBookings (
    BusinessID,
    UserID,
    BookingType,
    ScheduledDate,
    ScheduledTimeSlot,
    Status,
    Address,
    Latitude,
    Longitude,
    Notes
)
VALUES (
    @TestBusinessID,
    @TestUserID,
    'PICKUP',
    DATEADD(day, 1, GETDATE()),
    '09:00-10:00',
    'PENDING',
    '123 Test Street, Test City',
    -1.2921,
    36.8219,
    'Test booking'
);

SET @TestBookingID = SCOPE_IDENTITY();
PRINT 'Created test booking with ID: ' + CAST(@TestBookingID AS NVARCHAR(10));

-- Verify booking
IF EXISTS (SELECT 1 FROM recycling.CollectionBookings WHERE BookingID = @TestBookingID)
    PRINT 'Booking creation test: PASSED'
ELSE
    THROW 50000, 'Booking creation test: FAILED', 1; 