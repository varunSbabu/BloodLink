@echo off
echo Setting up Git repository for pushing to GitHub...

git init
git config --global user.name "Varun A S"
git config --global user.email "your-email@example.com"
git add .
git commit -m "Initial commit of BloodLink project"
git branch -M main
git remote add origin https://github.com/varunSbabu/BloodLink.git

echo ====================================================
echo IMPORTANT: When prompted for password, use a GitHub personal access token, not your regular password
echo To create a token:
echo 1. Go to GitHub.com and log in
echo 2. Click your profile icon in the top-right corner
echo 3. Go to Settings → Developer settings → Personal access tokens → Tokens (classic)
echo 4. Click "Generate new token" and configure it with "repo" permissions
echo 5. Copy the token and use it below
echo ====================================================

git push -u origin main

echo Done! Check the output above for any errors.
pause 