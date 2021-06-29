# Install server
Install-WindowsFeature -name Web-Server -IncludeManagementTools

#Module import
Import-Module -Name WebAdministration

#Replacing image
Copy-Item -Path "C:\Windows\Web\Screen\img103.png" -Destination "C:\inetpub\wwwroot\iisstart.png" -Force

#DZ2 health check code
$ie = new-object -com InternetExplorer.Application
$ie.Visible = $true
$ie.Navigate("http://localhost/");
