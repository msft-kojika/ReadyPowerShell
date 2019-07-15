$userUPN="rkato1@skypeelite.com"
$planName="ENTERPRISEPREMIUM"

$License = New-Object `
    -TypeName Microsoft.Open.AzureAD.Model.AssignedLicense
$License.SkuId = `
    (Get-AzureADSubscribedSku | `
    Where-Object `
        -Property SkuPartNumber `
        -Value $planName `
        -EQ).SkuID

$AssignLic = New-Object `
    -TypeName Microsoft.Open.AzureAD.Model.AssignedLicenses
$AssignLic.AddLicenses = $License

Set-AzureADUserLicense `
    -ObjectId $userUPN `
    -AssignedLicenses $AssignLic