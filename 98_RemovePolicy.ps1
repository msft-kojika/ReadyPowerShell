$users = Get-CsOnlineUser | `
    Where-Object { `
        $_.Department -like "Engineering" `
    }

# assign the Engineering Messaging Policy
$users | `
    ForEach-Object { `
        "Assign Research policy to " + $_.UserPrincipalName
        Grant-CsTeamsMessagingPolicy `
            -PolicyName "Research Messaging Policy" `
            -Identity $_.UserPrincipalName `
        }
    
$policies = Get-CsTeamsMessagingPolicy | Where -Property Identity -Value Ready -Match
$policies | ForEach-Object {
    Remove-CsTeamsMessagingPolicy $_.Identity
    "Delete " + $_.Identity
}

