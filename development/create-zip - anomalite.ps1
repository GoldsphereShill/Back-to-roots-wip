#Clear-Host
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser
$modVersion = Read-Host "Enter Version" #ANOMALITE ($modVersion).zip will be the final name
New-Item -Name "builds\ANOMALITE" -ItemType Directory #Temp folder
New-Item -Name "builds\ANOMALITE\Main" -ItemType Directory #Temp folder 2
New-Item -Name "builds\ANOMALITE\Main\gamedata" -ItemType Directory #Temp folder 3
Copy-Item -Path "..\gamedata\configs" -Destination "builds\ANOMALITE\Main\gamedata" -Recurse #Copying gamedata
Copy-Item -Path "..\gamedata\sounds" -Destination "builds\ANOMALITE\Main\gamedata" -Recurse #Copying gamedata
Copy-Item -Path "..\gamedata\scripts" -Destination "builds\ANOMALITE\Main\gamedata" -Recurse #Copying gamedata
Copy-Item -Path "..\readme.txt" -Destination "builds\ANOMALITE\readme.txt" #Readme
Copy-Item -Path "fomod" -Destination "builds\ANOMALITE\" -Recurse #Better Installing
New-Item -Name "builds\ANOMALITE\fomod" -ItemType Directory #fomod temp folder 3
Copy-Item -Path "fomodAnomalite\*" -Destination "builds\ANOMALITE\Main\gamedata"
##Deleting some copied files
#ROOT
#Remove-Item "builds\ANOMALITE\Main\gamedata\VERSIONS" #No need to do this anymore
#Scripts
Copy-item -Path "builds\ANOMALITE\Main\gamedata\scripts\libhash_crc16.script" -Destination "builds\ANOMALITE\" 
Copy-item -Path "builds\ANOMALITE\Main\gamedata\scripts\treasure_manager_guarenteed_loot.script" -Destination "builds\ANOMALITE\"
Copy-item -Path "builds\ANOMALITE\Main\gamedata\scripts\utils_item.script" -Destination "builds\ANOMALITE\"
Remove-Item "builds\ANOMALITE\Main\gamedata\scripts\*.*" -Recurse
Copy-Item -Path "builds\ANOMALITE\libhash_crc16.script" -Destination "builds\ANOMALITE\Main\gamedata\scripts\"
Copy-Item -Path "builds\ANOMALITE\treasure_manager_guarenteed_loot.script" -Destination "builds\ANOMALITE\Main\gamedata\scripts\"
Copy-Item -Path "builds\ANOMALITE\utils_item.script" -Destination "builds\ANOMALITE\Main\gamedata\scripts\"
#Items
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\items\items\items_artefacts.ltx"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\items\outfits" -Recurse
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\items\settings\new_game_loadouts.ltx"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\items\weapons" -Recurse
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\items\settings\npc_loadouts" -Recurse
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\items\settings\parts.ltx" #Anomalite deletes some outfits, LIfAR uses legacy file
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\items\settings\new_game_loadouts.ltx" #Anomalite deletes some outfits, LIfAR uses legacy file
Copy-Item -Path "data\legacy_parts.txt" -Destination "builds\ANOMALITE\Main\gamedata\configs\items\settings\parts.ltx" #Legacy parts.ltx
Copy-Item -Path "data\legacy_game_loadouts.txt" -Destination "builds\ANOMALITE\Main\gamedata\configs\items\settings\new_game_loadouts.ltx" #Legacy parts.ltx
#Other Configs
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\mcm_key_localization.ltx"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\plugins" -Recurse
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\zones" -Recurse
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\dynamic_npc_armor_visuals.ltx"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\ai_tweaks\" -Recurse
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\mod_system_burer_drop_disabler.ltx"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\story_npc_carryweights.ltx"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\gameplay\" -Recurse

#Text English
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\eng\st_dialogs_lostzone_ll.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\eng\st_items_artefacts.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\eng\st_land_names.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\eng\st_levels.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\eng\st_smart_names.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\eng\st_outfits_new.xml"
#Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\eng\ui_st_loadscreen.xml" #The file doesnt exist
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\eng\ui_st_zver.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\eng\ui_st_zver_mcm.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\eng\ui_st_zver_map.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\eng\ui_st_mcm.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\eng\ui_st_dialog_fov_mcm.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\eng\ui_st_item_icon_info.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\eng\ui_st_factionID.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\eng\ui_mcm_haruka_exo_servo_sounds.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\eng\ui_st_companion_inventory_fix.xml"
#Text Russsian 
<#
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\rus\st_dialogs_lostzone_ll.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\rus\st_items_artefacts.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\rus\st_land_names.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\rus\st_levels.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\rus\st_smart_names.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\rus\ui_st_loadscreen.xml"
#>
#Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\eng\ui_st_loadscreen.xml" #The file doesnt exist
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\rus\ui_st_zver.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\rus\ui_st_zver_mcm.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\rus\ui_st_zver_map.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\rus\ui_st_mcm.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\rus\ui_st_dialog_fov_mcm.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\rus\ui_st_item_icon_info.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\rus\ui_st_factionID.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\rus\ui_mcm_haruka_exo_servo_sounds.xml"
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\text\rus\ui_st_companion_inventory_fix.xml"
#UI
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\ui" -Recurse
Remove-Item "builds\ANOMALITE\Main\gamedata\configs\system.ltx"
#Sounds
Remove-Item "builds\ANOMALITE\Main\gamedata\sounds\weapons" -Recurse
Remove-Item "builds\ANOMALITE\Main\gamedata\sounds\exo-servo" -Recurse
#Textures
#Remove-Item "builds\ANOMALITE\Main\gamedata\textures" -Recurse #No need to do this anymore

##Compressing Archive and removing the old folder
Compress-Archive -Path "builds\ANOMALITE" -DestinationPath "builds\LIfAR ($modVersion).zip"
Remove-Item "builds\ANOMALITE" -Recurse
PAUSE