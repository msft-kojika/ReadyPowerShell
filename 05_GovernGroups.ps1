$groupSettingTemplateDisplayName = "Group.Unified"
$template = Get-AzureADDirectorySettingTemplate | `
    Where `
    -Property DisplayName `
    -Value $groupSettingTemplateDisplayName -EQ

$setting = $template.CreateDirectorySetting()
$setting["AllowGuestsToBeGroupOwner"] = $false
$setting["AllowGuestsToAccessGroups"] = $false
$setting["AllowToAddGuests"] = $false
$setting["PrefixSuffixNamingRequirement"] = "Team Collaboration_[GroupName]"
$setting.Values

#Set-AzureADDirectorySetting `
#    -Id ( `
#        Get-AzureADDirectorySetting | `
#        where `
#        -Property DisplayName `
#        -Value "Group.Unified" `
#        -EQ).id `
#    -DirectorySetting $setting