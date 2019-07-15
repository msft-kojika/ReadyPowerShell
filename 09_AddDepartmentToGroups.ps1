$groupDisplayName = "Ready Speakers"
$groupIdentity = "readyspeakers"

# get all users in Engineering (Ready)
$users = Get-CsOnlineUser | `
    Where-Object { `
        $_.Department -like "Engineering (Ready)" `
    }

# add the users to the Ready Speakers group
$users | `
    ForEach-Object { `
        Add-UnifiedGroupLinks `
            -Identity $groupIdentity `
            -LinkType Member -Links $_.UserPrincipalName
        }
