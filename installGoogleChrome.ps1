$ProgressPreference = 'SilentlyContinue'
write-host 'AIB Customization: Downloading Google Chrome installer'

# Define Chrome installer URL and file name
$chromeInstallerURL = 'https://dl.google.com/chrome/install/latest/chrome_installer.exe'
$chromeInstallerFile = 'C:\Windows\Temp\chrome_installer.exe'

# Download Chrome installer
Invoke-WebRequest -Uri $chromeInstallerURL -OutFile $chromeInstallerFile

write-host 'AIB Customization: Chrome installer downloaded'

# Install Chrome silently
Start-Process -FilePath $chromeInstallerFile -ArgumentList "/silent /install" -Wait

write-host 'AIB Customization: Chrome installation completed'

