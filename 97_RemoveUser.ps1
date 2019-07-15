$users = Get-AzureADUser -All:$true

$usersToDelete = $users | Where -Property UserPrincipalName -Value rkato -Match

$usersToDelete | ForEach-Object {
    Grant-CsTeamsMessagingPolicy `
        -Identity $_.UserPrincipalName `
        -PolicyName $Null 
    Remove-AzureADUser -ObjectID $_.UserPrincipalName
}

