@echo off
echo Setting up Git repository for pushing to GitHub...

git init
git config --global user.name "Varun A S"
git config --global user.email "your-email@example.com"
git config --global credential.helper store
git add .
git commit -m "Initial commit of BloodLink project"
git branch -M main
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

git push -u origin main

echo.
echo Done! Check the output above for any errors.
pause 