#> eoflib:config/settings/admin/debug_mode/enable_show_agui
#
# Lower user level of Debug Mode.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:debug_mode/enable_show_agui.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/settings/admin/debug_mode/enable_show_agui.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:debug_mode/enable_show_agui.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/settings/admin/debug_mode/enable_show_agui.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:debug_mode/enable_show_agui.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/settings/admin/debug_mode/enable_show_agui.mcfunction", "color": "aqua"}}}]

    # Decrement Debug Mode level
function eoflib:config/settings/admin/debug_mode/enable

    # Relaunch settings
trigger eof.settings set 2
function eoflib:config/settings/admin/confirm_admin_status

#endregion
