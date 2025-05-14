@echo off
echo ===== BloodLink Frontend Redeployment =====
echo This script will rebuild and redeploy your frontend to Vercel

echo.
echo Step 1: Cleaning up...
rd /s /q dist 2>nul

echo.
echo Step 2: Installing dependencies...
call npm install

echo.
echo Step 3: Building the project...
call npm run build

echo.
echo Step 4: Deploying to Vercel...
call npx vercel --prod

echo.
echo Deployment complete! Check the Vercel dashboard for details.
echo If you still experience MIME type errors, try clearing your browser cache.
echo. 