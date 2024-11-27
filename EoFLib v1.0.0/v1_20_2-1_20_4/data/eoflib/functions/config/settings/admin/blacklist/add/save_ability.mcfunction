#> eoflib:config/settings/admin/blacklist/add/save_ability
#
# Add registered ability to the blacklist.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:add/save_ability.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/settings/admin/blacklist/add/save_ability.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:add/save_ability.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/settings/admin/blacklist/add/save_ability.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:add/save_ability.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/settings/admin/blacklist/add/save_ability.mcfunction", "color": "aqua"}}}]

    # Add ability to blacklist
$execute store success score eoflib.success eoflib.admin_settings unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{"eof_data": {"ability_data": {name: "$(name)"}}}]
execute if score eoflib.success eoflib.admin_settings matches 1 run data modify storage eoflib:config eoflib.admin_settings.blacklist.ability append from storage eoflib:config eoflib.admin_settings.blacklist_register

    # Announce feedback
execute if score eoflib.success eoflib.admin_settings matches 0 if entity @s[tag=eoflib.abilities.blacklist.add] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "That ability is already included in the blacklist.", "color": "red"}, {"text": " [", "color": "gray"}, {"text": "View Blacklist", "color": "aqua", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "View the Ability Blacklist.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 39"}}, {"text": "]", "color": "gray"}]
execute if score eoflib.success eoflib.admin_settings matches 1 if entity @s[tag=eoflib.abilities.blacklist.add] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Ability successfully added to the ability blacklist.", "color": "gray"}, {"text": " [", "color": "gray"}, {"text": "View Blacklist", "color": "aqua", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "View the Ability Blacklist.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 39"}}, {"text": "]", "color": "gray"}]

#endregion
