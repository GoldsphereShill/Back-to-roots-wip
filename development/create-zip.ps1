#Clear-Host
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope CurrentUser
$modVersion = Read-Host "Enter Version" #LIfAR ($modVersion).zip will be the final name
New-Item -Name "builds\Less Items for Anomaly REWORK" -ItemType Directory #Temp folder
New-Item -Name "builds\Less Items for Anomaly REWORK\Main" -ItemType Directory #Temp folder 2
Copy-Item -Path "..\gamedata" -Destination "builds\Less Items for Anomaly REWORK\Main" -Recurse #Copying gamedata
Copy-Item -Path "..\readme.txt" -Destination "builds\Less Items for Anomaly REWORK\readme.txt" #Readme
Copy-Item -Path "fomod" -Destination "builds\Less Items for Anomaly REWORK\" -Recurse #Better Installing
##Deleting some copied files
#ROOT
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\VERSIONS"
#Scripts
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\actor_status.script"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\ui_zver_mcm.script"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\ui_minimap_deadmarks.script"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\ui_minimap_counter.script"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\dph_mcm_save_storage.script"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\mcm_log.script"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\ui_main_menu.script"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\ui_mcm.script"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\dialog_fov.script"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\dialog_fov_mcm.script"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\zz_headlamp_animation_fix.script"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\dynamic_eq_icon.script"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\rax_icon_layers.script"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\z_item_icon_info.script"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\dynamic_npc_armor_visuals.script"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\zz_item_cooking_keep_crafting_window_open.script"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\zz_item_repair_keep_crafting_window_open.script"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\zz_time_events_keep_crafting_window_open.script"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\zz_ui_workshop_keep_crafting_window_open.script"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\demonized_time_events.script"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\sr_light.script"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\zz_headlamp_animation_fix.script"
Remove-Item "builds\Less Items for Anomaly REWORK\Main\gamedata\scripts\z_monkey_toolkit_workshop.script"

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