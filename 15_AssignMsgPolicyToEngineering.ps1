# get all users in Engineering
$users = Get-CsOnlineUser | `
    Where-Object { `
        $_.Department -like "Engineering" `
    }
$users | Select UserPrincipalName, Department, TeamsMessagingPolicy


# assign the Engineering Messaging Policy
$users | `
    ForEach-Object { `
        "Assign Engineering policy to " + $_.UserPrincipalName
        Grant-CsTeamsMessagingPolicy `
            -PolicyName "Engineering Messaging Policy" `
            -Identity $_.UserPrincipalName `
        }
$users | Select UserPrincipalName, Department, MessagingPolicy
  

