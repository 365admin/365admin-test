$ENV:KITCHEN="365admin-test2"
$ENV:KITCHENROOT="/Users/nielsgregersjohansen/kitchens/"
$ENV:KITCHENPATH="$($ENV:KITCHENROOT)/$($ENV:KITCHEN)"
Push-Location

if (-not (Test-Path $ENV:KITCHENPATH)) {
    mkdir $ENV:KITCHENPATH
}
Set-Location $ENV:KITCHENPATH 
go mod init github.com/365admin/$ENV:KITCHEN

go install github.com/spf13/cobra-cli@latest
cobra-cli init