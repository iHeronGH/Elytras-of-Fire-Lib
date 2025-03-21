#> eoflib:config/gui/uninstall
#
#

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:uninstall/teams.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/gui/uninstall/teams.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:uninstall/teams.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/gui/uninstall/teams.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:uninstall/teams.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/gui/uninstall/teams.mcfunction", "color": "aqua"}}}]

    # Disable
execute if predicate eoflib:settings/uninstall/teams run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: This will delete all teams from\nthe world when this datapack is removed,\nincluding any options you may have made\nany changes to.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 80"}}, {"text": "] ", "color": "gray"}, {"text": "Keep Teams", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Keep all tribe teams intact when this\ndatapack is uninstalled.", "color": "gray"}}}]

    # Enable
execute unless predicate eoflib:settings/uninstall/teams run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Tribe teams will persist after this\ndatapack is uninstalled.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 80"}}, {"text": "] ", "color": "gray"}, {"text": "Keep Teams", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Keep all tribe teams intact when this\ndatapack is uninstalled.", "color": "gray"}}}]

#endregion
