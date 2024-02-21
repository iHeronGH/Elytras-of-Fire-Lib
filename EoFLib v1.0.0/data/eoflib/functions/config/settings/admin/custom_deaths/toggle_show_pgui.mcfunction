#> eoflib:config/settings/admin/custom_deaths/toggle_show_pgui
#
# Toggle the custom death messages feature.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:custom_deaths/toggle_show_pgui.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/config/settings/admin/custom_deaths/toggle_show_pgui.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:custom_deaths/toggle_show_pgui.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/config/settings/admin/custom_deaths/toggle_show_pgui.mcfunction", "color": "aqua"}}}]

    # Toggle Custom Death Messages
function eoflib:config/settings/admin/custom_deaths/toggle

    # Relaunch settings
function eoflib:config/gui/player_settings

#endregion
