#> eoflib:config/settings/admin/cooldown_bypass/disable_show_agui
#
# Disable the ability to bypass cooldowns from Elytras of Fire abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:cooldown_bypass/disable_show_agui.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/config/settings/admin/cooldown_bypass/disable_show_agui.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:cooldown_bypass/disable_show_agui.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/config/settings/admin/cooldown_bypass/disable_show_agui.mcfunction", "color": "aqua"}}}]

    # Disable Cooldown Bypass
function eoflib:config/settings/admin/cooldown_bypass/disable

    # Relaunch settings
trigger eof.settings set 2
function eoflib:config/settings/admin/confirm_admin_status

#endregion
