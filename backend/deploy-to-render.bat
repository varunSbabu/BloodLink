@echo off
echo ===== BloodLink Backend Deployment to Render =====
echo This script will help deploy your backend to Render.com

echo.
echo Please make sure you have:
echo 1. Created a Render.com account
echo 2. Pushed your code to GitHub
echo 3. Have your MongoDB connection string ready

echo.
echo Step 1: Opening Render.com Dashboard...
start https://dashboard.render.com/web

echo.
echo To deploy your backend to Render, follow these steps:
echo.
echo 1. Click "New +" and select "Web Service"
echo 2. Connect your GitHub repository
echo 3. Configure the following settings:
echo    - Name: bloodlink-backend
echo    - Environment: Node
echo    - Build Command: npm install
echo    - Start Command: npm start
echo 4. Add the following environment variables:
echo    - NODE_ENV: production
echo    - MONGODB_URI: [Your MongoDB connection string]
echo 5. Click "Create Web Service"

echo.
echo After deployment, note your backend URL. You will need to update
echo your frontend environment variables with this backend URL.
echo.
echo Once deployed, your API should be accessible at:
echo https://[your-service-name].onrender.com/api/health

echo.
pause 