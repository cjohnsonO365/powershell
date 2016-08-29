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
$PSCBlue = $("Shil Patel", "Mark Roden", "Brad Balassaitis", "Hit Mistry", "John Head","Tony Fremarek", "Ramy Farag", "Alex Zakhodin", "Amit Bhatia", "Chris Johnson")
$PSCGold = $("Steve Cancelli", "Rod Cortez", "Jake Chappell", "Gerald Green", "Shean McManus","Ken Lamey", "Jason Benes", "Craig Jahnke", "Jon Baker", "Cole Francis")
#=======================================
#=======================================
#=======================================

Clear-Host
WriteDraftOrder -leagueName "PSC Blue" -teams $PSCBlue
WriteDraftOrder -leagueName "PSC Gold" -teams $PSCGold

