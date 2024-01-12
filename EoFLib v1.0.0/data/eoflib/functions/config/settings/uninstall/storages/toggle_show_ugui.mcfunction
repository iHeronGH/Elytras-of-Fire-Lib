#> eoflib:config/settings/uninstall/storages/toggle_show_ugui
#
# Toggle storages being deleted upon uninstall.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:storages/toggle_show_ugui.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/uninstall/storages/toggle_show_ugui.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:storages/toggle_show_ugui.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/uninstall/storages/toggle_show_ugui.mcfunction", "color": "aqua"}}}]

    # Toggle 
function eoflib:config/settings/uninstall/storages/toggle

    # Relaunch settings
trigger eof.settings set 3
function eoflib:config/settings/admin/confirm_admin_status

#endregion
