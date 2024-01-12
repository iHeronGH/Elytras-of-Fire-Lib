#> eoflib:config/settings/admin/friendly_fire/toggle_show_agui
#
# Disable friendly fire.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:friendly_fire/toggle_show_agui.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/admin/friendly_fire/toggle_show_agui.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:friendly_fire/toggle_show_agui.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/admin/friendly_fire/toggle_show_agui.mcfunction", "color": "aqua"}}}]

    # Disable Friendly Fire
function eoflib:config/settings/admin/friendly_fire/toggle

    # Relaunch settings
trigger eof.settings set 2
function eoflib:config/settings/admin/confirm_admin_status

#endregion
