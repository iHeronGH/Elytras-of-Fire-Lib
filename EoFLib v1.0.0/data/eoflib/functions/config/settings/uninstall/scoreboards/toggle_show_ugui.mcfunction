#> eoflib:config/settings/uninstall/scoreboards/toggle_show_ugui
#
# Toggle scoreboards being deleted upon uninstall.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:scoreboards/toggle_show_ugui.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/uninstall/scoreboards/toggle_show_ugui.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:scoreboards/toggle_show_ugui.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/uninstall/scoreboards/toggle_show_ugui.mcfunction", "color": "aqua"}}}]

    # Toggle 
function eoflib:config/settings/uninstall/scoreboards/toggle

    # Relaunch settings
trigger eof.settings set 3
function eoflib:config/settings/admin/confirm_admin_status

#endregion
