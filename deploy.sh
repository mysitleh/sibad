#!/bin/bash

# SIBAD Tournament - Quick Deployment Script
# This script helps you deploy SIBAD to Vercel quickly

echo "🏸 SIBAD Tournament - Vercel Deployment Script"
echo "=============================================="

# Check if vercel CLI is installed
if ! command -v vercel &> /dev/null; then
    echo "❌ Vercel CLI not found. Installing..."
    npm install -g vercel
    echo "✅ Vercel CLI installed successfully!"
fi

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📁 Initializing Git repository..."
    git init
    git add .
    git commit -m "Initial commit - SIBAD Tournament System"
    echo "✅ Git repository initialized!"
fi

# Check for uncommitted changes
if [[ $(git status --porcelain) ]]; then
    echo "📝 Found uncommitted changes. Committing..."
    git add .
    git commit -m "Pre-deployment commit - $(date)"
    echo "✅ Changes committed!"
fi

echo "🚀 Starting Vercel deployment..."

# Deploy to Vercel
vercel --prod

echo ""
echo "🎉 Deployment completed!"
echo "📱 Your SIBAD Tournament System is now live!"
echo ""
echo "Next steps:"
echo "1. Test all features on the live site"
echo "2. Share the URL with tournament organizers"
echo "3. Monitor performance in Vercel dashboard"
echo ""
echo "Happy tournament organizing! 🏆"
