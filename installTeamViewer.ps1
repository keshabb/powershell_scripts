$ProgressPreference = 'SilentlyContinue'
write-host 'AIB Customization: Downloading TeamViewer exe installer'

# Define Greenshot MSI installer URL and file name
$teamviewerInstallerURL = 'https://download.teamviewer.com/download/TeamViewer_Setup_x64.exe'
$teamviewerInstaller = 'C:\Windows\Temp\TeamViewer_Setup_x64.exe'

# Download TeamViewer exe installer
Invoke-WebRequest -Uri $teamviewerInstallerURL -OutFile $teamviewerInstaller

write-host 'AIB Customization: TeamViewer exe installer downloaded'

Start-Process -FilePath $teamviewerInstaller -ArgumentList "/S"


write-host 'AIB Customization: TeamViewer installation completed'
