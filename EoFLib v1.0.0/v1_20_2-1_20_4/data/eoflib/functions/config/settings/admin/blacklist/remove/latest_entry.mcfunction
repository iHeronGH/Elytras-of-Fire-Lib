#> eoflib:config/settings/admin/blacklist/remove/latest_entry
#
# Remove latest entry added from the blacklist.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:remove/latest_entry.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/settings/admin/blacklist/remove/latest_entry.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:remove/latest_entry.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/settings/admin/blacklist/remove/latest_entry.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:remove/latest_entry.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/settings/admin/blacklist/remove/latest_entry.mcfunction", "color": "aqua"}}}]

    # Remove latest entry from blacklist
execute if entity @s[tag=eoflib.abilities.blacklist.list.ability] run data remove storage eoflib:config eoflib.admin_settings.blacklist.ability[-1]
execute if entity @s[tag=eoflib.abilities.blacklist.list.tribe] run data remove storage eoflib:config eoflib.admin_settings.blacklist.tribe[-1]
execute if entity @s[tag=eoflib.abilities.blacklist.list.archetype] run data remove storage eoflib:config eoflib.admin_settings.blacklist.archetype[-1]

    # Announce feedback
tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Latest entry added successfully removed from this blacklist.", "color": "gray"}]

    # Display blacklist
function eoflib:config/settings/admin/blacklist/prepare_remove

#endregion
