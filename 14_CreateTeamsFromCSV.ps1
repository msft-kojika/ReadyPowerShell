$words = Import-Csv -Path "C:\Users\kojika\OneDrive - Microsoft\Teams\PublicPresentations\Ready\MOCK_DATA_SHORT.csv"

$new_teams = @()

$words | `
    ForEach-Object { `
        $_.Department + " "+ $_."Animal Name"
        $new_teams += `
            (New-Team `
                -DisplayName ($_.Department + " "+ $_."Animal Name") `
                -Visibility Private); `
    }

foreach($team in $new_teams) { `
    for($i=0;$i -lt 4;$i++) { `
        $name = Get-Random `
            -inputobject $words; `
        New-TeamChannel `
            -GroupId $team.GroupId `
            -DisplayName ($name.Department + " " + $i); `
    } `
}