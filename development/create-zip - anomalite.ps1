#Clear-Host
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser
$modVersion = Read-Host "Enter Version" #ANOMALITE ($modVersion).zip will be the final name
New-Item -Name "builds\ANOMALITE" -ItemType Directory #Temp folder
New-Item -Name "builds\ANOMALITE\Main" -ItemType Directory #Temp folder 2
New-Item -Name "builds\ANOMALITE\Main\gamedata" -ItemType Directory #Temp folder 3
Copy-Item -Path "..\gamedata\*" -Destination "builds\ANOMALITE\Main\gamedata" -Recurse #Copying gamedata
Copy-Item -Path "..\readme.txt" -Destination "builds\ANOMALITE\readme.txt" #Readme
New-Item -Name "builds\ANOMALITE\fomod" -ItemType Directory #creating fomod temp folder
Copy-Item -Path "fomodAnomalite\*" -Destination "builds\ANOMALITE\fomod" -Recurse

###Optional patches### All files are located within gamedata directory, this script will devide them into respecting patches
#"Meme" patch; Moving files from
New-Item -Name "builds\ANOMALITE\meme" -ItemType Directory #Temp folder (jump sound patch)
New-Item -Name "builds\ANOMALITE\meme\gamedata\" -ItemType Directory #Temp folder 2 (jump sound patch)
New-Item -Name "builds\ANOMALITE\meme\gamedata\scripts" -ItemType Directory #Temp folder 3 (jump sound patch)
Move-Item -Path "builds\ANOMALITE\Main\gamedata\scripts\jump_sounds.script" -Destination "builds\ANOMALITE\meme\gamedata\scripts\" #Disables the weird jump sounds

New-Item -Name "builds\ANOMALITE\meme\gamedata\sounds" -ItemType Directory #Temp folder 3 (knife sound patch)
New-Item -Name "builds\ANOMALITE\meme\gamedata\sounds\weapons" -ItemType Directory #Temp folder 4 (knife sound patch)
Move-Item -Path "builds\ANOMALITE\Main\gamedata\sounds\weapons\knife_1.ogg" -Destination "builds\ANOMALITE\meme\gamedata\sounds\weapons" #Disables the weird knife
Move-Item -Path "builds\ANOMALITE\Main\gamedata\sounds\weapons\knife_2.ogg" -Destination "builds\ANOMALITE\meme\gamedata\sounds\weapons" #Disables the weird knife
Move-Item -Path "builds\ANOMALITE\Main\gamedata\sounds\weapons\knife_3.ogg" -Destination "builds\ANOMALITE\meme\gamedata\sounds\weapons" #Disables the weird knife

#Brotherhood compat patch
New-Item -Name "builds\ANOMALITE\brotherhood" -ItemType Directory #Temp folder 1 (brotherhood patch)
New-Item -Name "builds\ANOMALITE\brotherhood\gamedata\" -ItemType Directory #Temp folder 2 (brotherhood patch)
New-Item -Name "builds\ANOMALITE\brotherhood\gamedata\configs" -ItemType Directory #Temp folder 3 (brotherhood patch)
Move-Item -Path "builds\ANOMALITE\Main\gamedata\configs\system.ltx" -Destination "builds\ANOMALITE\brotherhood\gamedata\configs\" #Moves the system.ltx modified to require brotherhood

Copy-Item -Path "Data\system.ltx" -Destination "builds\ANOMALITE\Main\gamedata\configs\" #Moves the system.ltx modified to require brotherhood


##Compressing Archive and removing the old folder
Compress-Archive -Path "builds\ANOMALITE" -DestinationPath "builds\Anomalite ($modVersion).zip"
Remove-Item "builds\ANOMALITE" -Recurse
PAUSE