#> eoflib:config/settings/admin/allow_attributes/toggle_show_pgui
#
# Toggle attribute toggling for all players.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eoflib:toggle_show_pgui.mcf.mcf", "color": "gold"}]

    # Globally toggle attributes
function eoflib:config/settings/admin/allow_attributes/toggle

    # Relaunch settings
trigger eof.settings set 1

#endregion
