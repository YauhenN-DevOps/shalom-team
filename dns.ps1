<#

      " Install DNS Feature "

#>
Install-WindowsFeature -Name DNS -IncludeManagementTools
<#

       " Add New Primery Zone "

#>

Add-DnsServerPrimaryZone -Name "zemcov.local" -ZoneFile "zemcov.local"


<#

          " Add-DnsServerResourceRecordA  "

#>

Add-DnsServerResourceRecordA -Name "newname" -ZoneName "zemcov.local" -AllowUpdateAny -IPv4Address "192.168.0.160" -TimeToLive 01:00:00

<#


         " Add  Reverse Zone   "

#>

Add-DnsServerPrimaryZone -NetworkID 192.168.0.160 -ZoneFile "0.168.192.in-addr.arpa.dns"

Test-DnsServer -IPAddress 192.168.0.160 -ZoneName "zemcov.local"
