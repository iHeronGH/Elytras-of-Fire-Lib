#> eoflib:config/settings/admin/deactivation_timer/toggle_show_pgui
#
# Disable the ability deactivation timer.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:deactivation_timer/toggle_show_pgui.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/admin/deactivation_timer/toggle_show_pgui.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:deactivation_timer/toggle_show_pgui.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/admin/deactivation_timer/toggle_show_pgui.mcfunction", "color": "aqua"}}}]

    # Disable Ability Deactivation Timer
function eoflib:config/settings/admin/deactivation_timer/toggle

    # Relaunch settings
function eoflib:config/gui/player_settings

#endregion
