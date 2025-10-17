# Define the path for the Temp directory
$tempPath = "C:\Temp1"

# Check if the directory already exists
if (-Not (Test-Path -Path $tempPath)) {
    # Create the directory
    New-Item -Path $tempPath -ItemType Directory
    Write-Output "Temp directory created at $tempPath"
} else {
    Write-Output "Temp directory already exists at $tempPath"
}

# Set the FSLogix registry key
$regPath = "HKLM:\SOFTWARE\FSLogix\Profiles"
$regName = "DeleteLocalProfileWhenVHDShouldApply"
$regValue = 1

# Create the registry key if it doesn't exist
if (-Not (Test-Path -Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Set the registry value
New-ItemProperty -Path $regPath -Name $regName -PropertyType DWord -Value $regValue -Force
Write-Output "Registry key '$regName' set to $regValue at $regPath"
