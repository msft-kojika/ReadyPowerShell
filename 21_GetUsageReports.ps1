# Construct URI
$uri = "https://login.microsoftonline.com/$tenantId/oauth2/v2.0/token"

# Construct Body
$body = @{
    client_id     = $clientId
    scope         = "https://graph.microsoft.com/.default"
    client_secret = $clientSecret
    grant_type    = "client_credentials"
}

# Get OAuth 2.0 Token
$tokenRequest = Invoke-WebRequest `
    -Method Post `
    -Uri $uri `
    -ContentType "application/x-www-form-urlencoded" `
    -Body $body `
    -UseBasicParsing

# Access Token
$token = ($tokenRequest.Content | ConvertFrom-Json).access_token

# Graph API call in PowerShell using obtained OAuth token (see other gists for more details)

# Specify the URI to call and method
$uri = "https://graph.microsoft.com/v1.0//reports/getTeamsUserActivityCounts(period='D180')"
$method = "GET"

# Run Graph API query 
$query = Invoke-WebRequest `
    -Method $method `
    -Uri $uri `
    -PassThru `
    -OutFile ~/Ready.csv `
    -ContentType "application/json" `
    -Headers @{Authorization = $token} `
    -ErrorAction Stop

$query.ToString()