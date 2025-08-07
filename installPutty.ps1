write-host 'AIB Customization: Downloading PuTTY installer'

# Define the local path to save the installer
$installerPath = 'C:\Windows\Temp\putty-64bit-installer.msi'


# Define PuTTY installer URL and file name
$puttyInstallerURL = 'https://the.earth.li/~sgtatham/putty/latest/w64/putty-64bit-installer.msi'

# Download PuTTY installer
Invoke-WebRequest -Uri $puttyInstallerURL -OutFile $installerPath

write-host 'AIB Customization: PuTTY installer downloaded'

# Install PuTTY silently
Start-Process msiexec.exe -ArgumentList "/i `"$installerPath`" /quiet /norestart"

Write-Host "AIB Customization: PuttY installed successfully"
