@echo off
echo Setting up Git repository for pushing to GitHub...

git init
git add .
git commit -m "Initial commit of BloodLink project"
git branch -M main
git remote add origin https://github.com/varunSbabu/BloodLink.git
git push -u origin main

echo Done! Check the output above for any errors.
pause 