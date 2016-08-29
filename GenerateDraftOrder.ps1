function WriteDraftOrder($leagueName, $teams)
{

    #Place in ArrayList so we can remove easily
    $_teams = New-Object System.Collections.ArrayList
    $_teams.AddRange($teams)

    #Output
    Write-Host
    Write-Host "=============================="
    Write-Host "DRAFT ORDER:" $leagueName
    Write-Host "=============================="
    for($i = 1; $i -lt $teams.Length+1; $i++){
        $team = ($_teams | Get-Random)

        Write-Host Pick $i":" $team
        $_teams.Remove($team)
    }
}

#=======================================
#===========ADD TEAMS BELOW=============
#=======================================
$teams = $("Bears", "Packers", "Lions", "Vikings", 
    "Cowboys", "Redskins", "Eagles", "Giants", 
    "Falcons", "Buccaneers", "Saints", "Panthers", 
    "Rams", "Seahawks", "49ers", "Cardinals")
#=======================================
#=======================================
#=======================================

Clear-Host
WriteDraftOrder -leagueName "NFC North" -teams $teams
