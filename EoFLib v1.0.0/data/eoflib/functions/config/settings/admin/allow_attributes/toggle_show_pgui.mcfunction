#> eoflib:config/settings/admin/allow_attributes/toggle_show_pgui
#
# Toggle attribute toggling for all players.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:allow_attributes/toggle_show_pgui.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/admin/allow_attributes/toggle_show_pgui.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:allow_attributes/toggle_show_pgui.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/admin/allow_attributes/toggle_show_pgui.mcfunction", "color": "aqua"}}}]

    # Globally toggle attributes
function eoflib:config/settings/admin/allow_attributes/toggle

    # Relaunch settings
trigger eof.settings set 1

#endregion
