#Clear-Host
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser
$modVersion = Read-Host "Enter Version" #LIfAR ($modVersion).zip will be the final name
New-Item -Name "builds\Less Items for Anomaly REWORK" -ItemType Directory #Temp folder
New-Item -Name "builds\Less Items for Anomaly REWORK\Main" -ItemType Directory #Temp folder 2
Copy-Item -Path "..\gamedata" -Destination "builds\Less Items for Anomaly REWORK\Main" -Recurse #Copying gamedata
Copy-Item -Path "..\readme.txt" -Destination "builds\Less Items for Anomaly REWORK\readme.txt" #Readme
Copy-Item -Path "fomod" -Destination "builds\Less Items for Anomaly REWORK\" -Recurse #Better Installing
##Deleting some copied files
#Items
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\items\items\items_artefacts.ltx"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\items\outfits" -Recurse
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\items\settings\new_game_loadouts.ltx"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\items\weapons" -Recurse
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\items\settings\npc_loadouts" -Recurse
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\items\settings\parts.ltx" #Anomalite deletes some outfits, LIfAR uses legacy file
Copy-Item -Path "data\legacy_parts.txt" -Destination "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\items\settings\parts.ltx" #Legacy parts.ltx

#Text English
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\eng\st_dialogs_lostzone_ll.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\eng\st_items_artefacts.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\eng\st_land_names.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\eng\st_levels.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\eng\st_smart_names.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\eng\st_outfits_new.xml"
#Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\eng\ui_st_loadscreen.xml" #The file doesnt exist
#Text Russsian 
<#
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\rus\st_dialogs_lostzone_ll.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\rus\st_items_artefacts.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\rus\st_land_names.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\rus\st_levels.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\rus\st_smart_names.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\rus\ui_st_loadscreen.xml"
#>
#UI
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\ui" -Recurse
#Sounds
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\sounds\weapons" -Recurse
#Textures
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\textures" -Recurse

##Compressing Archive and removing the old folder
Compress-Archive -Path "builds\Less Items for Anomaly REWORK" -DestinationPath "builds\LIfAR ($modVersion).zip"
Remove-Item "builds\Less Items for Anomaly REWORK" -Recurse
PAUSE