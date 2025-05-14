@echo off
echo ==========================================================================
echo PUSHING BLOODLINK PROJECT TO GITHUB
echo Repository: https://github.com/varunSbabu/BloodLink.git
echo ==========================================================================
echo.

:: First, check if git is installed
where git >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Git is not installed or not in your PATH.
    echo Please install Git from https://git-scm.com/downloads
    echo.
    pause
    exit /b 1
)

echo Step 1: Removing any existing git repository...
if exist .git (
    rmdir /s /q .git
    echo - Removed existing .git directory.
) else (
    echo - No existing .git directory found.
)

echo.
echo Step 2: Initializing new git repository...
git init
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Failed to initialize git repository.
    pause
    exit /b 1
)

echo.
echo Step 3: Configuring git user information...
git config --global user.name "Varun A S"
git config --global user.email "varunbabu7483@gmail.com"
git config --global credential.helper store

echo.
echo Step 4: Adding all files to the repository...
git add .
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Failed to add files to git.
    pause
    exit /b 1
)

echo.
echo Step 5: Creating initial commit...
git commit -m "Initial commit of BloodLink project"
if %ERRORLEVEL% NEQ 0 (
    echo ERROR: Failed to create commit.
    pause
    exit /b 1
)

echo.
echo Step 6: Setting up main branch...
git branch -M main

echo.
echo Step 7: Adding remote repository...
git remote add origin https://github.com/varunSbabu/BloodLink.git

echo.
echo ==========================================================================
echo IMPORTANT: GITHUB AUTHENTICATION
echo ==========================================================================
echo.
echo You will be prompted to enter your GitHub credentials.
echo.
echo Username: Your GitHub username (varunSbabu)
echo Password: Your Personal Access Token (NOT your regular GitHub password)
echo.
echo If you don't have a Personal Access Token yet:
echo 1. Open github_token_helper.bat for detailed instructions, or
echo 2. Go to: https://github.com/settings/tokens to create one
echo.
echo Make sure your token has the "repo" permission!
echo.
echo ==========================================================================
echo.
echo Press any key when you're ready to push to GitHub...
pause > nul

echo.
echo Step 8: Pushing code to GitHub...
git push -u origin main
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ERROR: Push failed. Please check:
    echo - Your GitHub username is correct
    echo - You used a valid Personal Access Token with "repo" permission
    echo - The repository exists and you have access to it
    echo.
    echo Try running the script again after fixing these issues.
) else (
    echo.
    echo ==========================================================================
    echo SUCCESS! Your BloodLink project has been pushed to GitHub.
    echo.
    echo You can now view it at: https://github.com/varunSbabu/BloodLink
    echo ==========================================================================
)

echo.
pause 