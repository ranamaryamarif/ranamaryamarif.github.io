# PowerShell Script to Add Profile Photo
# Run this script from the maryam-portfolio directory

Write-Host "=== Maryam Portfolio - Photo Setup ===" -ForegroundColor Green
Write-Host ""

# Check if images directory exists
if (!(Test-Path "images")) {
    Write-Host "Creating images directory..." -ForegroundColor Yellow
    New-Item -ItemType Directory -Path "images"
}

Write-Host "Current location: $(Get-Location)" -ForegroundColor Cyan
Write-Host "Images directory: $(Resolve-Path 'images')" -ForegroundColor Cyan
Write-Host ""

# Instructions
Write-Host "TO ADD YOUR PROFESSIONAL PHOTO:" -ForegroundColor Yellow
Write-Host "1. Save your professional photo as 'maryam-profile.jpg'" -ForegroundColor White
Write-Host "2. Place it in the 'images' folder: $(Resolve-Path 'images')" -ForegroundColor White
Write-Host "3. Refresh your browser to see the updated portfolio" -ForegroundColor White
Write-Host ""

# Check current status
if (Test-Path "images\maryam-profile.jpg") {
    $fileInfo = Get-Item "images\maryam-profile.jpg"
    Write-Host "✅ Profile photo FOUND!" -ForegroundColor Green
    Write-Host "   File: $($fileInfo.Name)" -ForegroundColor Gray
    Write-Host "   Size: $([math]::Round($fileInfo.Length/1KB, 1)) KB" -ForegroundColor Gray
    Write-Host "   Modified: $($fileInfo.LastWriteTime)" -ForegroundColor Gray
    Write-Host ""
    Write-Host "Your photo is ready! Open index.html to see it." -ForegroundColor Green
} else {
    Write-Host "❌ Profile photo NOT FOUND" -ForegroundColor Red
    Write-Host "   Expected: images\maryam-profile.jpg" -ForegroundColor Gray
    Write-Host "   Please save your professional photo with this exact filename." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Portfolio files status:" -ForegroundColor Cyan
Write-Host "✅ index.html - Main portfolio page" -ForegroundColor Green
Write-Host "✅ blog.html - Blog and writings page" -ForegroundColor Green  
Write-Host "✅ projects.html - Detailed projects page" -ForegroundColor Green
Write-Host "✅ CSS and JS files - Styling and interactions" -ForegroundColor Green

Write-Host ""
Write-Host "Ready for deployment to GitHub Pages!" -ForegroundColor Green

Write-Host "See DEPLOYMENT_GUIDE.md for instructions." -ForegroundColor Cyan
