-- Test User Subscription
DECLARE @TestSubscriptionID INT;

INSERT INTO recycling.UserSubscriptions (
    UserID,
    BusinessID,
    NotificationsEnabled
)
VALUES (
    @TestUserID,
    @TestBusinessID,
    1
);

SET @TestSubscriptionID = SCOPE_IDENTITY();
PRINT 'Created test subscription with ID: ' + CAST(@TestSubscriptionID AS NVARCHAR(10));

-- Verify subscription
IF EXISTS (SELECT 1 FROM recycling.UserSubscriptions WHERE SubscriptionID = @TestSubscriptionID)
    PRINT 'Subscription creation test: PASSED'
ELSE
    THROW 50000, 'Subscription creation test: FAILED', 1; 