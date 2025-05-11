$InstallerPath = "\\piac.piasecki.com\SYSVOL\piac.piasecki.com\scripts\vlc-3.0.21-win64.exe"
$VLCPath = "C:\Program Files\VideoLAN\VLC\vlc.exe"

# Function to retrieve the installed VLC version
function Get-VLCVersion {
    if (Test-Path $VLCPath) {
        return (Get-Item $VLCPath).VersionInfo.ProductVersion
    } else {
        return $null
    }
}

$InstalledVersion = Get-VLCVersion

# Install or update VLC if not installed or version is older than 3.0.21
if (-not $InstalledVersion -or [version]$InstalledVersion -lt [version]"3.0.21") {
    Start-Process -FilePath $InstallerPath -ArgumentList "/S" -Wait
}
