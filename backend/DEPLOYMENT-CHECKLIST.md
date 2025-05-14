# Backend Deployment Checklist

## Pre-Deployment
- [ ] Update CORS settings to include `https://blood-link-gamma.vercel.app`
- [ ] Make sure MongoDB connection is properly configured
- [ ] Test all API endpoints locally
- [ ] Ensure all dependencies are in package.json
- [ ] Check for any hardcoded URLs and replace with environment variables
- [ ] Commit and push all changes to GitHub

## Deployment to Render
- [ ] Create a Render account if you don't have one
- [ ] Create new Web Service and connect to GitHub repository
- [ ] Configure the following settings:
  - [ ] Name: bloodlink-backend (or your preferred name)
  - [ ] Environment: Node
  - [ ] Build Command: npm install
  - [ ] Start Command: npm start
- [ ] Add environment variables:
  - [ ] NODE_ENV: production
  - [ ] MONGODB_URI: (your MongoDB connection string)
  - [ ] JWT_SECRET: (your secret key for JWT)
  - [ ] Other required environment variables
- [ ] Deploy the service
- [ ] Note the service URL (e.g., https://bloodlink-backend.onrender.com)

## Post-Deployment
- [ ] Test the health endpoint: https://bloodlink-backend.onrender.com/api/health
- [ ] Update the frontend with the new backend URL
- [ ] Test the frontend-backend connection
- [ ] Monitor logs for any errors
- [ ] Set up monitoring and alerts if needed 