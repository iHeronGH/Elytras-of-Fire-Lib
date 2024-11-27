#> eoflib:config/gui/admin/friendly_fire
#
# Display Admin Settings line for toggling friendly fire.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/friendly_fire.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/gui/admin/friendly_fire.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/friendly_fire.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/gui/admin/friendly_fire.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/friendly_fire.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/gui/admin/friendly_fire.mcfunction", "color": "aqua"}}}]

    # Disable
# execute if predicate eoflib:settings/admin/friendly_fire run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 55"}}, {"text": "] ", "color": "gray"}, {"text": "Friendly Fire", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Enable custom death messages when players\nare killed by certain abilities.", "color": "gray"}}}]

    # Enable
# execute unless predicate eoflib:settings/admin/friendly_fire run tellraw @s [{"text": "[", "color": "gray"}, {"text": "Enable Friendly Fire", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Enable friendly fire for most abilities.", "color": "gray"}}}, {"text": "✔", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 55"}}, {"text": "  ❌", "color": "red"}]

    # Not Implemented
tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "dark_gray"}, {"text": "] ", "color": "gray"}, {"text": "Enable Friendly Fire", "color": "dark_gray", "strikethrough": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle friendly fire for most abilities.\n\nThis feature is disabled. It may be released\nin a future update for Elytras of Fire!", "color": "dark_gray"}}}]

#endregion
