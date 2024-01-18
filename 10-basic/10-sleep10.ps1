<#---
title: Sleep 10 seconds
description: Sleeps for 10 seconds and write the number of iterations every second
connections: sharepoint
---

script for testing that output is streamed to the client

#>
param (
    [string]$Name = "Hello World"
)


write-host "Sleeping for 10 seconds"
for ($i = 0; $i -lt 10; $i++) {
  Start-Sleep -Seconds 1
  write-host ($i+1) 
}
$result =  "$Name - Slept for 10 seconds - ($($ENV:SOMEENVNAME))"