# iRecycle.Digital Development Guide

## Project Structure 

bash
irecycle-platform/
├── client/ # React Frontend
│ ├── public/
│ ├── src/
│ │ ├── assets/ # Images, fonts, etc.
│ │ ├── components/ # Reusable components
│ │ ├── contexts/ # React contexts
│ │ ├── hooks/ # Custom hooks
│ │ ├── layouts/ # Page layouts
│ │ ├── pages/ # Page components
│ │ ├── services/ # API services
│ │ ├── styles/ # Global styles
│ │ ├── types/ # TypeScript types
│ │ └── utils/ # Helper functions
│ └── package.json
│
├── server/ # Node.js Backend
│ ├── src/
│ │ ├── config/ # Configuration files
│ │ ├── controllers/ # Route controllers
│ │ ├── db/ # Database connections
│ │ ├── middleware/ # Custom middleware
│ │ ├── models/ # Data models
│ │ ├── routes/ # API routes
│ │ ├── services/ # Business logic
│ │ ├── types/ # TypeScript types
│ │ └── utils/ # Helper functions
│ └── package.json
│
├── .gitignore
└── README.md


## Setup Instructions

1. **Create New Repository**

bash
Create new repository
mkdir irecycle-platform
cd irecycle-platform
git init
Create initial structure
mkdir client server


2. **Setup Frontend (React + TypeScript)**

bash
Create React app with TypeScript
npx create-react-app client --template typescript
Install necessary dependencies
cd client
npm install @mui/material @emotion/react @emotion/styled # UI framework
npm install @tanstack/react-query # API data management
npm install axios # HTTP client
npm install react-router-dom # Routing
npm install @figma/plugin-typings # Figma integration
npm install sass # Styling


3. **Setup Backend (Node.js + TypeScript)**

bash
Initialize backend
cd ../server
npm init -y
Install dependencies
npm install express typescript ts-node @types/node @types/express
npm install dotenv # Environment variables
npm install mssql @types/mssql # SQL Server client
npm install cors @types/cors # CORS middleware
npm install joi # Validation
npm install jsonwebtoken @types/jsonwebtoken # Authentication
npm install bcrypt @types/bcrypt # Password hashing
Initialize TypeScript
npx tsc --init


4. **Database Connection**

typescript:server/src/config/database.ts
import sql from 'mssql';
import dotenv from 'dotenv';
dotenv.config();
const dbConfig = {
user: process.env.DB_USER,
password: process.env.DB_PASSWORD,
database: process.env.DB_NAME,
server: process.env.DB_SERVER,
pool: {
max: 10,
min: 0,
idleTimeoutMillis: 30000
},
options: {
encrypt: true,
trustServerCertificate: true
}
};
export const connectDB = async () => {
try {
const pool = await sql.connect(dbConfig);
console.log('Connected to database');
return pool;
} catch (err) {
console.error('Database connection failed:', err);
throw err;
}
};


5. **Figma Integration**

typescript:client/src/utils/figma.ts
import { useEffect, useState } from 'react';
export const useFigmaDesign = (fileKey: string, nodeId: string) => {
const [design, setDesign] = useState(null);
useEffect(() => {
const fetchDesign = async () => {
const response = await fetch(
https://api.figma.com/v1/files/${fileKey}/nodes?ids=${nodeId},
{
headers: {
'X-Figma-Token': process.env.REACT_APP_FIGMA_ACCESS_TOKEN
}
}
);
const data = await response.json();
setDesign(data);
};
fetchDesign();
}, [fileKey, nodeId]);
return design;
};


## Development Workflow

1. **Start Development**

bash
Terminal 1 - Frontend
cd client
npm start
Terminal 2 - Backend
cd server
npm run dev


2. **Version Control**

bash
Create feature branch
git checkout -b feature/component-name
Commit changes
git add .
git commit -m "feat: Add component description"
Push changes
git push origin feature/component-name



3. **Environment Variables**

env:server/.env
DB_USER=your_db_user
DB_PASSWORD=your_db_password
DB_NAME=your_db_name
DB_SERVER=your_server
JWT_SECRET=your_jwt_secret

env:client/.env
REACT_APP_API_URL=http://localhost:5000
REACT_APP_FIGMA_ACCESS_TOKEN=your_figma_token


## Testing

1. **Backend Testing**

bash
cd server
npm install jest @types/jest ts-jest supertest @types/supertest
npm test


2. **Frontend Testing**

bash
cd client
npm test


## Deployment

1. **Backend Deployment (Azure)**
- Setup Azure App Service
- Configure environment variables
- Setup CI/CD pipeline

2. **Frontend Deployment (Vercel/Netlify)**
- Connect repository
- Configure build settings
- Setup environment variables

## Additional Resources
- [React Documentation](https://reactjs.org/docs)
- [Node.js Best Practices](https://github.com/goldbergyoni/nodebestpractices)
- [Figma API Documentation](https://www.figma.com/developers/api)

