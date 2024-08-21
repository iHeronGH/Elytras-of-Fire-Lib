#> eoflib:config/gui/admin/custom_deaths
#
# Display Admin Settings line for toggling custom death messages.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/custom_deaths.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/gui/admin/custom_deaths.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/custom_deaths.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/gui/admin/custom_deaths.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/custom_deaths.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/gui/admin/custom_deaths.mcfunction", "color": "aqua"}}}]

    # Disable
# execute if predicate eoflib:settings/admin/custom_deaths run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 44"}}, {"text": "] ", "color": "gray"}, {"text": "Enable Custom Death Messages", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Enable custom death messages when players\nare killed by certain abilities.", "color": "gray"}}}]

    # Enable
# execute unless predicate eoflib:settings/admin/custom_deaths run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 44"}}, {"text": "] ", "color": "gray"}, {"text": "Enable Custom Death Messages", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Enable custom death messages when players\nare killed by certain abilities.", "color": "gray"}}}]

    # Not implemented
tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "dark_gray"}, {"text": "] ", "color": "gray"}, {"text": "Custom Death Messages", "color": "dark_gray", "strikethrough": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle custom death messages when players\nare killed by certain abilities.\n\nThis feature is disabled. It may be released\nin a future update for Elytras of Fire!", "color": "dark_gray"}}}]

#endregion
