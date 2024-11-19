# API Setup Guide

## Directory Structure 

typescript:server/src/index.ts
server/
├── src/
│ ├── routes/ # API route definitions
│ │ ├── auth.routes.ts # Authentication routes
│ │ ├── users.routes.ts
│ │ ├── business.routes.ts
│ │ ├── materials.routes.ts
│ │ ├── bookings.routes.ts
│ │ └── transactions.routes.ts
│ │
│ ├── controllers/ # Route handlers
│ │ ├── auth.controller.ts
│ │ ├── users.controller.ts
│ │ ├── business.controller.ts
│ │ ├── materials.controller.ts
│ │ ├── bookings.controller.ts
│ │ └── transactions.controller.ts
│ │
│ ├── services/ # Business logic
│ │ ├── auth.service.ts
│ │ ├── users.service.ts
│ │ ├── business.service.ts
│ │ ├── materials.service.ts
│ │ ├── bookings.service.ts
│ │ └── transactions.service.ts
│ │
│ ├── middleware/ # Custom middleware
│ │ ├── auth.middleware.ts
│ │ ├── validate.middleware.ts
│ │ └── error.middleware.ts
│ │
│ └── index.ts # Main application file


Here's how to set it up:

1. **Main Application Setup**:

typescript:server/src/index.ts
import express from 'express';
import cors from 'cors';
import { connectDB } from './db/connection';
import authRoutes from './routes/auth.routes';
import userRoutes from './routes/users.routes';
import businessRoutes from './routes/business.routes';
// ... other imports
const app = express();
const PORT = process.env.PORT || 5000;
// Middleware
app.use(cors());
app.use(express.json());
// Routes
app.use('/api/auth', authRoutes);
app.use('/api/users', userRoutes);
app.use('/api/businesses', businessRoutes);
app.use('/api/materials', materialsRoutes);
app.use('/api/bookings', bookingsRoutes);
app.use('/api/transactions', transactionsRoutes);
// Error handling
app.use(errorMiddleware);
// Start server
connectDB().then(() => {
app.listen(PORT, () => {
console.log(Server running on port ${PORT});
});
});


2. **Route Example**:

typescript:server/src/routes/business.routes.ts
import { Router } from 'express';
import { authMiddleware } from '../middleware/auth.middleware';
import {
getBusinesses,
getBusiness,
createBusiness,
updateBusiness,
deleteBusiness
} from '../controllers/business.controller';
const router = Router();
router.get('/', getBusinesses);
router.get('/:id', getBusiness);
router.post('/', authMiddleware, createBusiness);
router.put('/:id', authMiddleware, updateBusiness);
router.delete('/:id', authMiddleware, deleteBusiness);
export default router;


3. **Controller Example**:

typescript:server/src/controllers/business.controller.ts
import { Request, Response, NextFunction } from 'express';
import as businessService from '../services/business.service';
export const getBusinesses = async (req: Request, res: Response, next: NextFunction) => {
try {
const businesses = await businessService.getAllBusinesses();
res.json(businesses);
} catch (error) {
next(error);
}
};
export const createBusiness = async (req: Request, res: Response, next: NextFunction) => {
try {
const business = await businessService.createBusiness(req.body);
res.status(201).json(business);
} catch (error) {
next(error);
}
};


4. **Service Example**:

typescript:server/src/services/business.service.ts
import sql from 'mssql';
import { connectDB } from '../db/connection';
export const getAllBusinesses = async () => {
const pool = await connectDB();
const result = await pool.request()
.query('SELECT FROM recycling.BusinessSearchView');
return result.recordset;
};
export const createBusiness = async (businessData: any) => {
const pool = await connectDB();
const result = await pool.request()
.input('Name', sql.NVarChar, businessData.name)
.input('Address', sql.NVarChar, businessData.address)
// ... other inputs
.execute('recycling.usp_UpsertBusiness');
return result.recordset[0];
};


5. **Middleware Example**:

typescript:server/src/middleware/auth.middleware.ts
import { Request, Response, NextFunction } from 'express';
import jwt from 'jsonwebtoken';
export const authMiddleware = (req: Request, res: Response, next: NextFunction) => {
try {
const token = req.headers.authorization?.split(' ')[1];
if (!token) {
throw new Error('Authentication required');
}
const decoded = jwt.verify(token, process.env.JWT_SECRET!);
req.user = decoded;
next();
} catch (error) {
res.status(401).json({ message: 'Authentication failed' });
}
};


6. **API Documentation** (using Swagger):

typescript:server/src/swagger.ts
import swaggerJsdoc from 'swagger-jsdoc';
const options = {
definition: {
openapi: '3.0.0',
info: {
title: 'iRecycle.Digital API',
version: '1.0.0',
description: 'API documentation for iRecycle.Digital platform',
},
},
apis: ['./src/routes/.ts'],
};
export const specs = swaggerJsdoc(options);


To test the API:
1. Use Postman or similar tool
2. Create a collection of API tests
3. Test each endpoint with different scenarios
4. Automate testing using Jest and Supertest

Would you like me to provide more specific examples for any particular API endpoint or feature?

