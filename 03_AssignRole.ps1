$userName="rkato1@skypeelite.com"
$roleName="Teams Service Administrator"
$role = Get-AzureADDirectoryRole | Where {$_.displayName -eq $roleName}

Add-AzureADDirectoryRoleMember `
    -ObjectId $role.ObjectId `
    -RefObjectId ( `
        Get-AzureADUser -All 1 | `
            Where {$_.UserPrincipalName -eq $userName} `
        ).ObjectID