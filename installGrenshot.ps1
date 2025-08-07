write-host 'AIB Customization: Downloading Greenshot MSI installer'

# Define Greenshot MSI installer URL and file name
$greenshotInstallerURL = 'https://github.com/greenshot/greenshot/releases/download/v1.3.296/Greenshot-INSTALLER-1.3.296-RELEASE.exe'
$greenshotInstaller = 'C:\Windows\Temp\Greenshot-INSTALLER-1.3.296-RELEASE.exe'

# Download Greenshot exe installer
Invoke-WebRequest -Uri $greenshotInstallerURL -OutFile $greenshotInstaller

write-host 'AIB Customization: Greenshot exe installer downloaded'

# Install Greenshot silently
#Start-Process msiexec.exe -ArgumentList "/i `"$greenshotInstaller`" /quiet /norestart" -Wait

Start-Process -FilePath $greenshotInstaller -ArgumentList "/ALLUSERS /VERYSILENT"


write-host 'AIB Customization: Greenshot installation completed'

