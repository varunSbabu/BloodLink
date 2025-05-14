@echo off
echo Setting up a clean Git repository for pushing to GitHub...

:: Initialize new Git repository
git init

:: Set up Git user info (update with your actual email if needed)
git config --global user.name "Varun A S"
git config --global user.email "varunbabu7483@gmail.com"
git config --global credential.helper store

:: Add all files to the repository
git add .

:: Commit the code
git commit -m "Initial commit of BloodLink project"

:: Set the main branch
git branch -M main

:: Add your GitHub repository as remote
git remote add origin https://github.com/varunSbabu/BloodLink.git

echo ====================================================
echo IMPORTANT: You will need to authenticate with GitHub
echo Use your GitHub username and a personal access token (not your regular password)
echo To create a token:
echo 1. Go to GitHub.com and log in
echo 2. Click your profile icon in the top-right corner
echo 3. Go to Settings → Developer settings → Personal access tokens → Tokens (classic)
echo 4. Click "Generate new token" and configure it with "repo" permissions
echo 5. Copy the token and use it as your password when prompted
echo ====================================================
echo.
echo Press any key to continue with the push...
pause > nul

:: Push the code to GitHub
git push -u origin main

echo.
echo Done! Check the output above for any errors.
pause 