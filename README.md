# powershell
PowerShell commandlets

Some developers double as Fantasy Football commissioners.  This repo is for you.

To run the script, add the teams in your league to the $teams array:

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

Then run the script.  The draft order will be output in the console window:

==============================
DRAFT ORDER: NFC North
==============================
Pick 1: Eagles
Pick 2: Buccaneers
Pick 3: 49ers
Pick 4: Saints
Pick 5: Seahawks
Pick 6: Vikings
Pick 7: Redskins
Pick 8: Lions
Pick 9: Bears
Pick 10: Panthers
Pick 11: Giants
Pick 12: Cowboys
Pick 13: Rams
Pick 14: Cardinals
Pick 15: Falcons
Pick 16: Packers