#> eoflib:config/settings/admin/blacklist/remove/all_entries
#
# Remove all entries from the blacklist.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:remove/all_entries.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/settings/admin/blacklist/remove/all_entries.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:remove/all_entries.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/settings/admin/blacklist/remove/all_entries.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:remove/all_entries.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/settings/admin/blacklist/remove/all_entries.mcfunction", "color": "aqua"}}}]

    # Remove all entries from blacklist
execute if entity @s[tag=eoflib.abilities.blacklist.list.ability] run data remove storage eoflib:config eoflib.admin_settings.blacklist.ability
execute if entity @s[tag=eoflib.abilities.blacklist.list.tribe] run data remove storage eoflib:config eoflib.admin_settings.blacklist.tribe
execute if entity @s[tag=eoflib.abilities.blacklist.list.archetype] run data remove storage eoflib:config eoflib.admin_settings.blacklist.archetype

    # Announce feedback
tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "All entries successfully removed from this blacklist.", "color": "gray"}]

    # Display blacklist
function eoflib:config/settings/admin/blacklist/prepare_remove

#endregion
