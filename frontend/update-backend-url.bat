@echo off
echo ===== Updating Backend URL and Redeploying Frontend =====
echo This script will update your frontend to use your newly deployed backend

echo.
echo Backend URL has been updated in the codebase to:
echo https://blood-link-q0wm.onrender.com

echo.
echo Step 1: Committing changes...
git add src/services/api.js
git commit -m "Update backend API URL to deployed Render service"

echo.
echo Step 2: Building the project...
call npm run build

echo.
echo Step 3: Deploying to Vercel...
call npx vercel --prod

echo.
echo Step 4: Additionally, you should update the environment variable in Vercel:
echo.
echo 1. Go to Vercel Dashboard: https://vercel.com/dashboard
echo 2. Select your project (bloodlink-frontend)
echo 3. Go to "Settings" > "Environment Variables"
echo 4. Add or update the variable:
echo    - Name: VITE_API_URL
echo    - Value: https://blood-link-q0wm.onrender.com/api
echo 5. Click "Save" and redeploy if needed

echo.
echo Deployment complete! Your frontend should now be connected to your Render backend.
echo. 