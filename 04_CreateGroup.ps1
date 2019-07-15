$groupDisplayName = "Ready Speakers"
$groupIdentity = "readyspeakers"

New-UnifiedGroup `
    -DisplayName $groupDisplayName `
    -Alias $groupIdentity `
    -AccessType Public

Add-UnifiedGroupLinks `
    -Identity $groupIdentity `
    -LinkType Owners -Links kojika