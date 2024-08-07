#Clear-Host
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser
$modVersion = Read-Host "Enter Version" #LIfAR ($modVersion).zip will be the final name
New-Item -Name "builds\Less Items for Anomaly REWORK" -ItemType Directory #Temp folder
New-Item -Name "builds\Less Items for Anomaly REWORK\Main" -ItemType Directory #Temp folder 2
Copy-Item -Path "..\gamedata" -Destination "builds\Less Items for Anomaly REWORK\Main" -Recurse #Copying gamedata
Copy-Item -Path "..\gamedata" -Destination "builds\Less Items for Anomaly REWORK\Main" -Recurse #Copying gamedata
Copy-Item -Path "..\readme.txt" -Destination "builds\Less Items for Anomaly REWORK\readme.txt" #Readme
Copy-Item -Path "fomod" -Destination "builds\Less Items for Anomaly REWORK\" -Recurse #Better Installing
##Deleting some copied files
#ROOT
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\VERSIONS"
#Scripts
Copy-item -Path "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\libhash_crc16.script" -Destination "builds\Less Items for Anomaly REWORK\" 
Copy-item -Path "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\treasure_manager_guarenteed_loot.script" -Destination "builds\Less Items for Anomaly REWORK\"
Copy-item -Path "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\utils_item.script" -Destination "builds\Less Items for Anomaly REWORK\"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\*.*" -Recurse
Copy-Item -Path "builds\Less Items for Anomaly REWORK\libhash_crc16.script" -Destination "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\"
Copy-Item -Path "builds\Less Items for Anomaly REWORK\treasure_manager_guarenteed_loot.script" -Destination "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\"
Copy-Item -Path "builds\Less Items for Anomaly REWORK\utils_item.script" -Destination "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\"
#Items
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\items\items\items_artefacts.ltx"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\items\outfits" -Recurse
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\items\settings\new_game_loadouts.ltx"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\items\weapons" -Recurse
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\items\settings\npc_loadouts" -Recurse
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\items\settings\parts.ltx" #Anomalite deletes some outfits, LIfAR uses legacy file
Copy-Item -Path "data\legacy_parts.txt" -Destination "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\items\settings\parts.ltx" #Legacy parts.ltx
#Other Configs
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\mcm_key_localization.ltx"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\plugins" -Recurse
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\zones" -Recurse
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\dynamic_npc_armor_visuals.ltx"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\ai_tweaks\" -Recurse

#Text English
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\eng\st_dialogs_lostzone_ll.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\eng\st_items_artefacts.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\eng\st_land_names.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\eng\st_levels.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\eng\st_smart_names.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\eng\st_outfits_new.xml"
#Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\eng\ui_st_loadscreen.xml" #The file doesnt exist
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\eng\ui_st_zver.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\eng\ui_st_zver_mcm.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\eng\ui_st_zver_map.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\eng\ui_st_mcm.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\eng\ui_st_dialog_fov_mcm.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\eng\ui_st_item_icon_info.xml"
#Text Russsian 
<#
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\rus\st_dialogs_lostzone_ll.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\rus\st_items_artefacts.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\rus\st_land_names.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\rus\st_levels.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\rus\st_smart_names.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\rus\ui_st_loadscreen.xml"
#>
#Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\eng\ui_st_loadscreen.xml" #The file doesnt exist
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\rus\ui_st_zver.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\rus\ui_st_zver_mcm.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\rus\ui_st_zver_map.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\rus\ui_st_mcm.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\rus\ui_st_dialog_fov_mcm.xml"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\text\rus\ui_st_item_icon_info.xml"
#UI
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\ui" -Recurse
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\configs\system.ltx"
#Sounds
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\sounds\weapons" -Recurse
#Textures
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\textures" -Recurse

##Compressing Archive and removing the old folder
Compress-Archive -Path "builds\Less Items for Anomaly REWORK" -DestinationPath "builds\LIfAR ($modVersion).zip"
Remove-Item "builds\Less Items for Anomaly REWORK" -Recurse
PAUSE