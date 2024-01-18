<#---
title: Test 1
input: forked-repo.json
output: local-workspace.json
tag: clone-repo
connection: sharepoint
form:
    questions:
        - name: localname
          prompt: "Enter the name of the repository"


----


## Local copy

We use a local folder called `kitchens` for storing a clone of the workspace. You can change the default location by setting the environment variable `KITCHENROOT`.

´´´
kitchens
├── 365admin-onboarding
├── exchange-sharedmailboxes
├── sharepoint-branding


´´´



#>
param (
    [Parameter(Mandatory=$true)]
    [string]$localname = $form.localname
)


$repoUrl = Get-Content "$env:WORKDIR/forked-repo.json" | ConvertFrom-Json
set-location $env:KITCHENROOT
git clone $repoUrl $localname 