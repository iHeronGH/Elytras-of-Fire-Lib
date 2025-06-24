#> eoflib:config/gui/player/ability_data/cooldown
#
# Toggle ability cooldown data.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_data/cooldown.mcf", "color": "gold", "hover_event": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/gui/player/ability_data/cooldown.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_data/cooldown.mcf", "color": "#967228", "hover_event": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/gui/player/ability_data/cooldown.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_data/cooldown.mcf", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/gui/player/ability_data/cooldown.mcfunction", "color": "aqua"}}}]

    # Disable
execute if entity @s[tag=!eoflib.ability_data.hide_cooldown] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hover_event": {"action": "show_text", "value": {"text": "[DISABLE_MSG]", "color": "red"}}, "click_event": {"action": "run_command", "command": "/trigger eoflib.trigger set 15"}}, {"text": "] ", "color": "gray"}, {"text": "Show Cooldown", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Show cooldown display on your abilities.", "color": "gray"}}}]

    # Enable
execute if entity @s[tag=eoflib.ability_data.hide_cooldown] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hover_event": {"action": "show_text", "value": {"text": "[ENABLE_MSG]", "color": "green"}}, "click_event": {"action": "run_command", "command": "/trigger eoflib.trigger set 21"}}, {"text": "] ", "color": "gray"}, {"text": "Show Cooldown", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Show cooldown display on your abilities.", "color": "gray"}}}]

#endregion
