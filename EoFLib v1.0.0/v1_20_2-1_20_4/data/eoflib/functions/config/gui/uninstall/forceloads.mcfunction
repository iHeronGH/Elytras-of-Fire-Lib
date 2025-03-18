#> eoflib:config/gui/uninstall/forceloads
#
# Function description

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:uninstall/forceloads.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/gui/uninstall/forceloads.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:uninstall/forceloads.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/gui/uninstall/forceloads.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:uninstall/forceloads.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/gui/uninstall/forceloads.mcfunction", "color": "aqua"}}}]

    # Disable
execute if predicate eoflib:settings/uninstall/forceloads run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: This will delete all forceloads\nfrom the world when this datapack is\nremoved, including any options you may\nhave made any changes to.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 84"}}, {"text": "] ", "color": "gray"}, {"text": "Keep Forceloads", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Keep all forceloads intact when this datapack is uninstalled.", "color": "gray"}}}]

    # Enable
execute unless predicate eoflib:settings/uninstall/forceloads run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Forceloaded chunks will stay forceloaded\nafter this datapack is uninstalled.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 84"}}, {"text": "] ", "color": "gray"}, {"text": "Keep Forceloads", "color": "dark_aqua", "hoverEvent": {"action": "show_text", "contents": {"text": "Keep all forceloads intact when this datapack is uninstalled.", "color": "gray"}}}]

#endregion
