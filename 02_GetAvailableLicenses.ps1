Get-AzureADSubscribedSku | `
    Select `
        -Property Sku*, ConsumedUnits `
        -ExpandProperty PrepaidUnits

# SkuPartNumber explanation
# ENTERPRISEPREMIUM = E5
# ENTERPRISEPACK = E3
# STREAM = Microsoft Sream Trial
# FLOW_FREE = Microsoft Flow Free
# MCOPSTN1 = Domestic Calling Plan
# MCOPSTNC = Communications Credits
# WACONEDRIVEENTERPRISE = OneDrive for Business (Plan 2)

# =========================
# FLIP BACK to M365 admin center to show rkato1's license state
# =========================