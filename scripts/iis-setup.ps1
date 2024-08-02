# Ensure IIS is installed
if (!(Get-WindowsFeature -Name Web-Server).Installed) {
    Install-WindowsFeature -Name Web-Server -IncludeManagementTools
}

# Ensure .NET Core Hosting Bundle is installed
$bundleUrl = "https://download.visualstudio.microsoft.com/download/pr/0e839be8-49cd-48ef-9a41-64b88c6f446c/b7cba36e1e76886562e725e303cbbf99/dotnet-hosting-6.0.0-win.exe"
$installerPath = "$env:TEMP\dotnet-hosting-6.0.0-win.exe"

Invoke-WebRequest -Uri $bundleUrl -OutFile $installerPath
Start-Process -FilePath $installerPath -ArgumentList "/quiet" -Wait
Remove-Item -Path $installerPath
