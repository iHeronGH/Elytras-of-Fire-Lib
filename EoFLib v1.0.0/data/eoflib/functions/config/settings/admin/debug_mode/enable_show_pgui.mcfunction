#> eoflib:config/settings/admin/debug_mode/enable_show_pgui
#
# Disable Debug Mode.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:debug_mode/enable_show_pgui.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/admin/debug_mode/enable_show_pgui.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:debug_mode/enable_show_pgui.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/admin/debug_mode/enable_show_pgui.mcfunction", "color": "aqua"}}}]

    # Disable Debug Mode
function eoflib:config/settings/admin/debug_mode/enable

    # Relaunch settings
function eoflib:config/gui/player_settings

#endregion
