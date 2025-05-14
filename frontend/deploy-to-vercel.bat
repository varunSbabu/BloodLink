@echo off
echo ==========================================================================
echo DEPLOYING BLOODLINK FRONTEND TO VERCEL
echo ==========================================================================
echo.

:: Check if Vercel CLI is installed
where vercel >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo Vercel CLI is not installed. Installing now...
    npm install -g vercel
    if %ERRORLEVEL% NEQ 0 (
        echo ERROR: Failed to install Vercel CLI.
        pause
        exit /b 1
    )
    echo Vercel CLI installed successfully.
) else (
    echo Vercel CLI is already installed.
)

echo.
echo ==========================================================================
echo DEPLOYMENT INSTRUCTIONS
echo ==========================================================================
echo.
echo 1. You will be prompted to log in to Vercel (if not already logged in)
echo 2. When asked to set up and deploy, select 'Y'
echo 3. Select the scope you want to deploy to (your personal account or team)
echo 4. When asked "Link to existing project?", select 'N'
echo 5. For project name, you can accept the default or enter a custom name
echo 6. When asked "Want to override the settings?", select 'N'
echo.
echo ==========================================================================
echo.
echo Press any key to start deployment...
pause > nul

echo.
echo Deploying to Vercel...
cd /d "%~dp0"
vercel

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ERROR: Deployment failed. Please check the error messages above.
) else (
    echo.
    echo ==========================================================================
    echo SUCCESS! Your BloodLink frontend has been deployed to Vercel.
    echo You can access your production deployment via the URL provided above.
    echo ==========================================================================
)

echo.
pause 