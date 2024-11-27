#> eoflib:config/gui/admin/silly_goofy_mode
#
# Display Admin Settings line for toggling... Silly Goofy Mode?

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/silly_goofy_mode.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/gui/admin/silly_goofy_mode.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/silly_goofy_mode.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/gui/admin/silly_goofy_mode.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/silly_goofy_mode.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/gui/admin/silly_goofy_mode.mcfunction", "color": "aqua"}}}]

    # Disable
execute if entity @s[tag=eoflib.silly_goofy_mode] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable Silly Goofy Mode for yourself.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin, tag=eoflib.silly_goofy_mode] run trigger eoflib.trigger set 62"}}, {"text": "] ", "color": "gray"}, {"text": "Silly Goofy Mode", "color": "red", "hoverEvent": {"action": "show_text", "contents": {"text": "Silly Goofy Mode, uh.... it, ummm.... I don't remember...?", "color": "gray"}}}]

    # Enable
execute if entity @s[tag=!eoflib.silly_goofy_mode] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: Silly Goofy Mode is NO LAUGHING\nMATTER. Do NOT enable it, no matter how\nsilly, goofy, or mode it is!!!!!!\n\nProceed with uncharacteristic and\nabsurd levels of caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin, tag=!eoflib.silly_goofy_mode] run trigger eoflib.trigger set 63"}}, {"text": "] ", "color": "gray"}, {"text": "Silly Goofy Mode", "color": "red", "hoverEvent": {"action": "show_text", "contents": {"text": "Silly Goofy Mode, uh.... it, ummm.... I don't remember...?", "color": "gray"}}}]

#endregion
