# get required modules and connect

# Azure for Identity
Disconnect-AzureAD

# Teams
Disconnect-MicrosoftTeams

# Exchange for Unified Groups
Remove-PSSession $Session

# Skype for Business Online
# Download and install required
# https://docs.microsoft.com/en-us/skypeforbusiness/set-up-your-computer-for-windows-powershell/download-and-install-the-skype-for-business-online-connector
Remove-PSSession $sfbSession

# Exchange for Unified Groups
Remove-PSSession $SCSession
