# Install server
Install-WindowsFeature -name Web-Server -IncludeManagementTools

#Module import
Import-Module -Name WebAdministration

#Replacing image
Copy-Item -Path "C:\inetpub\shalomteam\iisstart.png" -Destination "C:\inetpub\wwwroot\iisstart.png" -Force