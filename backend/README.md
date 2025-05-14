# BloodLink Backend

Backend API server for the BloodLink blood donation platform.

## Deployment to Render

### Option 1: Deploy using the Render Dashboard

1. Create a Render account at [render.com](https://render.com/)
2. Create a new Web Service
3. Connect your GitHub repository
4. Configure the following settings:
   - **Name**: bloodlink-backend (or your preferred name)
   - **Environment**: Node
   - **Build Command**: `npm install`
   - **Start Command**: `npm start`
5. Add the necessary environment variables:
   - `NODE_ENV`: production
   - `PORT`: 10000 (Render assigns a port automatically, but this is the internal port)
   - `MONGODB_URI`: (Your MongoDB connection string)

### Option 2: Deploy using Render Blueprint

1. Ensure the `render.yaml` file is in your repository
2. Go to [dashboard.render.com/blueprints](https://dashboard.render.com/blueprints)
3. Connect your GitHub repository
4. Click on the Blueprint to deploy
5. Configure any environment variables that aren't set in the YAML file
6. Deploy

## Required Environment Variables

- `PORT`: Port to run the server on (default: 5000)
- `NODE_ENV`: Environment (development, production)
- `MONGODB_URI`: MongoDB connection string
- Any other secrets used by your application

## Local Development

1. Clone the repository
2. Run `npm install`
3. Create a `.env` file in the root directory with the required environment variables
4. Run `npm run dev` to start the development server

## API Endpoints

- `/api/health`: Health check endpoint
- `/api/donors`: Donor management endpoints
- `/api/requests`: Blood request endpoints
- `/api/otp`: OTP verification endpoints
- `/api/admin`: Admin endpoints 