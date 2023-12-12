### Install PowerShell Modules
Write-Host "Installing PowerShell Modules..." -ForegroundColor "Yellow"

 [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Install-PackageProvider -Name NuGet

winget install JanDeDobbeleer.OhMyPosh -s winget

winget install Microsoft.PowerShell                      --silent --accept-package-agreements

winget install -e --id Microsoft.PowerToys               --silent --accept-package-agreements

oh-my-posh font install
Install-Module Posh-Git -Scope CurrentUser -Force
Install-Module PSWindowsUpdate -Scope CurrentUser -Force
Install-Module -Name Terminal-Icons -Repository PSGallery
Install-Module TabExpansionPlusPlus -Scope CurrentUser -Force -AllowClobber

Write-Host "Installing Vim through Choco..." -ForegroundColor "Yellow"

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install vim
refreshenv