<#---
title: Compare rooms list with Exchange
description: Compares the rooms list with the rooms in Exchange and updates the list accordingly
connection: exchange
---
#>
write-host "Reading rooms from Exchange"


<#

Calling Exchange Online 

#>
Get-Mailbox -RecipientTypeDetails RoomMailbox -ResultSize Unlimited
| Select-Object DisplayName,PrimarySmtpAddress,RecipientTypeDetails,RecipientType,Identity,WindowsEmailAddress, ResourceCapacity
| ConvertTo-Json
| Out-File -FilePath "$env:WORKDIR/exchange-rooms.json" -Encoding:utf8NoBOM

<#

The outout is stored in the variable $result
#>

$result="$env:WORKDIR/exchange-rooms.json"
