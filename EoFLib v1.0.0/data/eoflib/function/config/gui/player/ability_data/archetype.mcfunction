#> eoflib:config/gui/player/ability_data/archetype
#
# Toggle ability archetype data.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_data/archetype.mcf", "color": "gold", "hover_event": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/gui/player/ability_data/archetype.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_data/archetype.mcf", "color": "#967228", "hover_event": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/gui/player/ability_data/archetype.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_data/archetype.mcf", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/gui/player/ability_data/archetype.mcfunction", "color": "aqua"}}}]

    # Disable
execute if entity @s[tag=!eoflib.ability_data.hide_archetype] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hover_event": {"action": "show_text", "value": {"text": "[DISABLE_MSG]", "color": "red"}}, "click_event": {"action": "run_command", "command": "/trigger eoflib.trigger set 12"}}, {"text": "] ", "color": "gray"}, {"text": "Show Archetype", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Show archetype display on your abilities.", "color": "gray"}}}]

    # Enable
execute if entity @s[tag=eoflib.ability_data.hide_archetype] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hover_event": {"action": "show_text", "value": {"text": "[ENABLE_MSG]", "color": "green"}}, "click_event": {"action": "run_command", "command": "/trigger eoflib.trigger set 18"}}, {"text": "] ", "color": "gray"}, {"text": "Show Archetype", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Show archetype display on your abilities.", "color": "gray"}}}]

#endregion
