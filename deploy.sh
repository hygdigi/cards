#!/bin/bash
# ─────────────────────────────────────────────
# MagicCards — Push to GitHub Pages
# Run this from your project root directory
# ─────────────────────────────────────────────

echo "🚀 MagicCards — Deploying to GitHub Pages"
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing git repo..."
    git init
    git branch -M main
fi

# Stage everything
git add .

# Commit
TIMESTAMP=$(date '+%Y-%m-%d %H:%M')
git commit -m "✨ Full redesign — dark luxury theme, all 31 cards fixed ($TIMESTAMP)"

echo ""
echo "✅ Committed. Now pushing..."
git push origin main

echo ""
echo "🌍 Done! Your site will be live in ~60 seconds at:"
echo "   https://YOUR_USERNAME.github.io/YOUR_REPO_NAME/"
echo ""
echo "💡 First time? Set your remote first:"
echo "   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git"
echo "   git push -u origin main"
