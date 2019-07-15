$teamNickName="companyteam"

$team = Get-Team -MailNickName $teamNickName

New-TeamChannel `
    -GroupId $team.GroupId `
    -DisplayName "Announcements" `
    -Description "All company announcements"

New-TeamChannel `
    -GroupId $team.GroupId `
    -DisplayName "Free food" 

New-TeamChannel `
    -GroupId $team.GroupId `
    -DisplayName "HR"