#> eoflib:config/settings/admin/blacklist/add/save_archetype
#
# Add registered archetype to the blacklist.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:add/save_archetype.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/settings/admin/blacklist/add/save_archetype.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:add/save_archetype.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/settings/admin/blacklist/add/save_archetype.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:add/save_archetype.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/settings/admin/blacklist/add/save_archetype.mcfunction", "color": "aqua"}}}]

    # Add archetype to blacklist
$execute store success score eoflib.success eoflib.admin_settings unless data storage eoflib:config eoflib.admin_settings.blacklist.archetype[{ability_data: {archetype: "$(archetype)"}}]
execute if score eoflib.success eoflib.admin_settings matches 1 run data modify storage eoflib:config eoflib.admin_settings.blacklist.archetype append from storage eoflib:config eoflib.admin_settings.blacklist_register

    # Announce feedback
execute if score eoflib.success eoflib.admin_settings matches 0 if entity @s[tag=eoflib.abilities.blacklist.add] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "That archetype is already included in the blacklist.", "color": "red"}]
execute if score eoflib.success eoflib.admin_settings matches 1 if entity @s[tag=eoflib.abilities.blacklist.add] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Archetype successfully added to the ability blacklist.", "color": "gray"}]

#endregion
