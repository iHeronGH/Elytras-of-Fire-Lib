#> eoflib:config/settings/uninstall/bossbars/toggle_show_ugui
#
# Toggle bossbars being deleted upon uninstall.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:bossbars/toggle_show_ugui.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/config/settings/uninstall/bossbars/toggle_show_ugui.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:bossbars/toggle_show_ugui.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/config/settings/uninstall/bossbars/toggle_show_ugui.mcfunction", "color": "aqua"}}}]

    # Toggle bossbar removal
function eoflib:config/settings/uninstall/bossbars/toggle

    # Relaunch settings
trigger eof.settings set 3
function eoflib:config/settings/admin/confirm_admin_status

#endregion
