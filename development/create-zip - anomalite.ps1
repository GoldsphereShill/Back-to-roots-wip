#Clear-Host
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser
$modVersion = Read-Host "Enter Version" #ANOMALITE ($modVersion).zip will be the final name
New-Item -Name "builds\ANOMALITE" -ItemType Directory #Temp folder
New-Item -Name "builds\ANOMALITE\Main" -ItemType Directory #Temp folder 2
New-Item -Name "builds\ANOMALITE\Main\gamedata" -ItemType Directory #Temp folder 3
Copy-Item -Path "..\gamedata\*" -Destination "builds\ANOMALITE\Main\gamedata" -Recurse #Copying gamedata
Copy-Item -Path "..\readme.txt" -Destination "builds\ANOMALITE\readme.txt" #Readme
New-Item -Name "builds\ANOMALITE\fomod" -ItemType Directory #creating fomod temp folder
Copy-Item -Path "fomodAnomalite\*" -Destination "builds\ANOMALITE\fomod"

##Compressing Archive and removing the old folder
Compress-Archive -Path "builds\ANOMALITE" -DestinationPath "builds\Anomalite ($modVersion).zip"
#Remove-Item "builds\ANOMALITE" -Recurse
PAUSE