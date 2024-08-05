#> eoflib:config/settings/admin/debug_mode/dec_level
#
# Lower user level of Debug Mode.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:debug_mode/dec_level.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/settings/admin/debug_mode/dec_level.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:debug_mode/dec_level.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/settings/admin/debug_mode/dec_level.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:debug_mode/dec_level.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/settings/admin/debug_mode/dec_level.mcfunction", "color": "aqua"}}}]

    # Decrement Debug Mode level
execute unless score @s eoflib.debug_mode > #eoflib.debug_mode.max eoflib.debug_mode run scoreboard players remove @s eoflib.debug_mode 1

    # Cap level
execute if score @s eoflib.debug_mode > #eoflib.debug_mode.max eoflib.debug_mode run scoreboard players operation @s eoflib.debug_mode = #eoflib.debug_mode.max eoflib.debug_mode

#endregion
