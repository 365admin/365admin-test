<#---
title: "Demonstration of some simple PowerShell"
description: This script will demonstrate a few simple PowerShell commands. The values in the connection property specify which connections need to be made for the script to be able to run.
connection: sharepoint
---

# The script


## Getting arguments

Here we define that we need a parameter called SiteURL, and that it is mandatory. 


#>


param (
    [Parameter(Mandatory = $true, HelpMessage = "The site URL" )]
    [string]$SiteURL
)

<#
## Executing a command
The Get-PnPTenantAppCatalogUrl command will get the app catalogue URL, the value of that is stored in the $result variable.

Storing values in the $result variable is important, as the value of that variable will be used to determine if the script was successful or not.

#>

$result = Get-PnPTenantAppCatalogUrl
Write-Host "App Catalog URL: $result"

<#

Checking the ability to identify environment variables used in the script

#>
Write-Host $ENV:HOME

