/**
 * Authentication Endpoints
 * /api/auth/*
 */
POST    /api/auth/register           // Register new user
POST    /api/auth/login              // User login
POST    /api/auth/refresh-token      // Refresh JWT token
POST    /api/auth/forgot-password    // Password recovery
POST    /api/auth/reset-password     // Reset password
POST    /api/auth/verify-email       // Email verification

/**
 * User Management
 * /api/users/*
 */
GET     /api/users/profile           // Get user profile
PUT     /api/users/profile           // Update user profile
GET     /api/users/transactions      // Get user's recycling history
GET     /api/users/subscriptions     // Get user's subscribed businesses
POST    /api/users/notifications     // Update notification preferences

/**
 * Business Management
 * /api/businesses/*
 */
GET     /api/businesses              // List all businesses (with filters)
GET     /api/businesses/:id          // Get business details
POST    /api/businesses              // Register new business
PUT     /api/businesses/:id          // Update business details
DELETE  /api/businesses/:id          // Delete business
POST    /api/businesses/verify       // Verify business account
GET     /api/businesses/:id/hours    // Get business hours
PUT     /api/businesses/:id/hours    // Update business hours
GET     /api/businesses/:id/materials // Get materials handled
PUT     /api/businesses/:id/materials // Update materials handled

/**
 * Materials Management
 * /api/materials/*
 */
GET     /api/materials               // List all material categories
GET     /api/materials/:id           // Get material details
POST    /api/materials               // Add new material category (admin)
PUT     /api/materials/:id           // Update material category (admin)

/**
 * Bookings/Collections
 * /api/bookings/*
 */
GET     /api/bookings               // List user's bookings
POST    /api/bookings               // Create new booking
GET     /api/bookings/:id           // Get booking details
PUT     /api/bookings/:id           // Update booking
DELETE  /api/bookings/:id           // Cancel booking
GET     /api/bookings/slots/:businessId  // Get available time slots

/**
 * Transactions
 * /api/transactions/*
 */
GET     /api/transactions           // List transactions
POST    /api/transactions           // Record new transaction
GET     /api/transactions/:id       // Get transaction details
PUT     /api/transactions/:id       // Update transaction
GET     /api/transactions/stats     // Get transaction statistics

/**
 * Search
 * /api/search/*
 */
GET     /api/search/businesses      // Search businesses
GET     /api/search/materials       // Search materials
GET     /api/search/nearby          // Find nearby recyclers

/**
 * Subscriptions
 * /api/subscriptions/*
 */
POST    /api/subscriptions/:businessId  // Subscribe to business
DELETE  /api/subscriptions/:businessId  // Unsubscribe from business
GET     /api/subscriptions/notifications // Get subscription notifications 