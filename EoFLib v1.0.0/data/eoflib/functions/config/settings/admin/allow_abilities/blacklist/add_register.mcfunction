#> eoflib:config/settings/admin/allow_abilities/blacklist/add_register
#
# Set blacklist mode to ability name.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/add_register.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eoflib/functions/config/settings/admin/allow_abilities/blacklist/add_register.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/add_register.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eoflib/functions/config/settings/admin/allow_abilities/blacklist/add_register.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/add_register.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eoflib/functions/config/settings/admin/allow_abilities/blacklist/add_register.mcfunction", "color": "aqua"}}}]

    # Add ability to blacklist
$execute store success score eoflib.success eoflib.admin_settings unless data storage eoflib:config eoflib.admin_settings.blacklist.ability[{eof_data: {ability_data: {name: "$(name)"}}}]
execute if score eoflib.success eoflib.admin_settings matches 1 run data modify storage eoflib:config eoflib.admin_settings.blacklist.ability append from storage eoflib:config eoflib.admin_settings.blacklist_register

    # Announce feedback
execute if score eoflib.success eoflib.admin_settings matches 0 if entity @s[tag=eoflib.abilities.blacklist.add] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"nbt": "eoflib.admin_settings.blacklist_register.display.Name", "storage": "eoflib:config", "interpret": true}, {"text": " is already included in the blacklist.", "color": "red"}]
execute if score eoflib.success eoflib.admin_settings matches 1 if entity @s[tag=eoflib.abilities.blacklist.add] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"nbt": "eoflib.admin_settings.blacklist_register.display.Name", "storage": "eoflib:config", "interpret": true}, {"text": " successfully added to the ability blacklist.", "color": "gray"}]

    # Resolve tags
tag @s remove eoflib.abilities.blacklist.add
tag @s remove eoflib.abilities.blacklist.remove

#endregion
