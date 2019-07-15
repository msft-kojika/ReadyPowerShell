# Connect to Azure
Install-Module AzureADPreview
Connect-AzureAD

# Connect to Teams
Install-Module MicrosoftTeams
Connect-MicrosoftTeams

# get M365 credentials
$365Logon = Get-Credential

# Download and install Skype for Business Online PowerShell commandlets
# https://docs.microsoft.com/en-us/skypeforbusiness/set-up-your-computer-for-windows-powershell/download-and-install-the-skype-for-business-online-connector
$sfbSession = New-CsOnlineSession -Credential $365Logon
Import-PSSession $sfbSession -AllowClobber

# Connect to Exchange for Unified Groups
$365Logon = Get-Credential
$Session = New-PSSession `
    -ConfigurationName Microsoft.Exchange `
    -ConnectionUri https://outlook.office365.com/powershell-liveid/ `
    -Credential $365Logon `
    -Authentication Basic `
    -AllowRedirection
Import-PSSession $Session -AllowClobber

# Connect to Compliance
$SCSession = New-PSSession `
    -ConfigurationName Microsoft.Exchange `
    -ConnectionUri https://ps.compliance.protection.outlook.com/powershell-liveid/ `
    -Credential $365Logon `
    -Authentication Basic `
    -AllowRedirection
Import-PSSession $SCSession -AllowClobber