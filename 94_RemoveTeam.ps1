$teamNickName="companyteam"

$team = Get-Team -MailNickName $teamNickName
Remove-Team -GroupId $team.GroupId

$teams = Get-Team | `
    Where -Property DisplayName -Value Ready -Match

$teams | `
    ForEach-Object { `
        Remove-Team -GroupId $_.GroupId
        $_.GroupId
    }