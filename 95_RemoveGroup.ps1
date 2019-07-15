#$groupDisplayName = "Ready Speakers"
#$groupIdentity = "readyspeakers"
#Remove-UnifiedGroup -Identity $groupIdentity -Confirm:$false

$groups = Get-UnifiedGroup | `
    Where -Property DisplayName -Value Ready -Match

$groups | `
    ForEach-Object { `
        Remove-UnifiedGroup -Identity $_.Name -Confirm:$false
        $_.Name
    }