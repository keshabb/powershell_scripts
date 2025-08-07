$ProgressPreference = 'SilentlyContinue'
write-host 'AIB Customization: Downloading 7-Zip installer'

# Define the local path to save the installer
$installerPath = 'C:\Windows\Temp\7z2301-x64.msi'

# Define 7-Zip installer URL and file name
$sevenzipInstallerURL = 'https://www.7-zip.org/a/7z2301-x64.msi'

# Download 7-Zip installer
Invoke-WebRequest -Uri $sevenzipInstallerURL -OutFile $installerPath

write-host 'AIB Customization: 7-Zip installer downloaded'

# Install 7-Zip silently
Start-Process msiexec.exe -ArgumentList "/i `"$installerPath`" /quiet /norestart" -Wait

Write-Host "AIB Customization: 7-Zip installed successfully"

