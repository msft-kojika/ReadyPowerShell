$PasswordProfile = New-Object `
    -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$PasswordProfile.Password = "%ReadyIsGreat2019%"
New-AzureADUser `
    -DisplayName "Ready1 Kato" `
    -GivenName "Ready" `
    -SurName "Kato" `
    -UserPrincipalName rkato1@skypeelite.com `
    -UsageLocation US `
    -MailNickName "rkato1" `
    -PasswordProfile $PasswordProfile `
    -AccountEnabled $true