#> eoflib:config/gui/player/ability_data/tribe
#
# Toggle ability tribe data.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_data/tribe.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/gui/player/ability_data/tribe.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_data/tribe.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/gui/player/ability_data/tribe.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_data/tribe.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/gui/player/ability_data/tribe.mcfunction", "color": "aqua"}}}]

    # Disable
execute if entity @s[tag=!eoflib.ability_data.hide_tribe] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "[DISABLE_MSG]", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 11"}}, {"text": "] ", "color": "gray"}, {"text": "Show Tribe", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Show tribe display on your abilities.", "color": "gray"}}}]

    # Enable
execute if entity @s[tag=eoflib.ability_data.hide_tribe] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "[ENABLE_MSG]", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 17"}}, {"text": "] ", "color": "gray"}, {"text": "Show Tribe", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Show tribe display on your abilities.", "color": "gray"}}}]

#endregion
