-- Cleanup test data (optional)
BEGIN TRANSACTION;
    -- Delete in correct order due to foreign key constraints
    DELETE FROM recycling.TransactionMaterials 
    WHERE TransactionID = @TestTransactionID;
    
    DELETE FROM recycling.RecyclingTransactions 
    WHERE TransactionID = @TestTransactionID;
    
    DELETE FROM recycling.CollectionBookings 
    WHERE BookingID = @TestBookingID;
    
    DELETE FROM recycling.UserSubscriptions 
    WHERE SubscriptionID = @TestSubscriptionID;
    
    DELETE FROM recycling.Users 
    WHERE UserID = @TestUserID;
    
    DELETE FROM recycling.Businesses 
    WHERE BusinessID = @TestBusinessID;
COMMIT TRANSACTION;
PRINT 'Test data cleanup completed'; 