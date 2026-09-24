# Stop Postiz Stack
$wslDistro = "Ubuntu"
$composeDir = "/mnt/d/Technical/AI/projects/postiz-social-media-automation/postiz-app"

Write-Host "Stopping Postiz containers..." -ForegroundColor Yellow
wsl -d $wslDistro -e bash -c "cd $composeDir && docker compose down"
Write-Host "Postiz stopped successfully." -ForegroundColor Green
