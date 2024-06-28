#Clear-Host
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser
$modVersion = Read-Host "Enter Version" #LIfAR ($modVersion).zip will be the final name
New-Item -Name "builds\Less Items for Anomaly REWORK" -ItemType Directory #Temp folder
Copy-Item -Path "..\gamedata" -Destination "builds\Less Items for Anomaly REWORK" -Recurse #Copying gamedata
Copy-Item -Path "..\readme.txt" -Destination "builds\Less Items for Anomaly REWORK\readme.txt" #Readme

##Deleting some copied files
#Items
Remove-Item "builds\Less Items for Anomaly REWORK\gamedata\configs\items\items\items_artefacts.ltx"
Remove-Item "builds\Less Items for Anomaly REWORK\gamedata\configs\items\outfits"
Remove-Item "builds\Less Items for Anomaly REWORK\gamedata\configs\items\settings\new_game_loadouts.ltx"
Remove-Item "builds\Less Items for Anomaly REWORK\gamedata\configs\items\settings\new_game_loadouts.ltx"
Remove-Item "builds\Less Items for Anomaly REWORK\gamedata\configs\items\weapons" -Recurse
#Text English
Remove-Item "builds\Less Items for Anomaly REWORK\gamedata\configs\text\eng\st_dialogs_lostzone_ll.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\gamedata\configs\text\eng\st_items_artefacts.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\gamedata\configs\text\eng\st_land_names.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\gamedata\configs\text\eng\st_levels.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\gamedata\configs\text\eng\st_smart_names.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\gamedata\configs\text\eng\ui_st_loadscreen.xml"
#Text Russsian
Remove-Item "builds\Less Items for Anomaly REWORK\gamedata\configs\text\rus\st_dialogs_lostzone_ll.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\gamedata\configs\text\rus\st_items_artefacts.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\gamedata\configs\text\rus\st_land_names.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\gamedata\configs\text\rus\st_levels.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\gamedata\configs\text\rus\st_smart_names.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\gamedata\configs\text\rus\ui_st_loadscreen.xml"
#UI
Remove-Item "builds\Less Items for Anomaly REWORK\gamedata\configs\ui" -Recurse
#Sounds
Remove-Item "builds\Less Items for Anomaly REWORK\gamedata\sounds\weapons" -Recurse
#Textures
Remove-Item "builds\Less Items for Anomaly REWORK\gamedata\textures" -Recurse

##Compressing Archive and removing the old folder
Compress-Archive -Path "builds\Less Items for Anomaly REWORK" -DestinationPath "builds\LIfAR ($modVersion).zip"
Remove-Item "builds\Less Items for Anomaly REWORK" -Recurse
PAUSE