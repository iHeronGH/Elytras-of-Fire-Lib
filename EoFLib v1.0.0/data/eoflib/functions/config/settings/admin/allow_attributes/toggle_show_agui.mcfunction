#> eoflib:config/settings/admin/allow_attributes/toggle_show_agui
#
# Toggle attribute toggling for all players.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eoflib:toggle_show_agui.mcf.mcf", "color": "gold"}]

    # Globally toggle attributes
function eoflib:config/settings/admin/allow_attributes/toggle

    # Relaunch settings
trigger eof.settings set 2
function eoflib:config/settings/admin/confirm_admin_status

#endregion
