# Start Postiz Stack using Docker in WSL Ubuntu
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host " Starting Postiz Social Media Platform in WSL... " -ForegroundColor Cyan
Write-Host "==================================================" -ForegroundColor Cyan

$wslDistro = "Ubuntu"
$composeDir = "/mnt/d/Technical/AI/projects/postiz-social-media-automation/postiz-app"

Write-Host "Checking Docker status in WSL ($wslDistro)..." -ForegroundColor Yellow
wsl -d $wslDistro -e bash -c "sudo service docker status || service docker status"

Write-Host "`nLaunching containers via Docker Compose..." -ForegroundColor Yellow
wsl -d $wslDistro -e bash -c "cd $composeDir && docker compose up -d"

Write-Host "`n==================================================" -ForegroundColor Green
Write-Host " Postiz Stack Launch Initiated!" -ForegroundColor Green
Write-Host " Web Application:  http://localhost:4007" -ForegroundColor Green
Write-Host " Temporal UI:      http://localhost:8085" -ForegroundColor Green
Write-Host "==================================================" -ForegroundColor Green
Write-Host "To view logs: wsl -d Ubuntu -e bash -c 'cd $composeDir && docker compose logs -f postiz'" -ForegroundColor Gray
