$teamNickName="companyteam"

New-Team `
    -DisplayName "All Company" `
    -MailNickName $teamNickName `
    -Visibility Public `
    -Description "Team for full company"
