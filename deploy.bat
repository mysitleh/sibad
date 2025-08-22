@echo off
REM SIBAD Tournament - Quick Deployment Script for Windows
REM This script helps you deploy SIBAD to Vercel quickly

echo 🏸 SIBAD Tournament - Vercel Deployment Script
echo ==============================================

REM Check if vercel CLI is installed
where vercel >nul 2>nul
if %errorlevel% neq 0 (
    echo ❌ Vercel CLI not found. Installing...
    npm install -g vercel
    echo ✅ Vercel CLI installed successfully!
)

REM Check if git is initialized
if not exist ".git" (
    echo 📁 Initializing Git repository...
    git init
    git add .
    git commit -m "Initial commit - SIBAD Tournament System"
    echo ✅ Git repository initialized!
)

REM Check for uncommitted changes
git status --porcelain >nul 2>nul
if %errorlevel% equ 0 (
    echo 📝 Found uncommitted changes. Committing...
    git add .
    git commit -m "Pre-deployment commit - %date% %time%"
    echo ✅ Changes committed!
)

echo 🚀 Starting Vercel deployment...

REM Deploy to Vercel
vercel --prod

echo.
echo 🎉 Deployment completed!
echo 📱 Your SIBAD Tournament System is now live!
echo.
echo Next steps:
echo 1. Test all features on the live site
echo 2. Share the URL with tournament organizers
echo 3. Monitor performance in Vercel dashboard
echo.
echo Happy tournament organizing! 🏆

pause
